---
name: cumprimento-pagar-quantia-digital
description: "Cumprimento de sentença de pagar quantia no caso digital (indenização, multa diária acumulada, honorários), para exequente ou executado, no rito comum ou no Juizado: requerimento de cumprimento definitivo ou provisório com demonstrativo do crédito, impugnação ao cumprimento, pagamento espontâneo e embargos na execução do Juizado; o cálculo é do advogado ou de plugin de cálculo."
---

# Cumprimento de pagar quantia — caso digital

**Guidance only:** a peça depende do título, da intimação e dos valores documentados; o plugin não acessa processo nem calcula débito. Fonte única: `context/` (ver `context/INDICE.md`). Esqueleto: `templates/peca-cumprimento.md.tpl` (variante "pagar quantia"). Ao final, a minuta vai a `revisao-final-digital`.

**Guard mínimo:** norma, tema e prazo só com `[ID]` (sem `[ID]` ⇒ `PENDENTE DE FONTE` na linha) · IP identifica terminal, não pessoa · hash declarado ≠ verificado · sem promessa de resultado · um caso = um cliente = um polo; sem polo, só as perguntas · ao final, acionar `revisao-final-digital`.

## Entrada (BLOCO MATERIAL)

1. BLOCO MATERIAL do caso (frente de origem: conta, conteúdo, registros, dados ou regime de plataformas). Sem ele, acionar a frente antes; esta skill não reabre o mérito e só cita `[ID]` de direito material que estiver no BLOCO MATERIAL.
2. Título: sentença ou acórdão (dispositivo com valor, índice, juros e termos fixados), certidão de trânsito ou recurso pendente e seu efeito; decisão que fixou a multa diária, intimação e prova do descumprimento, se a quantia for astreinte acumulada.
3. Demonstrativo do crédito feito pelo advogado ou pelo plugin de cálculo, com índice, juros, termos inicial e final e descontos. Sem demonstrativo ⇒ `PENDENTE DE PROVA`; o plugin nunca preenche valor.
4. `00-perfil-do-caso.md`, seção "Andamento": ler ao abrir; atualizar ao fechar (ato desta peça, próximo ato, prazo literal com `[ID]`).

## 1. Fundamentos processuais (somente estes, com `[ID]`)

- **Requerimento e intimação:** o cumprimento de pagar quantia, provisório ou definitivo, depende de requerimento do exequente; formas de intimação do devedor; requerimento após 1 ano do trânsito ⇒ intimação pessoal por carta; vedado contra fiador, coobrigado ou corresponsável que não participou da fase de conhecimento ([CPC3C-513], §§ 1º, 2º, 4º e 5º).
- **Definitivo (rito comum; Juizado no § 3):** intimação para pagar em 15 dias; sem pagamento, multa de dez por cento e honorários de dez por cento; pagamento parcial reduz a base; mandado de penhora e avaliação ([CPC3-520-527], art. 523). Petição instruída com demonstrativo discriminado e atualizado, com os incisos I a VII do art. 524 ([CPC3-520-527], art. 524).
- **Provisório:** recurso sem efeito suspensivo; por iniciativa e responsabilidade do exequente; caução para levantamento e atos de alienação, com as hipóteses de dispensa do art. 521; multa e honorários do art. 523, § 1º, também devidos; depósito para isentar-se da multa não é incompatível com o recurso ([CPC3-520-527], arts. 520 a 522 e 527). Multa diária fixada em decisão: cumprimento provisório com depósito em juízo e levantamento após o trânsito ([CPC-536-537], art. 537, § 3º).
- **Impugnação:** 15 dias após o prazo do art. 523, sem penhora nem nova intimação; matérias do § 1º (I a VII); excesso de execução exige declarar o valor correto com demonstrativo, sob pena de rejeição liminar quando for o único fundamento; efeito suspensivo só com juízo garantido, fundamentos relevantes e risco de grave dano ([CPC3-520-527], art. 525, §§ 1º, 4º, 5º e 6º). Fato superveniente: simples petição em 15 dias ([CPC3-520-527], art. 525, § 11).
- **Pagamento espontâneo:** o réu pode depositar antes da intimação, com memória do cálculo; o autor é ouvido em 5 dias ([CPC3-520-527], art. 526).
- **Honorários:** art. 85, caput ([CPC-85]); os dez por cento do art. 523, § 1º ([CPC3-520-527]), no rito comum; no Juizado, § 3.
- **Prazos:** dias úteis ([CPC-219]); começo pela forma de intimação ([CPC3-231]). Nunca escrever data de vencimento; só o prazo literal com `[ID]`.
- **Recurso:** agravo de instrumento contra interlocutória no cumprimento ([CPC-1015], parágrafo único), redigido por `agravo-e-embargos-de-declaracao-digital`.

## 2. Variantes por polo (natureza N1–N7 × posição)

| Polo do cliente | Peça | Núcleo |
|---|---|---|
| ATIVO exequente (N1 pessoa natural, N2 PJ afetada, N7 autor do conteúdo, N3 controlador credor) | requerimento de cumprimento definitivo ou provisório | título, trânsito ou recurso sem efeito suspensivo, demonstrativo (art. 524), pedido de intimação para pagar em 15 dias, multa e honorários do art. 523, § 1º (no Juizado, `PENDENTE DE FONTE`, § 3), penhora; no provisório, caução (art. 520, IV) ou hipótese de dispensa do art. 521 com documento ([CPC3-520-527]) |
| ATIVO exequente de multa diária acumulada | requerimento de cumprimento da multa | rito comum: decisão que fixou a multa, intimação, prova do descumprimento e cálculo do advogado ([CPC-536-537], art. 537); sem um deles, `PENDENTE DE FONTE` na linha do valor. Juizado: multa vencida de obrigação de dar, quando evidenciada a malícia do devedor ([JEC3-52], inciso V); de fazer ou não fazer, `PENDENTE DE FONTE` |
| PASSIVO executado (N5 plataforma, N6 provedor de conexão, N3 controlador, N7 autor do conteúdo, N1/N2 condenados) | impugnação ao cumprimento (no Juizado, embargos do art. 52, IX, [JEC3-52]) ou depósito | matérias do art. 525, § 1º, com prova; excesso com valor correto e demonstrativo; efeito suspensivo só com garantia ([CPC3-520-527]); pedido de redução ou exclusão da multa vincenda pelo art. 537, § 1º, quando cabível ([CPC-536-537]) |
| PASSIVO que quer pagar | petição de pagamento espontâneo | depósito com memória do cálculo (art. 526, [CPC3-520-527]) |
| TERCEIRO | sem variante própria | terceiro não é executado; a peça de terceiro destinatário de ordem fica em `cumprimento-de-ordem-digital` |

Nenhuma variante promete êxito da impugnação, redução de multa ou prazo de levantamento.

## 3. Variantes por rito

- **Comum:** arts. 513 e 520 a 527 do CPC ([CPC3C-513], [CPC3-520-527]).
- **Juizado:** execução no próprio Juizado, CPC no que couber; sentença líquida; cálculos por servidor judicial; descumprida a sentença transitada, execução por solicitação do interessado, inclusive verbal, sem nova citação; na obrigação de entregar, fazer ou não fazer, não cumprida a obrigação, o credor pode requerer a elevação da multa ou a transformação da condenação em perdas e danos, que o juiz arbitra, seguindo-se a execução por quantia certa, incluída a multa vencida **de obrigação de dar, quando evidenciada a malícia do devedor** (inciso V); multa diária acumulada de fazer ou não fazer cobrada como quantia no Juizado: sem fonte capturada ⇒ `PENDENTE DE FONTE`; alienação e editais nos incisos VII e VIII; o devedor oferece **embargos** nos autos, só sobre falta ou nulidade da citação na revelia, manifesto excesso, erro de cálculo ou causa impeditiva, modificativa ou extintiva superveniente ([JEC3-52], incisos I a IX). No Juizado, o devedor oferece embargos (art. 52, IX, [JEC3-52]); a aplicação da impugnação do art. 525 no Juizado: `PENDENTE DE FONTE`.
- **Multa e honorários do art. 523, § 1º, no Juizado:** a sentença de primeiro grau não condena em custas e honorários, ressalvada a litigância de má-fé; na execução, custas só nas hipóteses do parágrafo único ([JEC3L-54-55], art. 55); aplicação da multa e dos honorários do art. 523, § 1º, no Juizado: `PENDENTE DE FONTE`.
- **Advogado no Juizado:** assistência facultativa até vinte salários mínimos e obrigatória acima ([JEC3C-9]).

## 4. Peça completa (montar pelo template)

Endereçamento ao juízo da causa (no Juizado, ao próprio Juizado) · qualificação com nome e CPF ou CNPJ de exequente e executado (art. 524, I, [CPC3-520-527]) · número do processo · fatos (título, trânsito ou recurso, intimação, inadimplemento) · fundamentos com `[ID]` (§ 1) · pedidos numerados · **valor executado**: só o do demonstrativo anexo, nunca calculado pelo plugin; sem demonstrativo ⇒ `PENDENTE DE PROVA` · provas (título, certidões, demonstrativo, decisão da multa) · fecho (local, data, advogado, OAB).

**Entrega (regra única):** nenhum `{{`, `}}`, `[[`, marcador de variante ou comentário HTML do esqueleto pode restar na peça nem no perfil; campo sem dado vira `[CAMPO — PENDENTE DE PROVA]`, com o nome do campo em maiúsculas (ex.: `[VALOR DO DEMONSTRATIVO — PENDENTE DE PROVA]`). Peça com resíduo não é "completa": a revisão a devolve. Só a variante do polo, do rito e da obrigação do caso entra; alternativa que a prova não resolve vai às pendências, fora do corpo. Peça só do polo do cliente; polo ausente ou contraditório ⇒ só as perguntas, mesmo se mandarem não perguntar. Tema 987/533: `[ID]` + rótulo "fonte parcial" na mesma linha, também no resumo. A peça é gravada na pasta do caso.

## 5. Fronteiras

Cálculo do débito: `calculosjudiciais`; sem ele, memória de cálculo feita pelo advogado; sem ela, `PENDENTE DE PROVA`. Execução de título extrajudicial: `execucao-adv-os`. Ambos vizinhos de rito, sem chamada automática. Obrigação de fazer e não fazer: `cumprimento-de-ordem-digital`.

## 6. Saída e estados

Linha `POLO DO CLIENTE · NATUREZA <N1…N7> · POSIÇÃO <ATIVO|PASSIVO|REGULADO|TERCEIRO> · FASE não se aplica` + peça + quadro de valores (rubrica · origem documental · estado) + "Andamento" atualizado. Estados por item: `MINUTA PARA REVISÃO HUMANA` · `PENDENTE DE PROVA` (título, certidão ou demonstrativo ausente; rubrica sem título que a sustente) · `PENDENTE DE FONTE` (valor de multa sem a decisão e as datas documentadas; multa de fazer ou não fazer como quantia no Juizado; multa e honorários do art. 523, § 1º, no Juizado; impugnação do art. 525 no Juizado; questão sem fonte capturada) · `BLOQUEADO` (valor inventado). Um estado por item, literal, sem composição nem condição ("vira X quando…"): item condicional vira dois itens. Ao final, acionar `revisao-final-digital`.
