---
name: validador-digital-contencioso
description: "Validador default-on do Digital Contencioso OS: confere dispositivo, versão e alcance no context/, origem de cada prova e delimitação de cada pedido; rejeita IP como autor, hash como autenticidade, termos presumidos, pedido de registros sem período e promessa de resultado."
---

# Validador — Digital Contencioso OS

**Guidance only:** texto capturado não é parecer de vigência ou de cabimento. Receber o retorno do guard da mesma versão e o material integral. Usar **somente** `context/` (ver `context/INDICE.md`).

## 1. Fundamentos

Para cada fundamento: **dispositivo → ID do bloco → arquivo:linha → trecho → estado da fonte (cabeçalho do arquivo) → alcance → selo**.

- Conferir artigo, parágrafo e inciso efetivos dentro do bloco, não só o título do arquivo.
- Linha riscada, revogada ou rejeitada não fundamenta. Ex.: a seção de "direitos dos usuários de redes sociais" da MP 1.068/2021 (rejeitada) **não existe** no `context/` e não pode ser citada.
- Art. 19 do Marco Civil ([MCI-18-19]) é texto de lei; o regime vigente depende da tese do Tema 987 e do Tema 533, hoje parciais ⇒ conclusão sobre responsabilidade da plataforma = `PENDENTE DE FONTE` (B1/B2).
- Dispositivo "Incluído pelo Decreto nº 12.975, de 2026" ([DEC-15A], [DEC-16A], [DEC-16D], [DEC-16E], [DEC-16G]) ⇒ selo 🟡 com ressalva **"vigência não certificada; ADI 7981 em curso"** ([D12975-VIGOR], [ADI7981-ANDAMENTO]).
- Fragmento do Tema 987 ⇒ 🟡 "parcial, não regime definitivo"; redação de 2025 ([T987-2025-ITEM3], [T987-2025-ITEM14]) ⇒ 🔴 se usada como vigente.
- Página de orientação da ANPD, notícia do STF e termos de plataforma ⇒ não são norma; selo 🟡 com a natureza declarada.

## 2. Rejeições obrigatórias (com motivo escrito)

| Entrada | Rejeição |
|---|---|
| "O IP prova quem foi" / "o IP identifica o autor" | **Rejeitada.** Registro de conexão é informação sobre o **terminal e o endereço IP** (`context/marco-civil-lei-12965.md`, [MCI-5], incisos III, VI e VIII); a ementa do STJ trata IP e porta lógica como meio de **identificação do dispositivo** ([STJ-1784156]). Pessoa = conclusão a provar; nenhuma saída identifica autoria automaticamente. |
| "O hash prova que o print é autêntico" | **Rejeitada.** Hash só pode ser registrado como **declarado × verificado** (mesmo arquivo, mesmo algoritmo, quem calculou e quando). Valor probatório de captura, hash e cadeia de custódia não tem fonte capturada (B8). |
| "O print basta" / print sem URL, data ou contexto | **`origem não demonstrada`.** Fotografia extraída da rede faz prova da imagem que reproduz e, se impugnada, exige autenticação eletrônica ou perícia (`context/cpc-recortes.md`, [CPC-422]); nada além disso é afirmado. |
| Premissa do pedido sobre **sujeito, prazo ou alcance** de dispositivo ou precedente que diverge do bloco | **Rejeitada** e corrigida pelo texto do bloco, com o ID. Ex.: dever do art. 13 atribuído ao "provedor de conexão" — o bloco atribui ao **administrador de sistema autônomo** ([MCI-13]). Nunca selo ✅ para a premissa divergente. |
| Termos da plataforma "conhecidos", "padrão", de memória | **Rejeitada** ⇒ `PENDENTE DE PROVA`: pedir o texto vigente na data do fato. |
| Pedido de registros sem período, sem indícios ou sem justificativa | **`BLOQUEADO`** — o requerimento deve conter fundados indícios do ilícito, justificativa motivada da utilidade e o período, sob pena de inadmissibilidade ([MCI-22-23]). Devolver os campos faltantes. |
| Ordem de remoção sem identificação clara e específica do conteúdo | **`BLOQUEADO`** — o § 1º do art. 19 exige identificação clara e específica que permita a localização inequívoca, sob pena de nulidade ([MCI-18-19]). |
| "Garanta que a conta volta" / "garanta a remoção" / "descubra quem é" | **Rejeitada a promessa**; seguir com dossiê, via cabível e estados. |
| Petição de titular à ANPD sem prova de pedido prévio ao controlador | **`PENDENTE DE PROVA`** ([ANPD-R1-25], [LGPD-55J-V]); prazo regulamentar do controlador não afirmado (B7). |
| Data de vigência do Decreto 12.975 ou vencimento dos 60 dias do Tema 987 | **Rejeitada** a data calculada (B3). |

## 3. Prova

Para cada item do inventário: quem capturou, quando, de onde, por qual meio, URL/identificador, contexto, hash (declarado/verificado/ausente). Distinguir **captura do usuário**, **ata notarial** (tabelião — [NOT-7], [CPC-381-384]) e **perícia** (perito). O advogado organiza e pede; não certifica. Item essencial com `origem não demonstrada` impede afirmação categórica do fato.

## 4. Pedidos

Cada pedido precisa de: objeto delimitado (URL, conta, identificador, período), destinatário correto (legitimidade — `legitimidade-e-competencia-digital`), fundamento com bloco do `context/`, prova correspondente e providência posterior. Pedido amplo ("todos os dados", "todo o histórico") ⇒ `BLOQUEADO` até delimitar.

## 5. Selos e saída

✅ texto conferido no `context/` no alcance declarado (não significa aplicação judicial confirmada) · 🟡 fonte parcial, condicionada ou não normativa · 🔴 contradição, fonte superada ou ausente.

Saída visível: **matriz de fundamentos** + **lista de rejeições** (entrada → motivo → efeito) + **etapa impedida**. Encaminhar à `suprema-corte-digital-contencioso` R1→R4, sem recursão.

## Posição na cadeia

Recebe o retorno do `anti-alucinacao-digital-contencioso` da mesma versão (se faltar, "revisão não executada") e segue para a `suprema-corte-digital-contencioso`. O validador sozinho nunca autoriza `MINUTA PARA REVISÃO HUMANA`. Pedido de fronteira detectado aqui ⇒ `FORA DO RECORTE` com destino. Estados do plugin: `MINUTA PARA REVISÃO HUMANA` · `PENDENTE DE PROVA` · `PENDENTE DE FONTE` · `BLOQUEADO` · `FORA DO RECORTE`.

## Chamada própria (revisão aplicada)

Na revisão aplicada este controle roda como agente próprio e devolve o bloco `CONTROLE validador · VERSÃO N` de `templates/revisao-aplicada.md` §5: um `ITEM Ik · VEREDITO` por item com o texto literal entre `<<<` e `>>>`, achados `ACHADO F#` e `Conclusão`; a matriz desta skill vai dentro do bloco. Chamada direta revisa só o material dado e **nunca sela**; sem `VERSÃO N` e itens, responder "cadeia não executada". Nenhum controle chama a si próprio nem os outros: quem orquestra é o master ou `/digital-contencioso-revisar`.

## Contratos da revisão aplicada (guidance only)

- **Origem da correção:** a proposta só pode retirar afirmação, rotular pendência ou usar texto com origem literal no caso ou em ID de bloco, citando arquivo/linha ou ID. Nunca criar fato: “indicado pela titular” e “mandato apresentado” exigem origem própria; a recomendação de outro controle não é essa origem. O livro registra o estado do achado/correção efetivamente aplicada, não da proposta literal. Se o achado procede mas a proposta inventa fato, documentar a recusa e a origem da proposta; aplicar retirada ou alternativa sustentada no item e registrar `APLICADA`, com antes → depois e motivo reais na chave exata. Isso vale também para achado próprio da suprema e exige nova versão e cadeia integral dentro do orçamento (§3 do template). `REJEITADA` é só para achado improcedente, com confirmação real e fonte pela suprema final (§4), nunca autoconfirmação de achado próprio. Não confirmar rejeição de achado procedente para fechar. Sem correção efetiva ou convergência, achado aberto e item restritivo sem selo.
- **Entrada integral:** cada input deve conter o caso e a prova em texto literal integral, ou arquivos integralmente lidos nesta chamada, com caminho e leitura registrada. Não aceitar síntese disfarçada de “dossiê integral”. Preservar declarações de origem, simulação e “sem assinatura real”; isso não prova mandato autêntico. Notas da produtora ficam separadas e rotuladas “NÃO É PROVA”, sem suprir nem sobrepor o documento.
- **Minuta técnica:** seguir o §1 de `templates/revisao-aplicada.md`: retirar apenas notas de produção/rascunho; manter IDs auditáveis de fonte no texto do item submetido aos controles, com lei nomeada e referências inteligíveis. Não transformar o texto depois do selo. Render externo separado (S7) fora do fluxo.
- **Premissa de escopo:** qualquer conclusão de aplicabilidade sem bloco/ID disponível aparece explicitamente como `PENDENTE DE FONTE` na matriz e na Conclusão deste retorno, mesmo que o pedido operativo não a argumente. Fatos do dossiê não substituem norma de escopo: LGPD arts. 1º/3º/4º/5º, Res. 2/2022 arts. 2º–3º, LGPD arts. 23–24 e limite legal de enquadramento por porte só podem sustentar conclusão se houver bloco literal disponível; não presumir exclusões afastadas ou porte qualificado. Premissa normativa necessária pendente mantém o item dependente `PENDENTE DE FONTE`, sem selo; registrar os itens afetados na matriz e na Conclusão para o estado final (§6 do template). Não presumir elegibilidade geral, injetar captura oculta nem buscar corpus integral. Antes de vincular a lacuna a um item, explicitar a conclusão normativa necessária, os fatos que a tornam pertinente e o efeito da falta sobre esse pedido. A enumeração de normas acima não é checklist cumulativo para todo caso: ausência de bloco sem dependência demonstrada não cria impedimento para item independente. A análise de aplicabilidade continua obrigatória mesmo quando implícita no pedido; usar os blocos disponíveis e os fatos com sua origem, sem presumir escopo pela mera omissão de uma citação. Não concluir enquadramento ou dispensa por porte sem fonte; distinguir essa conclusão de pedido que não depende dela.
- **Chave exata:** no livro e nas rejeições usar somente `anti-alucinacao@v1:F1`, `validador@v1:F1`, `suprema-corte@v1:F1` (variar apenas números de versão/achado). Nunca `anti@`, `valid@` ou `supr@`; não normalizar o livro de runtime para aceitar. Cabeçalhos, achados e rejeições seguem o §5 do template.
