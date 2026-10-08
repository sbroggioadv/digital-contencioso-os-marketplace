<!-- esqueleto: peca-apelacao · consumido por skills/apelacao-e-contrarrazoes-digital/SKILL.md -->
<!-- REGRA DE ENTREGA (única, vale para todo o esqueleto): slot {{...}} só com dado do caso e origem. A peça entregue não traz chaves duplas de slot, marcador de variante nem comentário HTML (estas linhas de cabeçalho saem também). Slot sem dado vira [NOME DO CAMPO — PENDENTE DE PROVA] na linha, em maiúsculas (ex.: [VARA — PENDENTE DE PROVA]); nunca marcador em minúscula nem o estado sem complemento. Só entra a variante do polo, do rito e do ato do caso; alternativa que a prova não resolve sai do corpo e vai às pendências. A peça é do polo do cliente (linha POLO do perfil), nunca do adverso. Tema 987/533: [ID] + rótulo de fonte parcial na mesma linha. Estado por item: só MINUTA PARA REVISÃO HUMANA, PENDENTE DE PROVA, PENDENTE DE FONTE, BLOQUEADO, FORA DO RECORTE. A peça é gravada na pasta do caso. -->
<!-- variantes: variante = bloco entre "VARIANTE chave=valor" e "FIM VARIANTE"; entra só o conteúdo do bloco do caso e os marcadores saem (peca: apelacao | apelacao-adesiva | contrarrazoes | efeito-suspensivo; polo: ATIVO | PASSIVO | TERCEIRO; rito: comum). -->
<!-- [ID] processual vem da skill; [ID] de direito material, só do BLOCO MATERIAL. -->

<!-- VARIANTE peca=apelacao -->
## PETIÇÃO DE INTERPOSIÇÃO

EXCELENTÍSSIMO(A) SENHOR(A) DOUTOR(A) JUIZ(A) DE DIREITO DA {{vara}} DA COMARCA DE {{comarca}}
<!-- causa com União, autarquia ou empresa pública federal: juízo federal, conforme legitimidade-e-competencia-digital -->

Processo nº {{numero_processo}}

{{apelante_nome}}, {{apelante_qualificacao}}, por seu advogado ({{procuracao_ref}}), nos autos da ação que move/responde em face de {{apelado_nome}}, {{apelado_qualificacao}}, vem interpor **APELAÇÃO** contra a sentença de {{sentenca_ref}}, com fundamento em [CPC-1009] e [CPC3-1010-1014], pelas razões anexas.

- Tempestividade: prazo de 15 dias ([CPC-1003], § 5º), em dias úteis ([CPC-219]); intimação em {{data_intimacao_documentada}} ({{origem_intimacao}}); data final a conferir pelo advogado.
- Preparo: {{guia_preparo_ref}} ([CPC3C-1007]) <!-- ou: gratuidade deferida em {{decisao_gratuidade_ref}} -->
<!-- VARIANTE polo=TERCEIRO -->
- Legitimidade do terceiro prejudicado: {{demonstracao_art_996}} ([CPC3-994-998], art. 996, parágrafo único).
<!-- FIM VARIANTE -->

Requer o recebimento, a intimação do apelado para contrarrazões ([CPC3-1010-1014], art. 1.010, § 1º) e a remessa ao tribunal ({{tribunal}}).

[LOCAL — PENDENTE DE PROVA], [DATA — PENDENTE DE PROVA].
[ADVOGADO — PENDENTE DE PROVA] — OAB [NÚMERO DA OAB — PENDENTE DE PROVA]

## RAZÕES DE APELAÇÃO

Apelante: {{apelante_nome}} · Apelado: {{apelado_nome}} · Origem: {{vara}} — Processo nº {{numero_processo}}

EGRÉGIO TRIBUNAL {{tribunal}} · COLENDA CÂMARA/TURMA · EMINENTE RELATOR(A)

### I. Síntese do processo e da sentença
{{sintese}} <!-- fatos com item de prova e origem, do BLOCO MATERIAL -->

### II. Preliminares
<!-- só se houver: questões não agraváveis ([CPC-1009], § 1º); nulidade da sentença -->
{{preliminares}}

### III. Razões de reforma ou de nulidade
<!-- capítulo por capítulo: o que a sentença decidiu × o que o BLOCO MATERIAL e a prova mostram × fundamento com [ID] -->
<!-- VARIANTE polo=ATIVO -->
{{capitulo_pedido_delimitado_negado}}
<!-- FIM VARIANTE -->
<!-- VARIANTE polo=PASSIVO -->
{{capitulo_ordem_ou_condenacao_impugnada}}
<!-- FIM VARIANTE -->

### IV. Efeito suspensivo <!-- só nas hipóteses do art. 1.012, § 1º -->
{{fundamento_efeito_suspensivo}} ([CPC3-1010-1014], art. 1.012, §§ 3º e 4º)

### V. Pedidos
a) o conhecimento e o provimento da apelação para {{reformar_ou_anular}} o capítulo {{capitulo}} da sentença;
b) {{julgamento_imediato_art_1013_p3}} <!-- se cabível -->
c) a inversão dos ônus de sucumbência ([CPC-85]).

Valor da causa: o fixado nos autos ({{valor_causa_autos}}).
Provas: documentos dos autos ({{refs_autos}}); fato novo só nos termos de [CPC3-1010-1014], art. 1.014.

[LOCAL — PENDENTE DE PROVA], [DATA — PENDENTE DE PROVA].
[ADVOGADO — PENDENTE DE PROVA] — OAB [NÚMERO DA OAB — PENDENTE DE PROVA]
<!-- FIM VARIANTE -->

<!-- VARIANTE peca=apelacao-adesiva -->
## APELAÇÃO ADESIVA

EXCELENTÍSSIMO(A) SENHOR(A) DOUTOR(A) JUIZ(A) DE DIREITO DA {{vara}} DA COMARCA DE {{comarca}}
<!-- dirigida ao órgão perante o qual a apelação principal foi interposta ([CPC3-994-998], art. 997, § 2º, I) -->

Processo nº {{numero_processo}}

{{apelante_adesivo_nome}}, {{apelante_adesivo_qualificacao}}, por seu advogado ({{procuracao_ref}}), apelado na apelação interposta por {{apelante_principal_nome}}, {{apelante_principal_qualificacao}}, vem interpor **APELAÇÃO ADESIVA** contra a sentença de {{sentenca_ref}}, com fundamento em [CPC3-994-998], art. 997, § 2º, II, e [CPC-1009], pelas razões anexas.

- Tempestividade: no prazo de que dispõe para responder à apelação principal, 15 dias ([CPC3-994-998], art. 997, § 2º, I; [CPC-1003], § 5º; [CPC-219]); intimação em {{data_intimacao_documentada}}; data final a conferir pelo advogado.
- Preparo: {{guia_preparo_ref}} ([CPC3C-1007]) <!-- ou: gratuidade deferida em {{decisao_gratuidade_ref}} -->
- Subordinação: não será conhecida se houver desistência da principal ou se ela for inadmitida ([CPC3-994-998], art. 997, § 2º, III).

Requer o recebimento, a intimação do apelante principal para contrarrazões ([CPC3-1010-1014], art. 1.010, § 2º) e a remessa ao tribunal ({{tribunal}}) com a principal (§ 3º).

## RAZÕES DA APELAÇÃO ADESIVA

EGRÉGIO TRIBUNAL {{tribunal}} · COLENDA CÂMARA/TURMA · EMINENTE RELATOR(A)
Apelante adesivo: {{apelante_adesivo_nome}} · Apelado: {{apelante_principal_nome}} · Origem: {{vara}} — Processo nº {{numero_processo}}

### I. Síntese e capítulo em que o apelante adesivo ficou vencido
{{sintese_e_capitulo_vencido}} <!-- fatos com item de prova e origem, do BLOCO MATERIAL -->
### II. Razões de reforma ou de nulidade
{{razoes_capitulo_a_capitulo}}
### III. Pedidos
a) o conhecimento e o provimento da apelação adesiva para {{reformar_ou_anular}} o capítulo {{capitulo}}.

Valor da causa: o fixado nos autos ({{valor_causa_autos}}).
Provas: documentos dos autos ({{refs_autos}}); fato novo só nos termos de [CPC3-1010-1014], art. 1.014.

[LOCAL — PENDENTE DE PROVA], [DATA — PENDENTE DE PROVA].
[ADVOGADO — PENDENTE DE PROVA] — OAB [NÚMERO DA OAB — PENDENTE DE PROVA]
<!-- FIM VARIANTE -->

<!-- VARIANTE peca=contrarrazoes -->
## CONTRARRAZÕES DE APELAÇÃO

EXCELENTÍSSIMO(A) SENHOR(A) DOUTOR(A) JUIZ(A) DE DIREITO DA {{vara}} DA COMARCA DE {{comarca}}
<!-- contrarrazões no primeiro grau, antes da remessa; o juiz remete ao tribunal sem juízo de admissibilidade ([CPC3-1010-1014], art. 1.010, §§ 1º a 3º). Causa federal: juízo federal, conforme legitimidade-e-competencia-digital -->

Processo nº {{numero_processo}}

{{apelado_nome}}, {{apelado_qualificacao}}, por seu advogado ({{procuracao_ref}}), nos autos da apelação interposta por {{apelante_nome}}, {{apelante_qualificacao}}, vem apresentar **CONTRARRAZÕES** e requerer a remessa ao Tribunal {{tribunal}} ([CPC3-1010-1014], art. 1.010, § 3º).
<!-- se o cliente é o apelante respondendo à apelação adesiva do apelado: mesma variante, no mesmo juízo ([CPC3-1010-1014], art. 1.010, § 2º) -->

Tempestividade: 15 dias da intimação ([CPC3-1010-1014], art. 1.010, § 1º; [CPC-1003], § 5º; [CPC-219]); intimação em {{data_intimacao_documentada}}; data final a conferir pelo advogado.

EGRÉGIO TRIBUNAL {{tribunal}} · COLENDA CÂMARA/TURMA · EMINENTE RELATOR(A)

### I. Síntese
{{sintese}} <!-- fatos com item de prova e origem, do BLOCO MATERIAL -->
### II. Inadmissibilidade <!-- deserção, intempestividade, falta de impugnação específica -->
{{inadmissibilidade}}
### III. Preliminares do apelado ([CPC-1009], §§ 1º e 2º) <!-- se houver -->
{{preliminares_contrarrazoes}}
### IV. Mérito: manutenção da sentença
{{manutencao_capitulo_a_capitulo}}
### V. Pedidos
a) o não conhecimento ou o desprovimento da apelação; b) a manutenção da sentença; c) a majoração dos honorários pelo trabalho adicional em grau recursal ([CPC3L-85-P11]; [CPC3L-85-P1-P2], § 1º).

Valor da causa: o fixado nos autos ({{valor_causa_autos}}).
Documentos: os dos autos ({{refs_autos}}).

[LOCAL — PENDENTE DE PROVA], [DATA — PENDENTE DE PROVA].
[ADVOGADO — PENDENTE DE PROVA] — OAB [NÚMERO DA OAB — PENDENTE DE PROVA]
<!-- FIM VARIANTE -->

<!-- VARIANTE peca=efeito-suspensivo -->
## REQUERIMENTO DE EFEITO SUSPENSIVO À APELAÇÃO
Ao {{tribunal_ou_relator}} ([CPC3-1010-1014], art. 1.012, § 3º, {{inciso_I_ou_II}}) — Processo nº {{numero_processo}}
Requerente (apelante): {{apelante_nome}}, {{apelante_qualificacao}} · Requerido (apelado): {{apelado_nome}}, {{apelado_qualificacao}} · Advogado: {{advogado_nome}}, OAB {{oab}}
Hipótese do § 1º: {{hipotese}} · probabilidade de provimento ou fundamentação relevante: {{fundamento}} · risco de dano grave ou de difícil reparação: {{risco_com_prova}} ([CPC3-1010-1014], art. 1.012, § 4º).
Pedido: suspensão da eficácia da sentença até o julgamento da apelação.
Valor da causa: o fixado nos autos ({{valor_causa_autos}}). Documentos: cópia da apelação interposta, da sentença e da prova do risco ({{documentos}}).
[LOCAL — PENDENTE DE PROVA], [DATA — PENDENTE DE PROVA]. [ADVOGADO — PENDENTE DE PROVA] — OAB [NÚMERO DA OAB — PENDENTE DE PROVA]
<!-- FIM VARIANTE -->
