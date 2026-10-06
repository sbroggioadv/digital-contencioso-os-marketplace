---
name: notificacao-extrajudicial-digital
description: "Redige notificação extrajudicial da pessoa ou empresa afetada à plataforma, provedor, controlador ou autor, com identificação específica do conteúdo ou da conta, prova e pedido delimitado, sem ameaça nem promessa; requisitos do Decreto 12.975/2026 sempre sinalizados como condicionados à ADI 7981."
---

# Notificação extrajudicial — caso digital

**Guidance only:** a minuta é para revisão humana; **enviar não é tarefa do plugin** e nenhum envio é dado como feito sem comprovante. Toda saída passa por `anti-alucinacao-digital-contencioso` → `validador-digital-contencioso` → `suprema-corte-digital-contencioso` (resultado visível ou "revisão não executada").

## 1. Entrada

Destinatário (plataforma, provedor de aplicações, controlador, autor identificado) e canal disponível (canal de denúncia da plataforma, e-mail do encarregado, endereço do representante); objeto (conteúdo por URL, conta por identificador, dado pessoal por categoria); fatos e prova (inventário e matriz); o que se pede; prazo de resposta **escolhido pelo advogado** (não há prazo legal capturado para isso); quem assina.

## 2. Tipos e requisitos com fonte

| Tipo | Requisitos que a minuta deve cumprir | Fonte |
|---|---|---|
| Conteúdo íntimo (nudez/atos sexuais privados) | identificação específica do material e verificação da legitimidade de quem pede, **sob pena de nulidade** | `context/marco-civil-lei-12965.md` [MCI-20-21], art. 21, parágrafo único |
| Conteúdo criminoso ou ilícito pelo canal do provedor | elementos que permitam identificar a possível conduta criminosa ou ilícita; informações que identifiquem especificamente o conteúdo; identificação do notificante e, quando couber, fundamento da legitimidade, **sob pena de nulidade**; após o recebimento, o provedor deve confirmar e comunicar a decisão, o fundamento e os meios de contestar | `context/decreto-8771-compilado.md` [DEC-16D], [DEC-16E] — **incluídos pelo Decreto 12.975/2026: vigência não certificada; ADI 7981 em curso** ([ADI7981-ANDAMENTO]) |
| Honra (calúnia, difamação, injúria) | fragmento primário do Tema 987, item 3.2: aplica-se o art. 19 do MCI, **sem prejuízo da possibilidade de remoção por notificação extrajudicial** — parcial, não regime definitivo; o art. 16-G do decreto exclui os crimes contra a honra do dever de indisponibilização em resposta a notificação | `context/stf-tema-987-andamento-fragmento.md` [T987-ED-ITEM32]; [DEC-16G] (condicionado). Compatibilidade entre os dois = **pendência jurídica** (B03) |
| Conta/perfil suspenso | identificação da conta, decisão recebida, cláusula colada, pedido de reanálise e de informação do fundamento | `conta-perfil-suspensao`; [MCI-7], [MCI-20-21] |
| Titular × controlador | direito exercido por inciso e dados abrangidos | `dados-pessoais-controversia`; [LGPD-18] |

Identificar o objeto conforme o tipo: conteúdo por localizador inequívoco (por exemplo, URL), conta/perfil por identificador e dados pessoais pelo direito exercido e pela categoria abrangida. O § 1º do art. 19 exige identificação clara e específica do conteúdo infringente na ordem judicial ([MCI-18-19]) — a notificação fraca compromete o passo judicial seguinte.

## 3. Estrutura da minuta

1. Notificante (cliente) e representante — dados mínimos.
2. Destinatário e canal.
3. Objeto identificado (URL/identificador, data de captura, item do inventário).
4. Fatos, em ordem cronológica, cada um ligado à prova; autoria incerta descrita como "publicado pelo perfil X", nunca como pessoa.
5. Fundamento com bloco do `context/` e, se usar o decreto, a ressalva expressa da ADI 7981.
6. Pedido delimitado (indisponibilizar URL; reanalisar suspensão; atender direito do titular; preservar registros do período X a Y).
7. Pedido de confirmação de recebimento e de resposta fundamentada.
8. Prazo de resposta definido pelo advogado (sem prazo legal presumido).
9. Reserva de direitos em termos neutros.

## 4. Travas

- **Sem ameaça e sem promessa** ("será condenada", "terá de indenizar", "garantimos a remoção").
- Não afirmar que a plataforma é responsável por não remover (B1/B2 ⇒ `PENDENTE DE FONTE`).
- Não calcular vigência do Decreto 12.975 nem prazo de 60 dias do Tema 987 (B3).
- Termos Meta: nenhuma citação.
- Dados de terceiros: só o necessário.
- Não declarar a notificação enviada sem comprovante (protocolo, e-mail enviado, aviso de recebimento).

## 5. Saída e estado

Minuta + checklist de requisitos por tipo (cumprido/pendente) + **Controles executados** + estado: `MINUTA PARA REVISÃO HUMANA` · `PENDENTE DE PROVA` (conteúdo sem URL ou fato sem prova) · `PENDENTE DE FONTE` (pedido depende do regime da plataforma ou da validade do decreto) · `BLOQUEADO` (ameaça, promessa ou imputação de autoria pedidas).

## Fechamento comum (chamada direta ou por wrapper)

Se o pedido trouxer matéria de fronteira (consumo, fraude financeira, tipificação penal, LGPD de compliance, autoral, eleitoral, infância digital, cliente-plataforma), parar e devolver `FORA DO RECORTE` com o destino indicado pela `triagem-digital-contencioso`. Esta skill entrega `RASCUNHO vN` (itens `I1…In`); o estado final vem da revisão aplicada por agentes próprios (`templates/revisao-aplicada.md`) e a entrega aprovada só existe quando o gate do plugin grava `entrega-verificada/<sessão>/ENTREGA-vN.md`. Sem a cadeia: "revisão não executada", rascunho e rota para `/digital-contencioso-revisar`; nunca `MINUTA PARA REVISÃO HUMANA`. Estados do plugin: `MINUTA PARA REVISÃO HUMANA` · `PENDENTE DE PROVA` · `PENDENTE DE FONTE` · `BLOQUEADO` · `FORA DO RECORTE`.
