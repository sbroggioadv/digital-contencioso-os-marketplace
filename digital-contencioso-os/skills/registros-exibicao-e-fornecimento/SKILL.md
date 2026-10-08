---
name: registros-exibicao-e-fornecimento
description: "Registros de conexão e de acesso a aplicações (IP, porta lógica, data e hora), para qualquer polo: monta o BLOCO MATERIAL do pedido delimitado de guarda e fornecimento (fundados indícios, utilidade, período), da posição do provedor que guarda os registros e da proteção do titular deles; sem período ou identificadores, PENDENTE DE PROVA; nunca trata IP como autor. A peça fica com a skill de fase."
---

# Registros — guarda, exibição e fornecimento

**Guidance only:** registros identificam **terminal e conexão**, não pessoa; nenhuma saída imputa autoria. Esta frente devolve o **BLOCO MATERIAL** (§4) e não redige peça processual: a peça vai à skill de fase indicada no §5. Fonte única: `context/` (ver `context/INDICE.md`). Ao final, a minuta vai a `revisao-final-digital`.

## Guard mínimo

Norma, tema e prazo só com `[ID]` (sem `[ID]` ⇒ `PENDENTE DE FONTE` na linha) · IP identifica terminal, não pessoa · hash declarado ≠ verificado · sem promessa de resultado · um caso = um cliente = um polo; sem polo, só as perguntas · ao final, acionar `revisao-final-digital`.

**Saída da frente:** portão antes: polo ausente ou contraditório ⇒ só as perguntas, mesmo se mandarem não perguntar; com polo, sempre o BLOCO MATERIAL, mesmo com dado faltante (vira pendência; nunca minuta estrutural nem recusa) · estado só um dos 5; envio, urgência e posição vão a Pendências sem estado · dado ausente ⇒ `[CAMPO — PENDENTE DE PROVA]`, data ⇒ `[DATA — PENDENTE DE PROVA]` · Tema 987/533 em qualquer linha só com `[ID]` + rótulo de fonte parcial; a abertura não conclui o regime · frente não rodada não é `PENDENTE DE FONTE`.

## 1. Entrada obrigatória

Ler a linha POLO e a seção "Andamento" do `00-perfil-do-caso.md` (triagem). Sem polo ⇒ só as perguntas.

| Campo | Exemplo do que se pede ao cliente | Se faltar |
|---|---|---|
| Conteúdo ou evento ilícito | URL da publicação, mensagem, acesso indevido | `PENDENTE DE PROVA` |
| Identificadores | URL, nome de usuário, identificador da conta, endereço de e-mail remetente | `PENDENTE DE PROVA` |
| **Período** | data e hora (com fuso) de cada evento; janela delimitada | `PENDENTE DE PROVA` |
| Destinatário | provedor de aplicações (registros de acesso) e/ou **administrador de sistema autônomo** que provê a conexão (registros de conexão, art. 13 do MCI — [MCI-13]) | `PENDENTE DE PROVA` |
| Fundados indícios | prova do ilícito no inventário | `PENDENTE DE PROVA` |
| Utilidade | por que os registros são necessários para a prova | `PENDENTE DE PROVA` |

Pedido "de todos os dados da conta" ou "de todo o histórico" ⇒ `PENDENTE DE PROVA` até ser delimitado. Devolver a lista exata do que falta.

## 2. Base capturada (citar pelo bloco)

- **Conceitos:** endereço IP (código atribuído a um terminal), registro de conexão (data/hora de início e término, duração e IP do terminal), registros de acesso a aplicações (data e hora de uso a partir de um IP) — `context/marco-civil-lei-12965.md` [MCI-5].
- **Guarda e disponibilização** mediante ordem judicial, preservada intimidade e vida privada ([MCI-10]); registros de conexão pelo administrador de sistema autônomo, sob sigilo ([MCI-13]); registros de acesso a aplicações pelo provedor pessoa jurídica com fins econômicos, sob sigilo; guarda por ordem judicial, por tempo certo, para fatos específicos em período determinado, por provedores não sujeitos ao caput ([MCI-15]). Os prazos legais de guarda constam desses blocos; **o prazo legal não garante que o dado ainda exista** no caso — sinalizar urgência sem calcular vencimento.
- **Requerimento judicial:** em caráter incidental ou autônomo, para formar conjunto probatório; deve conter, sob pena de inadmissibilidade, **(I) fundados indícios do ilícito, (II) justificativa motivada da utilidade, (III) período**; o juiz protege o sigilo e pode decretar segredo de justiça ([MCI-22-23]).
- **Porta lógica de origem:** o dever de guarda de IP abrange a porta lógica quando necessário à identificação inequívoca do terminal (`context/decreto-8771-compilado.md` [DEC-15A]) — **incluído pelo Decreto 12.975/2026: vigência não certificada, ADI 7981 em curso**. No STJ, só a ementa do REsp 1.784.156/SP (IP e porta lógica como identificação do dispositivo) e o Informativo 844/2025 (provedor de conexão e porta lógica) foram capturados (`context/stj-resp-1784156-ementa.md` [STJ-1784156]; `context/stj-informativo-844-2025.md` [STJ-INFO844]) — ementa e informativo, não inteiro teor.
- **Exibição pelo CPC** (documento ou coisa em poder da parte ou de terceiro): [CPC-396-404]. A relação entre a exibição do CPC e o requerimento especial do Marco Civil **não foi analisada** no corpus ⇒ indicar as duas bases e deixar a escolha ao advogado.
- **Produção antecipada** quando houver risco de perecimento: [CPC-381-384].

## 3. Estratégia em etapas (sem imputar)

1. Provedor de aplicações: registros de acesso (IP, porta lógica quando cabível, data e hora) relativos aos identificadores e ao período.
2. Ao provedor de conexão: os demais dados de identificação do usuário; segundo o excerto, não é necessária prévia informação da porta lógica pelo provedor de aplicação, pois o provedor de conexão também está obrigado a armazenar e fornecer o IP ([STJ-INFO844], informativo — não é acórdão). O excerto **não trata de horário**: a correlação IP/porta/data/hora é fato a documentar no caso, não conteúdo do informativo.
3. O resultado é **indício** a ser confrontado com outras provas; a identificação da pessoa é conclusão do processo, não do plugin.

## 4. BLOCO MATERIAL (saída principal)

1. POLO — linha do `00-perfil-do-caso.md` (natureza N1–N7 e posição: requerente `ATIVO`; provedor parte `PASSIVO` ou destinatário não-parte; titular dos registros `TERCEIRO`).
2. Fatos — o ilícito, os identificadores e o período **exatos** fornecidos pelo cliente, cada um com o item de prova e sua origem (arquivo, quem produziu, quando); destinatário de cada etapa do §3.
3. Fundamentos — os três requisitos do art. 22 em tópicos próprios, cada um ligado ao inventário ([MCI-22-23]); guarda e disponibilização só por ordem judicial ([MCI-10], [MCI-13], [MCI-15]); conceitos ([MCI-5]); porta lógica com a ressalva da ADI 7981 ([DEC-15A]); exibição ([CPC-396-404]) e produção antecipada ([CPC-381-384]) como bases alternativas.
4. Pedidos — delimitados por identificador e período: guarda imediata; fornecimento dos registros de acesso e, na etapa seguinte, dos dados do provedor de conexão; segredo de justiça ([MCI-22-23]); providência posterior (etapa seguinte; cumprimento da ordem).
5. Pendências — por linha, com estado: indício ou utilidade sem prova, período ou identificador faltante, vigência do art. 15-A, existência atual do registro.

## 4A. Provedor destinatário e titular dos registros (conteúdo do BLOCO no polo)

- **Provedor (N5/N6) parte ou destinatário não-parte:** posição delimitada sobre os requisitos do pedido — fundados indícios, justificativa motivada e período ([MCI-22-23]); disponibilização só mediante ordem judicial ([MCI-10]); sigilo e segredo de justiça ([MCI-22-23]); quem guarda o quê e por quanto tempo ([MCI-13], [MCI-15]). Pedido extrajudicial de registros ⇒ resposta de que o fornecimento depende de ordem judicial ([MCI-10]).
- **Registro não mais guardado:** impossibilidade de fato só com documento técnico ⇒ até lá `PENDENTE DE PROVA`; não afirmar que o dado existe nem que não existe sem prova; não calcular se o prazo de guarda venceu. Ordem já proferida ⇒ demonstração de cumprimento ou de impossibilidade e eventual pedido sobre a multa ([CPC-536-537]).
- **Titular dos registros (TERCEIRO):** oposição ao pedido pela falta de requisito, pelo período amplo ou pela proteção da intimidade e do sigilo ([MCI-10], [MCI-22-23]).

## 5. Encaminhamento da peça (o BLOCO segue, a skill de fase redige)

- Antes da ação, com risco de perecimento: o cabimento é decidido por `preservacao-e-encaminhamento-probatorio`; a ação autônoma é redigida por `producao-antecipada-de-prova-digital`.
- Ação principal com pedido de registros: `peticao-inicial-digital` embrulha o BLOCO; capítulo de tutela: `tutela-e-pedidos-delimitados-digital`; fase de provas: `replica-saneamento-e-provas-digital`.
- Provedor réu: `contestacao-e-defesa-digital`. Provedor destinatário de ordem (cumprimento, impossibilidade, multa): `cumprimento-de-ordem-digital`. Decisão que deferiu ou negou o pedido: `agravo-e-embargos-de-declaracao-digital`.
- Titular dos registros: a oposição entra na peça da fase em curso (tutela, defesa ou recurso, pelas skills acima).
- Competência e rito: `legitimidade-e-competencia-digital`. Pedido extrajudicial recebido: resposta por `notificacao-extrajudicial-digital`.

## 6. Travas

"IP = autor" ⇒ rejeitado (a `revisao-final-digital` barra no R3). Não afirmar que os registros ainda existem. Não calcular prazo de guarda vencido ou a vencer. Não citar julgado do STJ além dos dois capturados. Não pedir conteúdo de comunicações privadas sem a hipótese legal própria ([MCI-10], § 2º).

## 7. Estado (por item do BLOCO)

`MINUTA PARA REVISÃO HUMANA` (BLOCO delimitado, posição do provedor ou oposição do titular) · `PENDENTE DE PROVA` (sem período ou identificadores; pedido amplo; indícios ou utilidade sem prova) · `PENDENTE DE FONTE` (questão sobre vigência do art. 15-A). Ao final, acionar `revisao-final-digital`.
