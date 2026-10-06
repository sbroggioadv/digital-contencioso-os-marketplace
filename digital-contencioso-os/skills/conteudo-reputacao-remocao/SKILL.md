---
name: conteudo-reputacao-remocao
description: "Roteiro de pedido, prova e tutela para conteúdo de terceiro que ofende honra, imagem, vida privada ou reputação da pessoa ou empresa afetada, com identificação específica do conteúdo; responsabilidade da plataforma fica PENDENTE DE FONTE e autoria incerta vira pedido de registros, nunca imputação."
---

# Conteúdo e reputação — roteiro de pedido, prova e tutela

**Guidance only — skill CONDICIONADA.** Esta skill entrega **roteiro de pedido, prova e tutela** apoiado em normas primárias. **Toda conclusão sobre se e como a plataforma responde sai `PENDENTE DE FONTE`** (B1: tese do Tema 987 pós-embargos só em fragmento primário truncado; B2: Tema 533 com embargos a proclamar). Toda saída passa por `anti-alucinacao-digital-contencioso` → `validador-digital-contencioso` → `suprema-corte-digital-contencioso` (resultado visível ou "revisão não executada").

## 1. Entrada

- **Identificação do conteúdo:** URL de cada publicação (não só do perfil) ou outro identificador estável que permita a **localização inequívoca** do material; data de publicação e de captura, plataforma, perfil publicador, trecho ofensivo. Só sem identificação clara, específica e inequívoca ⇒ `BLOQUEADO` (§1º do art. 19, `context/marco-civil-lei-12965.md` [MCI-18-19]).
- **Contexto:** se é crítica, notícia, opinião, sátira; se o fato é verídico; desde quando está publicado.
- **Autoria:** conhecida (com prova) ou incerta.
- **Dano alegado** e prova do dano (`matriz-fato-prova-dano-digital`).
- **Tentativas:** denúncia pelo canal da plataforma, notificação, resposta.
- Inventário (`origem-e-cronologia-da-prova-digital`).

## 2. Triagem interna do conteúdo

| Situação | Encaminhamento |
|---|---|
| Nudez ou atos sexuais de caráter privado divulgados sem autorização | Regime de notificação do art. 21 do Marco Civil, cuja notificação exige, sob pena de nulidade, identificação específica do material e verificação da legitimidade de quem pede ([MCI-20-21]). Responsabilidade da plataforma além do texto legal = `PENDENTE DE FONTE` |
| Ofensa à honra (calúnia, difamação, injúria) | Pedido cível aqui; queixa-crime/tipificação ⇒ `criminal-adv-os`. Fragmento primário do Tema 987, item 3.2: nas hipóteses de crime ou ato ilícito civil contra a honra, aplica-se o art. 19, sem prejuízo de remoção por notificação extrajudicial (`context/stf-tema-987-andamento-fragmento.md` [T987-ED-ITEM32]) — **parcial, não regime definitivo** |
| Perfil falso que se passa pelo cliente | ver `conta-perfil-suspensao` §4 (fragmento item 3.1, parcial) |
| Fato verídico e licitamente publicado, pedido baseado só na passagem do tempo | Alerta: o excerto do Tema 786 afirma ser **incompatível com a Constituição** a ideia de direito ao esquecimento, entendido como o poder de obstar, pela passagem do tempo, a divulgação de fatos ou dados verídicos e licitamente obtidos e publicados em meios de comunicação social analógicos ou digitais; excessos ou abusos da liberdade de expressão são analisados caso a caso por parâmetros constitucionais (`context/stf-tema-786-andamento.md` [T786-TESE], excerto cortado). Não usar "direito ao esquecimento" como fundamento. Desindexação/LGPD: sem fonte (L06) ⇒ `PENDENTE DE FONTE` |
| Direito autoral, eleitoral, infância digital | `FORA DO RECORTE` (triagem) |

## 3. Pedidos possíveis (roteiro — o advogado escolhe)

1. **Indisponibilização** do conteúdo identificado por URL, com ordem que contenha identificação clara e específica ([MCI-18-19], § 1º).
2. **Tutela de urgência ou antecipação:** art. 300 do CPC ([CPC-297-300]) e o § 4º do art. 19 (a antecipação exige prova inequívoca do fato **e** consideração do interesse da coletividade na disponibilização do conteúdo, **desde que** presentes a verossimilhança da alegação do autor **e** o fundado receio de dano irreparável ou de difícil reparação ([MCI-18-19], § 4º)) — apontar os dois e deixar a escolha ao advogado; reversibilidade e caução analisadas.
3. **Cessação da lesão e perdas e danos** contra o autor: [CC-11-21] (arts. 12, 20, 21), [CC-186-187], [CC-927], [CC-953].
4. **Registros para identificar o autor**, quando a autoria for incerta: **não imputar**; pedir registros com indícios, justificativa e período → `registros-exibicao-e-fornecimento` ([MCI-22-23]).
5. **Tutela específica e multa** para cumprimento ([CPC-497-500], [CPC-536-537]).
6. **Juizado Especial:** possível para honra, reputação e personalidade, conforme § 3º do art. 19 ([MCI-18-19]); limites em [JEC-3].

**Pedido contra a plataforma por responsabilidade civil:** o roteiro registra o pedido como **hipótese a fundamentar**, com o rótulo `PENDENTE DE FONTE — B1/B2`, e **não** redige fundamento de responsabilidade solidária, subsidiária ou por omissão. O art. 19 do Marco Civil, isolado, não é o regime vigente (texto de lei sem anotação do STF).

## 4. O que é proibido nesta skill

- Completar a tese do Tema 987 além do fragmento primário (itens 5(d) a 14, modulação, prazo de 60 dias): **proibido** — nem de memória, nem de notícia, nem de cópia de outro órgão.
- Citar tese do Tema 533.
- Usar a redação de 2025 do Tema 987 como vigente.
- Afirmar que o pedido "será deferido", que a plataforma "é responsável" ou que tem um prazo certo para remover.
- Converter "perfil anônimo" em pessoa identificada.

## 5. Saída

1. Quadro **conteúdo (URL) → trecho → data → prova → direito afetado (bloco) → pedido → pendência**.
2. Roteiro de pedidos e tutela (texto para revisão humana), com o bloco `PENDENTE DE FONTE — responsabilidade da plataforma (B1/B2)` explícito.
3. Premissa contrária (liberdade de expressão, [CF-5-IX-X], inciso IX; veracidade; interesse público).
4. **Controles executados** (guard, validador, R1–R4).
5. Estado: `MINUTA PARA REVISÃO HUMANA` (roteiro de pedido/prova/tutela, com responsabilidade da plataforma em aberto) · `PENDENTE DE FONTE` (quando o pedido depende do regime de responsabilidade) · `PENDENTE DE PROVA` · `BLOQUEADO` (URL não identificada; imputação de autoria) · `FORA DO RECORTE`.

## Fechamento comum (chamada direta ou por wrapper)

Se o pedido trouxer matéria de fronteira (consumo, fraude financeira, tipificação penal, LGPD de compliance, autoral, eleitoral, infância digital, cliente-plataforma), parar e devolver `FORA DO RECORTE` com o destino indicado pela `triagem-digital-contencioso`. Esta skill entrega `RASCUNHO vN` (itens `I1…In`); o estado final vem da revisão aplicada por agentes próprios (`templates/revisao-aplicada.md`) e a entrega aprovada só existe quando o gate do plugin grava `entrega-verificada/<sessão>/ENTREGA-vN.md`. Sem a cadeia: "revisão não executada", rascunho e rota para `/digital-contencioso-revisar`; nunca `MINUTA PARA REVISÃO HUMANA`. Estados do plugin: `MINUTA PARA REVISÃO HUMANA` · `PENDENTE DE PROVA` · `PENDENTE DE FONTE` · `BLOQUEADO` · `FORA DO RECORTE`.
