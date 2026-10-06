---
name: preservacao-e-encaminhamento-probatorio
description: "Decide, diante de prova digital frágil, quando recomendar ata notarial, perícia, produção antecipada de prova ou pedido de guarda de registros, distinguindo advogado, tabelião e perito, sem prometer valor probatório e sem redigir ata ou laudo."
---

# Preservação e encaminhamento probatório

**Guidance only:** recomendar um meio de prova não garante seu valor. **Advogado ≠ tabelião ≠ perito.** O plugin não lavra ata, não faz perícia e não certifica arquivo. Toda saída passa por `anti-alucinacao-digital-contencioso` → `validador-digital-contencioso` → `suprema-corte-digital-contencioso` (resultado visível ou "revisão não executada").

## 1. Entrada

Inventário e fragilidades de `origem-e-cronologia-da-prova-digital`; risco de perda (conteúdo apagável, conta encerrável, registros sujeitos a prazo de guarda); probabilidade de impugnação; urgência; se já há ação proposta.

## 2. Quadro de decisão (saída principal)

| Fragilidade | Meio a considerar | Quem faz | Base no `context/` | O que o plugin entrega |
|---|---|---|---|---|
| Conteúdo on-line que pode desaparecer e cuja existência/modo de existir precisa ser documentado | **Ata notarial** | Tabelião | Existência e modo de existir de fato podem ser atestados ou documentados por ata lavrada por tabelião; dados de imagem/som em arquivos eletrônicos podem constar da ata (`context/cpc-recortes.md` [CPC-381-384], art. 384); ao notário compete autenticar fatos e ao tabelião de notas lavrar atas notariais (`context/lei-8935-notarios.md` [NOT-6], [NOT-7]); atas notariais eletrônicas aparecem no texto de 2020 do Provimento CNJ 100 (`context/cnj-provimento-100-2020.md` [CNJ-100-20]), **vigência não conferida** (L08: norma posterior do CNJ não capturada) ⇒ o procedimento eletrônico atual é `PENDENTE DE FONTE` e cabe ao tabelião | lista do que o advogado leva ao tabelião (URLs, perfis, datas, o que deve ser constatado); **não** a minuta da ata |
| Arquivo cuja integridade, edição ou origem técnica será impugnada | **Perícia** (no processo ou em produção antecipada) | Perito | Fotografia impugnada exige autenticação eletrônica ou, não sendo possível, perícia ([CPC-422], § 1º) | quesitos-rascunho para revisão do advogado; sem conclusão técnica |
| Fato que pode se tornar impossível ou muito difícil de verificar; prova que viabiliza acordo; conhecimento prévio que justifica ou evita ação | **Produção antecipada de prova** | Juízo, a pedido do advogado | Hipóteses do art. 381; competência do art. 381 § 2º; juiz não se pronuncia sobre o fato (art. 382 § 2º) ([CPC-381-384]) | roteiro do pedido (fatos precisos, razões da urgência) |
| Registros técnicos (conexão, acesso) necessários e sujeitos a prazo de guarda | **Pedido judicial de guarda e fornecimento** | Juízo | Guarda de conexão e de acesso, e guarda por ordem para fatos específicos em período determinado (`context/marco-civil-lei-12965.md` [MCI-13], [MCI-15]); requisitos do requerimento ([MCI-22-23]) | encaminhar a `registros-exibicao-e-fornecimento` |
| Documento em poder da plataforma ou de terceiro | **Exibição** | Juízo | Arts. 396–404 ([CPC-396-404]) | encaminhar a `registros-exibicao-e-fornecimento` ou `tutela-e-pedidos-delimitados-digital` |
| Captura do próprio cliente, sem risco imediato | **Preservação organizada** | Cliente e advogado | — (sem regra de valor probatório capturada, B8) | instrução de guardar originais, exportações e metadados disponíveis na pasta privada; registrar quem/quando/onde |

## 3. Travas

- Não prometer que ata, perícia ou hash farão prova; o valor é apreciado no processo.
- Não afirmar requisitos, emolumentos ou procedimento estaduais da ata notarial: normas estaduais **não capturadas** (L08) ⇒ orientar a consultar o tabelionato e a norma local.
- Não redigir ata nem laudo; para a ata, o encaminhamento pode citar o `tabelionato-os` (skill `ata-notarial-de-constatacao`), se instalado, sem dependência.
- Não calcular quando o prazo de guarda de registros termina; sinalizar urgência.
- Dados de terceiros visíveis nas capturas: minimizar o que vai ao tabelião, ao perito e aos autos.

## 4. Saída e estado

Quadro de decisão por fragilidade + providência imediata + o que levar ao tabelião/perito + **Controles executados** + estado: `MINUTA PARA REVISÃO HUMANA` (roteiro de preservação), `PENDENTE DE PROVA` (fragilidade não descrita), `PENDENTE DE FONTE` (pergunta sobre norma estadual ou valor probatório) ou `BLOQUEADO` (pedido de "certificar" ou "garantir" prova).

## Fechamento comum (chamada direta ou por wrapper)

Se o pedido trouxer matéria de fronteira (consumo, fraude financeira, tipificação penal, LGPD de compliance, autoral, eleitoral, infância digital, cliente-plataforma), parar e devolver `FORA DO RECORTE` com o destino indicado pela `triagem-digital-contencioso`. Esta skill entrega `RASCUNHO vN` (itens `I1…In`); o estado final vem da revisão aplicada por agentes próprios (`templates/revisao-aplicada.md`) e a entrega aprovada só existe quando o gate do plugin grava `entrega-verificada/<sessão>/ENTREGA-vN.md`. Sem a cadeia: "revisão não executada", rascunho e rota para `/digital-contencioso-revisar`; nunca `MINUTA PARA REVISÃO HUMANA`. Estados do plugin: `MINUTA PARA REVISÃO HUMANA` · `PENDENTE DE PROVA` · `PENDENTE DE FONTE` · `BLOQUEADO` · `FORA DO RECORTE`.
