<!-- esqueleto: peca-anpd-peticao-titular · consumido por skills/via-administrativa-anpd-titular/SKILL.md (§4 a §6) -->
<!-- REGRA DE ENTREGA (única, vale para todo o esqueleto): slot {{...}} só com dado do caso e origem. A peça entregue não traz chaves duplas de slot, marcador de variante nem comentário HTML (estas linhas de cabeçalho saem também). Slot sem dado vira [NOME DO CAMPO — PENDENTE DE PROVA] na linha, em maiúsculas (ex.: [DATA DO PEDIDO AO CONTROLADOR — PENDENTE DE PROVA]); nunca marcador em minúscula nem o estado sem complemento. Só entra a variante do ato e do requerente do caso; alternativa que a prova não resolve sai do corpo e vai às pendências. A peça é do polo do cliente (linha POLO do perfil), nunca do adverso. Estado por item: só MINUTA PARA REVISÃO HUMANA, PENDENTE DE PROVA, PENDENTE DE FONTE, BLOQUEADO, FORA DO RECORTE. A peça é gravada na pasta do caso. -->
<!-- variantes: variante = bloco entre "VARIANTE chave=valor" e "FIM VARIANTE"; entra só o conteúdo do bloco do caso e os marcadores saem (peca: peticao-titular | denuncia | acompanhamento | terceiro-interessado | recurso-arquivamento; requerente: N1 | N2-N7 | associacao | anonimo). Polo: ATIVO ou TERCEIRO. Sem rito judicial. -->
<!-- [ID] só de bloco existente no context/INDICE.md; sem [ID] ⇒ PENDENTE DE FONTE na linha. Datas só as do cliente; nenhum vencimento calculado. Nada de indenização, multa em favor do titular ou tempo para a ANPD decidir. Sem promessa de decisão individual. A minuta segue para revisao-final-digital. -->

À AGÊNCIA NACIONAL DE PROTEÇÃO DE DADOS — ANPD

Canal: {{meio_divulgado_pela_anpd_informado_pelo_cliente}} ([ANPD-R1-25], art. 24) <!-- sem o canal informado ⇒ PENDENTE DE PROVA -->
<!-- VARIANTE peca=acompanhamento -->
Requerimento / processo nº {{numero}}
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=terceiro-interessado -->
Processo administrativo sancionador nº {{numero}}
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=recurso-arquivamento -->
Processo nº {{numero}} · decisão de arquivamento notificada por {{meio_e_evento}} ([ANPD-R1-12], {{inciso}})
<!-- FIM VARIANTE -->

<!-- VARIANTE requerente=N1 -->
{{titular_nome}}, {{documento}}, endereço eletrônico para intimações {{email}} ([ANPD-R1-12], § 2º), titular dos dados pessoais, {{representante_se_houver}} ([LGPD-18], § 3º; advogado facultativo — [PA-3], IV),
<!-- FIM VARIANTE -->
<!-- VARIANTE requerente=N2-N7 -->
{{nome_ou_razao_social}}, {{qualificacao}}, endereço eletrônico para intimações {{email}} ([ANPD-R1-12], § 2º),
<!-- FIM VARIANTE -->
<!-- VARIANTE requerente=associacao -->
{{associacao}}, {{qualificacao_e_ato_constitutivo}}, organização ou associação representativa ([ANPD-R1-13], III–IV), endereço eletrônico para intimações {{email}} ([ANPD-R1-12], § 2º),
<!-- FIM VARIANTE -->
<!-- VARIANTE requerente=anonimo -->
Denunciante não identificado: anonimato cabível só com verossimilhança e se a identificação não for necessária à apuração ([ANPD-R1-25], § 3º) — justificativa: {{justificativa}}.
<!-- FIM VARIANTE -->

<!-- VARIANTE peca=peticao-titular -->
vem apresentar **PETIÇÃO DE TITULAR** em face de {{controlador_nome_e_identificacao}} ([ANPD-R1-25], IV), controlador, nos termos do [LGPD-18], § 1º, e do [LGPD-55J-V].
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=denuncia -->
vem apresentar **DENÚNCIA** de suposta infração à legislação de proteção de dados ([ANPD-R1-4], III) atribuída a {{agente_identificado}} ([ANPD-R1-25], IV).
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=acompanhamento -->
na condição de interessado ([ANPD-R1-13], I ou II), vem apresentar **REQUERIMENTO** de {{ciencia_vista_copias_ou_juntada}} ([PA-3], II e III; Lei 9.784 subsidiária — [ANPD-R1-1], § 2º).
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=terceiro-interessado -->
vem requerer **ADMISSÃO COMO TERCEIRO INTERESSADO** ([ANPD-R1-45-49], art. 49).
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=recurso-arquivamento -->
vem interpor **RECURSO AO CONSELHO DIRETOR** contra o arquivamento ([ANPD-R1-58-62], art. 59).
<!-- FIM VARIANTE -->

<!-- VARIANTE peca=peticao-titular -->
## I. ADMISSIBILIDADE ([ANPD-R1-25], I a V e § 1º)

- Competência da ANPD: {{materia}} ([LGPD-55J-V]).
- Pedido prévio ao controlador, não solucionado: direito pedido ({{inciso_do_art_18}} — [LGPD-18]), canal, protocolo e data do cliente, resposta ou silêncio; prova: {{documento}} ou autodeclaração quando não houver outro meio ([ANPD-R1-25], § 1º).
- Confirmação ou acesso completo: prazo literal "de até 15 (quinze) dias, contado da data do requerimento do titular" ([LGPD-19], II); pequeno porte em dobro só com enquadramento provado ([ANPD-R2-14], III). Demais direitos: tempo de resposta em regulamentação ([LGPD-18], § 5º) ⇒ PENDENTE DE FONTE.
- Fato certo: {{fato_certo}} ([ANPD-R1-25], V).

## II. FATOS

| Data (do cliente) | Fato | Prova | Origem |
|---|---|---|---|
| {{data}} | {{tratamento_questionado_pedido_resposta}} | {{doc}} | {{origem}} |

## III. FUNDAMENTOS

Direito de peticionar contra o controlador perante a autoridade ([LGPD-18], § 1º; [LGPD-55J-V]); conceito de petição de titular ([ANPD-R1-DEF]); requisitos cumpridos ([ANPD-R1-25]); direito material violado: {{direito}} [{{id}}].

## IV. PEDIDOS

Requer:
a) a admissão da petição ([ANPD-R1-25]);
b) a adoção das providências que a ANPD entender cabíveis perante o controlador;
c) se demonstrada repercussão coletiva, a análise individualizada, ciente de que a regra é a análise agregada ([ANPD-R1-26], § 1º);
d) as intimações no endereço eletrônico informado ([ANPD-R1-12], § 2º).
<!-- FIM VARIANTE -->

<!-- VARIANTE peca=denuncia -->
## I. FATOS

Narrativa da **suposta** infração, com fato certo, agente e período, sem imputar culpa ([ANPD-R1-25], V; [ANPD-R1-4], III):

| Data (do cliente) | Fato | Prova | Origem |
|---|---|---|---|
| {{data}} | {{fato}} | {{doc}} | {{origem}} |

Incidente de segurança: o dever de comunicar é do controlador ([LGPD-48]); não afirmar que ele não comunicou sem documento.

## II. FUNDAMENTOS

Norma que se diz descumprida: {{norma}} [{{id}}].

## III. PEDIDOS

Requer:
a) a apuração dos fatos, com a abertura do procedimento cabível a critério da ANPD ([ANPD-R1-37-38], art. 37, III);
b) a restrição de acesso à identificação do denunciante ([ANPD-R1-25], § 4º);
c) as intimações no endereço eletrônico informado ([ANPD-R1-12], § 2º).
<!-- FIM VARIANTE -->

<!-- VARIANTE peca=acompanhamento -->
## I. PEDIDO DELIMITADO

{{ciencia_da_tramitacao | vista | copias_de | juntada_de_documento_novo_identificado}} ([PA-3], II e III). Proposta ou acordo com o controlador, só com documento ([ANPD-R1-17-VIII]): {{documento}}.
<!-- FIM VARIANTE -->

<!-- VARIANTE peca=terceiro-interessado -->
## I. REPRESENTATIVIDADE E PERTINÊNCIA ([ANPD-R1-45-49], art. 49, § 1º)

- Representatividade adequada: {{prova}}.
- Relevância da matéria, especificidade do tema ou repercussão social: {{fundamento_e_prova}}.

## II. PEDIDOS

Requer a admissão, com a definição dos poderes e dos tempos de manifestação por decisão administrativa, que é irrecorrível ([ANPD-R1-45-49], art. 49, § 2º), ciente de que o terceiro recebe o processo no estado em que se encontra e só vê peças públicas (§ 3º); intimações no endereço eletrônico informado ([ANPD-R1-12], § 2º).
<!-- FIM VARIANTE -->

<!-- VARIANTE peca=recurso-arquivamento -->
## I. TEMPESTIVIDADE E LEGITIMIDADE

- Prazo literal: "no prazo de até dez dias úteis da notificação" ([ANPD-R1-58-62], art. 59), em dias úteis ([ANPD-R1-8]). Data final a conferir pelo advogado.
- Terceiro interessado **habilitado** no processo: {{decisao_de_admissao}} ([ANPD-R1-58-62], art. 59). Sem habilitação, a legitimidade pela Lei 9.784 ([PA-56-65], art. 58) é tese condicionada, sujeita ao não conhecimento ([ANPD-R1-58-62], art. 61, II); sem promessa de conhecimento.

## II. RAZÕES

{{razao}} — {{prova}} — [{{id}}].

## III. PEDIDOS

Requer o conhecimento e o provimento do recurso para {{providencia_delimitada}}, com intimações no endereço eletrônico informado ([ANPD-R1-12], § 2º).
<!-- FIM VARIANTE -->

## PROVAS

1. {{documento}} — {{origem: arquivo, quem produziu, quando}}

Local e data: em branco para o cliente.

{{assinatura_do_requerente_ou_procurador}}
