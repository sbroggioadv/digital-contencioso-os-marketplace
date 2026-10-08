<!-- esqueleto: peca-anpd-compromisso-tac · consumido por skills/via-administrativa-anpd-regulado/SKILL.md (§3, termo de ajustamento de conduta) -->
<!-- REGRA DE ENTREGA (única, vale para todo o esqueleto): slot {{...}} só com dado do caso e origem. A peça entregue não traz chaves duplas de slot, marcador de variante nem comentário HTML (estas linhas de cabeçalho saem também). Slot sem dado vira [NOME DO CAMPO — PENDENTE DE PROVA] na linha, em maiúsculas (ex.: [NÚMERO DO PROCESSO — PENDENTE DE PROVA]); nunca marcador em minúscula nem o estado sem complemento. Só entra a variante da fase e do ato do caso; alternativa que a prova não resolve sai do corpo e vai às pendências. A peça é do polo do cliente (linha POLO do perfil), nunca do adverso. Estado por item: só MINUTA PARA REVISÃO HUMANA, PENDENTE DE PROVA, PENDENTE DE FONTE, BLOQUEADO, FORA DO RECORTE. A peça é gravada na pasta do caso. -->
<!-- variantes: variante = bloco entre "VARIANTE chave=valor" e "FIM VARIANTE"; entra só o conteúdo do bloco do caso e os marcadores saem (fase: investigado | autuado). Polo: REGULADO. Sem rito judicial. -->
<!-- [ID] só de bloco existente no context/INDICE.md; sem [ID] ⇒ PENDENTE DE FONTE na linha. Conteúdo mínimo e rito do termo seguem regulamentação própria não capturada ([ANPD-R1-40-44], art. 44) ⇒ PENDENTE DE FONTE. Nunca afirmar que a proposta suspende o processo ou será aceita. A minuta segue para revisao-final-digital. -->

À COORDENAÇÃO-GERAL DE FISCALIZAÇÃO DA AGÊNCIA NACIONAL DE PROTEÇÃO DE DADOS — ANPD

<!-- VARIANTE fase=investigado -->
Procedimento preparatório nº {{numero_procedimento}}
<!-- FIM VARIANTE -->
<!-- VARIANTE fase=autuado -->
Processo nº {{numero_processo}} · Auto de infração nº {{numero_auto}}
<!-- FIM VARIANTE -->

{{agente_nome}}, {{agente_qualificacao}}, endereço eletrônico para intimações {{email_intimacoes}} ([ANPD-R1-12], § 2º), assistido por advogado ({{instrumento_de_representacao}}), assistência facultativa ([PA-3], IV); instrumento não juntado ⇒ PENDENTE DE PROVA, na condição de interessado, vem apresentar

**PROPOSTA DE CELEBRAÇÃO DE TERMO DE AJUSTAMENTO DE CONDUTA** ([ANPD-R1-40-44], art. 43, caput)

## I. OBJETO E SITUAÇÃO

Situação que a proposta pretende ajustar, como descrita no ato da ANPD: {{situacao_e_documento}}.
Posição do proponente quanto aos fatos: {{declaracao_do_cliente}} <!-- decisão do cliente, por escrito; efeito jurídico de reconhecer ou não reconhecer fatos no termo: PENDENTE DE FONTE ([ANPD-R1-40-44], art. 44, remete a regulamentação não capturada) -->

## II. COMPROMISSOS PROPOSTOS

| # | Obrigação proposta | Cronograma proposto pelo cliente | Forma de comprovação | Indicador de cumprimento |
|---|---|---|---|---|
| 1 | {{obrigacao}} | {{cronograma}} | {{comprovacao}} | {{indicador}} |

Conteúdo mínimo obrigatório do termo e cláusulas exigidas: PENDENTE DE FONTE ([ANPD-R1-40-44], art. 44 remete a regulamentação própria não capturada).

## III. EFEITOS SEGUNDO O REGULAMENTO (literal)

- A proposta é submetida ao Conselho Diretor para deliberação ([ANPD-R1-40-44], art. 43, § 1º).
- A suspensão do processo só começa após a assinatura do termo ([ANPD-R1-40-44], art. 43, § 2º).
- O processo administrativo sancionador é arquivado após verificado o cumprimento integral do termo ([ANPD-R1-40-44], art. 43, § 3º).
<!-- VARIANTE fase=autuado -->
- Consequência prática (conclusão do advogado, não texto do regulamento): sem suspensão antes da assinatura ([ANPD-R1-40-44], art. 43, § 2º), o prazo de defesa ([ANPD-R1-45-49], art. 47) segue correndo: defesa e proposta caminham juntas (defesa em `templates/peca-anpd-defesa.md.tpl`).
<!-- FIM VARIANTE -->

## IV. PEDIDOS

Requer:
a) o recebimento da proposta e sua submissão ao Conselho Diretor ([ANPD-R1-40-44], art. 43, § 1º);
b) a ciência da tramitação, com vista e cópias ([PA-3], II), e as intimações no endereço eletrônico informado ([ANPD-R1-12], § 2º);
c) o sigilo das informações empresariais identificadas em {{itens}} ([ANPD-R1-5-6], art. 5º, § 2º), se houver.

## V. DOCUMENTOS

1. {{documento}} — {{origem: arquivo, quem produziu, quando}}

Termos em que pede deferimento.

Local e data: em branco para o advogado.

[ADVOGADO — PENDENTE DE PROVA] — OAB [NÚMERO DA OAB — PENDENTE DE PROVA]
