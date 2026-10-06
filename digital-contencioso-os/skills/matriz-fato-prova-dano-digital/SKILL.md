---
name: matriz-fato-prova-dano-digital
description: "Monta a matriz fato → prova (item do inventário e origem) → direito lesado → dano alegado → pedido no caso digital da pessoa ou empresa afetada, separando dano provado de dano alegado e apontando lacunas antes da peça."
---

# Matriz fato × prova × dano — caso digital

**Guidance only:** a matriz organiza a demonstração; não decide procedência nem quantifica indenização. Toda saída passa por `anti-alucinacao-digital-contencioso` → `validador-digital-contencioso` → `suprema-corte-digital-contencioso` (resultado visível ou "revisão não executada").

## 1. Entrada

Inventário e cronologia de `origem-e-cronologia-da-prova-digital` (obrigatórios — sem eles, `PENDENTE DE PROVA`), objetivo do cliente e descrição dos prejuízos (financeiros, de imagem, de clientela, de acesso, de dados).

## 2. Matriz (saída principal)

| # | Fato (como alegado) | Prova (nº do inventário) | Origem | Direito afetado (bloco do `context/`) | Dano alegado | Prova do dano | Pedido ligado | Lacuna |
|---|---|---|---|---|---|---|---|---|

Regras:
- Cada fato aponta para **item do inventário**; fato sem item = `relato do cliente` e lacuna.
- Item com `origem não demonstrada` não sustenta sozinho fato essencial: lacuna `PENDENTE DE PROVA` e sugestão de preservação.
- **Dano provado ≠ dano alegado.** Prejuízo financeiro exige documento do valor (nota, extrato, contrato, relatório de faturamento); sem documento, fica `alegado`. Nenhum valor é estimado pelo plugin.
- Autoria: "publicado pelo perfil X" é fato observável; "o perfil X é a pessoa Y" é conclusão que exige prova própria — nunca inferida.

## 3. Direitos afetados — só com fonte capturada

| Direito / efeito | Bloco |
|---|---|
| Inviolabilidade da intimidade, vida privada, honra e imagem; indenização por dano material ou moral | `context/cf-recortes.md` [CF-5-IX-X]; `context/marco-civil-lei-12965.md` [MCI-7] (inciso I) |
| Cessar ameaça ou lesão a direito da personalidade e reclamar perdas e danos; nome; imagem; vida privada | `context/codigo-civil-recortes.md` [CC-11-21] |
| Ato ilícito, abuso de direito, dever de reparar, extensão do dano | [CC-186-187], [CC-927], [CC-944] |
| Injúria, difamação ou calúnia: reparação e fixação equitativa sem prova de prejuízo material | [CC-953] |
| Dano por tratamento de dados pessoais em violação à legislação; inversão do ônus a critério do juiz | `context/lgpd-lei-13709.md` [LGPD-42-45] |
| Liberdade de expressão (premissa contrária obrigatória) | [CF-5-IX-X] (inciso IX) |
| Fatos verídicos e licitamente publicados × passagem do tempo | `context/stf-tema-786-andamento.md` [T786-TESE] (excerto cortado: incompatível com a Constituição o direito ao esquecimento pela só passagem do tempo; excessos, caso a caso) |

Responsabilidade **da plataforma** por conteúdo de terceiro: coluna fica `PENDENTE DE FONTE` (B1/B2 — skill `regime-plataformas-e-conteudo` bloqueada). A matriz pode apontar o **autor do conteúdo** e a **plataforma** como destinatários de pedidos distintos, sem concluir sobre a responsabilidade desta.

## 4. Premissa contrária (obrigatória)

Para cada fato essencial, escrever a defesa mais forte do outro lado: conteúdo verídico/lícito ou crítica; exercício de direito; violação de termos pelo próprio cliente; ausência de nexo; dano não comprovado; prova impugnável (CPC 422 § 1º — `context/cpc-recortes.md` [CPC-422]). Indicar a prova que a enfrentaria.

## 5. Saída e estado

Matriz + premissas contrárias + lacunas priorizadas + **Controles executados** + estado: `MINUTA PARA REVISÃO HUMANA` (matriz pronta para revisão), `PENDENTE DE PROVA` (fato essencial sem origem), `PENDENTE DE FONTE` (dependente de regime de plataforma) ou `BLOQUEADO` (fato ou valor inventado).

## Fechamento comum (chamada direta ou por wrapper)

Se o pedido trouxer matéria de fronteira (consumo, fraude financeira, tipificação penal, LGPD de compliance, autoral, eleitoral, infância digital, cliente-plataforma), parar e devolver `FORA DO RECORTE` com o destino indicado pela `triagem-digital-contencioso`. Esta skill entrega `RASCUNHO vN` (itens `I1…In`); o estado final vem da revisão aplicada por agentes próprios (`templates/revisao-aplicada.md`) e a entrega aprovada só existe quando o gate do plugin grava `entrega-verificada/<sessão>/ENTREGA-vN.md`. Sem a cadeia: "revisão não executada", rascunho e rota para `/digital-contencioso-revisar`; nunca `MINUTA PARA REVISÃO HUMANA`. Estados do plugin: `MINUTA PARA REVISÃO HUMANA` · `PENDENTE DE PROVA` · `PENDENTE DE FONTE` · `BLOQUEADO` · `FORA DO RECORTE`.
