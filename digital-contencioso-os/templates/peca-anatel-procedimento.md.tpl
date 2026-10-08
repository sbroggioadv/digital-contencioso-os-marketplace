<!-- esqueleto: peca-anatel-procedimento · consumido por skills/via-administrativa-anatel/SKILL.md (§§ 2 a 4) -->
<!-- REGRA DE ENTREGA (única, vale para todo o esqueleto): slot {{...}} só com dado do caso e origem documental. A peça entregue não traz chaves duplas de slot, marcador de variante nem comentário HTML (estas linhas de cabeçalho saem também). Slot sem dado vira [NOME DO CAMPO — PENDENTE DE PROVA] na linha, em maiúsculas (ex.: [NÚMERO DO PROCESSO — PENDENTE DE PROVA]); nunca marcador em minúscula nem o estado sem complemento. Só entra a variante do ato e do polo do caso; alternativa que a prova não resolve sai do corpo e vai às pendências. A peça é do polo do cliente (linha POLO do perfil), nunca do adverso. Estado por item: só MINUTA PARA REVISÃO HUMANA, PENDENTE DE PROVA, PENDENTE DE FONTE, BLOQUEADO, FORA DO RECORTE (outra via ou reparação). A peça é gravada na pasta do caso. -->
<!-- variantes: variante = bloco entre "VARIANTE chave=valor" e "FIM VARIANTE"; entra só o conteúdo do bloco do caso e os marcadores saem. peca: reclamacao | resposta-requisicao | defesa | adesao-rito-sumario | alegacoes-finais | recurso | reconsideracao | contrarrazoes | revisao. polo: ATIVO | REGULADO | TERCEIRO. Sem rito judicial. -->
<!-- [ID] só de bloco existente no context/INDICE.md; sem [ID] ⇒ PENDENTE DE FONTE na linha. Datas só as do caso; nenhum vencimento ou início de vigência calculado (transição [ANATEL-RI-RES791-3]). Sem promessa de sanção, arquivamento, absolvição ou redução. A minuta segue para revisao-final-digital. -->

## ENDEREÇAMENTO

<!-- VARIANTE peca=reclamacao -->
À AGÊNCIA NACIONAL DE TELECOMUNICAÇÕES — ANATEL, {{unidade_indicada_pelo_cliente}} (unidade sem documento ⇒ PENDENTE DE PROVA)
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=resposta-requisicao -->
À {{autoridade_que_expediu_a_requisicao}} — ANATEL ([ANATEL-RFR-39-41], art. 39, § 1º)
Requisição de Informações nº {{numero}} · Fiscalização Regulatória {{identificacao}}
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=defesa|adesao-rito-sumario|alegacoes-finais -->
À {{autoridade_do_despacho_ordinatorio_ou_do_auto}} — ANATEL
Pado nº {{numero_processo}} · {{despacho_ordinatorio_ou_auto_de_infracao_n}}
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=recurso -->
À {{autoridade_que_proferiu_a_decisao}} — ANATEL, com pedido de retratação e, não havendo, de remessa à autoridade hierarquicamente superior ([ANATEL-RI-117-127], art. 117, § 1º)
Pado nº {{numero_processo}} · {{despacho_decisorio_n}}
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=reconsideracao -->
AO CONSELHO DIRETOR DA ANATEL — pedido de reconsideração de decisão proferida em única instância ([ANATEL-RI-128], caput), a ser distribuído a Conselheiro distinto do voto condutor (§ 1º)
Processo nº {{numero_processo}} · Acórdão nº {{numero_acordao}}
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=contrarrazoes -->
À {{autoridade_que_proferiu_a_decisao}} — ANATEL
Pado nº {{numero_processo}} · recurso de {{recorrente}}
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=revisao -->
À {{autoridade_que_proferiu_a_ultima_decisao}} — ANATEL ([ANATEL-RI-89-99], art. 99, § 2º)
Pedido de revisão, em autos próprios, referente ao Pado nº {{numero_processo}} (art. 99, § 1º)
<!-- FIM VARIANTE -->

## QUALIFICAÇÃO

<!-- VARIANTE polo=ATIVO -->
{{usuario_nome}}, {{usuario_qualificacao}}, titular da linha ou contrato {{numero_linha_ou_contrato}} junto a {{prestadora}}, por seu advogado ({{procuracao}}),
<!-- FIM VARIANTE -->
<!-- VARIANTE polo=REGULADO -->
{{prestadora_ou_provedor}}, {{cnpj_e_sede}}, {{outorga_ou_condicao_regulada}}, por seu representante e advogado ({{instrumento_de_representacao}}; não juntado ⇒ PENDENTE DE PROVA),
Fase do regulado: {{fiscalizado|investigado|autuado|sancionado}} (tirada do documento; a linha aparece uma vez na saída)
<!-- FIM VARIANTE -->
<!-- VARIANTE polo=TERCEIRO -->
{{interessado_nome}}, {{interessado_qualificacao}}, titular de direito interessado no processo ({{documento_do_interesse}}) ([ANATEL-RI-117-127], art. 119),
<!-- FIM VARIANTE -->

vem apresentar

<!-- VARIANTE peca=reclamacao -->
**RECLAMAÇÃO / DENÚNCIA** com pedido de apuração. Rito de reclamação ou denúncia do usuário: PENDENTE DE FONTE; o Pado é instaurado de ofício ([ANATEL-RI-89-99], art. 89).
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=resposta-requisicao -->
**RESPOSTA À REQUISIÇÃO DE INFORMAÇÕES**, delimitada aos dados especificados no ato ([ANATEL-RFR-39-41], art. 39, § 2º).
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=defesa -->
**DEFESA**, assegurados a ampla defesa e o contraditório ([ANATEL-RI-89-99], art. 90).
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=adesao-rito-sumario -->
**MANIFESTAÇÃO DE CUMPRIMENTO DAS CONDIÇÕES PARA DECISÃO SUMÁRIA DE ARQUIVAMENTO**, infração por infração ([ANATEL-RASA-25-30], art. 27, caput). Só com a decisão escrita do cliente, depois de explicadas as consequências da confissão e da renúncia.
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=alegacoes-finais -->
**ALEGAÇÕES FINAIS**, encerrada a instrução ([ANATEL-RI-89-99], art. 91, § 2º).
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=recurso -->
**RECURSO ADMINISTRATIVO**, por razões de legalidade e de mérito, independentemente de caução ([ANATEL-RI-117-127], art. 117, caput).
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=reconsideracao -->
**PEDIDO DE RECONSIDERAÇÃO**, devidamente fundamentado ([ANATEL-RI-128], caput).
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=contrarrazoes -->
**CONTRARRAZÕES** ao recurso administrativo ([ANATEL-RI-117-127], art. 127, I).
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=revisao -->
**PEDIDO DE REVISÃO** do Pado de que resultou sanção, por fatos novos ou circunstâncias relevantes ([ANATEL-RI-89-99], art. 99, caput).
<!-- FIM VARIANTE -->

## I. TEMPESTIVIDADE (sem data de vencimento; ciência = {{meio_e_evento_de_ciencia}}, origem {{documento}})

<!-- VARIANTE peca=resposta-requisicao -->
Prazo literal do próprio ato: "{{prazo_literal_do_ato}}"; sem prazo no ato ⇒ PENDENTE DE PROVA.
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=defesa -->
"em 15 (quinze) dias" ([ANATEL-RI-89-99], art. 91, II); contagem pelo [ANATEL-RI-129-131]; intimação eletrônica pelo [ANATEL-RI-112-114], art. 112, IV.
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=adesao-rito-sumario -->
Incisos I, II e III comprovados "dentro do prazo de apresentação de defesa" ([ANATEL-RASA-25-30], art. 27, § 1º). Recolhimento da multa: só depois da notificação da autoridade, "no prazo de 30 (trinta) dias" (art. 27, § 2º), sem data calculada.
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=alegacoes-finais -->
"em 10 (dez) dias" após a intimação do encerramento da instrução ([ANATEL-RI-89-99], art. 91, § 2º).
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=recurso -->
"10 (dez) dias", contado a partir da intimação ([ANATEL-RI-117-127], art. 117, § 8º).
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=reconsideracao -->
Prazo da reconsideração: PENDENTE DE FONTE — o [ANATEL-RI-128], § 2º, exclui o art. 117, § 8º; nenhum bloco capturado fixa outro prazo. Não usar os 10 dias do recurso.
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=contrarrazoes -->
"prazo comum de 10 (dez) dias, contados a partir do recebimento da última intimação" ([ANATEL-RI-117-127], art. 127, I).
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=revisao -->
"a qualquer tempo" ([ANATEL-RI-89-99], art. 99, caput).
<!-- FIM VARIANTE -->

## II. FATOS

{{fatos_com_prova_e_origem}} (protocolo de atendimento, data do documento, número do auto ou da decisão; mérito material = BLOCO MATERIAL da frente, sem reabrir).
<!-- VARIANTE peca=defesa|recurso|reconsideracao -->
Ato impugnado, como escrito: fatos, normas definidoras e sanções apontadas ([ANATEL-RI-89-99], art. 91, I e II).
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=revisao -->
Número do processo de origem e fato novo ou circunstância relevante, com documento indispensável ([ANATEL-RI-89-99], art. 99, § 1º).
<!-- FIM VARIANTE -->

## III. FUNDAMENTOS

<!-- VARIANTE peca=reclamacao -->
Dispositivo regulamentar só com [ID] (sem bloco ⇒ PENDENTE DE FONTE). Nenhum bloco capturado atribui à Anatel competência para condenar a indenizar; reparação segue à via judicial ([CF-5-XXXV]).
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=resposta-requisicao -->
Quadro item requisitado × resposta × documento × formato pedido (formato diverso que dificulte a avaliação configura entrave, [ANATEL-RFR-39-41], art. 40, parágrafo único). Dados de usuários: registros de conexão e de acesso e conteúdo de comunicação privada só mediante ordem judicial ([MCI-10], §§ 1º e 2º); dados cadastrais por autoridade com competência legal ([MCI-10], § 3º) — competência da Anatel para requisitá-los: PENDENTE DE FONTE. Sem confissão e sem juízo de infração.
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=defesa -->
Preliminares: intimação sem requisito ([ANATEL-RI-112-114], art. 113); falta de motivação ([PA-50]). Mérito ponto a ponto contra fatos, normas e sanções do ato. Provas especificadas; prova ilícita inadmissível; recusa só fundamentada; ônus de quem alega e obtenção de ofício do que consta da Anatel ([ANATEL-RI-89-99], arts. 93 a 95).
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=adesao-rito-sumario -->
Por infração ({{infracao_n}}): I — reconhecimento da materialidade e confissão da autoria, assinados pelo cliente; II — prova inequívoca da cessação e, quando cabível, da reparação total ao usuário; III — renúncia expressa ao direito de litigar administrativamente quanto à infração ([ANATEL-RASA-25-30], art. 27, I a III). Sanção de cada infração: Resolução Interna do art. 25 (a nota da página cita a Resolução Interna nº 323, de 7 de maio de 2024), conteúdo PENDENTE DE FONTE; sobre essa multa não incide o fator de redução do art. 33, § 5º (art. 25, § 4º). Comprovado o cumprimento das condições e prazos antes da decisão de primeira instância, a sanção será aplicada nos termos da Resolução Interna do art. 25 (art. 27, § 4º).
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=alegacoes-finais -->
Síntese da instrução; valoração de cada prova, que deve constar da motivação ([ANATEL-RI-89-99], art. 95, § 2º); vícios de instrução com [ID].
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=recurso|reconsideracao -->
Síntese da decisão; razões de legalidade e de mérito, cada uma com [ID]; agravamento possível, com intimação prévia ([ANATEL-RASA-31-32A], art. 32, § 2º; [ANATEL-RI-117-127], art. 127, § 4º).
Efeito suspensivo: recurso meramente devolutivo; pedido fundamentado no mesmo instrumento, por relevância dos fundamentos e risco de ineficácia ([ANATEL-RI-117-127], art. 124, §§ 1º e 2º). Exigibilidade da multa, Cadin e dívida ativa suspensos pela interposição ([ANATEL-RI-117-127], art. 125; [ANATEL-RASA-33], § 2º).
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=reconsideracao -->
Sem juízo de retratação: o [ANATEL-RI-128], § 2º, exclui o art. 117, § 1º, II, e § 9º.
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=contrarrazoes -->
Resposta ponto a ponto às razões do recurso, com [ID]; interesse do cliente com documento.
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=revisao -->
Inadequação da sanção diante do fato novo; sem efeito suspensivo sobre sanção transitada em julgado ([ANATEL-RI-89-99], art. 99, § 3º); sem agravamento (§ 4º).
<!-- FIM VARIANTE -->

## IV. PEDIDOS

<!-- VARIANTE peca=reclamacao -->
Apuração dos fatos noticiados, sem pedido de sanção determinada.
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=resposta-requisicao -->
Recebimento da resposta; {{prorrogacao_fundamentada_se_houver}} (sem afirmar deferimento); reserva de complementar.
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=defesa -->
Acolhimento das preliminares; arquivamento; subsidiariamente, adequação da sanção, sem valor calculado; produção das provas especificadas.
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=adesao-rito-sumario -->
Decisão sumária de arquivamento ([ANATEL-RASA-25-30], art. 28) e notificação para recolhimento da multa, se houver (art. 27, § 2º). Ciência de que, não cumpridas as condições, o rito é convertido em ordinário (art. 27, § 3º) e de que, comprovado o cumprimento antes da decisão de primeira instância, a sanção é aplicada nos termos da Resolução Interna do art. 25 (art. 27, § 4º).
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=alegacoes-finais -->
Arquivamento ou, subsidiariamente, adequação da sanção, sem valor calculado.
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=recurso|reconsideracao -->
Efeito suspensivo; reforma, anulação ou redução da sanção, delimitada, sem valor calculado.
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=contrarrazoes -->
Não conhecimento ([ANATEL-RI-117-127], art. 118) ou desprovimento.
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=revisao -->
Revisão da sanção à luz do fato novo, sem agravamento.
<!-- FIM VARIANTE -->

## V. DOCUMENTOS E PROVAS

{{lista_de_documentos_com_origem}}

## VI. FECHO

Termos em que pede deferimento.

[LOCAL — PENDENTE DE PROVA], [DATA — PENDENTE DE PROVA].

[ADVOGADO — PENDENTE DE PROVA] — OAB [UF E NÚMERO DA OAB — PENDENTE DE PROVA]
