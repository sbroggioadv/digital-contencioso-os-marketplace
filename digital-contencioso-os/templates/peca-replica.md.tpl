<!-- esqueleto: peca-replica · consumido por skills/replica-saneamento-e-provas-digital/SKILL.md -->
<!-- REGRA DE ENTREGA (única, vale para todo o esqueleto): slot {{...}} só com dado do caso e origem. A peça entregue não traz chaves duplas de slot, marcador de variante nem comentário HTML (estas linhas de cabeçalho saem também). Slot sem dado vira [NOME DO CAMPO — PENDENTE DE PROVA] na linha, em maiúsculas (ex.: [VARA — PENDENTE DE PROVA]); nunca marcador em minúscula nem o estado sem complemento. Só entra a variante do polo, do rito e do ato do caso; alternativa que a prova não resolve sai do corpo e vai às pendências. A peça é do polo do cliente (linha POLO do perfil), nunca do adverso. Tema 987/533: [ID] + rótulo de fonte parcial na mesma linha, também no quadro de alegações e nos pedidos. Estado por item: só MINUTA PARA REVISÃO HUMANA, PENDENTE DE PROVA, PENDENTE DE FONTE, BLOQUEADO, FORA DO RECORTE. A peça é gravada na pasta do caso. -->
<!-- variantes: variante = bloco entre "VARIANTE chave=valor" e "FIM VARIANTE"; entra só o conteúdo do bloco do caso e os marcadores saem; "a|b" = qualquer dos valores; marcador com duas chaves: o bloco entra só se as duas baterem; um só ato (peca: replica [rito comum; com rito=juizado sai só a linha PENDENTE DE FONTE, sem endereçamento nem fecho] | resposta-reconvencao | resposta-contraposto | especificacao-provas | esclarecimento-saneamento | quesitos | rol-testemunhas | roteiro-audiencia; polo: ATIVO | PASSIVO; rito: comum | juizado). -->
<!-- [ID] processual vem da skill; [ID] de direito material, só do BLOCO MATERIAL. -->

<!-- VARIANTE peca=resposta-reconvencao|resposta-contraposto|especificacao-provas|esclarecimento-saneamento|quesitos|rol-testemunhas -->
EXCELENTÍSSIMO(A) SENHOR(A) DOUTOR(A) JUIZ(A) {{juizo}}

Processo nº {{numero_processo}}

{{parte_nome}}, já qualificado(a), por seu advogado, nos autos em epígrafe, vem apresentar:
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=replica rito=comum -->
EXCELENTÍSSIMO(A) SENHOR(A) DOUTOR(A) JUIZ(A) {{juizo}}

Processo nº {{numero_processo}}

{{parte_nome}}, já qualificado(a), por seu advogado, nos autos em epígrafe, vem apresentar:
<!-- FIM VARIANTE -->
<!-- roteiro-audiencia e replica no Juizado: sem endereçamento nem fecho de petição -->

<!-- VARIANTE peca=replica rito=juizado -->
Réplica escrita no Juizado: PENDENTE DE FONTE — a manifestação sobre a contestação ocorre na audiência, cujo rito não está capturado; preparar o roteiro com `peca=roteiro-audiencia`.
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=replica rito=comum -->
**RÉPLICA** à contestação de {{fls_contestacao}} — prazo de 15 dias ([CPC3-350-351]), em dias úteis ([CPC-219]); intimação em {{data_intimacao_documentada}}.

| Alegação do réu | Resposta | Prova | Origem |
|---|---|---|---|
| {{alegacao_1}} | {{resposta_1}} | {{doc}} | {{origem}} |

{{resposta_ilegitimidade}} <!-- substituição ou inclusão de litisconsorte: escolha do advogado ([CPC-335-342], arts. 338-339) -->
{{resposta_impugnacao_prova}} <!-- autenticação eletrônica ou perícia ([CPC-422], § 1º) -->
<!-- FIM VARIANTE -->

<!-- VARIANTE peca=resposta-reconvencao -->
**RESPOSTA À RECONVENÇÃO** — 15 dias, intimado na pessoa do advogado ([CPC-343], § 1º). Preliminares: {{preliminares}}. Impugnação especificada: {{tabela}}. Mérito (BLOCO MATERIAL): {{merito}}. Pedido: improcedência da reconvenção e honorários ([CPC-85]).
<!-- FIM VARIANTE -->

<!-- VARIANTE peca=resposta-contraposto -->
**RESPOSTA AO PEDIDO CONTRAPOSTO** ([JEC-30-31], art. 31, parágrafo único) — limites de [JEC-3] e mesmos fatos: {{analise}}. Resposta: {{resposta}}. <!-- também roteiro oral para a audiência -->
<!-- FIM VARIANTE -->

<!-- VARIANTE peca=especificacao-provas -->
**ESPECIFICAÇÃO DE PROVAS** ([CPC3-369-373])

| Fato controvertido | Meio de prova | Finalidade | Quem produz | Já nos autos? |
|---|---|---|---|---|
| {{fato}} | {{meio}} | {{finalidade}} | {{parte}} | {{sim_nao}} |

{{requerimento_onus}} <!-- art. 373, § 1º; consumo: [CDC-6-VIII] só se estiver no bloco -->
<!-- FIM VARIANTE -->

<!-- VARIANTE peca=esclarecimento-saneamento -->
**PEDIDO DE ESCLARECIMENTO E AJUSTE** da decisão de saneamento de {{data_decisao}} — prazo comum de 5 dias ([CPC3-357], § 1º).
Ponto da decisão (inciso {{inciso_357}}): {{ponto}} · Ajuste pedido: {{ajuste}} · Razão: {{razao}}.
{{proposta_delimitacao_consensual}} <!-- § 2º, se houver acordo -->
<!-- FIM VARIANTE -->

<!-- VARIANTE peca=quesitos -->
**ARGUIÇÃO, ASSISTENTE TÉCNICO E QUESITOS** — 15 dias da intimação da nomeação ([CPC3-464-465], art. 465, § 1º).
- Impedimento ou suspeição do perito: {{arguicao_ou_nada}}
- Assistente técnico: {{assistente_nome_qualificacao}}
- Quesitos (só sobre fato controvertido delimitado no saneamento):
  1. {{quesito_integridade}} <!-- hash: algoritmo, quem calculou, quando; verificado ou só declarado -->
  2. {{quesito_origem}} <!-- URL, data, hora e fuso, identificador; metadados -->
  3. {{quesito_registros}} <!-- IP, porta, data, hora e fuso; terminal ou pessoa -->
  4. {{quesito_custodia}}
<!-- FIM VARIANTE -->

<!-- VARIANTE peca=rol-testemunhas -->
**ROL DE TESTEMUNHAS** — prazo comum fixado em {{decisao_ref}}, não superior a 15 dias; até 10, no máximo 3 por fato ([CPC3-357], §§ 4º e 6º).

| Nome | Qualificação | Fato a provar |
|---|---|---|
| {{nome}} | {{qualificacao}} | {{fato}} |
<!-- FIM VARIANTE -->

<!-- VARIANTE peca=roteiro-audiencia -->
**ROTEIRO DE AUDIÊNCIA (uso interno do advogado — não protocolar)**
| Fato controvertido | Pergunta | Documento a exibir | Ponto de acordo |
|---|---|---|---|
| {{fato}} | {{pergunta}} | {{doc}} | {{acordo}} |
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=roteiro-audiencia rito=juizado -->
{{aviso_juizado}} <!-- ausência do autor extingue o processo ([JEC3C-51], I); ausência do réu gera revelia ([JEC3C-20]); réu PJ ou titular de firma individual por preposto credenciado com carta de preposição com poderes para transigir ([JEC3C-9], § 4º); autora PJ por preposto: PENDENTE DE FONTE -->
<!-- FIM VARIANTE -->

<!-- VARIANTE peca=resposta-reconvencao|resposta-contraposto|especificacao-provas|esclarecimento-saneamento|quesitos|rol-testemunhas -->
Termos em que, pede deferimento.

[LOCAL — PENDENTE DE PROVA], [DATA — PENDENTE DE PROVA].

[ADVOGADO — PENDENTE DE PROVA] — OAB [NÚMERO DA OAB — PENDENTE DE PROVA]
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=replica rito=comum -->
Termos em que, pede deferimento.

[LOCAL — PENDENTE DE PROVA], [DATA — PENDENTE DE PROVA].

[ADVOGADO — PENDENTE DE PROVA] — OAB [NÚMERO DA OAB — PENDENTE DE PROVA]
<!-- FIM VARIANTE -->
