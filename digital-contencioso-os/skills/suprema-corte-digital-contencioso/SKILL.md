---
name: suprema-corte-digital-contencioso
description: "Revisão interna final R1–R4 da entrega inteira do Digital Contencioso OS (partes e cronologia, norma e versão, prova e contraditório, forma, pedidos e limites), com resultado observável por rodada e estado final."
---

# Suprema Corte — revisão interna R1–R4

**Guidance only:** é revisão interna, nunca órgão julgador nem validação independente. Receber o material efetivo e os retornos do `anti-alucinacao-digital-contencioso` e do `validador-digital-contencioso` da mesma versão; se faltarem, "revisão não executada". Sem minuta, revisar só as pendências.

## R1 — partes, polo e cronologia

Cliente é a pessoa ou empresa **afetada** (plataforma/controlador como cliente ⇒ `FORA DO RECORTE`). Mandato, pasta privada e índice do caso. Destinatário correto (plataforma, provedor de conexão, provedor de aplicação, controlador, autor identificado ou não). Cronologia única com prova de cada marco. Fronteira resolvida pela triagem (consumo, fraude, penal, LGPD de compliance, autoral, eleitoral, infância digital). Urgência e perecimento de registros sinalizados sem cálculo de vencimento.

## R2 — norma, versão e alcance

Cada fundamento com ID de bloco do `context/` e estado da fonte. Testar: art. 19 usado como regime isolado? (FAIL) · fragmento do Tema 987 sem rótulo "parcial"? (FAIL) · redação de 2025 usada como vigente? (FAIL) · tese do Tema 533 citada? (FAIL) · Decreto 12.975 sem ressalva da ADI 7981 ou com data de vigência calculada? (FAIL) · termos Meta citados? (FAIL) · precedente sem texto capturado com tese atribuída? (FAIL) · página da ANPD ou notícia tratada como norma? (CONCERNS).

## R3 — prova e contraditório

Confrontar cada fato com o inventário (`origem-e-cronologia-da-prova-digital`). Print com `origem não demonstrada` sustentando fato essencial? IP tratado como pessoa? Hash tratado como autenticidade? Termos presumidos? Autoria incerta convertida em imputação? Resposta da plataforma, decisão ou protocolo afirmados sem documento? Testar a premissa contrária mais forte (ex.: conteúdo verídico e lícito; suspensão fundada em cláusula colada; dado que o controlador tem obrigação de guardar). Lacuna material **não** vira PASS.

## R4 — forma, pedidos e limites

Pedidos delimitados (conteúdo por identificação clara e específica; registros com indícios, justificativa e período; dados por direito e por agente); tutela com requisitos e reversibilidade; providência posterior para cada pedido. Sem promessa de resultado, sem ameaça na notificação, sem ato de tabelião ou perito, sem ato externo dado como praticado. Sigilo: dados de terceiros minimizados; segredo de justiça considerado quando houver registros ou intimidade ([MCI-22-23]). Linguagem para revisão humana, não para envio direto.

## Registro por rodada (obrigatório e visível)

| Rodada | Objeto | Achado | Prova/linha | Resultado | Correção | Residual |
|---|---|---|---|---|---|---|
| R1 | | | | PASS / CONCERNS / FAIL | | |
| R2 | | | | | | |
| R3 | | | | | | |
| R4 | | | | | | |

Seguir o diagnóstico mesmo quando uma rodada falhar; corrigir materialmente e repetir as rodadas afetadas. O resultado global é limitado pelo pior residual.

## Estado proposto por item (a entrega aprovada só existe quando o gate do plugin a emite)

- `MINUTA PARA REVISÃO HUMANA` — só se guard, validador e R1–R4 rodaram sobre a versão final, sem FAIL nem achado aberto;
- `PENDENTE DE PROVA` — falta documento ou origem;
- `PENDENTE DE FONTE` — falta norma ou tema capturado, ou incide B1–B4/B7;
- `BLOQUEADO` — invenção essencial, pedido indelimitado ou nulidade evidente;
- `FORA DO RECORTE` — com destino citado.

Indicar responsável e próxima providência. Não afirmar protocolo, envio ou cumprimento sem documento.

## Chamada própria (revisão aplicada)

Na revisão aplicada este controle roda como agente próprio e devolve o bloco `CONTROLE suprema-corte · VERSÃO N` de `templates/revisao-aplicada.md` §5: um `ITEM Ik · VEREDITO` por item com o texto literal entre `<<<` e `>>>`, achados `ACHADO F#` e `Conclusão`; a matriz desta skill vai dentro do bloco. Para cada achado do anti ou do validador improcedente, e para cada chave de `ACHADOS REJEITADOS ATÉ AQUI:` que continuar improcedente, escrever `CONFIRMA REJEIÇÃO <controle>@v<N>:F<n> · FONTE <ID>`; achado próprio nunca recebe essa linha. Chamada direta revisa só o material dado e **nunca sela**; sem `VERSÃO N` e itens, responder "cadeia não executada". Nenhum controle chama a si próprio nem os outros: quem orquestra é o master ou `/digital-contencioso-revisar`.

## Contratos da revisão aplicada (guidance only)

- **Origem da correção:** a proposta só pode retirar afirmação, rotular pendência ou usar texto com origem literal no caso ou em ID de bloco, citando arquivo/linha ou ID. Nunca criar fato: “indicado pela titular” e “mandato apresentado” exigem origem própria; a recomendação de outro controle não é essa origem. O livro registra o estado do achado/correção efetivamente aplicada, não da proposta literal. Se o achado procede mas a proposta inventa fato, documentar a recusa e a origem da proposta; aplicar retirada ou alternativa sustentada no item e registrar `APLICADA`, com antes → depois e motivo reais na chave exata. Isso vale também para achado próprio da suprema e exige nova versão e cadeia integral dentro do orçamento (§3 do template). `REJEITADA` é só para achado improcedente, com confirmação real e fonte pela suprema final (§4), nunca autoconfirmação de achado próprio. Não confirmar rejeição de achado procedente para fechar. Sem correção efetiva ou convergência, achado aberto e item restritivo sem selo.
- **Entrada integral:** cada input deve conter o caso e a prova em texto literal integral, ou arquivos integralmente lidos nesta chamada, com caminho e leitura registrada. Não aceitar síntese disfarçada de “dossiê integral”. Preservar declarações de origem, simulação e “sem assinatura real”; isso não prova mandato autêntico. Notas da produtora ficam separadas e rotuladas “NÃO É PROVA”, sem suprir nem sobrepor o documento.
- **Minuta técnica:** seguir o §1 de `templates/revisao-aplicada.md`: retirar apenas notas de produção/rascunho; manter IDs auditáveis de fonte no texto do item submetido aos controles, com lei nomeada e referências inteligíveis. Não transformar o texto depois do selo. Render externo separado (S7) fora do fluxo.
- **Premissa de escopo:** qualquer conclusão de aplicabilidade sem bloco/ID disponível aparece explicitamente como `PENDENTE DE FONTE` na matriz e na Conclusão deste retorno, mesmo que o pedido operativo não a argumente. Fatos do dossiê não substituem norma de escopo: LGPD arts. 1º/3º/4º/5º, Res. 2/2022 arts. 2º–3º, LGPD arts. 23–24 e limite legal de enquadramento por porte só podem sustentar conclusão se houver bloco literal disponível; não presumir exclusões afastadas ou porte qualificado. Premissa normativa necessária pendente mantém o item dependente `PENDENTE DE FONTE`, sem selo; registrar os itens afetados na matriz e na Conclusão para o estado final (§6 do template). Não presumir elegibilidade geral, injetar captura oculta nem buscar corpus integral. Antes de vincular a lacuna a um item, explicitar a conclusão normativa necessária, os fatos que a tornam pertinente e o efeito da falta sobre esse pedido. A enumeração de normas acima não é checklist cumulativo para todo caso: ausência de bloco sem dependência demonstrada não cria impedimento para item independente. A análise de aplicabilidade continua obrigatória mesmo quando implícita no pedido; usar os blocos disponíveis e os fatos com sua origem, sem presumir escopo pela mera omissão de uma citação. Não concluir enquadramento ou dispensa por porte sem fonte; distinguir essa conclusão de pedido que não depende dela.
- **Chave exata:** no livro e nas rejeições usar somente `anti-alucinacao@v1:F1`, `validador@v1:F1`, `suprema-corte@v1:F1` (variar apenas números de versão/achado). Nunca `anti@`, `valid@` ou `supr@`; não normalizar o livro de runtime para aceitar. Cabeçalhos, achados e rejeições seguem o §5 do template.
