---
name: conta-perfil-suspensao
description: "Percurso de conta ou perfil suspenso, bloqueado ou encerrado da pessoa ou empresa afetada: dossiê com titularidade, termos colados e data, decisão da plataforma, contestação interna, notificação e estratégia judicial; nunca promete recuperar a conta."
---

# Conta/perfil — suspensão, bloqueio ou encerramento

**Guidance only:** o plugin **não recupera conta** e não garante resultado. Toda saída passa por `anti-alucinacao-digital-contencioso` → `validador-digital-contencioso` → `suprema-corte-digital-contencioso` (resultado visível ou "revisão não executada").

## 1. Entrada

- **Titularidade:** identificador da conta/perfil, e-mail ou telefone de cadastro (só o necessário), prova de que é do cliente (e-mails de cadastro, cobranças de anúncios, documentos da empresa ligados ao perfil).
- **Decisão da plataforma:** texto da comunicação, data, canal, cláusula invocada (se houver), identificador do protocolo.
- **Termos colados**, vigentes na data da decisão (`termos-da-plataforma-e-remedios`). Sem termos ⇒ pendência.
- **Histórico:** contestações internas feitas, respostas, prazos; dependência econômica da conta (empresa) com documentos.
- Inventário de prova (`origem-e-cronologia-da-prova-digital`).

## 2. Dossiê (saída parte 1)

| Bloco | Conteúdo | Prova (nº inventário) | Estado |
|---|---|---|---|
| Titularidade | quem é o titular e como se prova | | |
| Linha do tempo | criação, uso, decisão, contestação, resposta | | |
| Fundamento invocado pela plataforma | cláusula **colada** + data/versão | | `PENDENTE DE PROVA` se não colada |
| Contestação interna | canal, data, protocolo, resposta | | |
| Efeitos | acesso, conteúdo, dados, receita (só documentada) | | |
| Dados pessoais retidos | pedido de acesso/portabilidade ao controlador? | | ver `dados-pessoais-controversia` |

## 3. Vias — distinguir, não fundir

1. **Contestação interna** no canal previsto no termo colado ou na comunicação recebida. Registrar protocolo. O plugin redige texto de contestação para o cliente enviar, sem ameaça e sem promessa.
2. **Notificação extrajudicial** ao provedor (`notificacao-extrajudicial-digital`), quando a via interna falhar ou não existir.
3. **Via judicial** (`tutela-e-pedidos-delimitados-digital`): obrigação de fazer (restabelecimento ou acesso aos dados), tutela de urgência com requisitos do art. 300 e possibilidade de caução (`context/cpc-recortes.md` [CPC-297-300]), tutela específica e multa ([CPC-497-500], [CPC-536-537]); competência por `legitimidade-e-competencia-digital`.

Escolha da via e do momento = decisão do advogado, com o mapa acima.

## 4. Fundamentos utilizáveis (só texto capturado)

- Direitos do usuário: informação clara nos contratos e políticas de uso; exclusão definitiva de dados ao término da relação, ressalvada guarda obrigatória (`context/marco-civil-lei-12965.md` [MCI-7], incisos VI, X, XI).
- Comunicação ao usuário dos motivos da indisponibilização de **conteúdo**, com informações que permitam contraditório e ampla defesa em juízo, salvo previsão legal ou determinação judicial em contrário ([MCI-20-21], art. 20). Aplicação desse artigo à suspensão da **conta inteira** = análise do advogado.
- Contraditório e ampla defesa em processo **judicial ou administrativo** ([CF-5-LIV-LV]) — não estender automaticamente a procedimento interno de empresa privada.
- Deveres do Decreto 12.975/2026 (canal, comunicação de fundamento e meios de contestar após notificação): [DEC-16A], [DEC-16E] — **condicionados** (vigência não certificada; ADI 7981 em curso).
- Cláusula de foro/lei estrangeira nos termos: [MCI-8] — análise, não conclusão.
- **Contas denunciadas como não autênticas** (perfil falso que imita o cliente): o fragmento pós-embargos do Tema 987 menciona a regra para esse caso (`context/stf-tema-987-andamento-fragmento.md` [T987-ED-ITEM3], item 3.1) — usar só com o rótulo **"parcial, não regime definitivo"**; conclusão sobre responsabilidade da plataforma = `PENDENTE DE FONTE` (B1/B2).

**Sem precedente capturado** sobre restabelecimento de conta (L10): nenhum julgado é citado; nenhum "entendimento dominante" é afirmado.

## 5. Travas

Não prometer restabelecimento, prazo de resposta ou indenização. Não presumir motivo da suspensão. Não afirmar que a cláusula é abusiva ou nula sem análise. Termos Meta: nenhuma citação. Dados de terceiros nas capturas: minimizar.

## 6. Saída e estado

Dossiê + mapa de vias + minuta (contestação interna, ou encaminhamento para notificação/tutela) + **Controles executados** + estado: `MINUTA PARA REVISÃO HUMANA`, `PENDENTE DE PROVA` (titularidade, decisão ou termos ausentes), `PENDENTE DE FONTE` (pergunta sobre responsabilidade da plataforma) ou `BLOQUEADO` (pedido de promessa ou termo inventado).

## Fechamento comum (chamada direta ou por wrapper)

Se o pedido trouxer matéria de fronteira (consumo, fraude financeira, tipificação penal, LGPD de compliance, autoral, eleitoral, infância digital, cliente-plataforma), parar e devolver `FORA DO RECORTE` com o destino indicado pela `triagem-digital-contencioso`. Esta skill entrega `RASCUNHO vN` (itens `I1…In`); o estado final vem da revisão aplicada por agentes próprios (`templates/revisao-aplicada.md`) e a entrega aprovada só existe quando o gate do plugin grava `entrega-verificada/<sessão>/ENTREGA-vN.md`. Sem a cadeia: "revisão não executada", rascunho e rota para `/digital-contencioso-revisar`; nunca `MINUTA PARA REVISÃO HUMANA`. Estados do plugin: `MINUTA PARA REVISÃO HUMANA` · `PENDENTE DE PROVA` · `PENDENTE DE FONTE` · `BLOQUEADO` · `FORA DO RECORTE`.
