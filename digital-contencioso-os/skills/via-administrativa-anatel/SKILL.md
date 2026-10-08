---
name: via-administrativa-anatel
description: "Procedimento perante a Anatel no caso digital, para qualquer polo: reclamação ou denúncia do usuário, resposta do provedor de conexão fiscalizado a requisição de informações, defesa no Pado, rito sumário, alegações finais, recurso ou pedido de reconsideração, pagamento da multa e revisão; fase do regulado do documento ou do pedido; prazo literal do Regimento, com a ressalva de transição da Res. 791/2026."
---

# Via administrativa — Anatel (todos os polos)

Entrega o ato completo do procedimento na Anatel para revisão humana. Polo e fase vêm da `triagem-digital-contencioso`; abrir lendo a seção "Andamento" do `00-perfil-do-caso.md` e atualizá-la ao fechar (ato praticado, decisão recebida, próximo ato e prazo literal com `[ID]`). Fonte única: `context/anatel-fiscalizacao-sancoes.md`, subsidiariamente `context/lei-9784-processo-administrativo.md` (ver `context/INDICE.md`). Esqueleto de todo ato: `templates/peca-anatel-procedimento.md.tpl` (variantes `peca=reclamacao`, `resposta-requisicao`, `defesa`, `adesao-rito-sumario`, `alegacoes-finais`, `recurso`, `reconsideracao`, `contrarrazoes`, `revisao`).

**Guard mínimo:** norma, tema e prazo só com `[ID]` (sem `[ID]` ⇒ `PENDENTE DE FONTE` na linha) · IP identifica terminal, não pessoa · hash declarado ≠ verificado · sem promessa de resultado · um caso = um cliente = um polo; sem polo, só as perguntas · ao final, acionar `revisao-final-digital`.

## 1. Entrada e trava de vigência

- **Polo:** usuário reclamante ou denunciante (`ATIVO`, N1/N2); prestadora ou provedor de conexão (`REGULADO`, N6, com fase); interessado no processo (`TERCEIRO`).
- **Documento do procedimento:** requerimento ou requisição de informações, Despacho Ordinatório de Instauração, Auto de Infração, intimação, Despacho Decisório ou Acórdão, com o meio e o evento da ciência. Sem fase no documento nem no pedido ⇒ só a pergunta de fase, mesmo se mandarem não perguntar.
- **Mérito material** vindo de frente (conta, conteúdo, registros, dados, termos): receber o BLOCO MATERIAL, sem reabrir o mérito.
- **Transição (Res. 791/2026):** o Regimento entra em vigor 30 dias após a publicação ([ANATEL-RI-RES791-3]); o texto capturado não tem regra de transição. Ato processual, intimação, decisão ou Pado anterior ao início da vigência: rito do regimento anterior não capturado ⇒ `PENDENTE DE FONTE`, e os blocos `ANATEL-RI-*` só se aplicam sem essa ressalva a atos posteriores. O advogado confere a publicação.
- **Regulado:** saída sempre com a linha `Fase do regulado: <fiscalizado|investigado|autuado|sancionado>`, uma vez, do documento ou do pedido.

## 2. Usuário reclamante ou denunciante (ATIVO)

- O Pado é instaurado de ofício ([ANATEL-RI-89-99], art. 89); a petição do usuário provoca a Anatel, não instaura processo por si. Rito de reclamação ou denúncia do usuário não capturado ⇒ `PENDENTE DE FONTE`.
- Manifestação da Anatel em petição que não gere processo: o literal do inciso III do art. 129 ([ANATEL-RI-129-131]); não afirmar resposta em data.
- Nenhum bloco atribui à Anatel competência para condenar a indenizar: reparação segue à via judicial ([CF-5-XXXV]), por `peticao-inicial-digital`.
- Peça: `peca=reclamacao` (unidade sem documento ⇒ `PENDENTE DE PROVA`; fatos com protocolo de atendimento, data, linha ou contrato). Sem prometer sanção à prestadora.
- Legitimidade recursal do interessado, sem exigir participação prévia: [ANATEL-RI-117-127], art. 119.

## 3. Prestadora ou provedor regulado (REGULADO, por fase)

**Fiscalizado (acompanhamento).** Requisição especifica os dados; descumprimento é obstrução, que leva a Pado ([ANATEL-RFR-39-41]); formato diverso do requisitado, que dificulte sua avaliação pela Anatel, é entrave (art. 40, parágrafo único). Peça: `peca=resposta-requisicao`, delimitada, no formato pedido, no prazo literal do ato. Dados de usuários: registros de conexão só mediante ordem judicial ([MCI-10], § 1º); dados cadastrais por autoridade com competência legal ([MCI-10], § 3º) — a competência da Anatel para requisitá-los não foi capturada ⇒ `PENDENTE DE FONTE`.

**Investigado.** Sem procedimento preparatório nos blocos capturados ⇒ tratar pelo ato do documento; sem documento, `PENDENTE DE PROVA`.

**Autuado (Pado instaurado).**
- Instauração por Despacho Ordinatório ou Auto de Infração, que vale como Despacho e importa intimação ([ANATEL-RI-89-99], arts. 89, parágrafo único, 91, I, e 92); o ato de instauração é irrecorrível (art. 91, § 1º; [ANATEL-RI-117-127], art. 121). Auto enuncia a suposta infração; autuado não é infrator provado ([ANATEL-RI-89-99], art. 90; [ANATEL-RASA-4]).
- **Prazo:** defesa "em 15 (quinze) dias", com provas especificadas ([ANATEL-RI-89-99], art. 91, II); contagem contínua, excluído o primeiro dia, início no primeiro dia útil após a intimação, prorrogação até o primeiro dia útil, suspensão só no § 5º do art. 131 ([ANATEL-RI-129-131]); intimação eletrônica operada na consulta ou no fim do prazo de consulta ([ANATEL-RI-112-114], art. 112, IV). Sem data de vencimento; exigir a prova da ciência.
- **Defesa:** `peca=defesa` — preliminares (intimação, [ANATEL-RI-112-114], art. 113; motivação, [PA-50]), mérito ponto a ponto, provas ([ANATEL-RI-89-99], arts. 93 a 95).
- **Rito sumário (infração de simples apuração):** o rol de infrações e sanções é de Resolução Interna (a nota do bloco cita a nº 323, de 7 de maio de 2024), conteúdo não capturado ⇒ `PENDENTE DE FONTE`. Condições, por infração ([ANATEL-RASA-25-30], art. 27): I **reconhecer materialidade e confessar autoria**, II provar cessação e, quando cabível, reparação total, III renunciar a litigar administrativamente — I, II e III comprovados no prazo da defesa (§ 1º); IV recolher a multa, se houver, no prazo da notificação do § 2º ("30 (trinta) dias", literal, sem data calculada). Não cumpridas, conversão ao rito ordinário (§ 3º); comprovado o cumprimento das condições e prazos antes da decisão de primeira instância, a sanção é aplicada nos termos da Resolução Interna do art. 25 (§ 4º). Sem o fator de redução do [ANATEL-RASA-33], § 5º (art. 25, § 4º). Peça: `peca=adesao-rito-sumario`. Confissão e renúncia: decisão escrita do cliente, após explicadas as consequências (inclusive §§ 3º e 4º); nunca presumidas nem sugeridas.
- **Instrução e alegações finais:** juntada, diligências e perícias a cargo do interessado ([ANATEL-RI-89-99], art. 95); alegações finais "em 10 (dez) dias" após a intimação do encerramento da instrução (art. 91, § 2º), em `peca=alegacoes-finais`.
- **Prescrição da ação punitiva:** remissão à legislação federal ([ANATEL-RI-89-99], art. 98), não capturada ⇒ `PENDENTE DE FONTE`.

**Sancionado (decisão de aplicação de sanção).**
- **Recurso ou reconsideração:** recurso administrativo contra decisão não proferida pelo Conselho Diretor, por legalidade e mérito, sem caução, "10 (dez) dias" da intimação, dirigido à autoridade que decidiu, com juízo de retratação ([ANATEL-RI-117-127], art. 117); pedido de reconsideração contra decisão do Conselho Diretor em única instância ([ANATEL-RI-128]), com as regras do recurso **exceto** o art. 117, § 1º, II, e §§ 8º e 9º (§ 2º): prazo não capturado (os 10 dias do § 8º não se aplicam) ⇒ `PENDENTE DE FONTE`; sem juízo de retratação. Instâncias: [ANATEL-RI-117-127], art. 120 (três no § 4º). Não conhecimento: art. 118; autoridade incompetente encaminha sem prejuízo do prazo (art. 123).
- **Efeito:** devolutivo, com pedido fundamentado de efeito suspensivo no mesmo instrumento (relevância e ineficácia, [ANATEL-RI-117-127], art. 124); a exigibilidade da sanção, a inscrição no Cadin e a remessa à dívida ativa ficam suspensas pela interposição do recurso ou da reconsideração ([ANATEL-RI-117-127], art. 125; [ANATEL-RASA-33], § 2º).
- **Agravamento:** possível gravame com intimação prévia para alegar ([ANATEL-RASA-31-32A], art. 32, § 2º; [ANATEL-RI-117-127], art. 127, § 4º); avisar o cliente antes de recorrer.
- **Peças:** `peca=recurso` e `peca=reconsideracao` (esta nunca com o prazo do art. 117, § 8º).
- **Pagamento:** vencimento não inferior a 30 dias da intimação ([ANATEL-RASA-33], caput); fator de redução de 25% só com renúncia a recorrer e recolhimento no prazo (§ 5º); pagar com desconto e recorrer gera crédito complementar do desconto (§ 7º). Avisar antes de combinar desconto e recurso; valor de multa nunca calculado (patamares do Anexo do RASA não capturados ⇒ `PENDENTE DE FONTE`).
- **Revisão:** a qualquer tempo, por fato novo, em autos próprios, dirigida à autoridade da última decisão, sem suspender os efeitos da sanção transitada em julgado (§ 3º) e sem agravamento (§ 4º) ([ANATEL-RI-89-99], art. 99); `peca=revisao`.

## 4. Terceiro (TERCEIRO)

Interessado titular de direito recorre sem ter participado antes ([ANATEL-RI-117-127], art. 119); contrarrazões dos demais interessados em prazo comum de "10 (dez) dias" (art. 127, I). Peça: `peca=recurso` ou `peca=contrarrazoes`, com o interesse provado por documento.

## 5. Travas

Não presumir infração, culpa ou sanção; fiscalização não é sanção. Prazo só literal; vencimento e início de vigência nunca em data. Sem promessa de arquivamento, absolvição ou redução. Regulado e usuário nunca no mesmo caso. Controle judicial do ato ⇒ `controle-judicial-ato-administrativo`.

## 6. Saída

1. Linha de polo e, se regulado, a linha `Fase do regulado:` (uma vez).
2. Peça completa da fase pelo esqueleto `templates/peca-anatel-procedimento.md.tpl`, com todas as seções (endereçamento a fecho).
3. Tabela item × `[ID]` × prova × estado. Toda linha que mencionar prazo traz o `[ID]` do bloco; prazo sem bloco não ganha número: a linha diz `PENDENTE DE FONTE` e cita o bloco que motiva a pendência (ex.: transição, [ANATEL-RI-RES791-3]).
4. Estado por item: `MINUTA PARA REVISÃO HUMANA` · `PENDENTE DE PROVA` (fase, ciência, fato) · `PENDENTE DE FONTE` (regimento anterior, Resolução Interna, prescrição, valor da multa, prazo da reconsideração, competência para dados cadastrais) · `BLOQUEADO` (conflito de caso ou item barrado na revisão) · `FORA DO RECORTE` (reparação ou outra via, com destino). Só um dos 5 por item, literal, sem texto livre nem condicional ("planejada", "informativo", "não pedido", "fora desta via"); o que não é entrega vai a Pendências sem estado; campo ausente ⇒ `[PENDENTE DE PROVA: o quê]`, nunca "pendente" sem complemento.
5. Acionar `revisao-final-digital` sobre a versão final.
