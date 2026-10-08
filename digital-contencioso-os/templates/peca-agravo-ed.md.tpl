<!-- esqueleto: peca-agravo-ed · consumido por skills/agravo-e-embargos-de-declaracao-digital/SKILL.md -->
<!-- REGRA DE ENTREGA (única, vale para todo o esqueleto): a peça entregue não traz chaves duplas de slot, marcador de variante nem comentário HTML (estas linhas de cabeçalho saem também). Slot sem dado vira [NOME DO CAMPO — PENDENTE DE PROVA] na linha, em maiúsculas (ex.: [VARA — PENDENTE DE PROVA]); nunca marcador em minúscula nem o estado sem complemento. Só entra a variante do polo, do rito e do ato do caso; alternativa que a prova não resolve (tese A/B, autos físicos ou eletrônicos) sai do corpo e vai às pendências. A peça é do polo do cliente (linha POLO do perfil), nunca do adverso. Tema 987/533: [ID] + rótulo de fonte parcial na mesma linha. Estado por item: só MINUTA PARA REVISÃO HUMANA, PENDENTE DE PROVA, PENDENTE DE FONTE, BLOQUEADO, FORA DO RECORTE. A peça é gravada na pasta do caso. -->
<!-- slots {{...}}: só com dado do caso e origem; sem dado ⇒ PENDENTE DE PROVA na linha. Nenhum {{ pode restar na minuta. -->
<!-- variantes: variante = bloco entre "VARIANTE chave=valor" e "FIM VARIANTE"; entra só o conteúdo do bloco do caso e os marcadores saem (peca: agravo-instrumento | contraminuta | agravo-interno | embargos-declaracao | resposta-embargos; polo: ATIVO | PASSIVO | TERCEIRO; rito: comum | juizado). Juizado: só embargos de declaração ([JEC3L-48-50]); agravo no Juizado: PENDENTE DE FONTE. -->
<!-- [ID] processual vem da skill; [ID] de direito material, só do BLOCO MATERIAL. -->

<!-- VARIANTE peca=agravo-instrumento -->
## AGRAVO DE INSTRUMENTO

EXCELENTÍSSIMO(A) SENHOR(A) DESEMBARGADOR(A) PRESIDENTE DO {{tribunal}}

Origem: {{vara}} — Processo nº {{numero_processo}}
Agravante: {{agravante_nome}}, {{agravante_qualificacao}} · Advogado: {{advogado_agravante_nome_endereco}}
Agravado: {{agravado_nome}}, {{agravado_qualificacao}} · Advogado: {{advogado_agravado_nome_endereco}}
<!-- requisitos: [CPC3-1016-1021], art. 1.016, I a IV -->

{{agravante_nome}} vem interpor **AGRAVO DE INSTRUMENTO** contra a decisão de {{decisao_ref}}, com fundamento em [CPC3L-1015], {{inciso_ou_paragrafo_unico}}.

### I. Tempestividade, preparo e instrução
- Prazo de 15 dias ([CPC-1003], § 5º; [CPC-219]); intimação em {{data_intimacao_documentada}}; data final a conferir pelo advogado.
- Preparo: {{guia_ref}} ([CPC3C-1007]; [CPC3-1016-1021], art. 1.017, § 1º).
- Peças: {{autos_eletronicos_ou_rol_art_1017_I}} <!-- autos eletrônicos: dispensa do § 5º; autos físicos: rol do inciso I ou declaração do inciso II -->
<!-- VARIANTE polo=TERCEIRO -->
- Legitimidade do terceiro: {{demonstracao_art_996}} ([CPC3-994-998], art. 996, parágrafo único).
<!-- FIM VARIANTE -->

### II. Síntese da decisão e dos fatos
{{sintese}} <!-- fatos com item de prova e origem, do BLOCO MATERIAL -->

### III. Cabimento
{{cabimento}} ([CPC3L-1015], {{inciso}})

### IV. Razões de reforma ou invalidação
<!-- VARIANTE polo=ATIVO -->
{{tutela_ou_exibicao_negada_pedido_delimitado}}
<!-- FIM VARIANTE -->
<!-- VARIANTE polo=PASSIVO -->
{{ordem_indelimitada_inexequivel_ou_multa}}
<!-- FIM VARIANTE -->

### V. Efeito suspensivo ou tutela recursal
{{probabilidade_de_provimento}} · {{risco_de_dano_grave_com_prova}} ([CPC3-1016-1021], art. 1.019, I; [CPC3-994-998], art. 995, parágrafo único)

### VI. Pedidos
a) {{efeito_suspensivo_ou_antecipacao_da_pretensao_recursal}};
b) a intimação do agravado para responder ([CPC3-1016-1021], art. 1.019, II);
c) o provimento para {{reformar_ou_invalidar}} a decisão agravada.

Valor da causa: o fixado nos autos ({{valor_causa_autos}}). Documentos: {{rol_documentos}}.

[LOCAL — PENDENTE DE PROVA], [DATA — PENDENTE DE PROVA].
[ADVOGADO — PENDENTE DE PROVA] — OAB [NÚMERO DA OAB — PENDENTE DE PROVA]
<!-- FIM VARIANTE -->

<!-- VARIANTE peca=contraminuta -->
## CONTRAMINUTA DE AGRAVO DE INSTRUMENTO
Ao(À) Excelentíssimo(a) Relator(a) do Agravo nº {{numero_agravo}} — {{tribunal}} · Origem: {{vara}} — Processo nº {{numero_processo}}
Agravado: {{agravado_nome}}, {{agravado_qualificacao}} · Advogado: {{advogado_agravado_nome_endereco}}
Agravante: {{agravante_nome}}, {{agravante_qualificacao}}
Tempestividade: 15 dias da intimação ([CPC3-1016-1021], art. 1.019, II; [CPC-219]); intimação em {{data_intimacao_documentada}}; data final a conferir pelo advogado.
### I. Inadmissibilidade <!-- intempestividade; hipótese fora de [CPC3L-1015]; descumprimento do art. 1.018, § 2º, arguido e provado (§ 3º) -->
{{inadmissibilidade}}
### II. Manutenção da decisão
{{manutencao}} <!-- fatos com item de prova e origem, do BLOCO MATERIAL -->
### III. Pedidos
a) o não conhecimento ou o desprovimento; b) a revogação do efeito suspensivo ou da tutela recursal, se concedidos.
Valor da causa: o fixado nos autos ({{valor_causa_autos}}). Documentos que entender necessários ([CPC3-1016-1021], art. 1.019, II): {{documentos}}.
[LOCAL — PENDENTE DE PROVA], [DATA — PENDENTE DE PROVA]. [ADVOGADO — PENDENTE DE PROVA] — OAB [NÚMERO DA OAB — PENDENTE DE PROVA]
<!-- FIM VARIANTE -->

<!-- VARIANTE peca=agravo-interno -->
## AGRAVO INTERNO
Ao(À) Excelentíssimo(a) Relator(a) {{relator}}, para julgamento pelo órgão colegiado — {{tribunal}} · {{numero_processo_ou_recurso}}
Agravante: {{agravante_nome}}, {{agravante_qualificacao}} · Advogado: {{advogado_agravante_nome_endereco}}
Agravado: {{agravado_nome}}, {{agravado_qualificacao}}
Prazo: 15 dias ([CPC-1003], § 5º; [CPC-219]); intimação em {{data_intimacao_documentada}}; data final a conferir pelo advogado.
### I. Decisão agravada e seus fundamentos
{{fundamentos_da_decisao_um_a_um}}
### II. Impugnação especificada de cada fundamento ([CPC3-1016-1021], art. 1.021, § 1º)
{{impugnacao_ponto_a_ponto}}
### III. Pedidos
a) a retratação; b) não havendo, o provimento pelo colegiado ([CPC3-1016-1021], art. 1.021, § 2º).
<!-- risco: multa do art. 1.021, § 4º, se manifestamente inadmissível ou improcedente por unanimidade — avisar o cliente -->
Valor da causa: o fixado nos autos ({{valor_causa_autos}}). Documentos: os dos autos ({{refs_autos}}).
[LOCAL — PENDENTE DE PROVA], [DATA — PENDENTE DE PROVA]. [ADVOGADO — PENDENTE DE PROVA] — OAB [NÚMERO DA OAB — PENDENTE DE PROVA]
<!-- FIM VARIANTE -->

<!-- VARIANTE peca=embargos-declaracao -->
## EMBARGOS DE DECLARAÇÃO
Ao {{prolator}} — {{orgao}} · {{numero_processo_ou_recurso}}
Embargante: {{embargante_nome}}, {{embargante_qualificacao}} · Embargado: {{embargado_nome}}, {{embargado_qualificacao}} · Advogado: {{advogado_nome}}, OAB {{oab}}
<!-- VARIANTE rito=comum -->
Prazo: 5 dias, sem preparo ([CPC3-1022-1026], art. 1.023; [CPC-219]); intimação em {{data_intimacao_documentada}}; data final a conferir pelo advogado.
<!-- FIM VARIANTE -->
<!-- VARIANTE rito=juizado -->
Prazo: 5 dias contados da ciência da decisão, por escrito ou oralmente; cabimento nos casos do CPC; interrompem o prazo do recurso ([JEC3L-48-50], arts. 48 a 50); ciência em {{data_ciencia_documentada}}; contagem no Juizado: PENDENTE DE FONTE; data final a conferir pelo advogado.
<!-- FIM VARIANTE -->
### I. Vícios ([CPC3-1022-1026], art. 1.022)
| # | Trecho da decisão | Vício (obscuridade, contradição, omissão, erro material) | O que deveria constar |
|---|---|---|---|
| 1 | {{trecho}} | {{vicio}} | {{correcao}} |
### II. Prequestionamento <!-- se o objetivo for REsp/RE: [CPC3-1022-1026], art. 1.025 -->
{{dispositivos_e_teses_a_prequestionar}}
### III. Pedidos
a) o acolhimento para {{sanar_vicios}}; b) {{efeitos_modificativos_se_for_o_caso}} <!-- com intimação do embargado, [CPC3-1022-1026], art. 1.023, § 2º -->
Valor da causa: o fixado nos autos ({{valor_causa_autos}}). Documentos: a decisão embargada ({{decisao_ref}}).
[LOCAL — PENDENTE DE PROVA], [DATA — PENDENTE DE PROVA]. [ADVOGADO — PENDENTE DE PROVA] — OAB [NÚMERO DA OAB — PENDENTE DE PROVA]
<!-- FIM VARIANTE -->

<!-- VARIANTE peca=resposta-embargos -->
## MANIFESTAÇÃO SOBRE EMBARGOS DE DECLARAÇÃO
Ao {{prolator}} — {{orgao}} · {{numero_processo_ou_recurso}} · Prazo: 5 dias ([CPC3-1022-1026], art. 1.023, § 2º); intimação em {{data_intimacao_documentada}}; data final a conferir pelo advogado.
Embargado (manifestante): {{embargado_nome}}, {{embargado_qualificacao}} · Embargante: {{embargante_nome}}, {{embargante_qualificacao}} · Advogado: {{advogado_nome}}, OAB {{oab}}
{{inexistencia_do_vicio_ponto_a_ponto}} · {{carater_protelatorio_se_houver}} ([CPC3-1022-1026], art. 1.026, § 2º)
Pedido: rejeição dos embargos.
Valor da causa: o fixado nos autos ({{valor_causa_autos}}). Documentos: os dos autos ({{refs_autos}}).
[LOCAL — PENDENTE DE PROVA], [DATA — PENDENTE DE PROVA]. [ADVOGADO — PENDENTE DE PROVA] — OAB [NÚMERO DA OAB — PENDENTE DE PROVA]
<!-- FIM VARIANTE -->
