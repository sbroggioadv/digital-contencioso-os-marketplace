#!/usr/bin/env python3
"""emitir-entrega — ponto de entrega verificável (PLANO-RECUPERACAO §6, story 203.2 AC 5/9).

Modos:
  stop               hook Stop: verifica a linhagem estrutural e EMITE ENTREGA+RECIBO, ou PENDENCIA.
  pretool            hook PreToolUse: nega gravação literal no diretório reservado entrega-verificada/.
  verificar <arq>    reconhece uma entrega re-derivando cadeia e bytes a partir do transcript do runtime.

Verifica estrutura e linhagem (chamadas existiram, ordem, versão, texto literal, livro, estados).
Nunca julga mérito jurídico e não usa regex semântica. Hash dá consistência, não origem.
Só stdlib. Qualquer falha => nenhuma ENTREGA (fail-closed na emissão, fail-open na sessão).
"""
import glob
import hashlib
import json
import os
import re
import sys
from pathlib import Path

VERSAO_EMISSOR = "emitir-entrega/0.1.3"
DIR_RESERVADO = "entrega-verificada"
ESTADOS = (
    "MINUTA PARA REVISÃO HUMANA",
    "PENDENTE DE PROVA",
    "PENDENTE DE FONTE",
    "BLOQUEADO",
    "FORA DO RECORTE",
)
MINUTA = ESTADOS[0]
ORDEM = ("anti-alucinacao", "validador", "suprema-corte")
SUFIXO_AGENTE = "-digital-contencioso"  # agente = <plugin>:<controle>-digital-contencioso
MAX_VERSOES = 3  # orçamento 3/6/9 chamadas
MAX_BLOQUEIOS = 3  # otimização; nunca chega ao teto do runtime
TETO_RUNTIME = 8  # continuações do hook Stop; no teto, zero ENTREGA (PLANO §6.3)
RECUPERAVEIS = {
    "cadeia-incompleta", "ordem-invertida", "versao-divergente", "item-alterado",
    "retorno-insuficiente", "rejeicao-nao-confirmada",
}
GATILHO = re.compile(r"REVISÃO APLICADA · VERSÃO|" + "|".join(re.escape(e) for e in ESTADOS))
RX_MARCADOR = re.compile(r"\[VERIFICADOR:([a-z-]+):(\d+)\]")


class Falha(Exception):
    def __init__(self, motivo, detalhe=""):
        super().__init__(motivo)
        self.motivo, self.detalhe = motivo, detalhe


def sha(texto):
    if isinstance(texto, str):
        texto = texto.encode("utf-8")
    return hashlib.sha256(texto).hexdigest()


def norm(texto):
    """Comparação 'além de espaços': colapsa todo espaço em branco."""
    return " ".join(texto.split())


def raiz_plugin():
    r = os.environ.get("CLAUDE_PLUGIN_ROOT")
    return Path(r) if r else Path(__file__).resolve().parent.parent


def nome_plugin():
    return json.loads((raiz_plugin() / ".claude-plugin" / "plugin.json").read_text("utf-8"))["name"]


# ---------------------------------------------------------------- parsing de blocos

RX_CTRL = re.compile(r"^CONTROLE (\S+) · VERSÃO (\d+)\s*$")
RX_ITEM_CTRL = re.compile(r"^ITEM (I\d+) · VEREDITO (PASS|CONCERNS|FAIL)\s*$")
RX_ITEM_RASC = re.compile(r"^ITEM (I\d+) · ESTADO (.+?)\s*$")
RX_ACHADO = re.compile(r"^ACHADO (F[1-9]\d*) · (ALTA|MÉDIA|BAIXA) · (I[1-9]\d*) · (\S.*?) · (\S.*?)\s*$")
RX_CONFIRMA = re.compile(r"^CONFIRMA REJEIÇÃO ([a-z-]+@v\d+:F\d+) · FONTE (\S.*?)\s*$")
RX_RASC = re.compile(r"^REVISÃO APLICADA · VERSÃO (\d+)\s*$")
RX_LIVRO = re.compile(r"^([a-z-]+@v\d+:F\d+) \| (I\d+) \| (APLICADA|REJEITADA) \| (.+?)\s*$")


def _itens(linhas, rx):
    """Lê ITEM <Ik> · <x> seguido de <<< ... >>> (texto literal). Devolve dict ordenado."""
    itens, i = {}, 0
    while i < len(linhas):
        m = rx.match(linhas[i])
        if m:
            if i + 1 >= len(linhas) or linhas[i + 1].strip() != "<<<":
                raise ValueError(f"item {m.group(1)} sem <<<")
            j = i + 2
            corpo = []
            while j < len(linhas) and linhas[j].strip() != ">>>":
                corpo.append(linhas[j])
                j += 1
            if j >= len(linhas):
                raise ValueError(f"item {m.group(1)} sem >>>")
            if m.group(1) in itens:
                raise ValueError(f"item {m.group(1)} duplicado")
            itens[m.group(1)] = (m.group(2), "\n".join(corpo))
            i = j + 1
            continue
        i += 1
    return itens


RX_ITEM_ENTRADA = re.compile(r"^ITEM I[1-9]\d*\s*$")


def _linhas_fora_de_literais(linhas, rx_item=None):
    """Somente ITEM válido associa <<< ... >>> a material literal.

    Mantém os índices originais para delimitar a entrada própria sem cortar
    palavras CONTROLE do material. Delimitador solto nunca oculta metadados.
    """
    i = 0
    while i < len(linhas):
        ln = linhas[i]
        valido = (rx_item.match(ln) if rx_item else
                  RX_ITEM_ENTRADA.match(ln) or RX_ITEM_CTRL.match(ln) or RX_ITEM_RASC.match(ln))
        yield i, ln
        if valido:
            if i + 1 >= len(linhas) or linhas[i + 1].strip() != "<<<":
                raise ValueError("ITEM sem abertura literal")
            j = i + 2
            while j < len(linhas) and linhas[j].strip() != ">>>":
                j += 1
            if j >= len(linhas):
                raise ValueError("ITEM sem fechamento literal")
            i = j + 1
            continue
        if ln.strip() in ("<<<", ">>>"):
            raise ValueError("delimitador literal fora de ITEM válido")
        i += 1


def _fora_de_literais(linhas, rx_item=None):
    return [ln for _, ln in _linhas_fora_de_literais(linhas, rx_item)]


def parse_controle(texto):
    linhas = texto.splitlines()
    fora = _fora_de_literais(linhas, RX_ITEM_CTRL)
    cab = [RX_CTRL.match(ln) for ln in fora if RX_CTRL.match(ln)]
    if len(cab) != 1:
        raise ValueError("cabeçalho CONTROLE ausente ou repetido")
    if not any(ln.startswith("Conclusão:") for ln in fora):
        raise ValueError("linha Conclusão ausente")
    itens = _itens(linhas, RX_ITEM_CTRL)
    if not itens:
        raise ValueError("nenhum item com texto literal")
    achados = {}
    for ln in fora:
        m = RX_ACHADO.match(ln)
        # Prefixos de apresentação não tornam um marcador reservado em prosa.
        # Apenas o formato canônico é aceito; não interpretamos mérito jurídico.
        if re.match(r"^[\W_\d]*ACHADO\b", ln.strip()):
            if not m:
                raise ValueError("linha ACHADO malformada: exige id, severidade, item, localizador e correção")
            fid, _, iid, localizador, correcao = m.groups()
            if fid in achados:
                raise ValueError(f"achado {fid} duplicado")
            if iid not in itens:
                raise ValueError(f"achado {fid} refere item desconhecido {iid}")
            if not localizador.strip() or not correcao.strip():
                raise ValueError(f"achado {fid} sem localizador ou correção")
            achados[fid] = {"sev": m.group(2), "item": iid}
    confirma = {m.group(1): m.group(2) for ln in fora if (m := RX_CONFIRMA.match(ln))}
    return {
        "controle": cab[0].group(1), "versao": int(cab[0].group(2)),
        "itens": {k: {"veredito": v, "texto": t} for k, (v, t) in itens.items()},
        "achados": achados, "confirma": confirma,
    }


def parse_rascunho(texto):
    linhas = texto.splitlines()
    # A mensagem final pode anteceder o rascunho com retornos de controle.
    # Seus ITEMs continuam literais, mas nunca contam como itens do rascunho.
    fora = _fora_de_literais(linhas)
    cab = [RX_RASC.match(ln) for ln in fora if RX_RASC.match(ln)]
    if len(cab) != 1:
        raise ValueError("bloco REVISÃO APLICADA ausente ou repetido")
    itens = _itens(linhas, RX_ITEM_RASC)
    if not itens:
        raise ValueError("rascunho sem itens")
    for k, (estado, _) in itens.items():
        if estado not in ESTADOS:
            raise ValueError(f"estado não canônico em {k}: {estado}")
    if "LIVRO DE ACHADOS" not in [ln.strip() for ln in fora]:
        raise ValueError("LIVRO DE ACHADOS ausente")
    livro = {}
    for ln in fora:
        m = RX_LIVRO.match(ln)
        if m:
            if m.group(1) in livro:
                raise ValueError(f"chave de achado {m.group(1)} duplicada no livro")
            livro[m.group(1)] = {"item": m.group(2), "acao": m.group(3), "nota": m.group(4)}
    return {
        "versao": int(cab[0].group(1)),
        "itens": {k: {"estado": e, "texto": t} for k, (e, t) in itens.items()},
        "livro": livro,
    }


# ---------------------------------------------------------------- transcript

def carregar_transcript(caminho):
    if not caminho or not os.path.isfile(caminho):
        raise Falha("transcript-indisponivel", str(caminho))
    entradas = []
    with open(caminho, encoding="utf-8") as fh:
        for ln in fh:
            ln = ln.strip()
            if ln:
                try:
                    entradas.append(json.loads(ln))
                except json.JSONDecodeError:
                    entradas.append({"_ilegivel": ln})
    return entradas


def escopo(entradas, prompt_id):
    """Entradas do turno: da primeira com promptId == prompt_id até a próxima com promptId diferente."""
    ini = next((i for i, e in enumerate(entradas) if e.get("promptId") == prompt_id), None)
    if ini is None:
        raise Falha("transcript-indisponivel", "prompt_id ausente do transcript")
    fim = len(entradas)
    for j in range(ini + 1, len(entradas)):
        p = entradas[j].get("promptId")
        if p and p != prompt_id:
            fim = j
            break
    return ini, entradas[ini:fim]


def _blocos(e):
    m = e.get("message")
    c = m.get("content") if isinstance(m, dict) else None
    return c if isinstance(c, list) else []


def chamadas_controle(turno, plugin):
    """Chamadas Agent a controles do plugin, em ordem, com o retorno do filho (toolUseResult)."""
    usos, resultados = [], {}
    for pos, e in enumerate(turno):
        for b in _blocos(e):
            if e.get("type") == "assistant" and b.get("type") == "tool_use" and b.get("name") == "Agent":
                usos.append((pos, b))
            if e.get("type") == "user" and b.get("type") == "tool_result":
                resultados[b.get("tool_use_id")] = (pos, b, e.get("toolUseResult"))
    out = []
    for pos, b in usos:
        alvo = (b.get("input") or {}).get("subagent_type", "")
        pref, _, nome = alvo.partition(":")
        if pref != plugin or not nome.endswith(SUFIXO_AGENTE):
            continue
        ctrl = nome[: -len(SUFIXO_AGENTE)]
        if ctrl not in ORDEM:
            continue
        r = resultados.get(b["id"])
        out.append({"uso_pos": pos, "uso": b, "controle": ctrl, "resultado": r})
    return out


# Mensagem pública observada do runtime; não inferimos causas por texto jurídico.
RECUSA_RUNTIME = "Not run: the response that made this tool call was stopped by a safety classifier."


def verificar_interrupcao(turno, plugin):
    """Recusa própria é terminal no turno, mesmo que um envelope posterior diga success.

    Exige Agent próprio anterior, vínculo por id, is_error booleano e conteúdo
    integral exato. Citações, Read, texto do modelo e erros genéricos não contam.
    Varre todos os eventos para que outro resultado do mesmo id não apague a recusa.
    """
    proprios = {}
    for e in turno:
        for b in _blocos(e):
            if e.get("type") == "assistant" and b.get("type") == "tool_use" and b.get("name") == "Agent":
                ctrl = _controle_proprio(b.get("input") or {}, plugin)
                if ctrl and b.get("id"):
                    proprios[b["id"]] = ctrl
            if (e.get("type") != "user" or b.get("type") != "tool_result"
                    or b.get("is_error") is not True or b.get("tool_use_id") not in proprios):
                continue
            conteudo = b.get("content")
            if isinstance(conteudo, list) and all(
                    isinstance(c, dict) and c.get("type") == "text" and isinstance(c.get("text"), str)
                    for c in conteudo):
                conteudo = "\n".join(c["text"] for c in conteudo)
            if isinstance(conteudo, str) and conteudo.strip() == RECUSA_RUNTIME:
                raise Falha("execucao-interrompida",
                            f"{proprios[b['tool_use_id']]}: recusa explícita em evento público do runtime; sem repetição automática")


def texto_retorno(chamada):
    r = chamada["resultado"]
    if r is None:
        raise Falha("retorno-insuficiente", f"{chamada['controle']}: sem tool_result (barreira não concluída)")
    pos, bloco, tur = r
    if bloco.get("is_error"):
        raise Falha("retorno-insuficiente", f"{chamada['controle']}: retorno com erro")
    if (chamada["uso"].get("input") or {}).get("run_in_background"):
        raise Falha("retorno-insuficiente", f"{chamada['controle']}: chamada em background")
    if not isinstance(tur, dict) or tur.get("status") != "completed":
        raise Falha("retorno-insuficiente", f"{chamada['controle']}: status do filho != completed")
    partes = [c.get("text", "") for c in tur.get("content") or [] if c.get("type") == "text"]
    return "\n".join(partes)


# ---------------------------------------------------------------- avaliação (núcleo determinístico)

def bloqueios_do_hook(turno):
    """Maior n de [VERIFICADOR:motivo:n] em anexos hook_blocking_error do Stop gravados pelo runtime
    para o comando deste emissor. Texto de usuário, do modelo ou de outro hook não conta."""
    n = 0
    for e in turno:
        a = e.get("attachment") if e.get("type") == "attachment" else None
        if not isinstance(a, dict) or a.get("type") != "hook_blocking_error" or a.get("hookEvent") != "Stop":
            continue
        be = a.get("blockingError") if isinstance(a.get("blockingError"), dict) else {}
        if "emitir-entrega" not in str(be.get("command", "")):
            continue
        m = RX_MARCADOR.match(str(be.get("blockingError", "")))
        if m:
            n = max(n, int(m.group(2)))
    return n


def avaliar(mensagem, turno, plugin):
    """Devolve o dict da entrega elegível ou levanta Falha(motivo)."""
    verificar_interrupcao(turno, plugin)
    if bloqueios_do_hook(turno) >= TETO_RUNTIME:
        raise Falha("orcamento-esgotado", f"teto de {TETO_RUNTIME} continuações do hook Stop atingido no turno")
    try:
        rasc = parse_rascunho(mensagem)
    except ValueError as exc:
        raise Falha("retorno-insuficiente", f"rascunho final fora do formato: {exc}")
    chamadas = chamadas_controle(turno, plugin)
    if not chamadas:
        raise Falha("cadeia-incompleta", "nenhuma chamada própria a controle no turno")
    if len(chamadas) > 3 * MAX_VERSOES:
        raise Falha("orcamento-esgotado", f"{len(chamadas)} chamadas > {3 * MAX_VERSOES}")
    if len(chamadas) % 3:
        raise Falha("cadeia-incompleta", f"{len(chamadas)} chamadas não formam cadeias completas")
    # Robustez do parser de transcript: não é prova de ocorrência ou ataque no runtime.
    for c in chamadas:
        if c["resultado"] is not None and c["resultado"][0] <= c["uso_pos"]:
            raise Falha("ordem-invertida", f"{c['controle']} retornou antes da própria chamada")
    # barreira (K8): cada chamada só começa depois do retorno da anterior, inclusive entre versões
    for k in range(1, len(chamadas)):
        ant = chamadas[k - 1]
        if ant["resultado"] is None or chamadas[k]["uso_pos"] <= ant["resultado"][0]:
            raise Falha("ordem-invertida", f"{chamadas[k]['controle']} (chamada {k + 1}) iniciou antes do retorno da chamada {k}")
    cadeias = []
    for k in range(0, len(chamadas), 3):
        trio = chamadas[k:k + 3]
        if tuple(c["controle"] for c in trio) != ORDEM:
            raise Falha("ordem-invertida", " → ".join(c["controle"] for c in trio))
        retornos = []
        for c in trio:
            txt = texto_retorno(c)
            try:
                p = parse_controle(txt)
            except ValueError as exc:
                raise Falha("retorno-insuficiente", f"{c['controle']}: {exc}")
            if p["controle"] != c["controle"]:
                raise Falha("retorno-insuficiente", f"cabeçalho {p['controle']} em chamada a {c['controle']}")
            entrada = _input_efetivo(c, chamadas[:k + len(retornos)], k + len(retornos), turno)
            # Cabeçalho próprio precede os retornos CONTROLE; versões dentro deles
            # (inclusive nos itens literais) não identificam a entrada desta chamada.
            try:
                linhas_entrada = entrada.splitlines()
                fora_entrada = list(_linhas_fora_de_literais(linhas_entrada))
                limite = next((i for i, ln in fora_entrada if RX_CTRL.match(ln)), len(linhas_entrada))
                propria = "\n".join(linhas_entrada[:limite])
                cab_entrada = [m.group(1) for i, ln in fora_entrada if i < limite
                               if (m := re.match(r"^VERSÃO ([1-9]\d*)(?=\s|$)", ln))]
            except ValueError as exc:
                raise Falha("retorno-insuficiente", f"entrada de {c['controle']}: {exc}")
            if cab_entrada != [str(p["versao"])]:
                raise Falha("versao-divergente", f"{c['controle']} exige cabeçalho próprio VERSÃO {p['versao']}")
            prompt = norm(entrada)
            material_proprio = norm(propria)
            for iid, it in p["itens"].items():
                if norm(it["texto"]) not in material_proprio:
                    raise Falha("item-alterado", f"{c['controle']} cita {iid} com texto que não estava no seu input")
            for anterior in retornos:  # cada controle recebe o conteúdo completo dos anteriores
                if norm(anterior["texto"]) not in prompt:
                    raise Falha("cadeia-incompleta", f"{c['controle']} não recebeu o retorno de {anterior['controle']}")
            retornos.append({"controle": c["controle"], "texto": txt, "parse": p,
                             "tool_use_id": c["uso"]["id"],
                             "agent_id": (c["resultado"][2] or {}).get("agentId", "")})
        versoes = {r["parse"]["versao"] for r in retornos}
        if len(versoes) != 1:
            raise Falha("versao-divergente", f"cadeia com versões {sorted(versoes)}")
        conj = [set(r["parse"]["itens"]) for r in retornos]
        if any(s != conj[0] for s in conj):
            raise Falha("item-alterado", "controles da mesma cadeia revisaram itens diferentes")
        for iid in conj[0]:
            textos = {norm(r["parse"]["itens"][iid]["texto"]) for r in retornos}
            if len(textos) != 1:
                raise Falha("item-alterado", f"{iid} citado com textos diferentes na mesma cadeia")
        cadeias.append({"versao": versoes.pop(), "retornos": retornos})
    esperado = list(range(1, len(cadeias) + 1))
    if [c["versao"] for c in cadeias] != esperado:
        raise Falha("versao-divergente", f"versões revisadas {[c['versao'] for c in cadeias]} != {esperado}")
    final = cadeias[-1]
    if rasc["versao"] != final["versao"]:
        raise Falha("versao-divergente", f"rascunho v{rasc['versao']} × última cadeia v{final['versao']}")
    itens_finais = final["retornos"][0]["parse"]["itens"]
    if set(rasc["itens"]) != set(itens_finais):
        raise Falha("item-alterado", "conjunto de itens do rascunho difere da versão revisada")
    for iid, it in rasc["itens"].items():
        if norm(it["texto"]) != norm(itens_finais[iid]["texto"]):
            raise Falha("item-alterado", f"{iid} mudou depois da última revisão")
    # achados de todas as cadeias: livro completo e fechamento
    textos_por_versao = {c["versao"]: c["retornos"][0]["parse"]["itens"] for c in cadeias}
    suprema_final = final["retornos"][2]["parse"]
    for c in cadeias:
        for r in c["retornos"]:
            for fid, a in r["parse"]["achados"].items():
                chave = f"{r['controle']}@v{c['versao']}:{fid}"
                ent = rasc["livro"].get(chave)
                if ent is None or ent["item"] != a["item"]:
                    raise Falha("achado-aberto", f"{chave} ausente do livro de achados")
                if ent["acao"] == "APLICADA":
                    if c["versao"] == final["versao"]:
                        raise Falha("achado-aberto", f"{chave} aplicado sem nova revisão")
                    antes = textos_por_versao[c["versao"]].get(a["item"], {}).get("texto")
                    depois = textos_por_versao[c["versao"] + 1].get(a["item"], {}).get("texto")
                    if antes is None or depois is None or norm(antes) == norm(depois):
                        raise Falha("achado-aberto", f"{chave} marcado APLICADA sem mudança no item")
                else:  # REJEITADA só fecha com confirmação escrita do último retorno da versão final
                    if chave not in suprema_final["confirma"] or r["controle"] == "suprema-corte":
                        raise Falha("rejeicao-nao-confirmada", chave)
    # elegibilidade por item (§5.4) na versão final
    # CONCERNS passa só porque todo F# já foi exigido fechado acima; FAIL nunca vira MINUTA
    estados = {}
    for iid, it in rasc["itens"].items():
        estados[iid] = it["estado"]
        if it["estado"] == MINUTA and any(r["parse"]["itens"][iid]["veredito"] == "FAIL" for r in final["retornos"]):
            raise Falha("achado-aberto", f"{iid} declarado MINUTA com FAIL em controle")
    restritivos = {k: v for k, v in estados.items() if v != MINUTA}
    if restritivos:
        raise Falha("estado-restritivo", "; ".join(f"{k}={v}" for k, v in sorted(restritivos.items())))
    return {"rascunho": rasc, "cadeias": cadeias, "final": final}


# ---------------------------------------------------------------- render (formato fixo do emissor)

def _template():
    p = raiz_plugin() / "templates" / "entrega-verificada.md"
    return p.read_text("utf-8")


def render(res, session_id, prompt_id):
    tpl = _template()
    rasc = res["rascunho"]
    itens = []
    for iid in sorted(rasc["itens"], key=lambda s: int(s[1:])):
        it = rasc["itens"][iid]
        itens.append(f"### {iid} · {it['estado']}\n\n" + "\n".join(
            "> " + ln if ln else ">" for ln in it["texto"].strip("\n").splitlines()))
    livro = ["| Achado | Item | Ação | Nota |", "|---|---|---|---|"]
    for chave in sorted(rasc["livro"]):
        e = rasc["livro"][chave]
        livro.append(f"| {chave} | {e['item']} | {e['acao']} | {e['nota'].replace('|', '/')} |")
    if len(livro) == 2:
        livro.append("| — | — | nenhum achado | — |")
    cadeia = ["| Versão | Ordem | Controle | tool_use_id | sha256 do retorno |", "|---|---|---|---|---|"]
    for c in res["cadeias"]:
        for n, r in enumerate(c["retornos"], 1):
            cadeia.append(f"| v{c['versao']} | {n} | {r['controle']} | {r['tool_use_id']} | {sha(r['texto'])[:16]} |")
    corpo = (tpl.replace("{{VERSAO}}", str(rasc["versao"]))
             .replace("{{SESSAO}}", session_id[:8])
             .replace("{{ITENS}}", "\n\n".join(itens))
             .replace("{{LIVRO}}", "\n".join(livro))
             .replace("{{CADEIA}}", "\n".join(cadeia))
             .replace("{{EMISSOR}}", VERSAO_EMISSOR))
    anexos = []
    for n, r in enumerate(res["final"]["retornos"], 1):
        # Cerca maior que qualquer sequência interna: o retorno permanece literal.
        texto = r["texto"]
        cerca = "`" * max(3, 1 + max((len(m.group()) for m in re.finditer(r"`+", texto)), default=0))
        anexos.append(
            f"### {n}. {r['controle']} · VERSÃO {res['final']['versao']}\n\n"
            f"- tool_use_id: `{r['tool_use_id']}`\n"
            f"- agent_id: `{r['agent_id']}`\n"
            f"- sha256 do retorno: `{sha(texto)}`\n\n"
            + cerca + "text\n" + texto + "\n" + cerca)
    # Inserido após as substituições do template, sem interpretar seus marcadores.
    return corpo + "\n" + "\n\n".join(anexos) + "\n"


def recibo(res, session_id, prompt_id, entrega_txt, mensagem):
    return {
        "emissor": VERSAO_EMISSOR,
        "session_id": session_id,
        "prompt_id": prompt_id,
        "versao": res["rascunho"]["versao"],
        "sha256_entrega": sha(entrega_txt),
        "sha256_mensagem_final": sha(mensagem),
        "sha256_template": sha(_template()),
        "retornos": [
            {"versao": c["versao"], "ordem": n, "controle": r["controle"],
             "tool_use_id": r["tool_use_id"], "agent_id": r["agent_id"], "sha256": sha(r["texto"])}
            for c in res["cadeias"] for n, r in enumerate(c["retornos"], 1)
        ],
        "aviso": "consistência estrutural, não autenticação nem revisão jurídica independente",
    }


def _json(obj):
    return json.dumps(obj, ensure_ascii=False, indent=2, sort_keys=True) + "\n"


# ---------------------------------------------------------------- modo stop

def _pendencia(pasta, versao, motivo, detalhe, rasc_txt):
    pasta.mkdir(parents=True, exist_ok=True)
    estados = []
    try:
        for k, v in parse_rascunho(rasc_txt)["itens"].items():
            estados.append(f"- {k}: {v['estado'] if v['estado'] != MINUTA else 'sem selo (MINUTA não liberada)'}")
    except ValueError:
        estados.append("- itens não legíveis: nenhum selo vale")
    p = pasta / f"PENDENCIA-v{versao}.md"
    p.write_text(
        f"# PENDÊNCIA — nenhuma entrega aprovada\n\nmotivo: `{motivo}`\n\ndetalhe: {detalhe}\n\n"
        f"Itens (estado restritivo até nova revisão completa):\n" + "\n".join(estados) +
        "\n\nSelo ou entrega exibidos no chat não valem. Entrega aprovada = `ENTREGA-*.md` com recibo "
        "aceito por `emitir-entrega verificar`.\n", "utf-8")
    return p


def _versao_declarada(msg):
    m = re.search(r"REVISÃO APLICADA · VERSÃO (\d+)", msg)
    return m.group(1) if m else "0"


def modo_stop(entrada):
    msg = entrada.get("last_assistant_message") or ""
    if not GATILHO.search(msg):
        return {}
    sid = entrada.get("session_id") or "sem-sessao"
    pid = entrada.get("prompt_id")
    pasta = Path(entrada.get("cwd") or os.getcwd()) / DIR_RESERVADO / sid[:8]
    versao = _versao_declarada(msg)
    turno = []
    if not re.search(r"REVISÃO APLICADA · VERSÃO", msg) and MINUTA not in msg:
        # só estado restritivo, sem bloco nem MINUTA: nenhuma alegação de entrega ⇒ diagnóstico sem bloqueio
        _pendencia(pasta, versao, "estado-restritivo", "mensagem sem bloco REVISÃO APLICADA e sem MINUTA", msg)
        return {}
    try:
        if not pid:
            raise Falha("transcript-indisponivel", "prompt_id ausente do evento")
        _, turno = escopo(carregar_transcript(entrada.get("transcript_path")), pid)
        res = avaliar(msg, turno, nome_plugin())
        entrega = render(res, sid, pid)
        rec = _json(recibo(res, sid, pid, entrega, msg))
        pasta.mkdir(parents=True, exist_ok=True)
        pe, pr = pasta / f"ENTREGA-v{versao}.md", pasta / f"RECIBO-v{versao}.json"
        if pr.exists() and json.loads(pr.read_bytes()).get("emissor") != VERSAO_EMISSOR:
            raise Falha("emissor-incompativel", "recibo de outra versão; nenhuma migração automática")
        for alvo, conteudo in ((pe, entrega), (pr, rec)):
            if alvo.exists() and alvo.read_bytes() != conteudo.encode("utf-8"):
                raise Falha("conflito-de-arquivo", f"{alvo.name} já existe com outro conteúdo")
        # RECIBO primeiro e ENTREGA por último, ambos por rename atômico: interrupção nunca deixa ENTREGA sem RECIBO
        for alvo, conteudo in ((pr, rec), (pe, entrega)):
            tmp = alvo.with_name(f".{alvo.name}.{os.getpid()}.tmp")
            tmp.write_bytes(conteudo.encode("utf-8"))
            os.replace(tmp, alvo)
        return {"systemMessage": f"ENTREGA VERIFICADA ESTRUTURALMENTE emitida: {DIR_RESERVADO}/{sid[:8]}/{pe.name} "
                                 f"(confira com `emitir-entrega verificar`). Revisão interna do mesmo modelo, não revisão jurídica independente."}
    except Falha as f:
        motivo, detalhe = f.motivo, f.detalhe
    except Exception as exc:  # erro interno nunca emite
        motivo, detalhe = "erro-interno", f"{type(exc).__name__}: {exc}"
    pend = _pendencia(pasta, versao, motivo, detalhe, msg)
    feitos = bloqueios_do_hook(turno)
    # HP-6: em continuação (stop_hook_active) sem marcador contável, já houve 1 bloqueio ⇒ não bloqueia de novo
    pode = feitos < MAX_BLOQUEIOS and not (entrada.get("stop_hook_active") and feitos == 0)
    if motivo in RECUPERAVEIS and pode:
        return {"decision": "block",
                "reason": f"[VERIFICADOR:{motivo}:{feitos + 1}] Nenhuma entrega aprovada: {motivo} ({detalhe}). "
                          "Rode a cadeia completa anti-alucinacao → validador → suprema-corte sobre a versão final "
                          "e reapresente o bloco REVISÃO APLICADA; ou declare o estado canônico restritivo."}
    return {"systemMessage": f"SELO OU ENTREGA NO CHAT NÃO VALE: {motivo}. Pendência em "
                             f"{DIR_RESERVADO}/{sid[:8]}/{pend.name}; nenhuma entrega aprovada foi emitida."}


# ---------------------------------------------------------------- modo pretool

RX_BASH_RESERVADO = re.compile(r"entrega-verificada|\b(?:ENTREGA|RECIBO)-v?\d")
# isenção estrita: só o reconhecimento (leitura), sem metacaractere de shell
RX_VERIFICAR = re.compile(r'python3 +(?:"\$\{CLAUDE_PLUGIN_ROOT\}/scripts/emitir-entrega\.py"|[\w./-]*emitir-entrega\.py)'
                          r" +verificar +(?:'[\w./-]+'|\"[\w./-]+\"|[\w./-]+)")


# ---------------------------------------------------------------- transporte público antes de Agent

def _controle_proprio(ti, plugin):
    alvo = ti.get("subagent_type", "")
    for ctrl in ORDEM:
        if alvo == f"{plugin}:{ctrl}{SUFIXO_AGENTE}":
            return ctrl
    return None


def _cabecalho_proprio(entrada):
    linhas = entrada.splitlines()
    fora = list(_linhas_fora_de_literais(linhas))
    limite = next((i for i, ln in fora if RX_CTRL.match(ln)), len(linhas))
    propria = "\n".join(linhas[:limite])
    versoes = [m.group(1) for i, ln in fora if i < limite
               if (m := re.match(r"^VERSÃO ([1-9]\d*)(?=\s|$)", ln))]
    if len(versoes) != 1:
        raise Falha("versao-divergente", "Agent exige um cabeçalho próprio VERSÃO N")
    return int(versoes[0]), propria


def _montar_prompt(ti, anteriores, ctrl, numero):
    if ti.get("run_in_background"):
        raise Falha("retorno-insuficiente", "controle próprio em background")
    entrada = ti.get("prompt")
    if not isinstance(entrada, str):
        raise Falha("retorno-insuficiente", "Agent sem prompt textual")
    versao, propria = _cabecalho_proprio(entrada)
    if numero >= 3 * MAX_VERSOES:
        raise Falha("orcamento-esgotado", "mais de nove chamadas próprias")
    if ctrl != ORDEM[numero % 3]:
        raise Falha("ordem-invertida", "controle fora da sequência própria")
    if versao != numero // 3 + 1:
        raise Falha("versao-divergente", "versão fora da sequência própria")
    anexos = []
    itens = None
    linhas = entrada.splitlines()
    cabecalhos = [(i, m.group(1), int(m.group(2)))
                  for i, ln in _linhas_fora_de_literais(linhas) if (m := RX_CTRL.match(ln))]
    permitidos = ORDEM[:numero % 3]
    recebidos = [nome for _, nome, _ in cabecalhos]
    if (any(v != versao or nome not in permitidos for _, nome, v in cabecalhos)
            or recebidos != [nome for nome in permitidos if nome in recebidos]):
        raise Falha("versao-divergente", "retorno embutido antigo, duplicado ou controle trocado")
    # Só os anteriores da cadeia atual. Cadeias antigas nunca são anexadas.
    for c in anteriores[-(numero % 3):] if numero % 3 else []:
        texto = texto_retorno(c)
        p = parse_controle(texto)
        if p["controle"] != c["controle"] or p["versao"] != versao:
            raise Falha("versao-divergente", "retorno de outro controle ou versão")
        if itens is not None and set(p["itens"]) != itens:
            raise Falha("item-alterado", "conjuntos de ITEM diferentes")
        itens = set(p["itens"])
        ids = set(re.findall(r"^(?:ITEM )?(I[1-9]\d*)(?=:|[ \t]*·|[ \t]*$)", propria, re.M))
        if ids != itens:
            raise Falha("item-alterado", "ITEM próprio diferente do retorno")
        for iid, it in p["itens"].items():
            if norm(it["texto"]) not in norm(propria):
                raise Falha("item-alterado", f"{iid} mudou antes da chamada")
        if norm(texto) not in norm(entrada):
            anexos.append(texto)
    return entrada + ("\n\n" + "\n\n".join(anexos) if anexos else "")


def _input_efetivo(c, anteriores, numero, turno):
    """Campo público do runtime ligado pelo tool_use_id; não altera o transcript bruto."""
    ti = c["uso"].get("input") or {}
    original = ti.get("prompt", "")
    if c["resultado"] is not None and c["resultado"][1].get("tool_use_id") != c["uso"]["id"]:
        raise Falha("retorno-insuficiente", "input efetivo ligado a outro tool_use_id")
    tur = c["resultado"][2] if c["resultado"] is not None else None
    atualizacoes = []
    for e in turno:
        a = e.get("attachment") if e.get("type") == "attachment" else None
        if not isinstance(a, dict) or a.get("hookEvent") != "PreToolUse" or a.get("toolUseID") != c["uso"]["id"]:
            continue
        cmd = str(a.get("command", ""))
        if "scripts/emitir-entrega.py" not in cmd or " pretool" not in cmd:
            continue
        if a.get("type") != "hook_success" or a.get("exitCode") != 0:
            raise Falha("retorno-insuficiente", "hook de transporte não terminou com sucesso")
        try:
            hs = json.loads(a.get("stdout", "{}")).get("hookSpecificOutput", {})
        except (ValueError, TypeError):
            raise Falha("retorno-insuficiente", "prova de transporte ilegível")
        if "updatedInput" in hs:
            if hs.get("hookEventName") != "PreToolUse" or hs.get("permissionDecision"):
                raise Falha("retorno-insuficiente", "prova de transformação inválida")
            atualizacoes.append(hs["updatedInput"])
    if not isinstance(tur, dict) or "prompt" not in tur:
        if atualizacoes:
            raise Falha("retorno-insuficiente", "transformação sem input efetivo no runtime")
        # Histórico sem transformação: avaliar exige integralidade original normalmente.
        return original
    texto_retorno(c)  # completed/sem erro/foreground continua obrigatório
    if tur.get("agentType") != ti.get("subagent_type"):
        raise Falha("retorno-insuficiente", "input efetivo ligado a outro agente")
    efetivo = tur["prompt"]
    esperado = _montar_prompt(ti, anteriores, c["controle"], numero)
    atualizado = dict(ti)
    atualizado["prompt"] = esperado
    if len(atualizacoes) > 1 or any(a != atualizado for a in atualizacoes):
        raise Falha("cadeia-incompleta", "updatedInput divergente ou duplicado")
    if efetivo != original and not atualizacoes:
        raise Falha("retorno-insuficiente", "input transformado sem prova do hook próprio")
    if not isinstance(efetivo, str) or efetivo != esperado:
        raise Falha("cadeia-incompleta", "input efetivo diverge do original + retornos públicos esperados")
    return efetivo


def _pretool_agent(entrada):
    ti = entrada.get("tool_input") or {}
    ctrl = _controle_proprio(ti, nome_plugin())
    if ctrl is None:
        return {}
    try:
        sid, pid, tid = (entrada.get(k) for k in ("session_id", "prompt_id", "tool_use_id"))
        if not all(isinstance(v, str) and v for v in (sid, pid, tid)):
            raise Falha("transcript-indisponivel", "evento sem sessão/turno/tool_use_id")
        entradas = carregar_transcript(entrada.get("transcript_path"))
        _, turno = escopo(entradas, pid)
        pids = [e.get("promptId") for e in entradas if e.get("promptId")]
        if not pids or pids[-1] != pid:
            raise Falha("transcript-indisponivel", "evento de turno antigo")
        sessoes = {e.get("sessionId") for e in turno if e.get("sessionId")}
        if sessoes != {sid}:
            raise Falha("transcript-indisponivel", "sessão do transcript não confere")
        cwds = {e.get("cwd") for e in turno if e.get("cwd")}
        if cwds != {entrada.get("cwd")}:
            raise Falha("transcript-indisponivel", "cwd do evento não confere com o turno")
        if bloqueios_do_hook(turno) >= TETO_RUNTIME:
            raise Falha("orcamento-esgotado", "teto de continuações atingido")
        verificar_interrupcao(turno, nome_plugin())
        chamadas = chamadas_controle(turno, nome_plugin())
        atuais = [c for c in chamadas if c["uso"]["id"] == tid]
        limite = len(turno)
        if atuais:
            if len(atuais) != 1 or atuais[0]["uso"]["input"] != ti:
                raise Falha("retorno-insuficiente", "tool_use_id/input divergente")
            limite = atuais[0]["uso_pos"]
        anteriores = [c for c in chamadas if c["uso_pos"] < limite]
        if any(c["uso_pos"] >= limite and c["uso"]["id"] != tid for c in chamadas):
            raise Falha("ordem-invertida", "evento antigo ou chamadas concorrentes")
        ids = [c["uso"]["id"] for c in anteriores] + [tid]
        if len(ids) != len(set(ids)):
            raise Falha("retorno-insuficiente", "tool_use_id duplicado")
        for n, c in enumerate(anteriores):
            p = parse_controle(texto_retorno(c))
            v, propria = _cabecalho_proprio((c["uso"].get("input") or {}).get("prompt", ""))
            ids_proprios = set(re.findall(r"^(?:ITEM )?(I[1-9]\d*)(?=:|[ \t]*·|[ \t]*$)", propria, re.M))
            if p["controle"] != c["controle"] or p["versao"] != v or set(p["itens"]) != ids_proprios:
                raise Falha("retorno-insuficiente", "retorno próprio com controle/versão/ITEM divergente")
            if any(norm(it["texto"]) not in norm(propria) for it in p["itens"].values()):
                raise Falha("item-alterado", "retorno próprio mudou o item recebido")
            pos = c["resultado"][0]
            proxima = anteriores[n + 1]["uso_pos"] if n + 1 < len(anteriores) else limite
            if not c["uso_pos"] < pos < proxima:
                raise Falha("ordem-invertida", "barreira de conclusão não provada")
            esperado = _montar_prompt(c["uso"].get("input") or {}, anteriores[:n], c["controle"], n)
            _input_efetivo(c, anteriores[:n], n, turno)
            publico = c["resultado"][2]
            if (not isinstance(publico, dict) or "prompt" not in publico) and c["uso"]["input"].get("prompt") != esperado:
                raise Falha("cadeia-incompleta", "input anterior sem transformação diverge do original integral esperado")
        efetivo = _montar_prompt(ti, anteriores, ctrl, len(anteriores))
        atualizado = dict(ti)
        atualizado["prompt"] = efetivo
        return {"hookSpecificOutput": {"hookEventName": "PreToolUse", "updatedInput": atualizado}}
    except Exception as exc:  # erro no transporte próprio nega a chamada, sem fallback
        motivo = exc.motivo if isinstance(exc, Falha) else "retorno-insuficiente"
        return {"hookSpecificOutput": {"hookEventName": "PreToolUse", "permissionDecision": "deny",
                "permissionDecisionReason": f"transporte próprio recusado: {motivo} ({exc})"}}


def modo_pretool(entrada):
    if entrada.get("tool_name") == "Agent":
        return _pretool_agent(entrada)
    nome = entrada.get("tool_name", "")
    ti = entrada.get("tool_input") or {}
    negar = False
    if nome in ("Write", "Edit", "NotebookEdit", "MultiEdit"):
        alvo = ti.get("file_path") or ti.get("notebook_path") or ""
        negar = DIR_RESERVADO in Path(alvo).parts or bool(re.search(r"(?:ENTREGA|RECIBO)-v\d", Path(alvo).name))
    elif nome == "Bash":
        cmd = ti.get("command", "")
        negar = bool(RX_BASH_RESERVADO.search(cmd)) and not RX_VERIFICAR.fullmatch(cmd)
    if not negar:
        return {}
    return {"hookSpecificOutput": {
        "hookEventName": "PreToolUse", "permissionDecision": "deny",
        "permissionDecisionReason": f"{DIR_RESERVADO}/ é reservado ao emissor determinístico; "
                                    "o modelo não grava ENTREGA nem RECIBO."}}


# ---------------------------------------------------------------- modo verificar

def _achar_transcript(session_id):
    raizes = [os.environ.get("EMITIR_TRANSCRIPTS_ROOT")] if os.environ.get("EMITIR_TRANSCRIPTS_ROOT") else [
        os.path.join(os.environ.get("CLAUDE_CONFIG_DIR") or os.path.expanduser("~/.claude"), "projects")]
    for r in raizes:
        achados = glob.glob(os.path.join(r, "*", f"{session_id}.jsonl"))
        if achados:
            return achados[0]
    return None


def _textos_finais(turno):
    """Candidatos à mensagem final: texto de cada entrada assistant e concatenações finais."""
    textos = []
    for e in turno:
        if e.get("type") == "assistant":
            t = "".join(b.get("text", "") for b in _blocos(e) if b.get("type") == "text")
            if t:
                textos.append(t)
    cands = set(textos)
    for k in range(2, min(6, len(textos)) + 1):
        cands.add("\n\n".join(textos[-k:]))
        cands.add("".join(textos[-k:]))
    return cands


def modo_verificar(arquivo):
    p = Path(arquivo)
    m = re.fullmatch(r"ENTREGA-v(\d+)\.md", p.name)
    if not m or p.parent.parent.name != DIR_RESERVADO or not p.is_file():
        return 1, "RECUSADO: arquivo fora do diretório reservado ou nome inválido"
    pr = p.parent / f"RECIBO-v{m.group(1)}.json"
    if not pr.is_file():
        return 1, "RECUSADO: recibo ausente"
    try:
        rec = json.loads(pr.read_text("utf-8"))
    except json.JSONDecodeError:
        return 1, "RECUSADO: recibo ilegível"
    if rec.get("emissor") != VERSAO_EMISSOR:
        return 1, "RECUSADO: emissor-incompativel (recibo de outra versão; nenhuma migração automática)"
    entrega = p.read_bytes()
    if rec.get("sha256_entrega") != sha(entrega):
        return 1, "RECUSADO: sha256 da entrega difere do recibo"
    sid, pid = rec.get("session_id", ""), rec.get("prompt_id", "")
    if p.parent.name != sid[:8]:
        return 1, "RECUSADO: pasta não corresponde à sessão do recibo"
    tp = _achar_transcript(sid)
    if not tp:
        return 2, "NÃO-REVERIFICÁVEL: transcript da sessão indisponível (consistente com o recibo, origem não reprovada)"
    try:
        _, turno = escopo(carregar_transcript(tp), pid)
    except Falha as f:
        return 1, f"RECUSADO: {f.motivo} ({f.detalhe})"
    msg = next((t for t in _textos_finais(turno) if sha(t) == rec.get("sha256_mensagem_final")), None)
    if msg is None:
        return 1, "RECUSADO: mensagem final do recibo não existe no transcript do runtime"
    try:
        res = avaliar(msg, turno, nome_plugin())
    except Falha as f:
        return 1, f"RECUSADO: cadeia não reproduzível ({f.motivo}: {f.detalhe})"
    if render(res, sid, pid).encode("utf-8") != entrega:
        return 1, "RECUSADO: entrega não corresponde à re-derivação"
    if _json(recibo(res, sid, pid, entrega, msg)).encode("utf-8") != pr.read_bytes():
        return 1, "RECUSADO: recibo não corresponde à re-derivação"
    return 0, "VERIFICADO: entrega re-derivada do transcript do runtime (estrutura e linhagem; não mérito jurídico)"


# ---------------------------------------------------------------- main

def main(argv):
    modo = argv[1] if len(argv) > 1 else ""
    if modo == "verificar":
        if len(argv) < 3:
            print("uso: emitir-entrega verificar <ENTREGA-vN.md>", file=sys.stderr)
            return 1
        rc, msg = modo_verificar(argv[2])
        print(msg)
        return rc
    if modo not in ("stop", "pretool"):
        print("uso: emitir-entrega stop|pretool|verificar <arquivo>", file=sys.stderr)
        return 1
    try:
        entrada = json.loads(sys.stdin.read() or "{}")
        saida = modo_stop(entrada) if modo == "stop" else modo_pretool(entrada)
    except Exception as exc:  # fail-open na sessão; nenhuma entrega
        saida = {"systemMessage": f"gate não executou ({type(exc).__name__}) — nenhuma entrega aprovada será emitida"}
    if saida:
        print(json.dumps(saida, ensure_ascii=False))
    return 0


if __name__ == "__main__":
    sys.exit(main(sys.argv))
