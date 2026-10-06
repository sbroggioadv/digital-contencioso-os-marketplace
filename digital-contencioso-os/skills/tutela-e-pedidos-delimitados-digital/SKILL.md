---
name: tutela-e-pedidos-delimitados-digital
description: "Converte o caso digital completo em tutela de urgência e pedidos delimitados (conteúdo por URL, conta por identificador, registros por período, dados por direito), com prova correspondente, multa, honorários e via recursal, delegando o rito ao Cível; responsabilidade da plataforma fica PENDENTE DE FONTE."
---

# Tutela e pedidos delimitados — caso digital

**Guidance only:** entrega a **parte de pedidos e tutela** para revisão humana; não substitui o rito completo (`civel-adv-os`, skills `tutela-urgencia` e `incidentes-probatorios-e-exibicao`, se instalado — interface, sem dependência). Toda saída passa por `anti-alucinacao-digital-contencioso` → `validador-digital-contencioso` → `suprema-corte-digital-contencioso` (resultado visível ou "revisão não executada").

## 1. Entrada

Saídas já produzidas no caso: triagem, legitimidade/competência, inventário e matriz, percurso (conta, conteúdo, registros, dados), notificação e respostas. Faltando a matriz ou o inventário ⇒ `PENDENTE DE PROVA`.

## 2. Tabela de pedidos (saída principal)

| # | Pedido | Objeto delimitado | Destinatário | Fundamento (bloco) | Prova (inventário) | Tutela? | Multa? | Estado |
|---|---|---|---|---|---|---|---|---|

Regras de delimitação:
- **Conteúdo:** cada URL ou identificador estável que permita a localização inequívoca do material (sem isso ⇒ `BLOQUEADO`); ordem com identificação clara e específica, sob pena de nulidade (`context/marco-civil-lei-12965.md` [MCI-18-19], § 1º).
- **Conta:** identificador; o que restabelecer (acesso, conteúdo, dados); período.
- **Registros:** indícios, justificativa e período — sob pena de inadmissibilidade; segredo de justiça ([MCI-22-23]).
- **Dados pessoais:** direito por inciso e categoria de dados ([LGPD-18]).
- **Indenização:** valor só com documento; dano moral sem valor inventado (o advogado define).
- Pedido amplo ⇒ `BLOQUEADO` até delimitar.

## 3. Tutela

- **Urgência:** elementos que evidenciem probabilidade do direito e perigo de dano ou risco ao resultado útil; caução possível; liminar ou após justificação; vedação quando houver perigo de irreversibilidade (`context/cpc-recortes.md` [CPC-297-300]).
- **Conteúdo na internet:** o § 4º do art. 19 do Marco Civil admite antecipar a tutela com prova inequívoca do fato **e** consideração do interesse da coletividade na disponibilização do conteúdo, **desde que** presentes a verossimilhança da alegação do autor **e** o fundado receio de dano irreparável ou de difícil reparação ([MCI-18-19], § 4º). Apresentar o confronto entre art. 300 do CPC e § 4º do art. 19 como escolha do advogado.
- **Tutela específica e resultado prático equivalente; inibição ou remoção do ilícito; perdas e danos sem prejuízo da multa** ([CPC-497-500]); **multa** fixável inclusive em tutela provisória, modificável, devida desde o descumprimento ([CPC-536-537]).
- **Recurso:** agravo de instrumento contra decisão sobre tutela provisória e sobre exibição ou posse de documento ou coisa ([CPC-1015], incisos I e VI).

## 4. Honorários e via

- Honorários de sucumbência: art. 85, caput ([CPC-85]); detalhamento por relação/polo não capturado ⇒ o advogado completa.
- Juizado Especial possível para honra, reputação e personalidade ([MCI-18-19], § 3º), com limites de [JEC-3]; plataforma estrangeira e complexidade = decisão do advogado.

## 5. O que fica `PENDENTE DE FONTE`

Fundamento de **responsabilidade civil da plataforma** por conteúdo de terceiro (B1/B2). O pedido pode constar, com o rótulo `PENDENTE DE FONTE — B1/B2`, sem redação de tese. O fragmento do Tema 987 só aparece como **"parcial, não regime definitivo"**.

## 6. Travas

Sem promessa de deferimento ou de valor. Sem imputação de autoria. Sem prazo do Decreto 12.975 ou do Tema 987 calculado (B3). Sem julgado não capturado. Sem dados de terceiros além do necessário.

## 7. Saída e estado

Tabela de pedidos + texto do capítulo de tutela e pedidos + provas a juntar + **Controles executados** + estado: `MINUTA PARA REVISÃO HUMANA` · `PENDENTE DE PROVA` · `PENDENTE DE FONTE` (pedido que depende do regime da plataforma) · `BLOQUEADO` (pedido indelimitado ou inventado).

## Fechamento comum (chamada direta ou por wrapper)

Se o pedido trouxer matéria de fronteira (consumo, fraude financeira, tipificação penal, LGPD de compliance, autoral, eleitoral, infância digital, cliente-plataforma), parar e devolver `FORA DO RECORTE` com o destino indicado pela `triagem-digital-contencioso`. Esta skill entrega `RASCUNHO vN` (itens `I1…In`); o estado final vem da revisão aplicada por agentes próprios (`templates/revisao-aplicada.md`) e a entrega aprovada só existe quando o gate do plugin grava `entrega-verificada/<sessão>/ENTREGA-vN.md`. Sem a cadeia: "revisão não executada", rascunho e rota para `/digital-contencioso-revisar`; nunca `MINUTA PARA REVISÃO HUMANA`. Estados do plugin: `MINUTA PARA REVISÃO HUMANA` · `PENDENTE DE PROVA` · `PENDENTE DE FONTE` · `BLOQUEADO` · `FORA DO RECORTE`.
