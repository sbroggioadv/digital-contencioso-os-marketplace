<!--
Esqueleto de peça — tutela provisória (caso digital). Consumido por:
  skills/tutela-e-pedidos-delimitados-digital (pedir e responder)
  skills/legitimidade-e-competencia-digital (bloco "Competência e legitimidade")
REGRA DE ENTREGA (única, vale para todo o esqueleto):
  A peça entregue não traz chaves duplas de slot, colchetes duplos, marcador de variante nem comentário HTML (este cabeçalho sai também).
  {{CAMPO}} = dado do caso, com origem documental; sem documento, o slot vira [NOME DO CAMPO — PENDENTE DE PROVA] na linha, em maiúsculas (ex.: [VARA — PENDENTE DE PROVA]); nunca marcador em minúscula nem o estado sem complemento.
  [ID] = bloco existente no context/INDICE.md; fundamento sem [ID] leva PENDENTE DE FONTE na linha. Tema 987/533: [ID] + rótulo de fonte parcial na mesma linha.
  [[VARIANTE: ...]] ... [[/VARIANTE]] = entra só o bloco do polo, do rito e da forma do caso; os demais e os próprios marcadores são apagados. Alternativa que a prova não resolve sai do corpo e vai às pendências.
  A peça é do polo do cliente (linha POLO do perfil), nunca do adverso. Estado por item: só MINUTA PARA REVISÃO HUMANA, PENDENTE DE PROVA, PENDENTE DE FONTE, BLOQUEADO, FORA DO RECORTE.
  Sem promessa de deferimento. A peça é gravada na pasta do caso e segue para revisao-final-digital.
-->

[[VARIANTE: RITO=COMUM]]
EXCELENTÍSSIMO(A) SENHOR(A) DOUTOR(A) JUIZ(A) DE DIREITO DA {{VARA}} DA COMARCA DE {{COMARCA}}
[[/VARIANTE]]
[[VARIANTE: RITO=JUIZADO]]
EXCELENTÍSSIMO(A) SENHOR(A) DOUTOR(A) JUIZ(A) DO {{JUIZADO_ESPECIAL_CIVEL}} DA COMARCA DE {{COMARCA}}
[[/VARIANTE]]
[[VARIANTE: RITO=FEDERAL]]
EXCELENTÍSSIMO(A) SENHOR(A) DOUTOR(A) JUIZ(A) FEDERAL DA {{VARA_FEDERAL}} DA SEÇÃO JUDICIÁRIA DE {{SECAO}}
[[/VARIANTE]]

{{PROCESSO_N | "distribuição por dependência / livre distribuição"}}

{{NOME_CLIENTE}}, {{QUALIFICACAO_CLIENTE}}, por seu advogado (procuração {{FOLHA_PROCURACAO}}), {{em face de | nos autos em que contendem (POLO=TERCEIRO, destinatário não-parte)}} {{NOME_PARTE_CONTRARIA_OU_PARTES_DO_PROCESSO}}, {{QUALIFICACAO}}, vem apresentar

[[VARIANTE: POLO=ATIVO · FORMA=INCIDENTAL]]
PEDIDO DE TUTELA DE URGÊNCIA
[[/VARIANTE]]
[[VARIANTE: POLO=ATIVO · FORMA=ANTECIPADA_ANTECEDENTE]]
PETIÇÃO INICIAL DE TUTELA ANTECIPADA REQUERIDA EM CARÁTER ANTECEDENTE (o autor declara valer-se do benefício do art. 303 — [CPC3-303-310], art. 303, § 5º)
[[/VARIANTE]]
[[VARIANTE: POLO=ATIVO · FORMA=CAUTELAR_ANTECEDENTE]]
PETIÇÃO INICIAL DE TUTELA CAUTELAR REQUERIDA EM CARÁTER ANTECEDENTE
[[/VARIANTE]]
[[VARIANTE: POLO=PASSIVO]]
{{MANIFESTAÇÃO SOBRE O PEDIDO DE TUTELA | CONTESTAÇÃO AO PEDIDO CAUTELAR ANTECEDENTE — um só, pelo ato do caso}}
[[/VARIANTE]]
[[VARIANTE: POLO=TERCEIRO]]
MANIFESTAÇÃO DO DESTINATÁRIO NÃO-PARTE SOBRE O ALCANCE E A VIABILIDADE DA ORDEM
[[/VARIANTE]]

<!-- RITO=JUIZADO: causas de honra, reputação, personalidade e indisponibilização de conteúdo "poderão ser apresentadas" nos juizados ([MCI-18-19], § 3º, se no BLOCO MATERIAL); limites do [JEC-3]; tutela antecedente (CPC 303 a 310) no Juizado: PENDENTE DE FONTE. -->

## I. COMPETÊNCIA E LEGITIMIDADE

<!-- bloco produzido por legitimidade-e-competencia-digital -->
[[VARIANTE: POLO=ATIVO]]
Juízo: {{JUIZO_E_INCISO_COM_ID}}. Fatos que o fixam: {{DOMICILIO_SEDE_LOCAL_DO_FATO_RELACAO_COM_DOCUMENTO}}.
Legitimidade: {{CADA_PARTE_E_SUA_CONDICAO_COM_ID}}.
Pedido: fixação da competência deste juízo e manutenção de {{CADA_REU}} no polo passivo.
[[/VARIANTE]]
[[VARIANTE: POLO=PASSIVO]]
Preliminar de {{INCOMPETENCIA_ABSOLUTA_OU_RELATIVA | ILEGITIMIDADE}} (art. 337, II e XI, [CPC-335-342]): {{FATOS_COM_DOCUMENTO}}.
{{SE_ILEGITIMIDADE: indicação do sujeito passivo, quando conhecido (art. 339, [CPC-335-342]) — sem documento: PENDENTE DE PROVA}}.
{{SE_INCOMPETENCIA: contestação protocolada no foro do domicílio do réu, com comunicação ao juízo da causa (art. 340, [CPC-335-342]), se for o caso}}.
Pedidos: {{REMESSA_AO_JUIZO_COMPETENTE | INDICACAO_DO_SUJEITO_PASSIVO_E_EXCLUSAO_DA_PARTE_COM_INTIMACAO_DO_AUTOR_PARA_OS_ATOS_DO_ART_339_PP1_E_2}} (art. 339, [CPC-335-342]); a substituição do réu é ato do autor (art. 338 e art. 339, §§ 1º e 2º, [CPC-335-342]).
[[/VARIANTE]]
[[VARIANTE: POLO=TERCEIRO]]
Condição: destinatário da ordem, não parte ({{FUNDAMENTO_COM_ID}}); sem discussão de mérito.
[[/VARIANTE]]

## II. DOS FATOS

{{FATOS_DO_BLOCO_MATERIAL_COM_ITEM_DE_PROVA_E_ORIGEM}}

## III. DOS FUNDAMENTOS

[[VARIANTE: POLO=ATIVO]]
Probabilidade do direito: {{FUNDAMENTOS_DO_BLOCO_MATERIAL_COM_ID}}.
Perigo de dano ou risco ao resultado útil: {{FATO_COM_PROVA}}.
Reversibilidade e caução: {{ANALISE}}.
[[/VARIANTE]]
[[VARIANTE: POLO=PASSIVO]]
Requisito a requisito: {{PROBABILIDADE | PERIGO | IRREVERSIBILIDADE | CAUCAO}} — {{CONFRONTO_COM_A_PROVA_DOS_AUTOS}}.
Delimitação: {{URL | IDENTIFICADOR | PERIODO_AUSENTE}}.
[[/VARIANTE]]
[[VARIANTE: POLO=TERCEIRO]]
Alcance literal da ordem: {{ITEM_DA_ORDEM}}. Viabilidade técnica: {{CUMPRIMENTO | IMPOSSIBILIDADE_DOCUMENTADA}} (sem documento: PENDENTE DE PROVA).
[[/VARIANTE]]

## IV. DOS PEDIDOS

| # | Pedido | Objeto delimitado | Destinatário | Fundamento [ID] | Prova | Multa |
|---|---|---|---|---|---|---|
| 1 | {{PEDIDO}} | {{URL_IDENTIFICADOR_PERIODO_DIREITO}} | {{DESTINATARIO}} | {{ID}} | {{ITEM_INVENTARIO}} | {{SIM_NAO — valor definido pelo advogado}} |

[[VARIANTE: FORMA=ANTECIPADA_ANTECEDENTE]]
Pedido de tutela final: {{PEDIDO_FINAL}}.
[[/VARIANTE]]
[[VARIANTE: FORMA=CAUTELAR_ANTECEDENTE]]
Lide e fundamento do pedido principal: {{LIDE_E_FUNDAMENTO}}.
[[/VARIANTE]]
[[VARIANTE: POLO=PASSIVO]]
Pedido: {{INDEFERIMENTO | REVOGACAO | MODIFICACAO_OU_EXCLUSAO_DA_MULTA_VINCENDA}}.
[[/VARIANTE]]
[[VARIANTE: POLO=TERCEIRO]]
Pedido: recebimento da manifestação e delimitação do alcance da ordem nos limites literais, sem pedido de mérito.
[[/VARIANTE]]

## V. VALOR DA CAUSA

[[VARIANTE: FORMA=ANTECIPADA_ANTECEDENTE]]
Dá-se à causa o valor de {{VALOR}}, considerado o pedido de tutela final ([CPC3-303-310], art. 303, § 4º).
[[/VARIANTE]]
[[VARIANTE: FORMA=CAUTELAR_ANTECEDENTE]]
Dá-se à causa o valor de {{VALOR_DO_PEDIDO_PRINCIPAL | "PENDENTE DE FONTE"}}, pelos arts. 291 e 292 ([CPC3-291-292]); o art. 305 não traz regra de valor ([CPC3-303-310]).
[[/VARIANTE]]

## VI. DAS PROVAS

{{LISTA_DE_DOCUMENTOS: inventário, matriz, notificações, respostas, termos colados}}

## VII. FECHO

Termos em que pede deferimento.

[LOCAL — PENDENTE DE PROVA], [DATA — PENDENTE DE PROVA].

[ADVOGADO — PENDENTE DE PROVA] — OAB [UF E NÚMERO DA OAB — PENDENTE DE PROVA]
