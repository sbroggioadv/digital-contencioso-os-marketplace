<!-- esqueleto: peca-contestacao · consumido por skills/contestacao-e-defesa-digital/SKILL.md -->
<!-- REGRA DE ENTREGA (única, vale para todo o esqueleto): slot {{...}} só com dado do caso e origem. A peça entregue não traz chaves duplas de slot, marcador de variante nem comentário HTML (estas linhas de cabeçalho saem também). Slot sem dado vira [NOME DO CAMPO — PENDENTE DE PROVA] na linha, em maiúsculas (ex.: [VARA — PENDENTE DE PROVA]); nunca marcador em minúscula nem o estado sem complemento. Só entra a variante do polo, do rito e do ato do caso; alternativa que a prova não resolve sai do corpo e vai às pendências. A peça é do polo do cliente (linha POLO do perfil), nunca do adverso. Tema 987/533: [ID] + rótulo de fonte parcial na mesma linha. Estado por item: só MINUTA PARA REVISÃO HUMANA, PENDENTE DE PROVA, PENDENTE DE FONTE, BLOQUEADO, FORA DO RECORTE. A peça é gravada na pasta do caso. -->
<!-- variantes: variante = bloco entre "VARIANTE chave=valor" e "FIM VARIANTE"; entra só o conteúdo do bloco do caso e os marcadores saem; "a|b" = qualquer dos valores; marcador com duas chaves: o bloco entra só se as duas baterem (peca: contestacao | contestacao-reconvencao | reconvencao-autonoma | manifestacao-revel; polo: PASSIVO; rito: comum | juizado; ramo: consumo). Reconvenção só no rito comum ([JEC-30-31], art. 31). -->
<!-- [ID] processual vem da skill; [ID] de direito material, só do BLOCO MATERIAL. -->

EXCELENTÍSSIMO(A) SENHOR(A) DOUTOR(A) JUIZ(A) {{juizo}}

Processo nº {{numero_processo}}

<!-- VARIANTE peca=contestacao-reconvencao|reconvencao-autonoma rito=juizado -->
BLOQUEADO — "Não se admitirá a reconvenção" no Juizado ([JEC-30-31], art. 31): refazer com `peca=contestacao` e pedido contraposto (seção VI).
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=contestacao|contestacao-reconvencao|reconvencao-autonoma -->
{{reu_nome}}, {{reu_qualificacao}}, por seu advogado ({{procuracao_ref}}), nos autos da ação movida por {{autor_nome}}, vem apresentar
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=contestacao -->
**CONTESTAÇÃO** <!-- no Juizado, com pedido contraposto se houver (seção VI) -->
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=contestacao-reconvencao -->
**CONTESTAÇÃO COM RECONVENÇÃO** ([CPC-343])
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=reconvencao-autonoma -->
**RECONVENÇÃO**, independentemente de contestação ([CPC-343], § 6º) <!-- momento de apresentação sem contestar: PENDENTE DE FONTE -->
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=contestacao|contestacao-reconvencao|reconvencao-autonoma -->
pelos fundamentos a seguir.
<!-- FIM VARIANTE -->

<!-- VARIANTE peca=contestacao|contestacao-reconvencao -->
## I. TEMPESTIVIDADE
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=contestacao|contestacao-reconvencao rito=comum -->
Prazo de 15 dias ([CPC-335-342], art. 335, {{inciso_termo_inicial}}), contado em dias úteis ([CPC-219]); termo inicial: {{evento_documentado}} ({{origem}}). Data final a conferir pelo advogado.
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=contestacao rito=juizado -->
Contestação escrita, com toda a matéria de defesa, salvo suspeição e impedimento ([JEC-30-31], art. 30). Momento de apresentação: PENDENTE DE FONTE.
<!-- FIM VARIANTE -->

<!-- VARIANTE peca=contestacao|contestacao-reconvencao -->
## II. SÍNTESE DA INICIAL
{{sintese_inicial}} <!-- tese adversa a enfrentar; sem adotar fato do autor -->

## III. PRELIMINARES
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=contestacao|contestacao-reconvencao rito=comum -->
<!-- só as do art. 337 com fato no caso ([CPC-335-342]); uma subseção por inciso -->
### III.1 {{preliminar_1}} ([CPC-335-342], art. 337, {{inciso}})
{{fundamento_preliminar_1}}
<!-- ilegitimidade: indicar o sujeito passivo, se conhecido, com documento (art. 339) -->
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=contestacao rito=juizado -->
### III.1 Inadmissibilidade do procedimento / incompetência territorial / impedimento do art. 8º que sobrevier
{{fundamento}} ([JEC3C-51], {{inciso}}; [JEC-3]) <!-- II procedimento inadmissível · III incompetência territorial · IV quando sobrevier impedimento do art. 8º -->
### III.2 Ilegitimidade ativa: autor fora do art. 8º, § 1º ([JEC3L-8])
{{fundamento_legitimidade}} — consequência processual ([JEC3C-51], inciso II ou IV): PENDENTE DE FONTE (tese do advogado). <!-- ex.: PJ que não é MEI, ME, EPP, OSCIP nem sociedade de crédito ao microempreendedor -->
### III.3 {{preliminar_cpc}} — aplicação do art. 337 do CPC ao Juizado: PENDENTE DE FONTE
<!-- FIM VARIANTE -->

<!-- VARIANTE peca=contestacao|contestacao-reconvencao rito=comum -->
## IV. IMPUGNAÇÃO ESPECIFICADA DOS FATOS ([CPC-335-342], art. 341)
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=contestacao rito=juizado -->
## IV. IMPUGNAÇÃO DOS FATOS
<!-- toda a matéria de defesa ([JEC-30-31], art. 30); presunção do art. 341 do CPC no Juizado: PENDENTE DE FONTE -->
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=contestacao|contestacao-reconvencao -->

| Fato da inicial | Resposta | Prova do réu | Origem |
|---|---|---|---|
| {{fato_autor_1}} | {{admite_nega_nao_sabe}} | {{doc}} | {{origem}} |
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=contestacao|contestacao-reconvencao rito=comum -->

{{impugnacao_prova_digital}} <!-- conformidade da reprodução impugnada ([CPC-411], III; [CPC-422], § 1º) -->
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=contestacao rito=juizado -->

Impugnação da prova digital do autor: {{impugnacao_prova_digital}} (aplicação dos arts. 411 e 422 do CPC ao Juizado: PENDENTE DE FONTE).
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=contestacao|contestacao-reconvencao -->

## V. MÉRITO
<!-- literal do BLOCO MATERIAL (lado do réu), item 3, cada um com [ID] -->
{{fundamento_merito_1}} [{{id}}]
<!-- FIM VARIANTE -->

<!-- VARIANTE peca=contestacao|contestacao-reconvencao ramo=consumo -->
### V.x Relação de consumo alegada
- Qualificação confrontada com os fatos: {{fatos}} [CDC-2] [CDC-3]
- Excludentes com prova: {{inexistencia_defeito_ou_culpa_exclusiva}} [CDC-14], § 3º
- Inversão do ônus — requisitos ausentes no caso: {{analise}} [CDC-6-VIII]
- Cláusula dos termos (texto colado pelo cliente): {{defesa_clausula}} [CDC-51-CAPUT-I] [CDC-51-IV]
<!-- FIM VARIANTE -->

<!-- regime da plataforma: só do bloco; Tema 987/533 com [ID] do bloco e o rótulo do tema — 987 (ex.: [T987-ED-ITEM2]): "fonte parcial — embargos julgados em 17/06/2026, acórdão não publicado"; 533 (ex.: [T533-SITUACAO], [T533ED-DEC-2409]): "fonte parcial — mérito publicado; embargos suspensos para posterior proclamação, sem resultado proclamado" -->

<!-- VARIANTE peca=contestacao-reconvencao|reconvencao-autonoma -->
## VI. RECONVENÇÃO ([CPC-343])
- Fatos (BLOCO MATERIAL, lado do réu): {{fatos_reconvencao}} (Doc. {{doc}} — origem: {{origem}})
- Fundamentos: {{fundamento_reconvencao}} [{{id}}]
- Pretensão própria, conexa com {{conexao}} (ação principal ou fundamento da defesa): {{pedido_reconvencional_delimitado}}
- Valor da causa da reconvenção: R$ {{valor_reconvencao}} ([CPC3-291-292], art. 292, caput).
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=contestacao rito=juizado -->
## VI. PEDIDO CONTRAPOSTO ([JEC-30-31], art. 31)
Fundado nos mesmos fatos e nos limites de [JEC-3]: {{pedido_contraposto_delimitado}}.
<!-- FIM VARIANTE -->

<!-- VARIANTE peca=manifestacao-revel -->
{{reu_nome}}, {{reu_qualificacao}}, por seu advogado ({{procuracao_ref}}), réu nos autos da ação movida por {{autor_nome}}, vem apresentar **MANIFESTAÇÃO**, pelos fundamentos a seguir.

## I. INTERVENÇÃO
Estado atual do processo: {{andamento_documentado}} ({{origem}}).
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=manifestacao-revel rito=comum -->
O revel pode intervir no processo em qualquer fase, recebendo-o no estado em que se encontrar ([CPC-344-346], art. 346, parágrafo único).

## II. AFASTAMENTO DA PRESUNÇÃO DO ART. 344 ([CPC-344-346], art. 345)
<!-- só os incisos com fato e documento no caso: I outro réu contestou · II direito indisponível · III inicial sem instrumento indispensável à prova do ato · IV alegação inverossímil ou em contradição com prova dos autos -->
- Inciso {{inciso_345}}: {{fato_e_documento}} ({{origem}})

## III. MATÉRIAS QUE O JUIZ CONHECE DE OFÍCIO ([CPC-335-342], art. 337, § 5º)
{{materia_de_oficio}} <!-- só matérias do art. 337, exceto convenção de arbitragem e incompetência relativa; omitir se não houver -->
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=manifestacao-revel rito=juizado -->
Ingresso do revel e aplicação dos arts. 344 a 346 do CPC ao Juizado: PENDENTE DE FONTE.

## II. AFASTAMENTO DA PRESUNÇÃO ([JEC3C-20])
Os fatos do pedido inicial se reputam verdadeiros, salvo se o contrário resultar da convicção do Juiz ([JEC3C-20]): {{elementos_dos_autos}} ({{origem}}).
<!-- FIM VARIANTE -->

## DOS PEDIDOS
Requer: <!-- alíneas renumeradas na minuta, na ordem das variantes mantidas -->
<!-- VARIANTE peca=contestacao|contestacao-reconvencao -->
a) o acolhimento das preliminares {{lista}}, com {{consequencia}};
b) no mérito, a improcedência dos pedidos;
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=contestacao rito=juizado -->
c) {{pedido_contraposto}} <!-- omitir se não houver -->
<!-- sem pedido de custas e honorários: a sentença de primeiro grau não os impõe, salvo litigância de má-fé ([JEC3L-54-55], art. 55) -->
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=contestacao-reconvencao|reconvencao-autonoma -->
c) a intimação do autor-reconvindo, na pessoa de seu advogado, para resposta em 15 dias ([CPC-343], § 1º), e a procedência da reconvenção: {{pedidos_reconvencao_delimitados}};
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=contestacao|contestacao-reconvencao|reconvencao-autonoma rito=comum -->
d) a condenação do autor em custas e honorários ([CPC-85]; na reconvenção, cumulativamente: [CPC3L-85-P1-P2], § 1º).
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=manifestacao-revel rito=comum -->
a) o recebimento da intervenção no estado em que o processo se encontra;
b) o afastamento da presunção de veracidade quanto a {{fatos}}, pela hipótese do art. 345, {{inciso_345}};
c) o exame de {{materia_de_oficio}} ([CPC-335-342], art. 337, § 5º). <!-- omitir se não houver -->
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=manifestacao-revel rito=juizado -->
a) o recebimento da manifestação;
b) que a presunção ceda, quanto a {{fatos}}, diante dos elementos indicados ([JEC3C-20]).
<!-- FIM VARIANTE -->

## DAS PROVAS
<!-- VARIANTE peca=contestacao|contestacao-reconvencao rito=comum -->
Protesta pela produção de {{lista_provas}} ([CPC-335-342], art. 336). Documentos anexos: {{lista_documentos}}.
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=contestacao rito=juizado -->
Provas e documentos: {{lista_provas}}; {{lista_documentos}}. <!-- momento e forma da prova no Juizado e aplicação do art. 336 do CPC: PENDENTE DE FONTE -->
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=reconvencao-autonoma -->
Protesta pela produção de {{lista_provas}}. Documentos anexos: {{lista_documentos}}.
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=manifestacao-revel -->
Documentos anexos: {{lista_documentos}}. Produção de prova pelo revel: PENDENTE DE FONTE.
<!-- FIM VARIANTE -->

<!-- VARIANTE peca=contestacao|contestacao-reconvencao rito=comum -->
{{manifestacao_audiencia}} <!-- desinteresse por petição com 10 dias de antecedência ([CPC3-334], § 5º) -->
<!-- FIM VARIANTE -->

Termos em que, pede deferimento.

[LOCAL — PENDENTE DE PROVA], [DATA — PENDENTE DE PROVA].

[ADVOGADO — PENDENTE DE PROVA] — OAB [NÚMERO DA OAB — PENDENTE DE PROVA]
