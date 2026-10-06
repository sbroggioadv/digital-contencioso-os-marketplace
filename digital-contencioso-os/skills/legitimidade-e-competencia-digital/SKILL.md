---
name: legitimidade-e-competencia-digital
description: "Define, no caso digital da pessoa ou empresa afetada, quem pode pedir, contra quem (autor, plataforma, provedor de conexão, controlador), o juízo e o foro com base no texto capturado do CPC, do Marco Civil e da Lei 9.099, e roteia relação de consumo; cláusula de foro estrangeiro vira análise, não conclusão."
---

# Legitimidade e competência — caso digital

**Guidance only:** competência e legitimidade dependem dos fatos provados e da análise do advogado. Toda saída passa por `anti-alucinacao-digital-contencioso` → `validador-digital-contencioso` → `suprema-corte-digital-contencioso` (resultado visível ou "revisão não executada").

## 1. Entrada

Cliente (pessoa natural ou jurídica; titular da conta, do conteúdo, dos dados); relação com a plataforma (usuário, anunciante, empresa com perfil, titular de dados sem relação); quem praticou o ato (autor conhecido, autor incerto, plataforma, controlador); domicílios; local do fato; onde a obrigação deve ser cumprida; valor e complexidade estimados pelo advogado; termos colados com cláusula de lei/foro.

## 2. Legitimidade (saída parte 1)

| Pergunta | Regra de trabalho | Fonte |
|---|---|---|
| O cliente é o afetado? | Titular da conta, do direito da personalidade ou dos dados. Empresa: perfil, marca ou nome empresarial próprios. Terceiro não titular ⇒ rever | [CC-11-21] (personalidade, inclusive legitimados para morto/ausente); [LGPD-18] (titular × controlador) |
| Contra quem pedir conteúdo/indisponibilização? | Provedor de aplicações que hospeda o conteúdo e/ou o autor, se identificado. **Se e como a plataforma responde = `PENDENTE DE FONTE`** (B1/B2) | [MCI-18-19] (texto de lei, não regime) |
| Contra quem pedir registros? | O **responsável pela guarda**: o **administrador de sistema autônomo** na provisão de conexão (registros de conexão — art. 13, [MCI-13]) ou o provedor de aplicações (registros de acesso) | [MCI-13], [MCI-15], [MCI-22-23] |
| Provedor de conexão responde por conteúdo de terceiro? | O art. 18 afasta a responsabilidade civil do provedor de conexão por conteúdo gerado por terceiros | [MCI-18-19] |
| Controlador de dados | Pedido de direito do titular é dirigido ao controlador; operador e controladores envolvidos respondem conforme art. 42 | [LGPD-18], [LGPD-42-45] |
| Plataforma estrangeira | Representante legal no País é dever criado pelo Decreto 12.975/2026 — condicionado (B3/B4) | [DEC-16A] |
| Cliente é a plataforma/controlador | `FORA DO RECORTE` | — |

## 3. Competência e foro (saída parte 2)

- **Autoridade brasileira:** réu domiciliado no Brasil (pessoa jurídica estrangeira com agência, filial ou sucursal considera-se domiciliada), obrigação a cumprir no Brasil ou fato/ato ocorrido no Brasil (`context/cpc-recortes.md` [CPC-21]). Lei brasileira em operação de coleta, guarda ou tratamento com ato em território nacional ([MCI-11]).
- **Foro:** sede da pessoa jurídica ré, agência/sucursal, lugar do cumprimento; lugar do ato ou fato para reparação de dano ([CPC-53], III e IV). Conferir o inciso aplicável ao pedido concreto.
- **Juizado Especial Cível:** o Marco Civil prevê que causas sobre ressarcimento por conteúdo relacionado a honra, reputação ou direitos de personalidade, e sobre indisponibilização desses conteúdos, **poderão** ser apresentadas nos juizados especiais ([MCI-18-19], § 3º); limites de valor, exclusões e foro do JEC (`context/lei-9099-jec.md` [JEC-3], [JEC-4]). Citação de plataforma estrangeira, complexidade e prova pericial no JEC **não analisadas** no corpus ⇒ decisão do advogado.
- **Produção antecipada de prova:** foro onde deva ser produzida ou do domicílio do réu ([CPC-381-384], art. 381 § 2º).
- **Cláusula de lei/foro estrangeiro nos termos colados:** confrontar com o art. 8º, parágrafo único, II ([MCI-8]) — **análise jurídica pendente**, sem declarar nulidade automaticamente.

## 4. Fronteira de consumo

Relação de consumo (compra, marketplace, serviço contratado como consumidor, cadastro de consumo) ⇒ rotear a `consumidor-adv-os`: a LGPD mantém as violações em relações de consumo sujeitas às regras de responsabilidade da legislação pertinente ([LGPD-42-45], art. 45). Pedido misto: separar.

## 5. Saída e estado

Quadro **pedido → legitimado ativo → destinatário → juízo/foro → fundamento (bloco) → pendência**, mais **Controles executados** e estado: `MINUTA PARA REVISÃO HUMANA`, `PENDENTE DE PROVA` (domicílio, sede ou relação não comprovados), `PENDENTE DE FONTE` (responsabilidade da plataforma; cláusula estrangeira sem análise) ou `FORA DO RECORTE` (consumo, cliente-plataforma).

## Fechamento comum (chamada direta ou por wrapper)

Se o pedido trouxer matéria de fronteira (consumo, fraude financeira, tipificação penal, LGPD de compliance, autoral, eleitoral, infância digital, cliente-plataforma), parar e devolver `FORA DO RECORTE` com o destino indicado pela `triagem-digital-contencioso`. Esta skill entrega `RASCUNHO vN` (itens `I1…In`); o estado final vem da revisão aplicada por agentes próprios (`templates/revisao-aplicada.md`) e a entrega aprovada só existe quando o gate do plugin grava `entrega-verificada/<sessão>/ENTREGA-vN.md`. Sem a cadeia: "revisão não executada", rascunho e rota para `/digital-contencioso-revisar`; nunca `MINUTA PARA REVISÃO HUMANA`. Estados do plugin: `MINUTA PARA REVISÃO HUMANA` · `PENDENTE DE PROVA` · `PENDENTE DE FONTE` · `BLOQUEADO` · `FORA DO RECORTE`.
