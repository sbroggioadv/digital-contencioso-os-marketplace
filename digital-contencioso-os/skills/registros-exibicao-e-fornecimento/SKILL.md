---
name: registros-exibicao-e-fornecimento
description: "Monta o pedido judicial delimitado de guarda e fornecimento de registros de conexão e de acesso a aplicações (IP, porta lógica, data e hora) para autoria incerta, com fundados indícios, justificativa e período; sem período ou identificadores devolve BLOQUEADO; nunca trata IP como autor."
---

# Registros — guarda, exibição e fornecimento

**Guidance only:** registros identificam **terminal e conexão**, não pessoa. Nenhuma saída imputa autoria. Toda saída passa por `anti-alucinacao-digital-contencioso` → `validador-digital-contencioso` → `suprema-corte-digital-contencioso` (resultado visível ou "revisão não executada").

## 1. Entrada obrigatória

| Campo | Exemplo do que se pede ao cliente | Se faltar |
|---|---|---|
| Conteúdo ou evento ilícito | URL da publicação, mensagem, acesso indevido | `BLOQUEADO` |
| Identificadores | URL, nome de usuário, identificador da conta, endereço de e-mail remetente | `BLOQUEADO` |
| **Período** | data e hora (com fuso) de cada evento; janela delimitada | `BLOQUEADO` |
| Destinatário | provedor de aplicações (registros de acesso) e/ou **administrador de sistema autônomo** que provê a conexão (registros de conexão, art. 13 do MCI — [MCI-13]) | `PENDENTE DE PROVA` |
| Fundados indícios | prova do ilícito no inventário | `PENDENTE DE PROVA` |
| Utilidade | por que os registros são necessários para a prova | `PENDENTE DE PROVA` |

Pedido "de todos os dados da conta" ou "de todo o histórico" ⇒ `BLOQUEADO` até ser delimitado. Devolver a lista exata do que falta.

## 2. Base capturada (citar pelo bloco)

- **Conceitos:** endereço IP (código atribuído a um terminal), registro de conexão (data/hora de início e término, duração e IP do terminal), registros de acesso a aplicações (data e hora de uso a partir de um IP) — `context/marco-civil-lei-12965.md` [MCI-5].
- **Guarda e disponibilização** mediante ordem judicial, preservada intimidade e vida privada ([MCI-10]); registros de conexão pelo administrador de sistema autônomo, sob sigilo ([MCI-13]); registros de acesso a aplicações pelo provedor pessoa jurídica com fins econômicos, sob sigilo; guarda por ordem judicial, por tempo certo, para fatos específicos em período determinado, por provedores não sujeitos ao caput ([MCI-15]). Os prazos legais de guarda constam desses blocos; **o prazo legal não garante que o dado ainda exista** no caso — sinalizar urgência sem calcular vencimento.
- **Requerimento judicial:** em caráter incidental ou autônomo, para formar conjunto probatório; deve conter, sob pena de inadmissibilidade, **(I) fundados indícios do ilícito, (II) justificativa motivada da utilidade, (III) período**; o juiz protege o sigilo e pode decretar segredo de justiça ([MCI-22-23]).
- **Porta lógica de origem:** o dever de guarda de IP abrange a porta lógica quando necessário à identificação inequívoca do terminal (`context/decreto-8771-compilado.md` [DEC-15A]) — **incluído pelo Decreto 12.975/2026: vigência não certificada, ADI 7981 em curso** (B3/B4). No STJ, só a ementa do REsp 1.784.156/SP (IP e porta lógica como identificação do dispositivo) e o Informativo 844/2025 (provedor de conexão e porta lógica) foram capturados (`context/stj-resp-1784156-ementa.md` [STJ-1784156]; `context/stj-informativo-844-2025.md` [STJ-INFO844]) — ementa e informativo, não inteiro teor (B6).
- **Exibição pelo CPC** (documento ou coisa em poder da parte ou de terceiro): [CPC-396-404]. A relação entre a exibição do CPC e o requerimento especial do Marco Civil **não foi analisada** no corpus ⇒ indicar as duas bases e deixar a escolha ao advogado.
- **Produção antecipada** quando houver risco de perecimento: [CPC-381-384].

## 3. Estratégia em etapas (sem imputar)

1. Provedor de aplicações: registros de acesso (IP, porta lógica quando cabível, data e hora) relativos aos identificadores e ao período.
2. Ao provedor de conexão: os demais dados de identificação do usuário; segundo o excerto, não é necessária prévia informação da porta lógica pelo provedor de aplicação, pois o provedor de conexão também está obrigado a armazenar e fornecer o IP ([STJ-INFO844], informativo — não é acórdão). O excerto **não trata de horário**: a correlação IP/porta/data/hora é fato a documentar no caso, não conteúdo do informativo.
3. O resultado é **indício** a ser confrontado com outras provas; a identificação da pessoa é conclusão do processo, não do plugin.

## 4. Minuta (saída principal)

Pedido para revisão humana com: (a) partes e destinatário de cada etapa; (b) os três requisitos do art. 22 em tópicos próprios, cada um ligado ao inventário; (c) identificadores e período **exatos** fornecidos pelo cliente; (d) pedido de guarda imediata e de fornecimento; (e) pedido de segredo de justiça ([MCI-22-23]); (f) providência posterior (etapa seguinte; cumprimento — `cumprimento-de-ordem-digital`).

## 5. Travas

"IP = autor" ⇒ rejeitado pelo validador. Não afirmar que os registros ainda existem. Não calcular prazo de guarda vencido ou a vencer. Não citar julgado do STJ além dos dois capturados. Não pedir conteúdo de comunicações privadas sem a hipótese legal própria ([MCI-10], § 2º).

## 6. Estado

`MINUTA PARA REVISÃO HUMANA` (pedido delimitado) · `BLOQUEADO` (sem período ou identificadores; pedido amplo) · `PENDENTE DE PROVA` (indícios ou utilidade sem prova) · `PENDENTE DE FONTE` (questão sobre vigência do art. 15-A).

## Fechamento comum (chamada direta ou por wrapper)

Se o pedido trouxer matéria de fronteira (consumo, fraude financeira, tipificação penal, LGPD de compliance, autoral, eleitoral, infância digital, cliente-plataforma), parar e devolver `FORA DO RECORTE` com o destino indicado pela `triagem-digital-contencioso`. Esta skill entrega `RASCUNHO vN` (itens `I1…In`); o estado final vem da revisão aplicada por agentes próprios (`templates/revisao-aplicada.md`) e a entrega aprovada só existe quando o gate do plugin grava `entrega-verificada/<sessão>/ENTREGA-vN.md`. Sem a cadeia: "revisão não executada", rascunho e rota para `/digital-contencioso-revisar`; nunca `MINUTA PARA REVISÃO HUMANA`. Estados do plugin: `MINUTA PARA REVISÃO HUMANA` · `PENDENTE DE PROVA` · `PENDENTE DE FONTE` · `BLOQUEADO` · `FORA DO RECORTE`.
