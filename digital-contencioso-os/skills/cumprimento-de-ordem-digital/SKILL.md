---
name: cumprimento-de-ordem-digital
description: "Confere o cumprimento de ordem judicial por plataforma ou provedor: tabela alcance × cumprido × pendente com prova de cada item, e providência posterior (intimação, multa, medidas do art. 536 do CPC); sem ordem ou sem resposta documentada devolve PENDENTE DE PROVA."
---

# Cumprimento de ordem — plataforma e provedor

**Guidance only:** a conferência depende da ordem e da resposta documentadas; o plugin não acessa processo, plataforma ou tribunal. Rito completo de cumprimento: `civel-adv-os` (`cumprimento-de-sentenca`), interface sem dependência. Toda saída passa por `anti-alucinacao-digital-contencioso` → `validador-digital-contencioso` → `suprema-corte-digital-contencioso` (resultado visível ou "revisão não executada").

## 1. Entrada obrigatória

- **Ordem**: texto integral da decisão (ou trecho dispositivo com página), data, destinatário, objeto (URLs, contas, registros, período), prazo fixado **na própria ordem**, multa fixada **na própria ordem**, intimação (data e meio).
- **Resposta** do destinatário: texto, data, o que afirma ter feito, anexos.
- **Verificação do cliente**: o que continua no ar ou indisponível, com novo inventário (`origem-e-cronologia-da-prova-digital`).

Ordem ausente ⇒ `PENDENTE DE PROVA`. Resposta ausente ⇒ tratar como **"sem resposta documentada"**, nunca como descumprimento provado.

## 2. Tabela alcance × cumprido × pendente (saída principal)

| # | Item da ordem (como escrito) | Alcance (URL, conta, registro, período) | Prazo da ordem | Resposta (trecho, data) | Verificação (item do inventário) | Situação | Providência |
|---|---|---|---|---|---|---|---|

Situação: `cumprido (documentado)` · `cumprido em parte` · `não cumprido (documentado)` · `sem resposta documentada` · `fora do alcance da ordem` (o que o cliente quer além do que foi ordenado).

Regras:
- Ler o **alcance literal** da ordem; pedido novo não vira "descumprimento".
- Ordem de indisponibilização que não identifica claramente o conteúdo: apontar o risco de nulidade do § 1º do art. 19 (`context/marco-civil-lei-12965.md` [MCI-18-19]) e sugerir pedido de complementação.
- Conteúdo replicado em nova URL: registrar como **fato novo**, com inventário próprio; a extensão da ordem a replicações é questão a pedir ao juízo, sem afirmar regra (fragmento do Tema 987 é parcial, B1).
- Registros fornecidos: conferir se correspondem ao período e aos identificadores ordenados; divergência vira item pendente.
- **Nunca calcular multa acumulada** sem a decisão que a fixou, a data de intimação e a data do descumprimento documentadas.

## 3. Providências posteriores com fonte

- Medidas necessárias à efetivação: multa, busca e apreensão, remoção de pessoas e coisas, impedimento de atividade nociva, entre outras; litigância de má-fé por descumprimento injustificado (`context/cpc-recortes.md` [CPC-536-537], art. 536 e §§).
- Multa: independe de requerimento; o juiz pode modificar o valor ou a periodicidade da multa vincenda ou excluí-la nos termos do § 1º, inclusive diante de cumprimento parcial superveniente ou justa causa; devida desde o descumprimento ([CPC-536-537], art. 537).
- Tutela específica ou resultado prático equivalente; perdas e danos sem prejuízo da multa ([CPC-497-500]).
- Efetivação de tutela provisória segue o cumprimento provisório, no que couber ([CPC-297-300], art. 297).
- Agravo de instrumento contra decisões interlocutórias na fase de cumprimento de sentença ([CPC-1015], parágrafo único) e sobre tutela provisória (inciso I).
- Provedor sem sede no País: dever de manter representante legal com poderes para cumprir determinações judiciais criado pelo Decreto 12.975/2026 ([DEC-16A], inciso I, alínea c) — **condicionado: vigência não certificada; ADI 7981 em curso**.

**Jurisprudência de astreinte, bloqueio ou ordem a provedor estrangeiro: não capturada (L09)** — nenhum precedente citado.

## 4. Saída e estado

Tabela + petição curta para revisão humana (informar descumprimento documentado e requerer a providência escolhida) + **Controles executados** + estado: `MINUTA PARA REVISÃO HUMANA` · `PENDENTE DE PROVA` (ordem ou resposta ausente) · `PENDENTE DE FONTE` (questão sem fonte capturada) · `BLOQUEADO` (multa calculada sem dados; pedido fora do alcance tratado como descumprimento).

## Fechamento comum (chamada direta ou por wrapper)

Se o pedido trouxer matéria de fronteira (consumo, fraude financeira, tipificação penal, LGPD de compliance, autoral, eleitoral, infância digital, cliente-plataforma), parar e devolver `FORA DO RECORTE` com o destino indicado pela `triagem-digital-contencioso`. Esta skill entrega `RASCUNHO vN` (itens `I1…In`); o estado final vem da revisão aplicada por agentes próprios (`templates/revisao-aplicada.md`) e a entrega aprovada só existe quando o gate do plugin grava `entrega-verificada/<sessão>/ENTREGA-vN.md`. Sem a cadeia: "revisão não executada", rascunho e rota para `/digital-contencioso-revisar`; nunca `MINUTA PARA REVISÃO HUMANA`. Estados do plugin: `MINUTA PARA REVISÃO HUMANA` · `PENDENTE DE PROVA` · `PENDENTE DE FONTE` · `BLOQUEADO` · `FORA DO RECORTE`.
