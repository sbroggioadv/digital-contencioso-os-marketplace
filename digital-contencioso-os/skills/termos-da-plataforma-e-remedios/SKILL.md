---
name: termos-da-plataforma-e-remedios
description: "Lê os termos e políticas da plataforma COLADOS pelo cliente, vigentes na data do fato, e entrega cláusula aplicada, data, canal interno de contestação e remédios externos possíveis; sem termos colados, gera pendência e nunca presume o contrato."
---

# Termos da plataforma e remédios

**Guidance only:** termos de uso são **contrato privado mutável**, não norma. Toda saída passa por `anti-alucinacao-digital-contencioso` → `validador-digital-contencioso` → `suprema-corte-digital-contencioso` (resultado visível ou "revisão não executada").

## 1. Entrada obrigatória

- **Texto dos termos/políticas colado pelo cliente** (ou arquivo na pasta `03-termos-colados/`), com: nome da plataforma, título do documento, versão ou data exibida, data em que o cliente obteve o texto, e se era o vigente **na data do fato**.
- Decisão ou comunicação da plataforma (suspensão, remoção, recusa), com data e canal.
- Histórico de uso relevante (o que o cliente publicou ou fez), contado por ele.

**Sem termos colados ⇒ `PENDENTE DE PROVA`.** Pedir o texto vigente na data do fato. Não usar memória, versão "atual" presumida nem a de outra plataforma. Os arquivos `context/plat-*.md` são **exemplos de leitura** capturados em 02/10/2026 (Google, X, TikTok, Google Perfil da Empresa) e **nunca** substituem os termos do caso. Termos Meta/Instagram/WhatsApp não foram capturados: nada é afirmado sobre eles.

## 2. Leitura dos termos (saída principal)

| Cláusula (trecho colado) | Onde está (seção/linha do arquivo do cliente) | Data/versão | O que permite à plataforma | O que exige do usuário | Canal interno previsto | Prazo previsto no termo |
|---|---|---|---|---|---|---|

Regras:
- Citar **o trecho colado** e o local no arquivo do cliente; nunca parafrasear como se fosse a cláusula.
- Prazo ou canal só se estiver **no texto colado**.
- Divergência entre a cláusula invocada pela plataforma e o texto colado: registrar como ponto a provar.

Exemplo do que a leitura dos exemplos capturados ensina (não é o caso do cliente): o termo do Google prevê suspensão ou encerramento em hipóteses e remete à contestação (`context/plat-google-termos.md` [G-GOOGLE]); o do X cita remédios internos expressos só para Reino Unido e União Europeia (`context/plat-x-termos.md` [G-X]) — ausência de remédio brasileiro no termo não significa ausência de direito; o do TikTok, na versão "Outras regiões", traz lei e foro estrangeiros (`context/plat-tiktok-termos.md` [G-TIKTOK]).

## 3. Cláusulas que pedem análise jurídica (sem conclusão automática)

- **Foro ou lei estrangeira em contrato de adesão:** confrontar com o texto do art. 8º, parágrafo único, II, do Marco Civil (nulidade de cláusula que, em contrato de adesão, não ofereça alternativa de foro brasileiro para serviços prestados no Brasil) e com o art. 11 (`context/marco-civil-lei-12965.md` [MCI-8], [MCI-11]). Aplicação ao caso = análise do advogado; encaminhar a `legitimidade-e-competencia-digital`.
- **Comunicação ao usuário sobre indisponibilização de conteúdo:** o art. 20 prevê comunicação de motivos e informações ao usuário responsável pelo conteúdo, salvo previsão legal ou determinação judicial em contrário ([MCI-20-21]).
- **Informação clara nas políticas de uso:** direitos do art. 7º, incisos VI, VIII e XI ([MCI-7]).
- **Deveres de provedores criados pelo Decreto 12.975/2026** (canal de denúncia, representante legal no País, comunicação ao usuário após notificação): `context/decreto-8771-compilado.md` [DEC-16A], [DEC-16E] — sempre com a ressalva "vigência não certificada; ADI 7981 em curso" (B3/B4).

## 4. Remédios — mapa, não promessa

| Via | Quando | Produtora |
|---|---|---|
| Contestação interna pelo canal da plataforma | canal previsto no termo colado ou na comunicação recebida | o advogado orienta o cliente; registrar protocolo |
| Notificação extrajudicial | contestação interna sem resposta ou insuficiente | `notificacao-extrajudicial-digital` |
| Pedido judicial (obrigação de fazer, tutela, exibição) | via interna esgotada ou urgência | `tutela-e-pedidos-delimitados-digital` |
| Conta/perfil | suspensão ou encerramento | `conta-perfil-suspensao` |

Nenhuma via garante restabelecimento, remoção ou resposta.

## 5. Saída e estado

Tabela de cláusulas + pontos de análise jurídica + mapa de remédios + **Controles executados** + estado: `MINUTA PARA REVISÃO HUMANA` (leitura sobre termos colados), `PENDENTE DE PROVA` (termos ausentes ou sem data), `PENDENTE DE FONTE` (pergunta sobre termos Meta ou sobre regime de responsabilidade) ou `BLOQUEADO` (termo presumido ou inventado).

## Fechamento comum (chamada direta ou por wrapper)

Se o pedido trouxer matéria de fronteira (consumo, fraude financeira, tipificação penal, LGPD de compliance, autoral, eleitoral, infância digital, cliente-plataforma), parar e devolver `FORA DO RECORTE` com o destino indicado pela `triagem-digital-contencioso`. Esta skill entrega `RASCUNHO vN` (itens `I1…In`); o estado final vem da revisão aplicada por agentes próprios (`templates/revisao-aplicada.md`) e a entrega aprovada só existe quando o gate do plugin grava `entrega-verificada/<sessão>/ENTREGA-vN.md`. Sem a cadeia: "revisão não executada", rascunho e rota para `/digital-contencioso-revisar`; nunca `MINUTA PARA REVISÃO HUMANA`. Estados do plugin: `MINUTA PARA REVISÃO HUMANA` · `PENDENTE DE PROVA` · `PENDENTE DE FONTE` · `BLOQUEADO` · `FORA DO RECORTE`.
