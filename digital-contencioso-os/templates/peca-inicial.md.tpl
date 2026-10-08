<!-- esqueleto: peca-inicial · consumido por skills/peticao-inicial-digital/SKILL.md -->
<!-- REGRA DE ENTREGA (única, vale para todo o esqueleto): slot {{...}} só com dado do caso e origem. A peça entregue não traz chaves duplas de slot, marcador de variante nem comentário HTML (estas linhas de cabeçalho saem também). Slot sem dado vira [NOME DO CAMPO — PENDENTE DE PROVA] na linha, em maiúsculas (ex.: [VARA — PENDENTE DE PROVA]); nunca marcador em minúscula nem o estado sem complemento. Só entra a variante do polo, do rito e do ato do caso; alternativa que a prova não resolve sai do corpo e vai às pendências. A peça é do polo do cliente (linha POLO do perfil), nunca do adverso. Tema 987/533: [ID] + rótulo de fonte parcial na mesma linha. Estado por item: só MINUTA PARA REVISÃO HUMANA, PENDENTE DE PROVA, PENDENTE DE FONTE, BLOQUEADO, FORA DO RECORTE. A peça é gravada na pasta do caso. -->
<!-- variantes: variante = bloco entre "VARIANTE chave=valor" e "FIM VARIANTE"; entra só o conteúdo do bloco do caso e os marcadores saem (peca: inicial | aditamento-303 | emenda-321; polo: ATIVO; rito: comum | juizado; ramo: consumo). -->
<!-- [ID] processual vem da skill; [ID] de direito material, só do BLOCO MATERIAL. -->

<!-- VARIANTE rito=comum -->
EXCELENTÍSSIMO(A) SENHOR(A) DOUTOR(A) JUIZ(A) DE DIREITO DA {{vara}} DA COMARCA DE {{comarca}}
<!-- FIM VARIANTE -->
<!-- VARIANTE rito=juizado -->
EXCELENTÍSSIMO(A) SENHOR(A) DOUTOR(A) JUIZ(A) DO JUIZADO ESPECIAL CÍVEL DA COMARCA DE {{comarca}}
<!-- FIM VARIANTE -->
<!-- juízo indicado por legitimidade-e-competencia-digital ([CPC3-319-321], art. 319, I) -->

<!-- VARIANTE peca=aditamento-303 -->
Processo nº {{numero_processo}}

{{autor_nome}}, já qualificado(a), nos autos em que obteve tutela antecipada em caráter antecedente ({{decisao_tutela_ref}}), vem **ADITAR A PETIÇÃO INICIAL**, com a complementação da argumentação, a juntada de novos documentos e a confirmação do pedido de tutela final ([CPC3-303-310], art. 303, § 1º, I), nos termos a seguir.
<!-- FIM VARIANTE -->

<!-- VARIANTE peca=emenda-321 rito=comum -->
Processo nº {{numero_processo}}

{{autor_nome}}, já qualificado(a), em cumprimento à determinação de {{decisao_emenda_ref}}, vem **EMENDAR E COMPLETAR A PETIÇÃO INICIAL**, no prazo de 15 (quinze) dias ([CPC3-319-321], art. 321), nos pontos indicados pelo juízo:

| Ponto indicado pelo juízo | Correção ou complemento | Documento juntado |
|---|---|---|
| {{ponto_1}} | {{correcao_1}} | {{doc_1}} |

Segue a petição inicial emendada, na íntegra. <!-- descumprida a diligência, indeferimento (art. 321, parágrafo único) -->
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=emenda-321 rito=juizado -->
Emenda da inicial no Juizado: PENDENTE DE FONTE (aplicação do art. 321 do CPC ao Juizado não capturada).
<!-- FIM VARIANTE -->

<!-- VARIANTE peca=inicial -->
{{autor_nome}}, {{autor_qualificacao}} <!-- art. 319, II: estado civil, união estável, profissão, CPF/CNPJ, e-mail, domicílio --> , por seu advogado ({{procuracao_ref}}), vem propor

**{{nome_da_acao}}**

em face de {{reu_nome}}, {{reu_qualificacao}} <!-- plataforma: PJ que responde no Brasil, conforme documento; dado faltante ⇒ diligência do art. 319, § 1º -->, pelos fatos e fundamentos a seguir.
<!-- FIM VARIANTE -->

## I. DOS FATOS
<!-- um parágrafo por fato do BLOCO MATERIAL, item 2; relato do cliente atribuído ("o autor informa") -->
{{fato_1}} (Doc. {{doc_fato_1}} — origem: {{origem_fato_1}})

## II. DO DIREITO

### II.1 Competência e rito
{{competencia}} <!-- saída de legitimidade-e-competencia-digital -->
<!-- VARIANTE rito=juizado -->
- Causa de menor complexidade e valor dentro do limite de [JEC-3], inciso I; opção pelo rito com renúncia ao excedente, excetuada a hipótese de conciliação (§ 3º). Foro: [JEC-4].
- Legitimidade ativa: {{enquadramento_autor}} ([JEC3L-8], § 1º, {{inciso_8}}). <!-- PJ fora dos incisos II a IV ⇒ rito comum -->
- Requisitos próprios do pedido no Juizado: PENDENTE DE FONTE (dispositivo da Lei 9.099 não capturado).
<!-- FIM VARIANTE -->

### II.2 Fundamentos
<!-- literal do BLOCO MATERIAL, item 3, cada um com [ID] -->
{{fundamento_1}} [{{id_fundamento_1}}]

<!-- VARIANTE ramo=consumo -->
### II.3 Relação de consumo
<!-- só com os IDs CDC presentes no BLOCO MATERIAL -->
- Consumidor e fornecedor: {{qualificacao_consumo}} [CDC-2] [CDC-3] — remuneração do serviço: {{prova_remuneracao}}
- Fato ou vício do serviço: {{defeito_ou_vicio}} [CDC-14] / [CDC-20]
- Cláusula dos termos impugnada (termo vigente na data do fato, colado pelo cliente): {{clausula}} [CDC-51-CAPUT-I] / [CDC-51-IV]
- Requerimento de inversão do ônus, a critério do juiz: {{verossimilhanca_ou_hipossuficiencia}} [CDC-6-VIII]
<!-- FIM VARIANTE -->

<!-- regime da plataforma: só do bloco; Tema 987/533 com [ID] do bloco e o rótulo do tema — 987 (ex.: [T987-ED-ITEM2]): "fonte parcial — embargos julgados em 17/06/2026, acórdão não publicado"; 533 (ex.: [T533-SITUACAO], [T533ED-DEC-2409]): "fonte parcial — mérito publicado; embargos suspensos para posterior proclamação, sem resultado proclamado" -->

## III. DA TUTELA
<!-- capítulo recebido de tutela-e-pedidos-delimitados-digital, sem reescrever requisitos; omitir se não houver -->
{{capitulo_tutela}}

## IV. DOS PEDIDOS
Ante o exposto, requer:
a) a citação de {{reu_nome}}; <!-- comum: e intimação para a audiência do art. 334, se houver -->
b) {{pedido_1_delimitado}} <!-- URL ou identificador estável · identificador de conta · registros com indícios, justificativa e período · direito por inciso -->
c) {{pedido_indenizacao}} <!-- valor definido pelo advogado; omitir se não houver -->
<!-- VARIANTE rito=comum -->
d) a condenação em custas e honorários ([CPC-85]);
<!-- FIM VARIANTE -->
<!-- VARIANTE rito=juizado -->
<!-- sem pedido de custas e honorários: acesso sem custas em primeiro grau e sentença sem essa condenação, salvo litigância de má-fé ([JEC3L-54-55], arts. 54 e 55); renumerar as alíneas seguintes -->
<!-- FIM VARIANTE -->
<!-- VARIANTE ramo=consumo -->
e) a inversão do ônus da prova, a critério do juízo ([CDC-6-VIII]);
<!-- FIM VARIANTE -->
f) {{requerimento_sigilo}} <!-- só se o bloco trouxer a base -->

<!-- VARIANTE rito=comum -->
O autor {{opcao_audiencia}} na realização de audiência de conciliação ou de mediação ([CPC3-334], § 5º; [CPC3-319-321], art. 319, VII).
<!-- FIM VARIANTE -->

## V. DAS PROVAS
<!-- VARIANTE rito=comum -->
Protesta pela produção das provas indicadas: {{lista_provas}} ([CPC3-319-321], art. 319, VI). Documentos anexos: {{lista_documentos}}.
<!-- FIM VARIANTE -->
<!-- VARIANTE rito=juizado -->
Protesta pela produção das provas indicadas: {{lista_provas}}. Documentos anexos: {{lista_documentos}}. (Momento e forma da prova no Juizado e aplicação do art. 319 do CPC: PENDENTE DE FONTE.)
<!-- FIM VARIANTE -->

## VI. DO VALOR DA CAUSA
<!-- VARIANTE rito=comum -->
Dá-se à causa o valor de R$ {{valor_causa}}, nos termos de [CPC3-291-292], art. 292, {{inciso_292}}. <!-- critério declarado; sem número inventado; tutela antecedente: considerar a tutela final ([CPC3-303-310], art. 303, § 4º) -->
<!-- FIM VARIANTE -->
<!-- VARIANTE rito=juizado -->
Dá-se à causa o valor de R$ {{valor_causa}}, dentro do limite de [JEC-3], inciso I. (Critério de cálculo pelo art. 292 do CPC aplicado ao Juizado: PENDENTE DE FONTE.) <!-- critério declarado pelo advogado; sem número inventado -->
<!-- FIM VARIANTE -->

Termos em que, pede deferimento.

[LOCAL — PENDENTE DE PROVA], [DATA — PENDENTE DE PROVA].

[ADVOGADO — PENDENTE DE PROVA] — OAB [NÚMERO DA OAB — PENDENTE DE PROVA]
