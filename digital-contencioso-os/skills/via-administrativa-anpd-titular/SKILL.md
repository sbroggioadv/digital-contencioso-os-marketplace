---
name: via-administrativa-anpd-titular
description: "Petição de titular (depois de frustrado o pedido ao controlador), denúncia, acompanhamento e pedido de terceiro interessado perante a ANPD no caso digital: redige a peça completa (endereçamento, qualificação, fatos, fundamentos, pedidos, provas e fecho) por natureza do requerente, sem pedir indenização à ANPD e sem prometer decisão individual."
---

# Via administrativa ANPD — titular, denunciante e terceiro

Lado de quem **leva** o caso à ANPD: titular (petição de titular), qualquer pessoa natural ou jurídica (denúncia) e terceiro que pede admissão no processo sancionador. O requerimento ao próprio controlador, a resposta dele e a ação judicial ficam com `dados-pessoais-controversia`. Agente fiscalizado, investigado, autuado ou sancionado ⇒ `via-administrativa-anpd-regulado`. Fonte só do `context/` (ver `context/INDICE.md`).

## Guard mínimo

Norma, tema e prazo só com `[ID]` (sem `[ID]` ⇒ `PENDENTE DE FONTE` na linha) · IP identifica terminal, não pessoa · hash declarado ≠ verificado · sem promessa de resultado · um caso = um cliente = um polo; polo ausente ou contraditório ⇒ só as perguntas, mesmo se mandarem não perguntar · ao final, acionar `revisao-final-digital`.

## 1. Entrada e andamento

Ler a linha POLO e a seção "Andamento" do `00-perfil-do-caso.md` (triagem). Sem polo ⇒ só as perguntas. Exigir, com origem (arquivo, quem produziu, quando): a solicitação feita ao controlador (direito pedido, data, canal, protocolo), a resposta ou a falta dela, a identificação do controlador e, se já houver procedimento, o número e o último ato recebido. Relato sem documento entra como "o cliente informa" e o item fica `PENDENTE DE PROVA`. Datas só as do cliente; nenhuma data é calculada.

## 2. Qual peça (por natureza do requerente)

| Natureza (triagem) | Peça cabível | Fonte |
|---|---|---|
| N1 pessoa natural titular, contra um controlador específico | petição de titular (ou denúncia, se não houve pedido prévio ao controlador) | [LGPD-18] § 1º; [LGPD-55J-V]; [ANPD-R1-DEF]; [ANPD-TITULAR] |
| N2 PJ afetada, N7 autor do conteúdo ou qualquer pessoa | só denúncia — PJ não é titular de dado pessoal ([LGPD-5]) | [ANPD-R1-DEF]; [ANPD-R1-4] |
| associação ou organização representativa | denúncia ou pedido de terceiro interessado | [ANPD-R1-13], III–IV; [ANPD-R1-45-49], art. 49 |
| quem já requereu e acompanha | requerimento de informação, vista ou juntada | [ANPD-R1-13], I–II; [PA-3] |
| N3, N4, N5 ou N6 como agente | não é esta skill ⇒ `via-administrativa-anpd-regulado` | — |

Um caso, um polo: nunca o pedido do titular e a defesa do agente na mesma entrega.

## 3. Admissibilidade (conferir antes de redigir)

- Requisitos do art. 25 ([ANPD-R1-25], I–V): competência da ANPD, identificação (ou anonimato cabível), legitimidade, agente identificado e **fato certo**.
- Petição de titular: prova de que a solicitação foi submetida ao controlador e não solucionada; autodeclaração só quando não houver outro meio ([ANPD-R1-25], § 1º). Petição anônima não é aceita, por orientação ([ANPD-PETICAO], 🟡).
- Prazo do controlador: o § 1º do art. 25 remete ao "prazo estabelecido em regulamentação" ([ANPD-R1-25]; [ANPD-R1-DEF]), não capturado. O único prazo literal capturado é o do art. 19, II, para confirmação ou acesso completo: "no prazo de até 15 (quinze) dias, contado da data do requerimento do titular" ([LGPD-19], II); pequeno porte em dobro ([ANPD-R2-14], III), só com enquadramento provado. Petição prematura (`BLOQUEADO`) só para esse pedido, com esse prazo ainda correndo. Demais direitos do art. 18: prazo em regulamento ([LGPD-18] § 5º; [ANPD-AGENDA]; [ANPD-INDICE]) ⇒ `PENDENTE DE FONTE` quando decisivo; não afirmar vencimento.
- Denúncia: fato certo e prova; sem eles ⇒ `PENDENTE DE PROVA`, sem herdar a espera da petição. Anônima só com verossimilhança e se a identificação não for necessária à apuração ([ANPD-R1-25], § 3º).
- Competência: a ANPD fiscaliza e sanciona por processo administrativo ([LGPD-55J-IV]); nenhum bloco a torna competente para condenar a indenizar. Pedido de indenização à ANPD ⇒ item `BLOQUEADO`; a reparação segue ao Judiciário ([CF-5-XXXV]) por `dados-pessoais-controversia`.

## 4. Peça completa — petição de titular

Esqueleto: `templates/peca-anpd-peticao-titular.md.tpl` (variantes `peticao-titular`, `denuncia`, `acompanhamento`, `terceiro-interessado`, `recurso-arquivamento` e por requerente); manter só as do caso; nenhum `{{` resta na minuta.

1. **Endereçamento:** "À Agência Nacional de Proteção de Dados — ANPD" ([NAT-LGPD-55A], art. 55-A), pelo meio que a ANPD divulga para requerimentos ([ANPD-R1-25], art. 24). O canal concreto vem do cliente; sem ele, a linha fica `PENDENTE DE PROVA`.
2. **Qualificação:** titular (nome, documento, contato eletrônico para intimações — [ANPD-R1-12], § 2º); representante, se houver ([LGPD-18] § 3º; advogado é facultativo, [PA-3], IV). Controlador: nome, CNPJ ou identificação disponível ([ANPD-R1-25], IV).
3. **Fatos:** cronologia só com datas do cliente — tratamento questionado; direito pedido ao controlador (inciso do [LGPD-18]); data, canal e protocolo do pedido; resposta recebida ou silêncio; cada fato com o item de prova.
4. **Fundamentos:** direito de peticionar contra o controlador perante a autoridade ([LGPD-18] § 1º; [LGPD-55J-V]); conceito de petição de titular ([ANPD-R1-DEF]); requisitos cumpridos ([ANPD-R1-25]); o direito material violado, com `[ID]`.
5. **Pedidos:** admissão da petição; adoção das providências que a ANPD entender cabíveis perante o controlador; análise individualizada, se houver repercussão coletiva a demonstrar, ciente de que a regra é a análise agregada ([ANPD-R1-26], § 1º). Restrição de acesso à identificação ([ANPD-R1-25], § 4º) é só da denúncia. Nada de indenização, multa em favor do titular ou prazo para a ANPD decidir.
6. **Provas:** lista numerada (protocolo, e-mail, print com URL, data e contexto; autodeclaração, se for o caso); origem de cada uma.
7. **Fecho:** local e data (`[CAMPO — PENDENTE DE PROVA]` se faltarem); assinatura do titular ou do procurador.

## 5. Peça completa — denúncia (variante `denuncia`)

Mesma estrutura, com estas trocas: qualificação do denunciante (natural ou jurídica) ou justificativa do anonimato; narrativa da **suposta** infração com fato certo, agente e período, sem imputar culpa ([ANPD-R1-4]); fundamentos na norma que se diz descumprida, com `[ID]`; pedidos de apuração ([ANPD-R1-37-38], art. 37, III) e de restrição de acesso à identidade do denunciante ([ANPD-R1-25], § 4º). Se o fato for incidente de segurança, apontar o dever de comunicação do **controlador** ([LGPD-48]) sem afirmar que ele não comunicou, salvo documento.

## 6. Acompanhamento e terceiro interessado (variantes do mesmo esqueleto)

- **Acompanhar:** quem iniciou o requerimento ou tem interesse afetado é interessado ([ANPD-R1-13], I–II) e pode pedir ciência da tramitação, vista e cópias, e juntar alegações e documentos antes da decisão ([PA-3], II–III), com a Lei 9.784 aplicada subsidiariamente ([ANPD-R1-1], § 2º). Peça: requerimento simples, com número do procedimento, pedido delimitado e documento novo identificado. A ANPD estimula a conciliação direta com o controlador ([ANPD-R1-17-VIII]): registrar proposta ou acordo só com documento.
- **Terceiro interessado:** pedido de admissão com representatividade adequada e demonstração de relevância da matéria, especificidade do tema ou repercussão social ([ANPD-R1-45-49], art. 49, § 1º). Admissão, poderes e prazos dependem de decisão irrecorrível (§ 2º); o terceiro recebe o processo no estado em que está e vê só peças públicas (§ 3º). Sem admissão, nada de "habilitado".
- **Arquivamento:** só o terceiro **habilitado** recorre ao Conselho Diretor, "no prazo de até dez dias úteis da notificação" ([ANPD-R1-58-62], art. 59), contados em dias úteis ([ANPD-R1-8]). Denunciante ou titular não habilitado: a legitimidade pela Lei 9.784 ([PA-56-65], art. 58) é **tese condicionada**, sujeita ao não conhecimento por ilegitimidade ([ANPD-R1-58-62], art. 61, II); sem promessa de conhecimento.

## 7. Travas

- Não presumir infração do controlador; a petição relata e prova, não condena.
- Direitos do titular não são absolutos ([ANPD-PETICAO], 🟡): obrigação legal de guarda alegada pelo controlador é enfrentada, não omitida.
- Prazo só no literal do bloco; nunca data de vencimento nem prazo para a ANPD decidir.
- Programa de adequação, política ou RIPD como serviço ⇒ skills `lgpd-*`; comunicação de incidente feita pelo agente ⇒ `lgpd-incidente-de-seguranca`.
- Reclamação de consumo em Procon ou SAC não é procedimento ANPD ⇒ `FORA DO RECORTE` desta via; o conflito com plataforma segue pelas frentes de conta e conteúdo.
- Outra autoridade, sem bloco capturado ⇒ `PENDENTE DE FONTE` na linha, sem excluir o cliente.

## 8. Saída

1. Linha `POLO DO CLIENTE · NATUREZA <N1…N7> · POSIÇÃO <ATIVO|TERCEIRO> · FASE não se aplica`.
2. Peça completa (§ 4, § 5 ou § 6), no polo do cliente.
3. Tabela item × `[ID]` × prova × estado, um estado por item: `MINUTA PARA REVISÃO HUMANA` · `PENDENTE DE PROVA` (pedido prévio, protocolo, canal ou fato sem documento) · `PENDENTE DE FONTE` (prazo do controlador não regulamentado, outra autoridade) · `BLOQUEADO` (item que a revisão barra: petição prematura, indenização pedida à ANPD, premissa contradita; ou `ALERTA DE CONFLITO`) · `FORA DO RECORTE` (com destino). Só um dos 5 por item, literal, sem texto livre nem condicional ("planejada", "informativo", "não pedido", "fora desta via"); o que não é entrega vai a Pendências sem estado; campo ausente ⇒ `[PENDENTE DE PROVA: o quê]`, nunca "pendente" sem complemento.
4. Atualizar "Andamento" do perfil: fase, ato praticado, próximo ato e prazo literal com `[ID]`.
5. Acionar `revisao-final-digital` sobre a versão final. O crivo da `revisao-final-digital` vai inteiro na saída: uma linha por citação (item · `[ID]` · OK ou BLOQUEAR), nunca resumo em uma linha.
