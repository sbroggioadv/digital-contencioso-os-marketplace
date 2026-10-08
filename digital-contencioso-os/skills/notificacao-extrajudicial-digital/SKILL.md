---
name: notificacao-extrajudicial-digital
description: "Notificação extrajudicial para qualquer polo: redige a notificação enviada (à plataforma, provedor, controlador ou autor) ou a resposta à notificação recebida (plataforma, controlador ou autor do conteúdo), com identificação específica do objeto, prova e pedido delimitado, sem ameaça nem promessa; requisitos do Decreto 12.975/2026 condicionados à ADI 7981. Frustrada a via, entrega o BLOCO MATERIAL à skill de fase."
---

# Notificação extrajudicial — caso digital

**Guidance only:** produz a própria notificação (ou a resposta), ato extrajudicial, para revisão humana; não redige peça processual (frustrada a via, §6). **Enviar não é tarefa do plugin** e nenhum envio é dado como feito sem comprovante. Fonte única: `context/` (ver `context/INDICE.md`). Ao final, a minuta vai a `revisao-final-digital`.

## Guard mínimo

Norma, tema e prazo só com `[ID]` (sem `[ID]` ⇒ `PENDENTE DE FONTE` na linha) · IP identifica terminal, não pessoa · hash declarado ≠ verificado · sem promessa de resultado · um caso = um cliente = um polo; polo ausente ou contraditório ⇒ só as perguntas, mesmo se mandarem não perguntar · ao final, acionar `revisao-final-digital`.

## 1. Entrada

Linha POLO e seção "Andamento" do `00-perfil-do-caso.md` (sem polo ⇒ só as perguntas). Destinatário (plataforma, provedor de aplicações, controlador, autor identificado) e canal disponível (canal de denúncia da plataforma, e-mail do encarregado, endereço do representante); objeto (conteúdo por URL, conta por identificador, dado pessoal por categoria); fatos e prova (inventário e matriz); o que se pede; prazo de resposta **escolhido pelo advogado** (não há prazo legal capturado para isso); quem assina.

## 2. Tipos e requisitos com fonte

| Tipo | Requisitos que a minuta deve cumprir | Fonte |
|---|---|---|
| Conteúdo íntimo (nudez/atos sexuais privados) | identificação específica do material e verificação da legitimidade de quem pede, **sob pena de nulidade** | `context/marco-civil-lei-12965.md` [MCI-20-21], art. 21, parágrafo único |
| Conteúdo criminoso ou ilícito pelo canal do provedor | elementos que permitam identificar a possível conduta criminosa ou ilícita; informações que identifiquem especificamente o conteúdo; identificação do notificante e, quando couber, fundamento da legitimidade, **sob pena de nulidade**; após o recebimento, o provedor deve confirmar e comunicar a decisão, o fundamento e os meios de contestar | `context/decreto-8771-compilado.md` [DEC-16D], [DEC-16E] — **incluídos pelo Decreto 12.975/2026: vigência não certificada; ADI 7981 em curso** ([ADI7981-ANDAMENTO]) |
| Honra (calúnia, difamação, injúria) | item 3.2 do Tema 987: aplica-se o art. 19 do MCI, **sem prejuízo da possibilidade de remoção por notificação extrajudicial**; o art. 16-G do decreto exclui os crimes contra a honra do dever de indisponibilização em resposta a notificação | [T987ED-ITEM32], fonte parcial — embargos julgados em 17/06/2026, acórdão não publicado; [DEC-16G] (condicionado). Compatibilidade entre os dois = **pendência jurídica** |
| Replicação de fato ofensivo já reconhecido por decisão judicial | identificar a decisão e cada publicação de conteúdo idêntico; o item 3.3 prevê remoção pelos provedores de redes sociais a partir de notificação judicial ou extrajudicial | [T987ED-ITEM33], fonte parcial — embargos julgados em 17/06/2026, acórdão não publicado |
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
10. Local, data e assinatura (quem assina, conforme o § 1).

## 3A. Resposta à notificação recebida (polo PASSIVO)

Notificado (N5 plataforma, N3 controlador, N7 autor do conteúdo): resposta para revisão humana com (1) identificação da notificação recebida (data, canal, notificante); (2) conferência dos requisitos do tipo (identificação específica do conteúdo, legitimidade de quem pede, elementos da conduta), apontando o que falta sem negar o que está provado; (3) posição sobre cada pedido — atendido, recusado com o motivo e o bloco, ou pendente de informação; (4) para o autor do conteúdo, a defesa de mérito do BLOCO MATERIAL de `conteudo-reputacao-remocao`; para o controlador, `dados-pessoais-controversia` §3; para registros, fornecimento só por ordem judicial ([MCI-10]); (5) canal para contato; (6) local, data e assinatura. Requisitos do decreto seguem condicionados à ADI 7981. Cada norma citada na resposta leva o `[ID]` na mesma linha, como na §3. Responder não é confessar; recusar não é afirmar ausência de responsabilidade (regime em `regime-plataformas-e-conteudo`; sem ele, `PENDENTE DE PROVA` e acionar a frente).

## 4. Travas

- **Sem ameaça e sem promessa** ("será condenada", "terá de indenizar", "garantimos a remoção").
- Não afirmar que a plataforma é responsável por não remover: o regime é de `regime-plataformas-e-conteudo`; frente não rodada ⇒ `PENDENTE DE PROVA` e acionar a frente (a fonte está capturada: `PENDENTE DE FONTE` só se o `[ID]` faltar no `context/INDICE.md`).
- Tema 987/533 em qualquer linha (abertura, rota, resumo, exclusão) só com `[ID]` + "fonte parcial — embargos julgados em 17/06/2026, acórdão não publicado" (no 533, o rótulo de [T533-SITUACAO]).
- Campo ausente ⇒ `[PENDENTE DE PROVA: o quê]`; data desconhecida ⇒ `não informada`; nunca "pendente" sem complemento.
- Não calcular vigência do Decreto 12.975 nem prazo de 60 dias do Tema 987.
- Termos Meta: nenhuma citação.
- Dados de terceiros: só o necessário.
- Não declarar a notificação enviada sem comprovante (protocolo, e-mail enviado, aviso de recebimento).

## 5. Saída e estado

Polo + minuta (notificação ou resposta) + checklist de requisitos por tipo (cumprido/pendente) + estado por item: `MINUTA PARA REVISÃO HUMANA` · `PENDENTE DE PROVA` (conteúdo sem URL ou fato sem prova) · `PENDENTE DE FONTE` (validade do decreto; ponto sem `[ID]` no `context/INDICE.md`) · `BLOQUEADO` (ameaça, promessa ou imputação de autoria pedidas) · `FORA DO RECORTE` (com destino). Só um dos 5 por item, sem texto livre; envio, resposta e via não praticada vão a Pendências sem estado. Regime da plataforma não analisado ⇒ `PENDENTE DE PROVA`.

## 6. Via frustrada — BLOCO MATERIAL para a fase seguinte

Sem resposta, recusa ou atendimento parcial (só com documento), a notificação não vira peça aqui; entregar o BLOCO:

1. POLO — linha do `00-perfil-do-caso.md`.
2. Fatos — notificação, comprovante de envio, resposta ou silêncio, com a origem de cada item.
3. Fundamentos — os `[ID]` usados na notificação, com as ressalvas (ADI 7981; fonte parcial do Tema 987).
4. Pedidos — os mesmos pedidos delimitados, por URL, identificador, período ou direito.
5. Pendências — por item, com estado.

Destino: ação ⇒ `peticao-inicial-digital`; urgência ⇒ `tutela-e-pedidos-delimitados-digital`; ANPD ⇒ `via-administrativa-anpd-titular`; provedor de conexão na Anatel ⇒ `via-administrativa-anatel`; representação ao Ministério Público ⇒ `ministerio-publico-inquerito-civil-tac`; nome de domínio `.br` ⇒ `saci-adm-dominio-br`. Ao final, acionar `revisao-final-digital`.
