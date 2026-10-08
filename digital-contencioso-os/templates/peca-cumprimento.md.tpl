<!--
Esqueleto de peça — cumprimento (caso digital). Consumido por:
  skills/cumprimento-de-ordem-digital (variante FAZER)
  skills/cumprimento-pagar-quantia-digital (variante QUANTIA)
REGRA DE ENTREGA (única, vale para todo o esqueleto):
  A peça entregue não traz chaves duplas de slot, colchetes duplos, marcador de variante nem comentário HTML (este cabeçalho sai também).
  {{CAMPO}} = dado do caso, com origem documental; sem documento, o slot vira [NOME DO CAMPO — PENDENTE DE PROVA] na linha, em maiúsculas (ex.: [DATA DA DECISÃO — PENDENTE DE PROVA]); nunca marcador em minúscula nem o estado sem complemento.
  [ID] = bloco existente no context/INDICE.md; fundamento sem [ID] leva PENDENTE DE FONTE na linha. Tema 987/533: [ID] + rótulo de fonte parcial na mesma linha.
  [[VARIANTE: ...]] ... [[/VARIANTE]] = entra só o bloco do polo, do rito e da obrigação do caso; os demais e os próprios marcadores são apagados. Alternativa que a prova não resolve sai do corpo e vai às pendências.
  A peça é do polo do cliente (linha POLO do perfil), nunca do adverso. Estado por item: só MINUTA PARA REVISÃO HUMANA, PENDENTE DE PROVA, PENDENTE DE FONTE, BLOQUEADO, FORA DO RECORTE; um estado por item, sem condição ("vira X se...").
  Nunca preencher valor, data de vencimento ou multa acumulada sem documento. A peça é gravada na pasta do caso e segue para revisao-final-digital.
-->

[[VARIANTE: RITO=COMUM]]
EXCELENTÍSSIMO(A) SENHOR(A) DOUTOR(A) JUIZ(A) DE DIREITO DA {{VARA}} DA COMARCA DE {{COMARCA}}
[[/VARIANTE]]
[[VARIANTE: RITO=JUIZADO]]
EXCELENTÍSSIMO(A) SENHOR(A) DOUTOR(A) JUIZ(A) DO {{JUIZADO_ESPECIAL_CIVEL}} DA COMARCA DE {{COMARCA}}
[[/VARIANTE]]

Processo nº {{NUMERO_PROCESSO}}

{{NOME_CLIENTE}}, {{QUALIFICACAO_CLIENTE}} (nome completo e CPF ou CNPJ), por seu advogado (procuração {{FOLHA_PROCURACAO}}), nos autos em que contende com {{NOME_PARTE_CONTRARIA}}, {{QUALIFICACAO_PARTE_CONTRARIA}}, vem apresentar

[[VARIANTE: POLO=EXEQUENTE · RITO=COMUM · OBRIGACAO=FAZER]]
REQUERIMENTO DE CUMPRIMENTO {{DEFINITIVO|PROVISÓRIO}} DE OBRIGAÇÃO DE {{FAZER|NÃO FAZER}}
[[/VARIANTE]]
[[VARIANTE: POLO=EXEQUENTE · RITO=COMUM · OBRIGACAO=QUANTIA]]
REQUERIMENTO DE CUMPRIMENTO {{DEFINITIVO|PROVISÓRIO}} DE SENTENÇA QUE RECONHECE O DEVER DE PAGAR QUANTIA
[[/VARIANTE]]
[[VARIANTE: POLO=EXEQUENTE · RITO=JUIZADO]]
PEDIDO DE EXECUÇÃO DA SENTENÇA NO PRÓPRIO JUIZADO (solicitação do interessado, dispensada nova citação — art. 52, IV, [JEC3-52])
[[/VARIANTE]]
[[VARIANTE: POLO=EXECUTADO · RITO=COMUM]]
{{IMPUGNAÇÃO AO CUMPRIMENTO DE SENTENÇA | PETIÇÃO DE CUMPRIMENTO | PAGAMENTO ESPONTÂNEO — um só, pelo ato do caso}}
[[/VARIANTE]]
[[VARIANTE: POLO=EXECUTADO · RITO=JUIZADO]]
{{EMBARGOS DO DEVEDOR NOS AUTOS DA EXECUÇÃO — obrigação de PAGAR QUANTIA, FAZER ou NÃO FAZER | PETIÇÃO DE CUMPRIMENTO — um só, pelo ato do caso}} (embargos: art. 52, IX, [JEC3-52])
[[/VARIANTE]]
[[VARIANTE: POLO=TERCEIRO]]
PETIÇÃO INFORMATIVA DE CUMPRIMENTO OU DE IMPOSSIBILIDADE (DESTINATÁRIO NÃO-PARTE)
[[/VARIANTE]]

pelos fatos e fundamentos a seguir.

## I. DOS FATOS

1. Título: {{DECISAO_OU_SENTENCA}}, proferida em {{DATA_DECISAO}} ({{FOLHA}}), com o seguinte dispositivo: "{{DISPOSITIVO_LITERAL}}".
2. Trânsito ou recurso: {{CERTIDAO_TRANSITO | RECURSO_PENDENTE_E_EFEITO}}.
3. Intimação: {{DATA_E_MEIO_DA_INTIMACAO}}.
4. Resposta da parte obrigada: {{RESPOSTA_LITERAL_E_DATA | "sem resposta documentada"}}.
5. Verificação do cliente: {{ITENS_DO_INVENTARIO_COM_ORIGEM}}.

[[VARIANTE: OBRIGACAO=FAZER]]
Quadro alcance × cumprido × pendente (anexo):

| # | Item da ordem (literal) | Alcance | Prazo da ordem | Resposta | Verificação | Situação | Providência |
|---|---|---|---|---|---|---|---|
| 1 | {{ITEM}} | {{URL_IDENTIFICADOR_PERIODO}} | {{PRAZO_LITERAL}} | {{RESPOSTA}} | {{ITEM_INVENTARIO}} | {{SITUACAO}} | {{PROVIDENCIA}} |
[[/VARIANTE]]

[[VARIANTE: OBRIGACAO=QUANTIA]]
Demonstrativo do crédito (anexo, elaborado por {{ADVOGADO|PLUGIN_DE_CALCULO}}): principal {{VALOR}}, índice {{INDICE}}, juros {{JUROS}}, termos {{TERMO_INICIAL}}–{{TERMO_FINAL}}, descontos {{DESCONTOS}}. Sem demonstrativo: PENDENTE DE PROVA.
[[/VARIANTE]]

[[VARIANTE: OBRIGACAO=QUANTIA · CUMPRIMENTO=PROVISORIO]]
Caução: levantamento de depósito e atos de alienação dependem de caução suficiente e idônea (art. 520, IV, [CPC3-520-527]): {{CAUCAO_OFERECIDA | DISPENSA_PELO_ART_521_INCISO_COM_DOCUMENTO}} ([CPC3-520-527]). Sem documento da hipótese de dispensa: PENDENTE DE PROVA.
[[/VARIANTE]]

## II. DOS FUNDAMENTOS

{{FUNDAMENTOS_PROCESSUAIS_COM_ID}}  <!-- da skill de fase; cada linha com [ID] -->
{{FUNDAMENTOS_MATERIAIS_DO_BLOCO}}  <!-- só [ID] presentes no BLOCO MATERIAL -->

## III. DOS PEDIDOS

[[VARIANTE: POLO=EXEQUENTE]]
a) a intimação de {{EXECUTADO}} para {{CUMPRIR_ITEM_A_ITEM | PAGAR_NO_PRAZO_LITERAL_COM_ID}};
[[/VARIANTE]]
[[VARIANTE: POLO=EXEQUENTE · RITO=COMUM]]
b) {{MEDIDAS_DE_EFETIVACAO | MULTA_E_HONORARIOS_DO_ART_523_P1_COM_ID}} (art. 523, § 1º, [CPC3-520-527]);
[[/VARIANTE]]
[[VARIANTE: POLO=EXEQUENTE · RITO=JUIZADO]]
b) {{MEDIDAS_DE_EFETIVACAO}}; multa e honorários do art. 523, § 1º, no Juizado: PENDENTE DE FONTE ([JEC3L-54-55], art. 55);
[[/VARIANTE]]
[[VARIANTE: POLO=EXEQUENTE]]
c) {{PENHORA | PROVIDENCIA_POR_ITEM_PENDENTE}};
[[/VARIANTE]]
[[VARIANTE: POLO=EXEQUENTE · CUMPRIMENTO=PROVISORIO · OBRIGACAO=QUANTIA]]
d) o recebimento da {{CAUCAO | DISPENSA_DE_CAUCAO_PELO_ART_521_INCISO}} para o levantamento e os atos do art. 520, IV ([CPC3-520-527]);
[[/VARIANTE]]
[[VARIANTE: POLO=EXEQUENTE · RITO=JUIZADO · OBRIGACAO=FAZER]]
d) não cumprida a obrigação, {{ELEVACAO_DA_MULTA | TRANSFORMACAO_DA_CONDENACAO_EM_PERDAS_E_DANOS_A_ARBITRAR}}, seguindo-se a execução por quantia certa, incluída a multa vencida de obrigação de dar, quando evidenciada a malícia do devedor (art. 52, V, [JEC3-52]); multa de fazer ou não fazer cobrada como quantia: PENDENTE DE FONTE;
e) {{CUMPRIMENTO_POR_OUTREM_COM_DEPOSITO_PARA_DESPESAS}} (art. 52, VI, [JEC3-52]), se for o caso;
[[/VARIANTE]]
[[VARIANTE: POLO=EXECUTADO · RITO=COMUM]]
a) {{RECEBIMENTO_DA_IMPUGNACAO | JUNTADA_DA_PROVA_DE_CUMPRIMENTO | DEPOSITO_ESPONTANEO_COM_MEMORIA}};
b) {{MATERIAS_DO_ART_525_P1_COM_ID}};
c) {{MODIFICACAO_OU_EXCLUSAO_DA_MULTA_VINCENDA | EFEITO_SUSPENSIVO_COM_GARANTIA}};
[[/VARIANTE]]
[[VARIANTE: POLO=EXECUTADO · RITO=JUIZADO]]
a) o recebimento dos embargos nos autos da execução ou a juntada da prova de cumprimento;
b) {{MATERIAS_DO_ART_52_IX_ALINEAS_A_D}} — falta ou nulidade da citação na revelia, manifesto excesso, erro de cálculo ou causa impeditiva, modificativa ou extintiva superveniente à sentença ([JEC3-52]);
c) {{MODIFICACAO_OU_EXCLUSAO_DA_MULTA_VINCENDA_COM_ID}}, se cabível;
[[/VARIANTE]]
[[VARIANTE: POLO=TERCEIRO]]
a) o recebimento da informação de {{CUMPRIMENTO | IMPOSSIBILIDADE_DOCUMENTADA}}, nos limites literais da ordem;
[[/VARIANTE]]

Valor executado ou de referência: {{VALOR_DO_DEMONSTRATIVO | VALOR_FIXADO_NA_DECISAO | "PENDENTE DE PROVA"}}.

## IV. DAS PROVAS

{{LISTA_DE_DOCUMENTOS: decisão, certidões, intimação, resposta, inventário, demonstrativo, caução ou documento da dispensa}}

## V. FECHO

Termos em que pede deferimento.

[LOCAL — PENDENTE DE PROVA], [DATA — PENDENTE DE PROVA].

[ADVOGADO — PENDENTE DE PROVA] — OAB [UF E NÚMERO DA OAB — PENDENTE DE PROVA]
