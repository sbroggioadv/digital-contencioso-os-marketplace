<!-- esqueleto: peca-recurso-inominado · consumido por skills/recurso-inominado-digital/SKILL.md -->
<!-- REGRA DE ENTREGA (única, vale para todo o esqueleto): slot {{...}} só com dado do caso e origem. A peça entregue não traz chaves duplas de slot, marcador de variante nem comentário HTML (estas linhas de cabeçalho saem também). Slot sem dado vira [NOME DO CAMPO — PENDENTE DE PROVA] na linha, em maiúsculas (ex.: [VARA — PENDENTE DE PROVA]); nunca marcador em minúscula nem o estado sem complemento. Só entra a variante do polo, do rito e do ato do caso; alternativa que a prova não resolve sai do corpo e vai às pendências. A peça é do polo do cliente (linha POLO do perfil), nunca do adverso. Tema 987/533: [ID] + rótulo de fonte parcial na mesma linha. Estado por item: só MINUTA PARA REVISÃO HUMANA, PENDENTE DE PROVA, PENDENTE DE FONTE, BLOQUEADO, FORA DO RECORTE. A peça é gravada na pasta do caso. -->
<!-- variantes: variante = bloco entre "VARIANTE chave=valor" e "FIM VARIANTE"; entra só o conteúdo do bloco do caso e os marcadores saem (peca: recurso | contrarrazoes; polo: ATIVO | PASSIVO; rito: juizado). -->
<!-- [ID] processual vem da skill; [ID] de direito material, só do BLOCO MATERIAL. Petição escrita com razões e pedido ([JEC3-41-46], art. 42): interposição e razões podem seguir numa só peça. -->

<!-- VARIANTE peca=recurso -->
## PETIÇÃO DE INTERPOSIÇÃO

EXCELENTÍSSIMO(A) SENHOR(A) DOUTOR(A) JUIZ(A) DO {{juizado}} DA COMARCA DE {{comarca}}

Processo nº {{numero_processo}}

{{recorrente_nome}}, {{recorrente_qualificacao}}, por seu advogado ({{procuracao_ref}}; advogado obrigatório no recurso, [JEC3-41-46], art. 41, § 2º), nos autos em que litiga com {{recorrido_nome}}, {{recorrido_qualificacao}}, vem interpor **RECURSO INOMINADO** contra a sentença de {{sentenca_ref}}, com fundamento em [JEC3-41-46], art. 41, pelas razões anexas.

- Tempestividade: dez dias contados da ciência da sentença ([JEC3-41-46], art. 42); ciência em {{data_ciencia_documentada}} ({{origem_ciencia}}); contagem no Juizado: PENDENTE DE FONTE; data final a conferir pelo advogado.
- Preparo: nas 48 horas seguintes à interposição, independentemente de intimação ([JEC3-41-46], art. 42, § 1º), compreendendo todas as despesas processuais, inclusive as dispensadas em primeiro grau ([JEC3L-54-55], art. 54, parágrafo único) — {{guia_preparo_ref}} <!-- ou: assistência judiciária gratuita deferida em {{decisao_gratuidade_ref}} -->
- Efeito suspensivo: {{dano_irreparavel_com_prova}} ([JEC3-41-46], art. 43) <!-- só se cabível -->

Requer o recebimento, a intimação do recorrido para resposta ([JEC3-41-46], art. 42, § 2º) e a remessa à Turma Recursal.

[LOCAL — PENDENTE DE PROVA], [DATA — PENDENTE DE PROVA].
[ADVOGADO — PENDENTE DE PROVA] — OAB [NÚMERO DA OAB — PENDENTE DE PROVA]

## RAZÕES DO RECURSO INOMINADO

Recorrente: {{recorrente_nome}} · Recorrido: {{recorrido_nome}} · Origem: {{juizado}} — Processo nº {{numero_processo}}

EGRÉGIA TURMA RECURSAL · EMINENTES JUÍZES

### I. Síntese do processo e da sentença
{{sintese}} <!-- fatos com item de prova e origem, do BLOCO MATERIAL -->

### II. Razões de reforma ou de nulidade
<!-- capítulo por capítulo: o que a sentença decidiu × BLOCO MATERIAL e prova × fundamento com [ID] -->
<!-- VARIANTE polo=ATIVO -->
{{capitulo_pedido_delimitado_negado}}
<!-- FIM VARIANTE -->
<!-- VARIANTE polo=PASSIVO -->
{{capitulo_ordem_condenacao_ou_multa_impugnada}} <!-- multa diária: [JEC3-52], V -->
<!-- FIM VARIANTE -->
<!-- extinção sem mérito: hipótese pelo literal de [JEC3C-51]; revelia: ressalva de [JEC3C-20] -->

### III. Pedidos
a) o conhecimento e o provimento do recurso para {{reformar_ou_anular}} o capítulo {{capitulo}} da sentença;
b) {{efeito_suspensivo_se_cabivel}}.
<!-- custas e honorários em segundo grau só do recorrente vencido ([JEC3L-54-55], art. 55): não pedir contra o recorrido -->

Valor da causa: o fixado no pedido inicial ({{valor_causa_autos}}).
Provas: as dos autos ({{refs_autos}}); transcrição da gravação, se útil ([JEC3-41-46], art. 44).

[LOCAL — PENDENTE DE PROVA], [DATA — PENDENTE DE PROVA].
[ADVOGADO — PENDENTE DE PROVA] — OAB [NÚMERO DA OAB — PENDENTE DE PROVA]
<!-- FIM VARIANTE -->

<!-- VARIANTE peca=contrarrazoes -->
## CONTRARRAZÕES AO RECURSO INOMINADO

EXCELENTÍSSIMO(A) SENHOR(A) DOUTOR(A) JUIZ(A) DO {{juizado}} DA COMARCA DE {{comarca}}

Processo nº {{numero_processo}}

{{recorrido_nome}}, {{recorrido_qualificacao}}, por seu advogado ({{procuracao_ref}}), nos autos do recurso inominado interposto por {{recorrente_nome}}, {{recorrente_qualificacao}}, vem apresentar **CONTRARRAZÕES** e requerer a remessa à Turma Recursal.

Tempestividade: dez dias da intimação ([JEC3-41-46], art. 42, § 2º); intimação em {{data_intimacao_documentada}}; contagem no Juizado: PENDENTE DE FONTE; data final a conferir pelo advogado.

EGRÉGIA TURMA RECURSAL · EMINENTES JUÍZES

### I. Síntese
{{sintese}} <!-- fatos com item de prova e origem, do BLOCO MATERIAL -->
### II. Inadmissibilidade <!-- deserção pelo preparo fora das 48 horas ([JEC3-41-46], art. 42, § 1º); intempestividade; sentença homologatória (art. 41) -->
{{inadmissibilidade}}
### III. Manutenção da sentença
{{manutencao_capitulo_a_capitulo}}
### IV. Pedidos
a) o não conhecimento ou o desprovimento do recurso; b) a manutenção da sentença; c) a condenação do recorrente vencido em custas e honorários, entre dez e vinte por cento do valor da condenação ou, não havendo condenação, do valor corrigido da causa ([JEC3L-54-55], art. 55).

Valor da causa: o fixado no pedido inicial ({{valor_causa_autos}}).
Provas: as dos autos ({{refs_autos}}); transcrição da gravação, se útil ([JEC3-41-46], art. 44).

[LOCAL — PENDENTE DE PROVA], [DATA — PENDENTE DE PROVA].
[ADVOGADO — PENDENTE DE PROVA] — OAB [NÚMERO DA OAB — PENDENTE DE PROVA]
<!-- FIM VARIANTE -->
