<!-- esqueleto: peca-anpd-cumprimento-sancao · consumido por skills/via-administrativa-anpd-regulado/SKILL.md (§5, sancionado) -->
<!-- REGRA DE ENTREGA (única, vale para todo o esqueleto): slot {{...}} só com dado do caso e origem. A peça entregue não traz chaves duplas de slot, marcador de variante nem comentário HTML (estas linhas de cabeçalho saem também). Slot sem dado vira [NOME DO CAMPO — PENDENTE DE PROVA] na linha, em maiúsculas (ex.: [NÚMERO DO PROCESSO — PENDENTE DE PROVA]); nunca marcador em minúscula nem o estado sem complemento. Só entra a variante da fase e do ato do caso; alternativa que a prova não resolve sai do corpo e vai às pendências. A peça é do polo do cliente (linha POLO do perfil), nunca do adverso. Estado por item: só MINUTA PARA REVISÃO HUMANA, PENDENTE DE PROVA, PENDENTE DE FONTE, BLOQUEADO, FORA DO RECORTE. A peça é gravada na pasta do caso. -->
<!-- variantes: variante = bloco entre "VARIANTE chave=valor" e "FIM VARIANTE"; entra só o conteúdo do bloco do caso e os marcadores saem (peca: demonstracao-cumprimento | comprovacao-pagamento | renuncia-e-pagamento | regularizacao-nao-pecuniaria | pedido-revisao; porte: pequeno-porte). Polo: REGULADO. Sem rito judicial. -->
<!-- [ID] só de bloco existente no context/INDICE.md; sem [ID] ⇒ PENDENTE DE FONTE na linha. Datas só as do caso; nenhum vencimento calculado; multa, encargos e multa diária citados, nunca calculados. Cobrança, execução e Cadin ⇒ PENDENTE DE FONTE. Sem promessa de baixa, desbloqueio ou revisão. A minuta segue para revisao-final-digital. -->

À {{autoridade_indicada_na_intimacao}} DA AGÊNCIA NACIONAL DE PROTEÇÃO DE DADOS — ANPD

Processo nº {{numero_processo}} · Decisão {{identificacao_da_decisao}}

{{agente_nome}}, {{agente_qualificacao}}, endereço eletrônico para intimações {{email_intimacoes}} ([ANPD-R1-12], § 2º), assistido por advogado ({{instrumento_de_representacao}}), assistência facultativa ([PA-3], IV); instrumento não juntado ⇒ PENDENTE DE PROVA, vem apresentar

<!-- VARIANTE peca=demonstracao-cumprimento -->
**DEMONSTRAÇÃO DE CUMPRIMENTO** da obrigação imposta, nas condições de aferição fixadas na decisão ([ANPD-R1-55-57], arts. 55, § 2º, I, e 56).
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=comprovacao-pagamento -->
**COMPROVAÇÃO DE PAGAMENTO DE MULTA** ([ANPD-R4-17-19], art. 17).
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=renuncia-e-pagamento -->
**RENÚNCIA EXPRESSA AO DIREITO DE RECORRER E COMPROVAÇÃO DE PAGAMENTO**, para o fator de redução de 25% no valor da multa ([ANPD-R4-17-19], art. 18). <!-- escolha do cliente, por escrito e assinada; incompatível com o recurso: nunca na mesma entrega que peca-anpd-recurso-conselho-diretor -->
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=regularizacao-nao-pecuniaria -->
**COMPROVAÇÃO DE REGULARIZAÇÃO** em cumprimento de sanção não pecuniária ([ANPD-R4-20-26]): {{publicizacao_bloqueio_eliminacao_suspensao_ou_proibicao}}.
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=pedido-revisao -->
**PEDIDO DE REVISÃO DA SANÇÃO** por fatos novos ou circunstâncias relevantes ([PA-56-65], art. 65), aplicado subsidiariamente ([ANPD-R1-1], § 2º); da revisão não pode resultar agravamento ([PA-56-65], art. 65, parágrafo único).
<!-- FIM VARIANTE -->

## I. DECISÃO E INTIMAÇÃO

- Decisão e sanção, como escritas: {{sancao_e_dispositivo}} ([ANPD-R1-55-57], art. 55).
- Intimação: {{meio_e_evento_de_ciencia}} ([ANPD-R1-12], {{inciso}}); origem: {{documento}}. A intimação determina o cumprimento e o respectivo prazo para execução ([ANPD-R1-55-57], art. 56): "{{literal_da_intimacao}}". Data final a conferir pelo advogado.

<!-- VARIANTE peca=demonstracao-cumprimento -->
## II. CUMPRIMENTO ITEM POR ITEM

| Obrigação (literal da decisão) | Ato praticado | Documento | Origem | Condição de aferição ([ANPD-R1-55-57], art. 55, § 2º, I) |
|---|---|---|---|---|
| {{obrigacao}} | {{ato}} | {{doc}} | {{origem}} | {{condicao}} |
<!-- FIM VARIANTE -->

<!-- VARIANTE peca=comprovacao-pagamento -->
## II. PAGAMENTO

- Prazo literal: "no prazo de até 20 (vinte) dias úteis, contados a partir da ciência oficial da decisão de aplicação de sanção" ([ANPD-R4-17-19], art. 17).
- Valor: o fixado na decisão, {{valor_da_decisao}}; comprovante: {{comprovante_e_origem}}.
- Em atraso, há encargos de mora ([ANPD-R4-17-19], art. 17, § 3º), citados e não calculados nesta peça.
- Multa diária: incidência e termo como na decisão ([ANPD-R4-16], § 4º), sem quantificação.
<!-- FIM VARIANTE -->
<!-- VARIANTE porte=pequeno-porte -->
- Agente de pequeno porte: prazo em dobro para o pagamento da multa ([ANPD-R4-17-19], art. 17, § 2º), só com enquadramento provado ({{documento_de_enquadramento}}).
<!-- FIM VARIANTE -->

<!-- VARIANTE peca=renuncia-e-pagamento -->
## II. RENÚNCIA E PAGAMENTO

- Declaração: "{{agente_nome}} renuncia expressamente ao direito de recorrer da decisão de primeira instância" — assinada por {{quem_assina_com_poderes}} ([ANPD-R4-17-19], art. 18).
- Recolhimento dentro do prazo do caput do art. 17 ([ANPD-R4-17-19], art. 18): comprovante {{comprovante_e_origem}}. Valor reduzido: o informado pela ANPD ou PENDENTE DE FONTE; nunca calculado nesta peça.
<!-- FIM VARIANTE -->

<!-- VARIANTE peca=regularizacao-nao-pecuniaria -->
## II. REGULARIZAÇÃO COMPROVADA

| Sanção | Exigência literal | Documento | Origem |
|---|---|---|---|
| publicização | teor, meio e duração fixados na decisão ([ANPD-R4-20-26], art. 20, § 2º) | {{doc}} | {{origem}} |
| bloqueio | comunicação aos agentes com uso compartilhado ([ANPD-R4-20-26], art. 22, § 2º) e regularização para desbloqueio ([ANPD-R4-20-26], art. 22, § 3º) | {{doc}} | {{origem}} |
| eliminação | comunicação aos agentes com uso compartilhado ([ANPD-R4-20-26], art. 23, § 2º) | {{doc}} | {{origem}} |
| suspensão parcial do banco de dados | regularização para o restabelecimento ([ANPD-R4-20-26], art. 24, § 4º) | {{doc}} | {{origem}} |
<!-- FIM VARIANTE -->

<!-- VARIANTE peca=pedido-revisao -->
## II. FATOS NOVOS OU CIRCUNSTÂNCIAS RELEVANTES

Fato novo — por que torna inadequada a sanção — prova — origem: {{linhas}} ([PA-56-65], art. 65).
<!-- FIM VARIANTE -->

## III. PEDIDOS

Requer:
<!-- VARIANTE peca=demonstracao-cumprimento -->
a) o reconhecimento do cumprimento da obrigação, aferido nas condições da decisão ([ANPD-R1-55-57], art. 55, § 2º, I);
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=comprovacao-pagamento -->
a) a juntada do comprovante e o registro do pagamento nos autos ([ANPD-R4-17-19], art. 17);
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=renuncia-e-pagamento -->
a) o registro da renúncia expressa e do recolhimento com o fator de redução ([ANPD-R4-17-19], art. 18);
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=regularizacao-nao-pecuniaria -->
a) o reconhecimento da regularização e a autorização de desbloqueio ou de restabelecimento, conforme o caso ([ANPD-R4-20-26], arts. 22, § 3º, e 24, § 4º);
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=pedido-revisao -->
a) a revisão da sanção, sem agravamento ([PA-56-65], art. 65 e parágrafo único);
<!-- FIM VARIANTE -->
b) as intimações no endereço eletrônico informado ([ANPD-R1-12], § 2º).

## IV. DOCUMENTOS

1. {{documento}} — {{origem: arquivo, quem produziu, quando}}

Termos em que pede deferimento.

Local e data: em branco para o advogado.

[ADVOGADO — PENDENTE DE PROVA] — OAB [NÚMERO DA OAB — PENDENTE DE PROVA]
