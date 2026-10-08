<!-- esqueleto: peca-lgpd-contrato-tratamento · consumido por skills/lgpd-contratos-de-tratamento/SKILL.md (§4) -->
<!-- REGRA DE ENTREGA (única, vale para todo o esqueleto): slot {{...}} só com dado do caso e origem. O documento entregue não traz chaves duplas de slot, marcador de variante nem comentário HTML (estas linhas de cabeçalho saem também). Slot sem dado vira [NOME DO CAMPO — PENDENTE DE PROVA] na linha, em maiúsculas (ex.: [CNPJ DO OPERADOR — PENDENTE DE PROVA]); nunca marcador em minúscula nem o estado sem complemento. Só entra a variante do ato e do mecanismo do caso; alternativa que a prova não resolve sai do corpo e vai às pendências. O lado do documento é o do cliente (linha POLO do perfil). Estado por item: só MINUTA PARA REVISÃO HUMANA, PENDENTE DE PROVA, PENDENTE DE FONTE, BLOQUEADO, FORA DO RECORTE. O documento é gravado na pasta do caso. -->
<!-- variantes: variante = bloco entre "VARIANTE chave=valor" e "FIM VARIANTE"; entra só o conteúdo do bloco do caso e os marcadores saem (variante pode conter outra; "valor|valor" = vale para qualquer um) (peca: contrato | aditivo | quadro-transferencia | transparencia; mecanismo: clausulas-padrao | clausulas-especificas | normas-corporativas). Polo: REGULADO, fase não se aplica (consultivo). Ato extrajudicial: sem valor da causa e sem rito. -->
<!-- [ID] só de bloco existente no context/; sem [ID] ⇒ PENDENTE DE FONTE na linha. Prazo só no literal do bloco; nenhuma data calculada. Cláusula não "blinda" nem garante conformidade. "Escolha contratual" = cláusula das partes, sem atribuí-la à lei. A minuta segue para revisao-final-digital. -->

<!-- VARIANTE peca=contrato -->
# CONTRATO DE TRATAMENTO DE DADOS PESSOAIS
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=aditivo -->
# TERMO ADITIVO DE TRATAMENTO DE DADOS PESSOAIS AO {{contrato_principal_identificacao}}
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=contrato|aditivo -->
## Partes

- **Controlador:** {{controlador_nome_empresarial}}, {{cnpj}}, {{sede}}, por {{representante_e_poderes}}; papel pelos fatos: {{quem_decide_finalidade_e_meios}} ([LGPD-5], VI).
- **Operador:** {{operador_nome_empresarial}}, {{cnpj}}, {{sede}}, por {{representante_e_poderes}}; trata em nome do controlador: {{fatos}} ([LGPD-5], VII).
- Encarregado de cada parte, se indicado: {{encarregado}} ([LGPD-5], VIII).

## Considerandos (fatos)

- Contrato principal: {{contrato_principal}} (documento: {{origem}}).
- Finalidade e hipótese legal do tratamento: {{finalidade_e_hipotese}} ([LGPD3-7]; sensíveis: [LGPD3-11]; crianças e adolescentes: [LGPD3-14]).
- Categorias de dados e de titulares; duração: {{categorias_e_duracao}}.

## Fundamentos

[LGPD-5]; [LGPD-37-39]; [LGPD3-6]; [LGPD3-7]; [LGPD3-46]; [LGPD3-47]; [LGPD-42-45]; com transferência, [LGPD3-33] e os blocos `ANPD3-R19-*` e `ANPD3L-R19-*` usados.

## Cláusulas

1. **Objeto e papéis:** {{objeto}}; papéis pelas definições legais, não pelo rótulo ([LGPD-5], VI, VII e IX).
2. **Instruções documentadas:** o operador trata segundo as instruções do controlador, que verifica sua observância ([LGPD-37-39], art. 39); instruções no Anexo I.
3. **Confidencialidade** do pessoal autorizado: {{regra}} (escolha contratual).
4. **Segurança:** medidas do Anexo II, desde a concepção e mesmo após o término ([LGPD3-46], [LGPD3-47]); sistemas estruturados ([LGPD3-49]).
5. **Registro das operações** por controlador e operador ([LGPD-37-39], art. 37).
6. **Suboperação** só com autorização do controlador (escolha contratual); lista no Anexo III.
7. **Apoio** ao atendimento de titulares e ao encarregado: {{forma}} (escolha contratual).
8. **Aviso de incidente** ao controlador, com as informações do art. 6º, § 2º, que o operador detiver ([ANPD-R15-6-8]), em {{prazo_contratual}} — prazo das partes; quem comunica à ANPD e ao titular é o controlador ([ANPD-R15-4-5], art. 4º). Com cláusulas-padrão: Parte Designada e Cláusula 16 do Anexo II ([ANPD3L-R19-A2-C11-17]).
9. **Transferência internacional:** só com hipótese do art. 33 ([LGPD3-33]) e mecanismo válido ([ANPD3-R19-A9]); mecanismo: VARIANTE abaixo.
10. **Verificação e auditoria** pelo controlador: aviso prévio de {{prazo}}, escopo {{escopo}} (escolha contratual).
11. **Responsabilidade e regresso:** perante o titular, regime dos arts. 42 a 45 ([LGPD-42-45]); esta cláusula regula só a relação interna e o regresso (art. 42, § 4º).
12. **Término:** devolução ou eliminação por instrução do controlador: {{instrucao}}. Fora das cláusulas-padrão, base legal do término e da conservação ⇒ PENDENTE DE FONTE; com cláusulas-padrão, Cláusula 20 do Anexo II ([ANPD3L-R19-A2-C18-24]).
13. **Lei aplicável e foro:** {{lei_e_foro}}; com cláusulas-padrão, Cláusula 24 do Anexo II ([ANPD3L-R19-A2-C18-24]); com cláusulas específicas, lei nacional e fiscalização da ANPD ([ANPD3-R19-A21-24]).

<!-- VARIANTE mecanismo=clausulas-padrao -->
9.1. As Partes adotam, integralmente e sem alteração, as cláusulas-padrão contratuais do Anexo II da Res. CD/ANPD 19/2024, que figuram como Anexo IV; nenhuma disposição deste instrumento as contraria ([ANPD3-R19-A15-17], art. 16; no aditivo, Seções I, II e III como anexo, § 3º).
<!-- FIM VARIANTE -->
<!-- VARIANTE mecanismo=clausulas-especificas -->
9.1. Cláusulas específicas, usadas porque as cláusulas-padrão não podem ser usadas por circunstância excepcional comprovada: {{circunstancia_e_prova}}; preveem a lei nacional e a fiscalização da ANPD, adotam a redação padrão sempre que possível e dependem de aprovação ([ANPD3-R19-A21-24]). Sem aprovação ⇒ a transferência fica `PENDENTE DE PROVA`.
<!-- FIM VARIANTE -->
<!-- VARIANTE mecanismo=normas-corporativas -->
9.1. Normas corporativas globais do grupo {{grupo}}, vinculantes, ligadas a programa de governança do art. 50, § 2º, com o conteúdo mínimo I a VIII e aprovação da ANPD ([ANPD3-R19-A25-28]); processo de aprovação ⇒ PENDENTE DE FONTE.
<!-- FIM VARIANTE -->

## Anexos (provas)

- I — Descrição do tratamento e instruções: {{descricao}}.
- II — Medidas de segurança (documento técnico do cliente): {{medidas}}.
- III — Suboperadores autorizados: {{lista}}.
<!-- VARIANTE mecanismo=clausulas-padrao -->
- IV — Anexo II da Res. CD/ANPD 19/2024, transcrito do literal de [ANPD3L-R19-A2-S1], [ANPD3L-R19-A2-C5-10], [ANPD3L-R19-A2-C11-17], [ANPD3L-R19-A2-C18-24] e [ANPD3L-R19-A2-S3-S4], sem alteração de palavra:
  - Seção I: preencher só os quadros. Cláusula 3: Opção A = sem Transferência Posterior (salvo item 18.3), Opção B = com. Cláusula 4: Opção A só se ao menos uma Parte é Controlador (as obrigações das Cláusulas 14 a 16 não podem ser atribuídas à Parte que atua como Operador); Opção B só entre Operadores, com o quadro do Terceiro Controlador ([ANPD3L-R19-A2-S1]).
  - Seção II (Cláusulas 5 a 24): copiar integralmente; omitir a linha `[dispositivo revogado — omitido]`; manter a Cláusula 15.4, b com o texto vigente e a nota "(Redação dada pela Retificação publicada no DOU de 18/08/2025)", ambos conforme o bloco ([ANPD3L-R19-A2-C11-17]; [ANPD3L-R19-OBS]).
  - Seção III: medidas de segurança do caso, inclusive para dados sensíveis e de crianças e adolescentes.
  - Seção IV: facultativa; não exclui, modifica nem contraria as Seções I a III.
  - Título de quadro colado à primeira célula (Cláusulas 1 a 4, inclusive o segundo quadro da Cláusula 1, e Seção III; ex.: "…PartesNome:", "…Partes 2Nome:", "Medidas De Segurança(i)") é efeito da captura: separar título e campo, sem alterar palavra.
  - As Cláusulas 1.1 ("aprovadas pela Autoridade Nacional de Proteção de Dados (ANPD)") e 6.1, b ("ANPD: Autoridade Nacional de Proteção de Dados") trazem, no literal da norma, a denominação anterior; a denominação vigente é Agência Nacional de Proteção de Dados ([NAT-LGPD-55A]). Não alterar as cláusulas-padrão; registrar a divergência na tabela de estados para o advogado.
<!-- FIM VARIANTE -->

## Fecho

[LOCAL — PENDENTE DE PROVA], [DATA — PENDENTE DE PROVA]. Assinaturas: {{controlador_representante}} · {{operador_representante}}.
<!-- FIM VARIANTE -->

<!-- VARIANTE peca=quadro-transferencia -->
# QUADRO DE ENQUADRAMENTO DA TRANSFERÊNCIA INTERNACIONAL

**Destinatário:** controlador, para decisão com o advogado (uso interno). **Identificação:** {{contrato_ou_aditivo}}; agente: {{controlador}}.

| Operação | Há transferência? ([ANPD3-R19-A4-8]) | Lei nacional aplica? ([ANPD3-R19-A4-8]) | Hipótese legal ([ANPD3-R19-A9]) | Mecanismo ([LGPD3-33]) | `[ID]` | Estado |
|---|---|---|---|---|---|---|
| {{operacao}} | | | | | | |

**Documentos:** {{fluxos_e_contratos}}. **Fecho:** [LOCAL — PENDENTE DE PROVA], [DATA — PENDENTE DE PROVA], {{responsavel}}.
<!-- FIM VARIANTE -->

<!-- VARIANTE peca=transparencia -->
# DOCUMENTO DE TRANSPARÊNCIA — TRANSFERÊNCIA INTERNACIONAL DE DADOS

**Destinatário:** titulares, na página do controlador na Internet, em página específica ou com destaque na Política de Privacidade ([ANPD3-R19-A15-17], art. 17, §§ 2º e 3º); em língua portuguesa.

**Identificação:** {{controlador}}; mecanismo: {{mecanismo}}.

**Conteúdo:** um campo por inciso I a VI do art. 17, § 2º ([ANPD3-R19-A15-17]): {{campos}}. Com cláusulas-padrão, publica a Parte Designada, com as alíneas a a g da Cláusula 14.1 do Anexo II ([ANPD3L-R19-A2-C11-17]).

**Pedido do titular:** íntegra das cláusulas, observados os segredos comercial e industrial, em 15 dias, salvo prazo distinto em regulamentação da ANPD ([ANPD3-R19-A15-17], art. 17, § 1º).

**Documentos:** {{comprovante_de_publicacao}}. **Fecho:** [LOCAL — PENDENTE DE PROVA], [DATA — PENDENTE DE PROVA], {{responsavel}}.
<!-- FIM VARIANTE -->
