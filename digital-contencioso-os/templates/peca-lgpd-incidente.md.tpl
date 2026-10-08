<!-- esqueleto: peca-lgpd-incidente · consumido por skills/lgpd-incidente-de-seguranca/SKILL.md (§5) -->
<!-- REGRA DE ENTREGA (única, vale para todo o esqueleto): slot {{...}} só com dado do caso e origem. O documento entregue não traz chaves duplas de slot, marcador de variante nem comentário HTML (estas linhas de cabeçalho saem também). Slot sem dado vira [NOME DO CAMPO — PENDENTE DE PROVA] na linha, em maiúsculas (ex.: [DATA DO CONHECIMENTO — PENDENTE DE PROVA]); nunca marcador em minúscula nem o estado sem complemento. Só entra a variante do ato e do porte do caso; alternativa que a prova não resolve sai do corpo e vai às pendências. O lado do documento é o do cliente (linha POLO do perfil). Estado por item: só MINUTA PARA REVISÃO HUMANA, PENDENTE DE PROVA, PENDENTE DE FONTE, BLOQUEADO, FORA DO RECORTE. O documento é gravado na pasta do caso. -->
<!-- variantes: variante = bloco entre "VARIANTE chave=valor" e "FIM VARIANTE"; entra só o conteúdo do bloco do caso e os marcadores saem (peca: comunicacao-anpd | comunicacao-titulares | complementacao | declaracao-titulares | registro | aviso-operador; porte: pequeno-porte). Polo: REGULADO, fase não se aplica (consultivo até a comunicação). Ato extrajudicial: sem valor da causa e sem rito. -->
<!-- [ID] só de bloco existente no context/; sem [ID] ⇒ PENDENTE DE FONTE na linha. Prazo só no literal do bloco; nenhuma data de vencimento calculada. Sem promessa de arquivamento ou de ausência de sanção; sem frase de garantia ("seus dados estão seguros"). A minuta segue para revisao-final-digital. -->

<!-- VARIANTE peca=comunicacao-anpd -->
# COMUNICAÇÃO DE INCIDENTE DE SEGURANÇA À ANPD

**Destinatário:** Agência Nacional de Proteção de Dados (ANPD) ([NAT-LGPD-55A]), pelo formulário eletrônico disponibilizado pela ANPD ([ANPD-R15-6-8], § 4º; [ANPD-R15-18-23], art. 18).

**Qualificação**
- Controlador: {{controlador_nome_empresarial}}, {{cnpj}}, {{sede}} ([ANPD-R15-4-5], art. 4º).
- Operador, quando aplicável: {{operador_identificacao}} ([ANPD-R15-6-8], § 2º, X).
- Encarregado ou representante: {{encarregado_ou_representante}}, com {{documento_de_vinculo_ou_instrumento_de_poderes}} juntado no mesmo prazo ([ANPD-R15-6-8], §§ 5º a 7º; § 2º, VIII).
<!-- VARIANTE porte=pequeno-porte -->
- Declaração de agente de pequeno porte: {{documento_de_enquadramento}} ([ANPD-R15-6-8], § 2º, IX; enquadramento: [ANPD3L-R2-2], [ANPD3L-R2-3]); sem documento ⇒ PENDENTE DE PROVA.
<!-- FIM VARIANTE -->

**Fatos** ([ANPD-R15-6-8], § 2º)
- Descrição e causa: {{descricao_e_causa}} (XI).
- Natureza e categoria dos dados afetados: {{dados}} (I).
- Titulares afetados, com crianças, adolescentes e idosos: {{numero_e_perfil}} (II); total de titulares nas atividades afetadas: {{total}} (XII).
- Data da ocorrência e do conhecimento: {{data_ocorrencia}} · {{data_conhecimento}}, com {{documento_da_data}} (VII); motivos da demora, se houver: {{motivos}} (V).

**Fundamentos:** [LGPD-48]; [ANPD-R15-3], XII; [ANPD-R15-4-5], art. 5º (matriz de critérios do § 2º com prova); [ANPD-R15-6-8], caput: "no prazo de três dias úteis", contado "do conhecimento pelo controlador de que o incidente afetou dados pessoais".

**Medidas e riscos** ([ANPD-R15-6-8], § 2º)
- Medidas antes e após o incidente: {{medidas}} (III).
- Riscos e impactos aos titulares: {{riscos}} (IV).
- Medidas de reversão e mitigação: {{mitigacao}} (VI).

**Pedidos**
1. Recebimento da comunicação.
2. Sigilo das informações indicadas, com fundamento ([ANPD-R15-6-8], art. 7º): {{informacoes_e_fundamento}} — se cabível.
3. Reserva de complementação "no prazo de vinte dias úteis, a contar da data da comunicação" ([ANPD-R15-6-8], § 3º).

**Provas:** documento de vínculo ou procuração; evidências técnicas com origem (arquivo, quem produziu, quando): {{evidencias}}.

**Fecho:** [LOCAL — PENDENTE DE PROVA], [DATA — PENDENTE DE PROVA], {{responsavel}}.
<!-- FIM VARIANTE -->

<!-- VARIANTE peca=comunicacao-titulares -->
# COMUNICAÇÃO DE INCIDENTE DE SEGURANÇA AOS TITULARES

**Destinatário:** {{titular_ou_grupo}}, por {{meio_direto_e_individualizado}} ("telefone, e-mail, mensagem eletrônica ou carta"); se inviável, divulgação nos meios do controlador, com direta e fácil visualização, "pelo período de, no mínimo, três meses" ([ANPD-R15-9], §§ 1º a 3º).

**Identificação:** {{controlador}}; contato: {{encarregado_ou_canal}}.

**Conteúdo** (linguagem simples; itens I a VII do art. 9º, [ANPD-R15-9]): {{um campo por inciso, sem frase de garantia}}; recomendações de mitigação ao titular como boa prática ([ANPD-R15-9], § 5º).

**Prazo:** "no prazo de três dias úteis contados do conhecimento pelo controlador" ([ANPD-R15-9], caput).
<!-- VARIANTE porte=pequeno-porte -->
- Agente de pequeno porte, com {{documento_de_enquadramento}}: o prazo do caput "é contado em dobro" ([ANPD-R15-9], § 6º; [ANPD-R2-14], II); sem documento ⇒ PENDENTE DE PROVA.
<!-- FIM VARIANTE -->

**Documentos:** prova do envio ou da divulgação: {{comprovante}}.

**Fecho:** [LOCAL — PENDENTE DE PROVA], [DATA — PENDENTE DE PROVA], {{responsavel}}.
<!-- FIM VARIANTE -->

<!-- VARIANTE peca=complementacao -->
# COMPLEMENTAÇÃO DA COMUNICAÇÃO DE INCIDENTE

<!-- C é dever do controlador na própria comunicação (art. 6º, § 3º), juntado ao processo já aberto; não é resposta nem manifestação. Pedido de informações adicionais da ANPD (art. 8º) ⇒ corte do § 1 da skill. -->

**Destinatário:** ANPD, no procedimento de comunicação iniciado com o recebimento da comunicação ([ANPD-R15-18-23], art. 18; [ANPD-R15-3], XVII).

**Identificação:** comunicação nº {{protocolo_ou_numero}}, enviada em {{data_da_comunicacao}} ({{comprovante}}).

**Qualificação resumida:** {{controlador}}; {{encarregado_ou_representante}}.

**Conteúdo:** só informação nova, de maneira fundamentada, item a item do art. 6º, § 2º alterado: {{inciso}} · {{informacao_anterior}} · {{informacao_nova}} · {{fundamento_da_alteracao}} ([ANPD-R15-6-8], § 3º: "no prazo de vinte dias úteis, a contar da data da comunicação").

**Documentos:** {{evidencias_novas_com_origem}}.

**Fecho:** [LOCAL — PENDENTE DE PROVA], [DATA — PENDENTE DE PROVA], {{responsavel}}.
<!-- FIM VARIANTE -->

<!-- VARIANTE peca=declaracao-titulares -->
# DECLARAÇÃO DE COMUNICAÇÃO AOS TITULARES

<!-- D é dever do controlador na própria comunicação (art. 9º, § 4º), juntado ao processo de comunicação já aberto; não é resposta nem manifestação. -->

**Destinatário:** ANPD, no processo de comunicação de incidente ([ANPD-R15-9], § 4º; [ANPD-R15-3], XVIII).

**Identificação:** comunicação nº {{protocolo_ou_numero}}.

**Qualificação resumida:** {{controlador}}; {{encarregado_ou_representante}}.

**Declaração:** o controlador declara que realizou a comunicação aos titulares, "constando os meios de comunicação ou divulgação utilizados": {{meios_e_periodo}}; prazo "em até três dias úteis, contados do término do prazo" do caput ([ANPD-R15-9], § 4º).
<!-- VARIANTE porte=pequeno-porte -->
- Agente de pequeno porte, com {{documento_de_enquadramento}}: o prazo do caput, de cujo término se conta esta declaração, "é contado em dobro" ([ANPD-R15-9], § 6º; [ANPD-R2-14], II); o § 6º não menciona o prazo do § 4º; sem documento ⇒ PENDENTE DE PROVA.
<!-- FIM VARIANTE -->

**Documentos:** {{comprovantes_de_envio_ou_divulgacao}}.

**Fecho:** [LOCAL — PENDENTE DE PROVA], [DATA — PENDENTE DE PROVA], {{responsavel}}.
<!-- FIM VARIANTE -->

<!-- VARIANTE peca=registro -->
# REGISTRO DO INCIDENTE DE SEGURANÇA

**Destinatário:** arquivo interno do controlador, apresentável à ANPD; guarda mínima de cinco anos, salvo obrigação maior ([ANPD-R15-10]).

**Identificação:** {{controlador}}; incidente {{identificador_interno}}; comunicado? {{sim_ou_nao_com_motivos}}.

**Campos mínimos:** incisos I a VIII do art. 10, § 1º ([ANPD-R15-10]): {{um campo por inciso}}; não comunicado ⇒ motivos registrados (VIII).

**Documentos:** {{evidencias_com_origem}}.

**Fecho:** [LOCAL — PENDENTE DE PROVA], [DATA — PENDENTE DE PROVA], {{responsavel}}.
<!-- FIM VARIANTE -->

<!-- VARIANTE peca=aviso-operador -->
# AVISO DE INCIDENTE DO OPERADOR AO CONTROLADOR

**Destinatário:** {{controlador}}, pelo canal previsto no contrato: {{canal_contratual}}.

**Identificação:** contrato de tratamento {{contrato_identificacao}}; incidente {{identificador}}.

**Qualificação resumida:** {{operador}}; contato: {{responsavel_tecnico}}.

**Conteúdo:** fatos que o operador detém, medidas tomadas e contato, com as informações do art. 6º, § 2º, que tiver ([ANPD-R15-6-8]); o dever de comunicar à ANPD e aos titulares é do controlador ([ANPD-R15-4-5], art. 4º), e o operador segue as instruções dele ([LGPD-37-39], art. 39).

**Prazo:** o do contrato ({{clausula}}); sem contrato, nenhum prazo legal no `context/` ⇒ PENDENTE DE FONTE.

**Documentos:** {{evidencias_com_origem}}.

**Fecho:** [LOCAL — PENDENTE DE PROVA], [DATA — PENDENTE DE PROVA], {{responsavel}}.
<!-- FIM VARIANTE -->
