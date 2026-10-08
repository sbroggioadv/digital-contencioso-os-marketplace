---
name: recurso-inominado-digital
description: "Recurso inominado e contrarrazões no Juizado Especial Cível em caso digital, para recorrente ou recorrido em qualquer polo: cabimento contra sentença, prazo de dez dias, preparo em 48 horas, efeito devolutivo e pedido de efeito suspensivo com [ID], peça completa a partir do BLOCO MATERIAL e o caminho depois do julgamento da turma."
---

# Recurso inominado e contrarrazões — caso digital (Juizado)

**Guidance only:** minuta para revisão do advogado; não decide se recorrer, não promete provimento. Fonte única: `context/` (ver `context/INDICE.md`). Esqueleto: `templates/peca-recurso-inominado.md.tpl` (variantes `peca=recurso` e `peca=contrarrazoes`). Rito comum ⇒ `apelacao-e-contrarrazoes-digital`.

## Entrada (BLOCO MATERIAL)

Abrir o `00-perfil-do-caso.md` (linha POLO e seção "Andamento") e exigir: sentença integral, data e forma da ciência, termo de audiência (se houve), pedido inicial, contestação e o BLOCO MATERIAL da frente do caso (1. POLO · 2. Fatos · 3. Fundamentos · 4. Pedidos · 5. Pendências). Sem o BLOCO MATERIAL, acionar antes a frente (`conta-perfil-suspensao`, `conteudo-reputacao-remocao`, `registros-exibicao-e-fornecimento`, `dados-pessoais-controversia`, `termos-da-plataforma-e-remedios` ou `regime-plataformas-e-conteudo`); sem BLOCO MATERIAL não há capítulo de mérito com marcador no lugar, e objeto da ação desconhecido ⇒ só a pergunta do objeto. O recurso **não reabre o mérito material**: aponta onde a sentença diverge do BLOCO MATERIAL, da prova e da norma. `[ID]` de direito material = só os do BLOCO MATERIAL; aqui entram apenas `[ID]` processuais.

## Guard mínimo

Norma, tema e prazo só com `[ID]` (sem `[ID]` ⇒ `PENDENTE DE FONTE` na linha) · IP identifica terminal, não pessoa · hash declarado ≠ verificado · sem promessa de resultado · um caso = um cliente = um polo; sem polo, só as perguntas · ao final, acionar `revisao-final-digital`.

## 1. Cabimento e órgão

- Da sentença, **exceto a homologatória de conciliação ou laudo arbitral**, cabe recurso para o próprio Juizado, julgado por turma de três juízes togados; no recurso, advogado obrigatório ([JEC3-41-46], art. 41 e §§ 1º e 2º).
- Competência e valor do Juizado: [JEC-3]; quem pode ser parte e quem pode propor ação ([JEC3L-8], art. 8º); assistência por advogado ([JEC3C-9]); escolha de rito já feita em `legitimidade-e-competencia-digital`.
- Sentença de extinção sem mérito (ex.: ausência do autor, art. 51, I; incompetência territorial, III): conferir a hipótese pelo literal ([JEC3C-51]); isenção de custas por força maior no inciso I (§ 2º).
- Revelia do demandado ausente: presunção relativa, "salvo se o contrário resultar da convicção do Juiz" ([JEC3C-20]) — atacar ou defender por essa ressalva.
- Embargos de declaração: contra sentença ou acórdão, nos casos do CPC, por escrito ou oralmente, em 5 dias da ciência; interrompem o prazo do recurso ([JEC3L-48-50], arts. 48 a 50) ⇒ `agravo-e-embargos-de-declaracao-digital`. Demais recursos do Juizado não capturados ⇒ `PENDENTE DE FONTE`; não importar regra do CPC sem fonte que a mande aplicar.

## 2. Prazo, preparo e efeitos

- **Prazo:** dez dias, contados da ciência da sentença, por petição escrita, da qual constarão as razões e o pedido ([JEC3-41-46], art. 42); interposição e razões podem seguir numa só peça. Forma de contagem (dias úteis ou corridos) no Juizado: dispositivo não capturado ⇒ `PENDENTE DE FONTE`. **Nunca calcular a data final:** registrar o prazo literal, a data documentada da ciência e "data final a conferir pelo advogado".
- **Preparo:** independentemente de intimação, nas 48 horas seguintes à interposição, sob pena de deserção ([JEC3-41-46], art. 42, § 1º). Compreende todas as despesas processuais, inclusive as dispensadas em primeiro grau, ressalvada a assistência judiciária gratuita ([JEC3L-54-55], art. 54, parágrafo único). Valor (tabela do tribunal) não capturado ⇒ `PENDENTE DE FONTE`; gratuidade só com decisão nos autos.
- **Resposta:** após o preparo, intimação do recorrido para resposta escrita em dez dias ([JEC3-41-46], art. 42, § 2º).
- **Custas e honorários:** a sentença de primeiro grau não condena em custas e honorários, salvo litigância de má-fé; em segundo grau, o recorrente vencido paga custas e honorários entre 10% e 20% do valor da condenação ou, não havendo condenação, do valor corrigido da causa ([JEC3L-54-55], art. 55). Avisar o cliente do risco, sem quantificar resultado.
- **Efeito:** somente devolutivo; o juiz pode dar efeito suspensivo para evitar dano irreparável ([JEC3-41-46], art. 43). No caso digital, pedir em tópico próprio quando a sentença manda remover, restabelecer, fornecer ou pagar e o cumprimento imediato puder causar dano irreparável — com o fato e a prova do dano, sem promessa.
- **Sessão:** transcrição da gravação a pedido e por conta do requerente; intimação da data da sessão; julgamento só em ata, e sentença confirmada pelos próprios fundamentos vale com a súmula como acórdão ([JEC3-41-46], arts. 44 a 46).

## 3. Variantes por polo (natureza N1–N7 × posição)

| Cliente | Peça | Foco no caso digital |
|---|---|---|
| ATIVO vencido (N1 pessoa natural, N2 PJ afetada) | recurso inominado | pedido delimitado (URL, identificador, período, direito) negado ou não enfrentado; prova da origem desconsiderada; dano não apreciado |
| PASSIVO vencido (N5 plataforma, N6 conexão, N3 controlador, N4 operador, N7 autor do conteúdo) | recurso inominado | ordem indelimitada ou inexequível, autoria por IP sem prova de pessoa, dano sem prova, multa diária ([JEC3-52], V) |
| Recorrido (qualquer posição) | contrarrazões | manutenção da sentença; deserção ([JEC3-41-46], art. 42, § 1º); intempestividade; inovação recursal; custas e honorários do recorrente vencido ([JEC3L-54-55], art. 55) |
| Sentença de extinção por ausência | recurso ou contrarrazões | hipótese do art. 51 pelo literal e força maior do § 2º ([JEC3C-51]) |

Polo ausente ou contraditório ⇒ devolver só as perguntas (quem venceu o quê, data da ciência, preparo), mesmo se mandarem não perguntar. Tese do polo contrário só como "tese adversa a enfrentar". Relação de consumo entre pessoa natural e plataforma: os `[ID]` do CDC vêm do BLOCO MATERIAL.

## 4. Peça completa (esqueleto `templates/peca-recurso-inominado.md.tpl`)

1. **Interposição** ao juízo do Juizado que proferiu a sentença, com qualificação das partes, tempestividade (prazo literal e data da ciência documentada), declaração de preparo nas 48 horas ou gratuidade deferida, pedido de efeito suspensivo se cabível e remessa à turma recursal.
2. **Razões** à turma recursal: síntese do processo e da sentença; fatos com item de prova e origem (do BLOCO MATERIAL); fundamentos com `[ID]`; erro de julgamento ou de procedimento, capítulo a capítulo.
3. **Pedidos:** conhecimento e provimento para reformar ou anular o capítulo X; efeito suspensivo ([JEC3-41-46], art. 43), se for o caso. Custas e honorários em segundo grau recaem só sobre o recorrente vencido ([JEC3L-54-55], art. 55): o recorrente não os pede contra o recorrido.
4. **Valor da causa:** o já fixado no pedido inicial; não se atribui novo.
5. **Provas:** só as dos autos; transcrição da gravação, se útil ([JEC3-41-46], art. 44). Documento novo sem origem ⇒ `PENDENTE DE PROVA`.
6. **Fecho:** local, data e assinatura do advogado.

Contrarrazões: mesmo esqueleto, variante `peca=contrarrazoes`, prazo de dez dias da intimação ([JEC3-41-46], art. 42, § 2º), com pedido de condenação do recorrente vencido em custas e honorários ([JEC3L-54-55], art. 55).

## 5. Depois da turma

- Recurso extraordinário cabe de causa decidida "em única ou última instância" ([CF3-102-III]) ⇒ `recursos-excepcionais-digital`, com repercussão geral ([CF3-102-P3]).
- Recurso especial: o texto capturado alcança causas decididas pelos Tribunais Regionais Federais ou pelos tribunais dos Estados, do Distrito Federal e Territórios ([CF3-105-III]); cabimento contra acórdão de turma recursal sem fonte capturada ⇒ `PENDENTE DE FONTE`. Pedido de uniformização: não capturado ⇒ `PENDENTE DE FONTE`.
- Execução no próprio Juizado ([JEC3-52]) ⇒ `cumprimento-de-ordem-digital` ou `cumprimento-pagar-quantia-digital`.
- Regime da plataforma: se a turma ou a peça citar o Tema 987 ou 533, o `[ID]` vem do BLOCO MATERIAL **e** o rótulo "fonte parcial — embargos julgados em 17/06/2026, acórdão não publicado" (Tema 533: "fonte parcial — mérito publicado; embargos suspensos para posterior proclamação, sem resultado proclamado", [T533-SITUACAO], [T533ED-DEC-2409]) fica na mesma linha, também no resumo e no crivo, com o texto do rótulo por extenso (um `[ID]` real por linha, nunca ID composto).

## 6. Fechamento

**Entrega (regra única):** a peça não traz `{{`, `}}`, `[[`, marcador de variante nem comentário HTML do esqueleto; campo sem dado vira `[CAMPO — PENDENTE DE PROVA]`, com o nome do campo em maiúsculas (ex.: `[LOCAL — PENDENTE DE PROVA]`). Só a variante do caso entra; sem variante resolvida, a frente decide antes de redigir, e alternativa que a prova não resolve vai às pendências, fora do corpo. Peça só do polo do cliente. Estados: só os 5, um por item; encaminhamento a outra skill vai na coluna de providência, não no estado. A peça é gravada na pasta do caso. Atualizar a seção "Andamento" do `00-perfil-do-caso.md` (fase: recurso inominado; ato praticado; decisão recorrida; próximo ato; prazo literal com `[ID]`). Entregar com a linha POLO e acionar `revisao-final-digital`, que fixa o estado de cada item (`MINUTA PARA REVISÃO HUMANA` · `PENDENTE DE PROVA` · `PENDENTE DE FONTE` · `BLOQUEADO` · `FORA DO RECORTE`).
