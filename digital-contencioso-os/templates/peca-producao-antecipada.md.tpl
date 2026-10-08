<!-- esqueleto: peca-producao-antecipada · consumido por skills/producao-antecipada-de-prova-digital/SKILL.md -->
<!-- REGRA DE ENTREGA (única, vale para todo o esqueleto): slot {{...}} só com dado do caso e origem. A peça entregue não traz chaves duplas de slot, marcador de variante nem comentário HTML (estas linhas de cabeçalho saem também). Slot sem dado vira [NOME DO CAMPO — PENDENTE DE PROVA] na linha, em maiúsculas (ex.: [VARA — PENDENTE DE PROVA]); nunca marcador em minúscula nem o estado sem complemento. Só entra a variante do polo, do rito e do ato do caso; alternativa que a prova não resolve sai do corpo e vai às pendências. A peça é do polo do cliente (linha POLO do perfil), nunca do adverso. Tema 987/533: [ID] + rótulo de fonte parcial na mesma linha. Estado por item: só MINUTA PARA REVISÃO HUMANA, PENDENTE DE PROVA, PENDENTE DE FONTE, BLOQUEADO, FORA DO RECORTE. A peça é gravada na pasta do caso. -->
<!-- variantes: variante = bloco entre "VARIANTE chave=valor" e "FIM VARIANTE"; entra só o conteúdo do bloco do caso e os marcadores saem (peca: requerente | interessado | justificacao; polo: ATIVO | PASSIVO; rito: comum). -->
<!-- [ID] processual vem da skill; [ID] de direito material, só do BLOCO MATERIAL. -->

EXCELENTÍSSIMO(A) SENHOR(A) DOUTOR(A) JUIZ(A) DE DIREITO DA {{vara}} DA COMARCA DE {{comarca}}
<!-- foro onde a prova deva ser produzida ou do domicílio do réu ([CPC-381-384], art. 381, § 2º) -->

<!-- VARIANTE peca=requerente -->
{{requerente_nome}}, {{requerente_qualificacao}}, por seu advogado ({{procuracao_ref}}), vem propor

**AÇÃO DE PRODUÇÃO ANTECIPADA DE PROVA**

com citação de {{interessado_nome}}, {{interessado_qualificacao}} ([CPC-381-384], art. 382, § 1º), pelos fatos e razões a seguir.

## I. DOS FATOS SOBRE OS QUAIS A PROVA RECAI
<!-- art. 382, caput: com precisão; cada fato do BLOCO MATERIAL com item de prova e origem -->
{{fato_1}} (Doc. {{doc}} — origem: {{origem}})

## II. DA NECESSIDADE DE ANTECIPAÇÃO
Hipótese do art. 381, {{inciso_381}} ([CPC-381-384]): {{razao}} <!-- I risco de perda · II autocomposição · III conhecer antes de litigar; prazo de guarda só pelo literal do bloco -->
Não se pede pronunciamento sobre a ocorrência do fato nem sobre suas consequências jurídicas ([CPC-381-384], art. 382, § 2º).

## III. DA PROVA PEDIDA
<!-- entram só as provas pedidas no caso; este comentário sai -->
- Perícia técnica: objeto {{objeto}}; pergunta técnica {{pergunta}}; quesitos iniciais {{quesitos}} ([CPC3-464-465]).
- Exibição: {{descricao_documento_ou_categoria}}; finalidade e fatos {{finalidade}}; circunstâncias de existência e posse {{circunstancias}} ([CPC-396-404], art. 397).
- Oitiva: {{pessoa_fato_urgencia}} — regras de inquirição: PENDENTE DE FONTE.

## IV. DOS PEDIDOS
Requer:
a) a citação de {{interessado_nome}};
b) o deferimento e a produção da prova descrita no item III;
c) a nomeação de perito especializado, se houver perícia;
d) {{requerimento_sigilo}} <!-- só se o bloco trouxer a base -->
e) ao final, a entrega dos autos ao requerente ([CPC-381-384], art. 383).
<!-- FIM VARIANTE -->

<!-- VARIANTE peca=interessado -->
Processo nº {{numero_processo}}

{{interessado_nome}}, {{interessado_qualificacao}}, citado(a) como interessado(a), vem apresentar **MANIFESTAÇÃO**, sem defesa, que o procedimento não admite ([CPC-381-384], art. 382, § 4º):
- prova adicional sobre o mesmo fato, sem excessiva demora ([CPC-381-384], art. 382, § 3º): {{prova_adicional}};
- assistente técnico e quesitos, se houver perícia ([CPC3-464-465], art. 465, § 1º): {{assistente_quesitos}};
- sigilo e minimização de dados de terceiros: {{pedido_sigilo}}.

Requer o recebimento desta manifestação e o deferimento do que consta acima.
<!-- FIM VARIANTE -->

<!-- VARIANTE peca=justificacao -->
{{requerente_nome}}, {{requerente_qualificacao}}, vem requerer **JUSTIFICAÇÃO**, sem caráter contencioso, para documentar {{fato_ou_relacao}} ([CPC-381-384], art. 381, § 5º), em petição circunstanciada: {{intencao}}.
<!-- FIM VARIANTE -->

## VALOR DA CAUSA
R$ {{valor_causa}} — valor certo, ainda que sem conteúdo econômico imediato ([CPC3-291-292], art. 291); critério: {{criterio}}. <!-- omitir na manifestação do interessado -->

Termos em que, pede deferimento.

[LOCAL — PENDENTE DE PROVA], [DATA — PENDENTE DE PROVA].

[ADVOGADO — PENDENTE DE PROVA] — OAB [NÚMERO DA OAB — PENDENTE DE PROVA]
