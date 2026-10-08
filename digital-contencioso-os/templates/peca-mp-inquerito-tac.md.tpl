<!-- esqueleto: peca-mp-inquerito-tac · consumido por skills/ministerio-publico-inquerito-civil-tac/SKILL.md (§§ 3 a 6) -->
<!-- REGRA DE ENTREGA (única, vale para todo o esqueleto): slot {{...}} só com dado do caso e origem documental. A peça entregue não traz chaves duplas de slot, marcador de variante nem comentário HTML (estas linhas de cabeçalho saem também). Slot sem dado vira [NOME DO CAMPO — PENDENTE DE PROVA] na linha, em maiúsculas (ex.: [NÚMERO DA NOTÍCIA DE FATO — PENDENTE DE PROVA]); nunca marcador em minúscula nem o estado sem complemento. Só entra a variante do ato e do polo do caso; alternativa que a prova não resolve sai do corpo e vai às pendências. A peça é do polo do cliente (linha POLO do perfil), nunca do adverso. Tema 987/533: [ID] + rótulo de fonte parcial na mesma linha. Estado por item: só MINUTA PARA REVISÃO HUMANA, PENDENTE DE PROVA, PENDENTE DE FONTE, BLOQUEADO, FORA DO RECORTE. A peça é gravada na pasta do caso. -->
<!-- variantes: variante = bloco entre "VARIANTE chave=valor" e "FIM VARIANTE"; entra só o conteúdo do bloco do caso e os marcadores saem. peca: representacao | recurso-indeferimento | contrarrazoes-recurso | resposta-requisicao | manifestacao-investigado | razoes-arquivamento | documentos-subsidios | minuta-tac | justificativa-descumprimento | resposta-recomendacao. polo: ATIVO | PASSIVO | TERCEIRO. Sem rito judicial. -->
<!-- [ID] só de bloco existente no context/INDICE.md; sem [ID] ⇒ PENDENTE DE FONTE na linha. Datas só as do caso; nenhum vencimento calculado. Tom técnico, sem imputar má-fé ao membro. Sem promessa de instauração, arquivamento ou celebração. A minuta segue para revisao-final-digital. -->

## ENDEREÇAMENTO

<!-- VARIANTE peca=representacao -->
AO MINISTÉRIO PÚBLICO {{ramo}} — {{unidade_com_atribuicao}} (dado do caso; conflito de atribuição, [CNMP-IC-1-3], art. 3º)
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=recurso-indeferimento -->
A(O) {{membro_que_indeferiu}} — {{unidade}}, com pedido de reconsideração e, não havendo, de remessa ao Conselho Superior do Ministério Público ou à Câmara de Coordenação e Revisão ([CNMP-IC-5], § 2º)
Notícia de fato / representação nº {{numero}}
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=contrarrazoes-recurso -->
A(O) {{membro_que_indeferiu}} — {{unidade}}, para remessa ao órgão revisor com o recurso ([CNMP-IC-5], §§ 2º e 3º)
Notícia de fato / representação nº {{numero}} · recurso de {{recorrente}}
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=resposta-requisicao|manifestacao-investigado|documentos-subsidios|justificativa-descumprimento|resposta-recomendacao -->
A(O) {{membro_que_preside}} — {{unidade}}
{{procedimento_preparatorio_ou_inquerito_civil_n}} · {{oficio_ou_portaria_n}}
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=razoes-arquivamento -->
AO {{CONSELHO_SUPERIOR_DO_MP | CAMARA_DE_COORDENACAO_E_REVISAO}} — sessão de homologação ou rejeição da promoção de arquivamento ([CNMP-IC-10-13], art. 10, § 3º)
Inquérito civil / procedimento preparatório nº {{numero}}
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=minuta-tac -->
COMPROMISSO DE AJUSTAMENTO DE CONDUTA — {{inquerito_civil_ou_procedimento_ou_acao_n}} ([CNMP-TAC-1-4], art. 3º)
<!-- FIM VARIANTE -->

## QUALIFICAÇÃO

<!-- VARIANTE polo=ATIVO -->
{{representante_nome}}, {{qualificacao_minima}}, por seu advogado ({{procuracao}}),
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=razoes-arquivamento -->
<!-- substitui a variante polo=ATIVO -->
{{co_legitimado_nome}}, {{condicao_no_rol}} ([ACP-5]); associação: constituída há pelo menos 1 (um) ano ({{documento}}) e com a finalidade do art. 5º, V, b ([ACP-5]; [ACP-9], § 2º). Condição não provada ⇒ PENDENTE DE PROVA e usar peca=documentos-subsidios.
<!-- FIM VARIANTE -->
<!-- VARIANTE polo=PASSIVO -->
{{investigado_ou_compromissario}}, {{cnpj_ou_cpf_e_sede}}, por seu representante e advogado ({{instrumento_de_representacao}}; defensor constituído, [CNMP-IC-6], § 11),
<!-- FIM VARIANTE -->
<!-- VARIANTE polo=TERCEIRO -->
{{destinatario_requisitado}}, {{qualificacao}}, destinatário de requisição que não é investigado, por seu advogado,
<!-- FIM VARIANTE -->

vem apresentar

<!-- VARIANTE peca=representacao -->
**REPRESENTAÇÃO** para instauração de inquérito civil ou de procedimento preparatório ([CNMP-IC-1-3], art. 2º).
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=recurso-indeferimento -->
**RECURSO** contra o indeferimento da instauração, com as razões ([CNMP-IC-5], § 1º).
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=contrarrazoes-recurso -->
**CONTRARRAZÕES** ao recurso contra o indeferimento ([CNMP-IC-5], § 3º).
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=resposta-requisicao -->
**RESPOSTA** à requisição / notificação, item a item.
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=manifestacao-investigado -->
**MANIFESTAÇÃO** no procedimento, com razões e quesitos ([CNMP-IC-6], § 11).
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=razoes-arquivamento -->
**RAZÕES ESCRITAS** sobre a promoção de arquivamento ([CNMP-IC-10-13], art. 10, § 3º).
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=documentos-subsidios -->
**DOCUMENTOS E SUBSÍDIOS** para melhor apuração dos fatos ([CNMP-IC-6], § 5º).
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=justificativa-descumprimento -->
**JUSTIFICATIVA** de descumprimento e/ou **PEDIDO DE REPACTUAÇÃO** do compromisso ([CNMP-TAC-9-12], art. 11, parágrafo único).
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=resposta-recomendacao -->
**MANIFESTAÇÃO** sobre a recomendação expedida (regime da recomendação PENDENTE DE FONTE), com documentos e subsídios ([CNMP-IC-6], § 5º).
<!-- FIM VARIANTE -->

## I. TEMPESTIVIDADE (sem data de vencimento; ciência = {{meio_e_evento_de_ciencia}}, origem {{documento}})

<!-- VARIANTE peca=recurso-indeferimento -->
"no prazo de dez dias" ([CNMP-IC-5], § 1º).
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=contrarrazoes-recurso -->
Prazo das contrarrazões: PENDENTE DE FONTE ([CNMP-IC-5], § 3º, não fixa prazo); usar o assinalado na notificação, se houver.
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=resposta-requisicao -->
Prazo assinalado no ofício: "{{prazo_literal}}"; mínimo legal "não poderá ser inferior a 10 (dez) dias úteis" ([ACP-8], § 1º).
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=razoes-arquivamento -->
"Até a sessão" do órgão revisor ([CNMP-IC-10-13], art. 10, § 3º; [ACP-9], § 2º).
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=documentos-subsidios -->
"durante a tramitação do inquérito civil" ([CNMP-IC-6], § 5º).
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=manifestacao-investigado|justificativa-descumprimento|resposta-recomendacao|minuta-tac -->
Prazo: o do ato, literal ("{{prazo_literal_do_ato}}"); sem prazo capturado ⇒ PENDENTE DE FONTE.
<!-- FIM VARIANTE -->

## II. FATOS

{{fatos_com_prova_e_origem}} (mérito material = BLOCO MATERIAL da frente, sem reabrir).
<!-- VARIANTE peca=representacao -->
Fato e provável autor, com informações que permitam identificar e localizar ([CNMP-IC-1-3], art. 2º, II); conta, URL ou domínio identificam o objeto, não a pessoa: autoria incerta fica "a apurar".
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=recurso-indeferimento|contrarrazoes-recurso -->
Síntese da representação e do fundamento do indeferimento ([CNMP-IC-5], caput).
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=razoes-arquivamento -->
Síntese da promoção de arquivamento e das diligências realizadas ([CNMP-IC-10-13], art. 10, caput).
<!-- FIM VARIANTE -->

## III. FUNDAMENTOS

<!-- VARIANTE peca=representacao -->
Dimensão difusa ou coletiva do dano com [ID] ([ACP-1]); interesse só individual ⇒ via judicial individual.
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=recurso-indeferimento -->
Razões ponto a ponto contra cada hipótese de indeferimento invocada ([CNMP-IC-5], caput).
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=contrarrazoes-recurso -->
Manutenção do indeferimento, ponto a ponto, sem admitir infração nem juízo de autoria.
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=resposta-requisicao -->
Requisitos do ofício (fundamentado, com portaria ou endereço oficial, [CNMP-IC-6], § 10; portaria, [CNMP-IC-4]); sigilo legal com a regra literal ([ACP-8], § 2º); dados de usuários: registros de conexão e de acesso e conteúdo de comunicação privada só mediante ordem judicial ([MCI-10], §§ 1º e 2º); dados cadastrais por autoridade com competência legal (§ 3º), competência do MP sem ordem judicial PENDENTE DE FONTE. Sem confissão, sem admitir infração, sem juízo de autoria.
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=manifestacao-investigado -->
Síntese do objeto da portaria ([CNMP-IC-4]); fatos com prova; fundamentos com [ID]; quesitos.
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=razoes-arquivamento -->
Diligências não esgotadas ou fundamento existente para a ação civil pública ([CNMP-IC-10-13], art. 10, caput), cada ponto com [ID] e prova.
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=minuta-tac -->
Considerandos sem confissão. Cláusulas: (1) obrigações certas, líquidas e exigíveis, salvo peculiaridades do caso concreto, com modo, tempo e lugar ([CNMP-TAC-1-4], art. 3º; art. 1º, § 1º); (2) cominação por descumprimento — multa diária ou outra espécie, valor decidido pelas partes, ou, em caso excepcional e fundamentado, fixação judicial (art. 4º); (3) prestação periódica de informações, se prevista ([CNMP-TAC-9-12], art. 9º, parágrafo único); (4) não reconhecimento de responsabilidade para outros fins (art. 1º, § 3º); (5) foro; (6) representação: pessoa física por procurador com poderes especiais e firma reconhecida no particular; pessoa jurídica por quem tem poderes; grupo econômico pela controladora; advogado com mandato juntado (art. 3º, §§ 1º a 4º); testemunhas facultativas (§ 5º).
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=justificativa-descumprimento -->
Prova do cumprimento parcial; causa do descumprimento; proposta de repactuação ([CNMP-TAC-9-12], art. 11).
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=resposta-recomendacao -->
O que será ou não adotado e por quê, sem admitir infração.
<!-- FIM VARIANTE -->

## IV. PEDIDOS

<!-- VARIANTE peca=representacao -->
Instauração de inquérito civil ou de procedimento preparatório e diligências delimitadas, sem afirmar que serão deferidas.
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=recurso-indeferimento -->
Reconsideração ou provimento, com instauração.
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=contrarrazoes-recurso -->
Desprovimento do recurso e manutenção do arquivamento.
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=resposta-requisicao -->
Recebimento; dilação fundamentada, se necessária, sem afirmar deferimento; reserva de complementar.
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=manifestacao-investigado -->
Diligência indicada ou arquivamento fundamentado ([CNMP-IC-10-13], art. 10).
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=razoes-arquivamento -->
Não homologação, com conversão em diligência ou prosseguimento ([CNMP-IC-10-13], art. 10, § 4º, I e II).
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=documentos-subsidios -->
Juntada aos autos.
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=justificativa-descumprimento -->
Acolhimento da justificativa ou repactuação, antes da execução judicial ([CNMP-TAC-9-12], art. 11).
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=resposta-recomendacao -->
Juntada da manifestação e dos documentos; reserva de complementar, sem afirmar acolhimento.
<!-- FIM VARIANTE -->

## V. DOCUMENTOS

{{lista_de_documentos_com_origem}}

## VI. FECHO

<!-- VARIANTE peca=minuta-tac -->
Assinam o órgão do Ministério Público e o compromissário ([CNMP-TAC-1-4], art. 3º). Aviso prévio ao cliente: extrato publicado com partes, CPF ou CNPJ e endereço ([CNMP-TAC-6-8], art. 7º).
<!-- FIM VARIANTE -->

[LOCAL — PENDENTE DE PROVA], [DATA — PENDENTE DE PROVA].

[ADVOGADO — PENDENTE DE PROVA] — OAB [UF E NÚMERO DA OAB — PENDENTE DE PROVA]
