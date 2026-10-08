<!-- esqueleto: peca-recursos-excepcionais · consumido por skills/recursos-excepcionais-digital/SKILL.md -->
<!-- REGRA DE ENTREGA (única, vale para todo o esqueleto): slot {{...}} só com dado do caso e origem. A peça entregue não traz chaves duplas de slot, marcador de variante nem comentário HTML (estas linhas de cabeçalho saem também). Slot sem dado vira [NOME DO CAMPO — PENDENTE DE PROVA] na linha, em maiúsculas (ex.: [VARA — PENDENTE DE PROVA]); nunca marcador em minúscula nem o estado sem complemento. Só entra a variante do polo, do rito e do ato do caso; alternativa que a prova não resolve sai do corpo e vai às pendências. A peça é do polo do cliente (linha POLO do perfil), nunca do adverso. Estado por item: só MINUTA PARA REVISÃO HUMANA, PENDENTE DE PROVA, PENDENTE DE FONTE, BLOQUEADO, FORA DO RECORTE. A peça é gravada na pasta do caso. -->
<!-- variantes: variante = bloco entre "VARIANTE chave=valor" e "FIM VARIANTE"; entra só o conteúdo do bloco do caso e os marcadores saem (peca: resp | re | adesivo | agravo-resp-re | contrarrazoes; polo: ATIVO | PASSIVO). RE e REsp em petições distintas ([CPC3-1029-1042], art. 1.029). -->
<!-- [ID] processual vem da skill; [ID] de direito material, só do BLOCO MATERIAL. Tema 987/533: [ID] + rótulo do tema na mesma linha — 987: "fonte parcial — embargos julgados em 17/06/2026, acórdão não publicado"; 533: "fonte parcial — mérito publicado; embargos suspensos para posterior proclamação, sem resultado proclamado" (ex.: [T533-SITUACAO], [T533ED-DEC-2409]). -->

<!-- VARIANTE peca=resp -->
## RECURSO ESPECIAL

EXCELENTÍSSIMO(A) SENHOR(A) DESEMBARGADOR(A) {{presidente_ou_vice}} DO {{tribunal_recorrido}}

Processo nº {{numero_processo}}

{{recorrente_nome}}, {{recorrente_qualificacao}}, por seu advogado ({{procuracao_ref}}), em face de {{recorrido_nome}}, {{recorrido_qualificacao}}, vem interpor **RECURSO ESPECIAL** contra o acórdão de {{acordao_ref}}, com fundamento em [CF3-105-III], alínea {{a_b_ou_c}}, e [CPC3-1029-1042], art. 1.029, pelas razões anexas.

- Tempestividade: 15 dias ([CPC-1003], § 5º; [CPC-219]); intimação em {{data_intimacao_documentada}}; embargos de declaração julgados em {{data_ed_se_houver}} ([CPC3-1022-1026], art. 1.026); data final a conferir pelo advogado.
- Preparo: {{guia_ref}} ([CPC3C-1007]); valores da tabela: PENDENTE DE FONTE.

Requer a intimação do recorrido para contrarrazões e, admitido, a remessa ao Superior Tribunal de Justiça ([CPC3-1029-1042], art. 1.030).

[LOCAL — PENDENTE DE PROVA], [DATA — PENDENTE DE PROVA]. [ADVOGADO — PENDENTE DE PROVA] — OAB [NÚMERO DA OAB — PENDENTE DE PROVA]

## RAZÕES DO RECURSO ESPECIAL

EGRÉGIO SUPERIOR TRIBUNAL DE JUSTIÇA · Recorrente: {{recorrente_nome}} · Recorrido: {{recorrido_nome}}

### I. Síntese do processo e do acórdão
{{sintese}} <!-- questão de direito decidida; sem reexame de fato -->
### II. Cabimento ([CF3-105-III], alínea {{alinea}})
{{lei_federal_violada_ou_divergencia}}
### III. Prequestionamento
{{trecho_do_acordao_que_decidiu_a_questao}} <!-- ou elementos dos embargos: [CPC3-1022-1026], art. 1.025 -->
### IV. Relevância da questão de direito federal infraconstitucional
{{relevancia_economica_politica_social_ou_juridica}} ([CPC3-1029-1042], art. 1.035-A, §§ 1º e 2º; [CF3L-105-P2-P3], § 2º)
{{hipotese_de_presuncao_se_houver}} <!-- [CF3L-105-P2-P3], § 3º, I a VI; [CPC3-1029-1042], art. 1.035-A, § 4º -->
<!-- transição: exigido contra acórdão publicado após a vigência ([L15484-4]; [L15484-7]; [L15484-DOU]); data exata de início PENDENTE DE FONTE; tópico incluído por prudência -->
### V. Razões de reforma ou invalidação
<!-- VARIANTE polo=ATIVO -->
{{razoes_recorrente_afetado}}
<!-- FIM VARIANTE -->
<!-- VARIANTE polo=PASSIVO -->
{{razoes_recorrente_requerido}}
<!-- FIM VARIANTE -->
### VI. Dissídio jurisprudencial <!-- só na alínea c: [CPC3-1029-1042], art. 1.029, § 1º -->
| Acórdão recorrido | Acórdão paradigma (fonte) | Circunstância comum | Solução divergente |
|---|---|---|---|
| {{trecho_recorrido}} | {{paradigma_com_fonte}} | {{circunstancia}} | {{divergencia}} |
### VII. Pedidos
a) o conhecimento e o provimento para {{reformar_ou_invalidar}}; b) {{efeito_suspensivo_se_cabivel}} ([CPC3-1029-1042], art. 1.029, § 5º).
Valor da causa: o fixado nos autos ({{valor_causa_autos}}). Documentos: {{documentos}}.
[LOCAL — PENDENTE DE PROVA], [DATA — PENDENTE DE PROVA]. [ADVOGADO — PENDENTE DE PROVA] — OAB [NÚMERO DA OAB — PENDENTE DE PROVA]
<!-- FIM VARIANTE -->

<!-- VARIANTE peca=re -->
## RECURSO EXTRAORDINÁRIO

EXCELENTÍSSIMO(A) SENHOR(A) {{tratamento}} {{presidente_ou_vice}} DO {{tribunal_ou_turma_recorrida}}
<!-- tratamento: DESEMBARGADOR(A) no tribunal; JUIZ(A) DE DIREITO na turma recursal do Juizado, composta por juízes togados de primeiro grau ([JEC3-41-46], art. 41, § 1º) -->

Processo nº {{numero_processo}}

{{recorrente_nome}}, {{recorrente_qualificacao}}, por seu advogado ({{procuracao_ref}}), em face de {{recorrido_nome}}, {{recorrido_qualificacao}}, vem interpor **RECURSO EXTRAORDINÁRIO** contra o acórdão de {{acordao_ref}}, com fundamento em [CF3-102-III], alínea {{a_a_d}}, e [CPC3-1029-1042], art. 1.029, pelas razões anexas.
- Tempestividade: 15 dias ([CPC-1003], § 5º; [CPC-219]); intimação em {{data_intimacao_documentada}}; data final a conferir pelo advogado.
- Preparo: {{guia_ref}} ([CPC3C-1007]); valores da tabela: PENDENTE DE FONTE.

Requer a intimação do recorrido para contrarrazões e, admitido, a remessa ao Supremo Tribunal Federal ([CPC3-1029-1042], art. 1.030).

[LOCAL — PENDENTE DE PROVA], [DATA — PENDENTE DE PROVA]. [ADVOGADO — PENDENTE DE PROVA] — OAB [NÚMERO DA OAB — PENDENTE DE PROVA]

## RAZÕES DO RECURSO EXTRAORDINÁRIO

EGRÉGIO SUPREMO TRIBUNAL FEDERAL · Recorrente: {{recorrente_nome}} · Recorrido: {{recorrido_nome}}

### I. Síntese do processo e do acórdão
{{sintese}}
### II. Cabimento ([CF3-102-III], alínea {{alinea}})
{{dispositivo_constitucional_e_como_foi_contrariado}}
### III. Prequestionamento
{{trecho_do_acordao}} <!-- ou [CPC3-1022-1026], art. 1.025 -->
### IV. Repercussão geral ([CF3-102-P3]; [CPC3-1029-1042], art. 1.035, §§ 1º a 3º)
{{questoes_relevantes_que_ultrapassam_o_processo}}
<!-- Tema 987/533, se for o caso: [T987-TITULO] — fonte parcial — embargos julgados em 17/06/2026, acórdão não publicado; [T533-TITULO] — fonte parcial — mérito publicado; embargos suspensos para posterior proclamação, sem resultado proclamado -->
### V. Razões de reforma ou invalidação
<!-- VARIANTE polo=ATIVO -->
{{razoes_recorrente_afetado}}
<!-- FIM VARIANTE -->
<!-- VARIANTE polo=PASSIVO -->
{{razoes_recorrente_requerido}}
<!-- FIM VARIANTE -->
### VI. Pedidos
a) o conhecimento e o provimento para {{reformar_ou_invalidar}}; b) {{efeito_suspensivo_se_cabivel}} ([CPC3-1029-1042], art. 1.029, § 5º).
Valor da causa: o fixado nos autos ({{valor_causa_autos}}). Documentos: {{documentos}}.
[LOCAL — PENDENTE DE PROVA], [DATA — PENDENTE DE PROVA]. [ADVOGADO — PENDENTE DE PROVA] — OAB [NÚMERO DA OAB — PENDENTE DE PROVA]
<!-- FIM VARIANTE -->

<!-- VARIANTE peca=adesivo -->
## RECURSO {{ESPECIAL_OU_EXTRAORDINARIO}} ADESIVO
EXCELENTÍSSIMO(A) SENHOR(A) {{tratamento}} {{presidente_ou_vice}} DO {{tribunal_recorrido}} — Processo nº {{numero_processo}}
<!-- tratamento: DESEMBARGADOR(A) no tribunal; JUIZ(A) DE DIREITO na turma recursal do Juizado, composta por juízes togados de primeiro grau ([JEC3-41-46], art. 41, § 1º) -->
<!-- dirigido ao órgão perante o qual o recurso independente foi interposto, no prazo de resposta; subordinado: não conhecido se houver desistência do principal ou se ele for inadmitido ([CPC3-994-998], art. 997, § 2º, I a III). Razões: as seções da variante resp ou re, inclusive relevância (REsp) ou repercussão geral (RE). -->
{{recorrente_adesivo_nome}}, {{recorrente_adesivo_qualificacao}}, por seu advogado ({{procuracao_ref}}), recorrido no recurso interposto por {{recorrente_principal_nome}}, {{recorrente_principal_qualificacao}}, vem interpor **RECURSO {{ESPECIAL_OU_EXTRAORDINARIO}} ADESIVO** contra o acórdão de {{acordao_ref}}, com fundamento em [CF3-105-III] (REsp) ou [CF3-102-III] (RE), alínea {{alinea}}, e [CPC3-994-998], art. 997, § 2º, II.
- Tempestividade: no prazo de resposta, 15 dias ([CPC3-994-998], art. 997, § 2º, I; [CPC-1003], § 5º; [CPC-219]); intimação em {{data_intimacao_documentada}}; data final a conferir pelo advogado.
- Preparo: {{guia_ref}} ([CPC3C-1007]).
{{razoes_conforme_variante_resp_ou_re}}
Pedidos: o conhecimento e o provimento para {{reformar_ou_invalidar}} o capítulo {{capitulo}}.
Valor da causa: o fixado nos autos ({{valor_causa_autos}}). Documentos: {{documentos}}.
[LOCAL — PENDENTE DE PROVA], [DATA — PENDENTE DE PROVA]. [ADVOGADO — PENDENTE DE PROVA] — OAB [NÚMERO DA OAB — PENDENTE DE PROVA]
<!-- FIM VARIANTE -->

<!-- VARIANTE peca=agravo-resp-re -->
## AGRAVO EM RECURSO {{ESPECIAL_OU_EXTRAORDINARIO}}
Ao(À) Excelentíssimo(a) {{presidente_ou_vice}} do {{tribunal_recorrido}} ([CPC3-1029-1042], art. 1.042, § 2º) — Processo nº {{numero_processo}}
<!-- só contra inadmissão pelo art. 1.030, V; inadmissão fundada em RG, relevância ou repetitivo ⇒ agravo interno (art. 1.030, § 2º). Um agravo por recurso inadmitido (art. 1.042, § 6º). Sem custas e despesas postais (§ 2º). -->
Agravante: {{agravante_nome}}, {{agravante_qualificacao}} · Agravado: {{agravado_nome}}, {{agravado_qualificacao}} · Advogado: {{advogado_nome}}, OAB {{oab}}
- Tempestividade: 15 dias ([CPC-1003], § 5º; [CPC-219]); intimação da decisão de inadmissão em {{data_intimacao_documentada}}; data final a conferir pelo advogado.
### I. Decisão agravada
{{fundamentos_da_inadmissao}}
### II. Impugnação de cada fundamento
{{impugnacao_ponto_a_ponto}}
### III. Pedidos
a) a retratação; b) não havendo, a remessa ao tribunal superior ([CPC3-1029-1042], art. 1.042, § 4º) e o provimento para admitir e julgar o recurso.
Valor da causa: o fixado nos autos ({{valor_causa_autos}}). Documentos: a decisão de inadmissão e o recurso inadmitido ({{documentos}}).
[LOCAL — PENDENTE DE PROVA], [DATA — PENDENTE DE PROVA]. [ADVOGADO — PENDENTE DE PROVA] — OAB [NÚMERO DA OAB — PENDENTE DE PROVA]
<!-- FIM VARIANTE -->

<!-- VARIANTE peca=contrarrazoes -->
## CONTRARRAZÕES AO RECURSO {{ESPECIAL_OU_EXTRAORDINARIO}}
Ao(À) Excelentíssimo(a) {{presidente_ou_vice}} do {{tribunal_recorrido}} — Processo nº {{numero_processo}}
Recorrido: {{recorrido_nome}}, {{recorrido_qualificacao}} · Recorrente: {{recorrente_nome}}, {{recorrente_qualificacao}} · Advogado: {{advogado_nome}}, OAB {{oab}}
Prazo: 15 dias ([CPC3-1029-1042], art. 1.030, caput; [CPC-219]); intimação em {{data_intimacao_documentada}}; data final a conferir pelo advogado.
### I. Inadmissibilidade
{{ausencia_de_prequestionamento_reexame_de_fato_falta_de_RG_ou_relevancia_acordao_conforme_tese}}
### II. Mérito: manutenção do acórdão
{{manutencao}}
### III. Pedidos
a) a negativa de seguimento ou a inadmissão ([CPC3-1029-1042], art. 1.030, I ou V); b) subsidiariamente, o desprovimento; c) a majoração dos honorários pelo trabalho adicional em grau recursal ([CPC3L-85-P11]).
Valor da causa: o fixado nos autos ({{valor_causa_autos}}). Documentos: os dos autos ({{refs_autos}}).
[LOCAL — PENDENTE DE PROVA], [DATA — PENDENTE DE PROVA]. [ADVOGADO — PENDENTE DE PROVA] — OAB [NÚMERO DA OAB — PENDENTE DE PROVA]
<!-- FIM VARIANTE -->
