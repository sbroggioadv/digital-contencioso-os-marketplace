---
name: dados-pessoais-controversia
description: "Conflito concreto sobre dados pessoais entre titular e controlador ou operador, para qualquer polo: requerimento de direito do art. 18 da LGPD (prazo só para confirmação/acesso), resposta do controlador, encaminhamento do operador e BLOCO MATERIAL da reparação ou da defesa; ANPD vai às skills via-administrativa-anpd-*; adequação, políticas, RIPD, encarregado, contratos e incidente sem conflito vão às lgpd-*."
---

# Dados pessoais — titular, controlador e operador

**Guidance only:** esta frente cobre o **conflito concreto** com o titular (requerimento, resposta, reparação ou defesa) e devolve o **BLOCO MATERIAL** (§6); não redige peça processual (a peça vai à skill de fase, §4). Sem conflito instaurado (preventivo) ⇒ `lgpd-*` (§7). Procedimento na ANPD ([NAT-LGPD-55A]) ⇒ `via-administrativa-anpd-titular` (petição de titular, denúncia, terceiro interessado) ou `via-administrativa-anpd-regulado` (fiscalizado, investigado, autuado, sancionado). Polo confirmado antes (`triagem-digital-contencioso`); titular é pessoa natural ([LGPD-5]), PJ não vira titular. Fonte única: `context/` (ver `context/INDICE.md`).

## Guard mínimo

Norma, tema e prazo só com `[ID]` (sem `[ID]` ⇒ `PENDENTE DE FONTE` na linha) · IP identifica terminal, não pessoa · hash declarado ≠ verificado · sem promessa de resultado · um caso = um cliente = um polo · ao final, acionar `revisao-final-digital`.

**Saída da frente:** portão antes: polo ausente ou contraditório ⇒ só as perguntas, mesmo se mandarem não perguntar; com polo, sempre o BLOCO MATERIAL, mesmo com dado faltante (vira pendência; nunca minuta estrutural nem recusa) · estado só um dos 5; envio, urgência e posição vão a Pendências sem estado · dado ausente ⇒ `[CAMPO — PENDENTE DE PROVA]`, data ⇒ `[DATA — PENDENTE DE PROVA]` · Tema 987/533 em qualquer linha só com `[ID]` + rótulo de fonte parcial; a abertura não conclui o regime · frente não rodada não é `PENDENTE DE FONTE`.

## 1. Entrada

Polo (titular `ATIVO`; controlador ou operador `PASSIVO`/réu); titular e controlador (quem decide o tratamento); relação entre eles (consumo ⇒ §4); direito pedido (lista do §2); pedidos já feitos ao controlador (canal, data, protocolo, conteúdo) e resposta; indício de pequeno porte; dano alegado e prova. **Data de avaliação:** a do caso; sem ela, perguntar (nunca presumir a de hoje). Ler a seção "Andamento" do `00-perfil-do-caso.md`.

## 2. Titular (ATIVO) — requerimento ao controlador (qualquer direito do art. 18)

- **Minuta em rascunho para qualquer direito do art. 18**: confirmação, acesso, correção, anonimização/bloqueio/eliminação, portabilidade, eliminação de dados tratados com consentimento, informação sobre compartilhamento, informação sobre não consentir, revogação (`context/lgpd-lei-13709.md` [LGPD-18], incisos I–IX); revisão de decisões tomadas unicamente com base em tratamento automatizado ([LGPD-20]).
- Requerimento expresso do titular ou de representante legalmente constituído; sem providência imediata, o controlador informa que não é agente de tratamento ou as razões que impedem; atendimento sem custo, **nos prazos e termos previstos em regulamento** ([LGPD-18], §§ 3º–5º).
- **Prazo só para confirmação ou acesso** ([LGPD-19]): formato simplificado imediatamente, ou declaração clara e completa em até 15 dias do requerimento; a ANPD pode dispor de forma diferenciada por setor (§ 4º).
- **Prazo dos demais direitos do art. 18**: `PENDENTE DE FONTE`, **sem número**; a minuta segue e nenhum fica `BLOQUEADO` por relógio de 15 dias.
- **Agente de pequeno porte:** prazo em dobro **só** para a declaração completa do art. 19, II, **sem converter em número** ([ANPD-R2-14], inciso III); declaração simplificada do art. 19, I em até quinze dias ([ANPD-R2-15]); no atendimento das solicitações do art. 18 o dobro vem "nos termos de regulamentação específica" (inciso I) ⇒ prazo `PENDENTE DE FONTE`.
- **Canal com o encarregado:** meios céleres, eficazes e adequados de comunicação e de exercício de direitos ([ANPD-R18-10], inciso IV), **sem prazo de resposta fixado**.
- Dados do exercício regular de direitos não se usam em prejuízo do titular ([LGPD-21-22], art. 21).
- **Direitos não são absolutos** (ex.: obrigação legal de guarda) — orientação da ANPD ([ANPD-PETICAO], não norma).

Minuta (ato extrajudicial; lei nomeada e `[ID]` em cada fundamento): identificação do titular (mínimo necessário), direito exercido por inciso, dados abrangidos, canal (inclusive o do encarregado), pedido de protocolo; orientar o cliente a **guardar protocolo, data e resposta**.

## 3. Controlador ou operador (PASSIVO) — resposta ao titular

- **Controlador** responde o requerimento: identificar o direito pedido e, sem atendimento imediato, responder como no §2: não é agente de tratamento (indicando, se possível, quem é) ou razões de fato ou de direito que impedem ([LGPD-18], §§ 3º–5º). Prazos como no §2 ([LGPD-19]).
- **Operador:** trata segundo as instruções do controlador e mantém registro ([LGPD-5], [LGPD-37-39]); recebido o pedido ⇒ minuta de encaminhamento ao controlador e resposta ao titular indicando-o; não decide o mérito por ele.
- Limites: direitos não absolutos (§2); recusa sem razão documentada não se sustenta. Responder não é confessar dano nem infração.

**Prazo na resposta:** recebimento pelo canal não é a data do requerimento; sem prova da data, não contar prazo. Porte e dobra só com prova; sem ela, item próprio `PENDENTE DE PROVA`, sem título que afirme enquadramento.

Minuta de resposta (ato extrajudicial): identificação do requerimento (data, canal, protocolo), direito pedido, providência adotada ou razão que impede, dados abrangidos, canal do encarregado, data da resposta. Sem promessa de arquivamento de reclamação futura.

## 4. Via judicial — conteúdo material do BLOCO (titular autor ou controlador/operador réu)

- Defesa em juízo, individual ou coletiva ([LGPD-21-22], art. 22).
- Reparação por dano patrimonial ou moral em violação à legislação de proteção de dados; solidariedade **condicionada**: respondem solidariamente o operador quando descumprir as obrigações da legislação de proteção de dados ou não tiver seguido as instruções lícitas do controlador, equiparando-se ao controlador (art. 42, § 1º, I) e os controladores **diretamente envolvidos** no tratamento que causou o dano (§ 1º, II), salvo, nos dois casos, as exclusões do art. 43; inversão do ônus a critério do juiz; tratamento irregular do art. 44 ([LGPD-42-45]).
- **Recusa ou atraso do controlador não presume dano nem defeito.** Pedido (inclusive tutela) é advocacia revisável: exige fatos e `[ID]`, sem promessa de resultado.
- **Controlador ou operador réu (PASSIVO/J):** defesa pelas excludentes do art. 43 (não realizou o tratamento; tratamento sem violação; culpa exclusiva do titular ou de terceiro) e contra o enquadramento de irregularidade do art. 44 ([LGPD-42-45]); solidariedade só nas hipóteses do bullet acima.
- **Relação de consumo:** responsabilidade pela legislação pertinente ([LGPD-42-45], art. 45); no item 3 do BLOCO, consumidor e fornecedor ([CDC-2], [CDC-3]) e fato do serviço ([CDC-14]).
- Registros de conexão/acesso (IP): regime próprio do Marco Civil ⇒ `registros-exibicao-e-fornecimento`.
- **Peça (a frente não redige):** ajuizar ⇒ `peticao-inicial-digital`; tutela e pedidos por direito e por dado ⇒ `tutela-e-pedidos-delimitados-digital`; réu ⇒ `contestacao-e-defesa-digital`, que fixa forma, prazo e rito; recurso e cumprimento ⇒ skill de fase da decisão. Ação contra ato da ANPD ⇒ `controle-judicial-ato-administrativo`.

## 5. Travas e rejeições

**Rejeitar com motivo:** "30 ou 15 dias para todos os direitos" (o art. 19 vale só para confirmação/acesso); "o art. 25 veda petição anônima" (petição de titular anônima não é aceita — orientação, [ANPD-PETICAO]; denúncia anônima segue o § 3º do art. 25 da Res. CD/ANPD 1/2021, [ANPD-R1-25]); "peça à ANPD que condene, remova ou indenize" — nenhum bloco atribui à ANPD indenização individual: esse item sai `BLOQUEADO` (sem competência no corpus) e a reparação segue ao Judiciário ([CF-5-XXXV]) sem prometer resultado; "a via administrativa suspende ou dispensa a judicial" ⇒ `PENDENTE DE FONTE`. Prazo do procedimento na ANPD não é afirmado aqui ⇒ `via-administrativa-anpd-titular` ou `via-administrativa-anpd-regulado`. Página de orientação da ANPD não é norma (selo 🟡); decisão individual da ANPD não se cita (não capturada). Sem pedido lícito restante (único pedido = premissa contradita, nenhum direito do art. 18 indicado) ⇒ estado final `BLOQUEADO` com o motivo; sem trecho substituto, "requer-se", modelo em branco nem direito do art. 18 não pedido. Premissa expressa que o texto capturado contradiz ("o art. 42 é competência judicial" — o caput trata do dever de reparar, [LGPD-42-45]) ⇒ **só esse item** `BLOQUEADO` com o motivo, nunca `PENDENTE DE FONTE`; via correta e recurso factual seguem. Minimizar dados do titular e de terceiros na minuta.

## 6. BLOCO MATERIAL (saída) e estado

1. POLO — linha do `00-perfil-do-caso.md` (titular `ATIVO`; controlador ou operador `PASSIVO`).
2. Fatos — requerimento, resposta ou silêncio, tratamento e dano, cada um com o item de prova e sua origem (data, canal, protocolo).
3. Fundamentos — direito por inciso ([LGPD-18], [LGPD-20]), prazo só no literal ([LGPD-19]), reparação, solidariedade e excludentes ([LGPD-42-45]); relação de consumo com o CDC (§4).
4. Pedidos — delimitados por direito exercido e por dado ou categoria abrangida; reparação só com dano alegado e prova.
5. Pendências — por item, com estado (a rota ANPD ou `lgpd-*`, se houver, aparece aqui).

Estado **por item**: `MINUTA PARA REVISÃO HUMANA` · `PENDENTE DE PROVA` (requerimento, resposta, porte ou fato sem prova) · `PENDENTE DE FONTE` (prazo ou premissa normativa necessária; dependente sem selo) · `BLOQUEADO` (fonte não sustenta, com motivo) · `FORA DO RECORTE` (matéria fora do plugin, com o destino da triagem), por matéria, nunca por polo.

## 7. Sem conflito instaurado ⇒ LGPD consultiva (`lgpd-*`)

Programa de adequação e diagnóstico ⇒ `lgpd-programa-de-adequacao` · política de privacidade, avisos, termos de uso e cookies ⇒ `lgpd-politicas-e-avisos` · relatório de impacto (RIPD) ⇒ `lgpd-ripd` · encarregado e governança ⇒ `lgpd-encarregado-e-governanca` · contrato controlador–operador e transferência internacional ⇒ `lgpd-contratos-de-tratamento` · incidente de segurança até a comunicação ⇒ `lgpd-incidente-de-seguranca` (instaurada fiscalização ou processo ⇒ `via-administrativa-anpd-regulado`).
