<!-- esqueleto: peca-anpd-resposta-oficio · consumido por skills/via-administrativa-anpd-regulado/SKILL.md (§2 fiscalizado e §3 investigado) -->
<!-- REGRA DE ENTREGA (única, vale para todo o esqueleto): slot {{...}} só com dado do caso e origem. A peça entregue não traz chaves duplas de slot, marcador de variante nem comentário HTML (estas linhas de cabeçalho saem também). Slot sem dado vira [NOME DO CAMPO — PENDENTE DE PROVA] na linha, em maiúsculas (ex.: [NÚMERO DO OFÍCIO — PENDENTE DE PROVA]); nunca marcador em minúscula nem o estado sem complemento. Só entra a variante do ato do caso; alternativa que a prova não resolve sai do corpo e vai às pendências. A peça é do polo do cliente (linha POLO do perfil), nunca do adverso. Estado por item: só MINUTA PARA REVISÃO HUMANA, PENDENTE DE PROVA, PENDENTE DE FONTE, BLOQUEADO, FORA DO RECORTE. A peça é gravada na pasta do caso. -->
<!-- variantes: variante = bloco entre "VARIANTE chave=valor" e "FIM VARIANTE"; entra só o conteúdo do bloco do caso e os marcadores saem (peca: resposta-oficio | comprovacao-regularizacao | pedido-prorrogacao | plano-conformidade | manifestacao-preparatorio; natureza: orgao-publico; porte: pequeno-porte). Polo: REGULADO. Sem rito judicial. -->
<!-- [ID] só de bloco existente no context/INDICE.md; sem [ID] ⇒ PENDENTE DE FONTE na linha. Datas só as do caso; nenhum vencimento calculado. Fiscalização não é sanção; não presumir infração; sem promessa de deferimento ou arquivamento. A minuta segue para revisao-final-digital. -->

À {{unidade_que_expediu_o_ato}} DA AGÊNCIA NACIONAL DE PROTEÇÃO DE DADOS — ANPD
<!-- a unidade e a forma de envio vêm do próprio ofício, requisição ou intimação; sem indicação ⇒ PENDENTE DE PROVA -->

Referência: {{oficio_requisicao_ou_procedimento_n}} · Processo nº {{numero_processo_se_houver}}

{{agente_nome}}, {{agente_qualificacao}}, endereço eletrônico para intimações {{email_intimacoes}} ([ANPD-R1-12], § 2º), assistido por advogado ({{instrumento_de_representacao}}), assistência facultativa ([PA-3], IV); instrumento não juntado ⇒ PENDENTE DE PROVA, vem apresentar

<!-- VARIANTE peca=resposta-oficio -->
**RESPOSTA AO OFÍCIO / REQUISIÇÃO**, delimitada ao que foi pedido, no cumprimento dos deveres do agente regulado ([ANPD-R1-5-6], art. 5º).
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=comprovacao-regularizacao -->
**COMPROVAÇÃO DE REGULARIZAÇÃO** em atendimento à solicitação de regularização ([ANPD-R1-33-36], art. 35, § 2º), medida preventiva que não constitui sanção ([ANPD-R1-27-31], art. 31; [ANPD-R1-32]).
<!-- FIM VARIANTE -->
<!-- VARIANTE natureza=orgao-publico -->
**RESPOSTA AO INFORME** ([ANPD-R1-33-36], art. 35, § 1º), medida preventiva que não constitui sanção ([ANPD-R1-27-31], art. 31).
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=pedido-prorrogacao -->
**PEDIDO DE PRORROGAÇÃO** do prazo determinado na solicitação de regularização ou no informe, uma única vez e por igual período, com as justificativas da não regularização ([ANPD-R1-33-36], art. 35, § 3º).
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=plano-conformidade -->
**PLANO DE CONFORMIDADE** ([ANPD-R1-33-36], art. 36), medida preventiva que não constitui sanção ([ANPD-R1-32], IV; [ANPD-R1-27-31], art. 31).
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=manifestacao-preparatorio -->
**MANIFESTAÇÃO NO PROCEDIMENTO PREPARATÓRIO** (averiguação preliminar — [ANPD-R1-40-44], art. 40), com alegações e documentos antes da decisão ([PA-3], III).
<!-- FIM VARIANTE -->

## I. ATO RECEBIDO E CIÊNCIA

- Ato: {{oficio_requisicao_solicitacao_ou_informe}}, recebido por {{meio_e_evento_de_ciencia}} ([ANPD-R1-12], {{inciso}}); origem: {{documento}}.
- Prazo, local, formato e condições fixados no próprio ato ([ANPD-R1-5-6], art. 5º, I): "{{literal_do_ato}}"; contagem em dias úteis ([ANPD-R1-8]). Data final a conferir pelo advogado.
<!-- VARIANTE porte=pequeno-porte -->
- Agente de pequeno porte (enquadramento provado: {{documento_de_enquadramento}}; sem prova ⇒ PENDENTE DE PROVA): o dobro do [ANPD-R2-14], IV, vale só "em relação aos prazos estabelecidos nos normativos próprios para a apresentação de informações, documentos, relatórios e registros solicitados pela ANPD a outros agentes de tratamento".
- Prazo fixado no próprio ofício ou requisição: não presumir o dobro ([ANPD-R2-14], IV) ⇒ PENDENTE DE FONTE; conferir com a unidade que expediu o ato e contar o prazo do ato até a resposta dela.
<!-- FIM VARIANTE -->

<!-- VARIANTE peca=resposta-oficio -->
## II. RESPOSTA ITEM A ITEM

| Item requisitado (literal do ato) | Resposta | Documento | Origem | Sigilo pedido? |
|---|---|---|---|---|
| {{item_1}} | {{resposta}} | {{doc}} | {{origem}} | {{sim_nao}} |

- Documento digitalizado nos requisitos indicados no [ANPD-R1-5-6], art. 5º, § 3º.
- Registro das operações ou relatório de impacto requisitados entram como item desta resposta ([LGPD-37-39], arts. 37 e 38).
- Item que não puder ser atendido: justificativa expressa {{justificativa}}; o descumprimento dos deveres pode caracterizar obstrução ([ANPD-R1-5-6], art. 6º).
- Representante apto, se requisitado: {{representante}} ([ANPD-R1-5-6], art. 5º, VI).
<!-- FIM VARIANTE -->

<!-- VARIANTE peca=comprovacao-regularizacao -->
## II. SITUAÇÃO DESCRITA E PROVIDÊNCIAS

| Situação descrita no ato | Providência adotada | Documento | Origem |
|---|---|---|---|
| {{situacao}} | {{providencia}} | {{doc}} | {{origem}} |
<!-- FIM VARIANTE -->

<!-- VARIANTE peca=pedido-prorrogacao -->
## II. JUSTIFICATIVAS

Razões que impediram a regularização dentro do determinado, com documento: {{justificativa_e_prova}}. Pedido único, por igual período ([ANPD-R1-33-36], art. 35, § 3º); sem afirmar deferimento.
<!-- FIM VARIANTE -->

<!-- VARIANTE peca=plano-conformidade -->
## II. CONTEÚDO MÍNIMO ([ANPD-R1-33-36], art. 36, I a V)

| I. Objeto | II. Cronograma | III. Ações para reverter a situação | IV. Critérios de acompanhamento | V. Trajetória dos resultados |
|---|---|---|---|---|
| {{objeto}} | {{cronograma_definido_pelo_cliente}} | {{acoes}} | {{criterios}} | {{trajetoria}} |

O plano não exime o agente das obrigações da regulamentação ([ANPD-R1-33-36], art. 36, § 1º); cabe ao agente comprovar o resultado e as medidas no prazo estabelecido (art. 36, § 2º).
<!-- FIM VARIANTE -->

<!-- VARIANTE peca=manifestacao-preparatorio -->
## II. FATOS E ESCLARECIMENTOS

Fato apurado (como descrito no ato) — esclarecimento — prova — origem: {{linhas}}. O procedimento pode tramitar em sigilo ([ANPD-R1-40-44], art. 40, parágrafo único) e termina em arquivamento ou instauração (art. 42).
<!-- FIM VARIANTE -->

## III. SIGILO EMPRESARIAL

Pedido fundamentado de sigilo das informações relativas à atividade empresarial em {{itens}}, cuja divulgação possa violar segredo comercial ou industrial ([ANPD-R1-5-6], art. 5º, § 2º); sem afirmar deferimento.

## IV. PEDIDOS

Requer:
<!-- VARIANTE peca=resposta-oficio -->
a) o recebimento desta resposta e dos documentos como atendimento ao requisitado, nos limites do item II;
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=comprovacao-regularizacao -->
a) o reconhecimento da regularização comprovada ([ANPD-R1-33-36], art. 35, § 2º);
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=pedido-prorrogacao -->
a) a prorrogação, uma única vez, por igual período ([ANPD-R1-33-36], art. 35, § 3º);
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=plano-conformidade -->
a) o recebimento do plano de conformidade ([ANPD-R1-33-36], art. 36);
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=manifestacao-preparatorio -->
a) a consideração das alegações e dos documentos antes da decisão ([PA-3], III) e o arquivamento do procedimento preparatório ([ANPD-R1-40-44], art. 42);
<!-- FIM VARIANTE -->
b) o sigilo do item III ([ANPD-R1-5-6], art. 5º, § 2º);
c) ciência da tramitação, vista e cópias ([PA-3], II), e as intimações no endereço eletrônico informado ([ANPD-R1-12], § 2º).

## V. DOCUMENTOS

1. {{documento}} — {{origem: arquivo, quem produziu, quando}}

Termos em que pede deferimento.

Local e data: em branco para o advogado.

[ADVOGADO — PENDENTE DE PROVA] — OAB [NÚMERO DA OAB — PENDENTE DE PROVA]
