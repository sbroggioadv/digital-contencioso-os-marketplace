---
name: dados-pessoais-controversia
description: "Controvérsia titular × controlador fora de relação de consumo: requerimento ao controlador por qualquer direito do art. 18 da LGPD (prazo só para confirmação/acesso), petição de titular × denúncia à ANPD com prova da tentativa prévia, e estratégia contenciosa; não faz política, RIPD nem compliance."
---

# Dados pessoais — titular × controlador

**Guidance only:** fora de consumo. Compliance, política de privacidade, RIPD e incidente do próprio cliente ⇒ `FORA DO RECORTE` (`ia-combativa-adv-os`). Relação de consumo ⇒ `consumidor-adv-os`. Toda saída passa por `anti-alucinacao-digital-contencioso` → `validador-digital-contencioso` → `suprema-corte-digital-contencioso` (ver Fechamento).

## 1. Entrada

Quem é o titular (o cliente) e quem é o controlador (agente que decide o tratamento); qual relação existe entre eles (se for de consumo, rotear); o que o titular quer (confirmação, acesso, correção, eliminação, portabilidade, informação sobre compartilhamento, revisão de decisão automatizada); pedidos já feitos ao controlador (canal, data, protocolo, conteúdo) e resposta recebida; porte do controlador, se houver indício de pequeno porte; dano alegado e prova. **Data de avaliação:** a informada no caso; sem ela, perguntar (não presumir a de hoje).

## 2. Etapa 1 — requerimento ao controlador (minuta, qualquer direito do art. 18)

- **A minuta sai em rascunho para qualquer direito do art. 18**: confirmação, acesso, correção, anonimização/bloqueio/eliminação, portabilidade, eliminação de dados tratados com consentimento, informação sobre compartilhamento, informação sobre não consentir, revogação (`context/lgpd-lei-13709.md` [LGPD-18], incisos I–IX); revisão de decisões tomadas unicamente com base em tratamento automatizado ([LGPD-20]).
- Requerimento expresso do titular ou de representante legalmente constituído; se não puder adotar a providência de imediato, o controlador responde informando que não é agente de tratamento ou as razões que impedem; atendimento sem custo, **nos prazos e termos previstos em regulamento** ([LGPD-18], §§ 3º–5º).
- **Prazo só para confirmação ou acesso** ([LGPD-19]): formato simplificado imediatamente, ou declaração clara e completa em até 15 dias do requerimento; a ANPD pode dispor de forma diferenciada por setor (§ 4º).
- **Prazo dos demais direitos do art. 18** (correção, eliminação, portabilidade etc.): `PENDENTE DE FONTE`, **sem número**. Minuta em rascunho; prazo pendente. Nenhum desses requerimentos fica `BLOQUEADO` por relógio de 15 dias.
- **Agente de pequeno porte** (`context/anpd-res-cd-2-2022-pequeno-porte.md`): prazo em dobro **só** para a declaração completa do art. 19, II, **sem converter em número** ([ANPD-R2-14], inciso III); declaração simplificada do art. 19, I em até quinze dias ([ANPD-R2-15]); no atendimento das solicitações do art. 18 o dobro vem "nos termos de regulamentação específica" (inciso I) ⇒ prazo `PENDENTE DE FONTE`.
- **Canal com o encarregado:** o agente deve assegurar aos titulares meios céleres, eficazes e adequados de comunicação com o encarregado e de exercício de direitos (`context/anpd-res-cd-18-2024-encarregado.md` [ANPD-R18-10], inciso IV); o bloco **não fixa prazo de resposta**.
- Dados do exercício regular de direitos não podem ser usados em prejuízo do titular ([LGPD-21-22], art. 21).
- **Direitos não são absolutos** (ex.: obrigação legal de guarda) — orientação da ANPD ([ANPD-PETICAO], página de orientação, não norma).

Corpo: template §1; lei nomeada e IDs auditáveis mantidos. Só notas de produção/rascunho saem. Sem transformação pós-selo.

Minuta: identificação do titular (mínimo necessário), direito exercido por inciso, dados abrangidos, canal (inclusive o do encarregado), pedido de protocolo. Orientar o cliente a **guardar protocolo, data e resposta**.

## 3. Etapa 2 — ANPD: petição de titular × denúncia

| | Petição de titular | Denúncia |
|---|---|---|
| Quem | o próprio titular | qualquer pessoa, natural ou jurídica |
| Objeto | solicitação ao controlador **não solucionada** no prazo estabelecido em regulamentação | suposta infração à legislação de proteção de dados que não seja petição de titular |
| Requisito | comprovação de submissão prévia ao controlador e de não solução no prazo regulamentar; **autodeclaração** admitida quando não houver outro meio ([ANPD-R1-25], § 1º) | fato certo; § 3º: denúncia anônima é recebida e processada quando verificada a verossimilhança e se a identificação não for necessária ([ANPD-R1-25]) |
| Fonte | [LGPD-55J-V]; `context/anpd-res-cd-1-2021.md` [ANPD-R1-DEF] (art. 4º, III e V); `context/anpd-titular-de-dados.md` [ANPD-TITULAR] | [ANPD-R1-DEF], [ANPD-TITULAR] |

- **Competências separadas:** o **controlador** atende o requerimento do art. 18; a **ANPD** fiscaliza e aplica sanções por processo administrativo ([LGPD-55J-IV]) e aprecia petição de titular após reclamação ao controlador não solucionada no prazo regulamentar ([LGPD-55J-V]). Nenhum bloco capturado a torna competente para condenar a indenizar.
- **Admissibilidade** (competência da ANPD, identificação ou anonimato cabível, legitimidade, agente de tratamento identificado, fato certo): [ANPD-R1-25], caput, incisos I–V. A comprovação do pedido prévio é exigência **da petição de titular** (§ 1º); a denúncia **não herda** essa espera. Denúncia sem fato certo ou prova da infração ⇒ item `PENDENTE DE PROVA` (pedir fato e prova); **nunca** vira petição de titular por definição nem recebe o prazo ou a prematuridade da petição.
- **Petição prematura:** se, na data de avaliação, o prazo do art. 19, II ainda não correu, a petição de titular sobre a declaração completa é **prematura** (`BLOQUEADO` só para esse item); a confirmação simplificada já entregue é **outro pedido**; ver §6 sobre estado por item.
- **Anonimato:** a ANPD informa que **não aceita petição de titular anônima** — isso é **orientação** ([ANPD-PETICAO]), não o caput do art. 25. Para a denúncia vale o § 3º do art. 25 ([ANPD-R1-25]). A identificação do denunciante pode ser tratada como informação pessoal com acesso restrito (§ 4º).
- **Análise agregada:** os requerimentos são analisados de forma agregada, com providências padronizadas; a análise individualizada é excepcional e motivada ([ANPD-R1-26]). Sem promessa de decisão individual.
- **Prazo regulamentar do controlador: não afirmado.** A agenda regulatória listava a regulamentação dos arts. 9º, 18, 19 e 20 como iniciativa de Fase 1, e o índice capturado em 02/10/2026 não mostra resolução específica ([ANPD-AGENDA]; [ANPD-INDICE]) — indício, não prova de ausência (B7/L05). Se a contagem do prazo for decisiva ⇒ `PENDENTE DE FONTE`.

## 4. Etapa 3 — estratégia contenciosa

- Defesa em juízo, individual ou coletiva ([LGPD-21-22], art. 22).
- Reparação por dano patrimonial ou moral em violação à legislação de proteção de dados; solidariedade **condicionada**: o operador responde solidariamente **quando** descumprir a legislação de proteção de dados ou não seguir as instruções lícitas do controlador (art. 42, § 1º, I), e os controladores **diretamente envolvidos** no tratamento que causou o dano respondem solidariamente (§ 1º, II), em ambos os casos salvo as exclusões do art. 43; inversão do ônus a critério do juiz; excludentes do art. 43; tratamento irregular do art. 44 ([LGPD-42-45]).
- **Recusa ou atraso do controlador não presume dano nem defeito.** Minuta de pedido, inclusive de tutela, é advocacia revisável, não decisão nem promessa de resultado: exige fatos, `[ID]` e os controles visíveis. Tutela e pedidos delimitados por direito e por dado: `tutela-e-pedidos-delimitados-digital`.
- Relação de consumo ⇒ regras próprias (art. 45) ⇒ `consumidor-adv-os`.
- Registros de conexão/acesso (IP) seguem regime próprio do Marco Civil ⇒ `registros-exibicao-e-fornecimento`.

## 5. Travas e rejeições

Não produzir política, RIPD, mapeamento ou plano de adequação. **Rejeitar com motivo:** "30 ou 15 dias para todos os direitos" (o art. 19 vale só para confirmação/acesso); "o art. 25 veda petição anônima" (o caput lista requisitos; a vedação é orientação da ANPD); "peça à ANPD que condene, remova ou indenize" — nenhum bloco capturado atribui à ANPD condenar indenização individual; o pedido de indenização sai da ANPD (item `BLOQUEADO`, sem competência no corpus), e a reparação segue ao Judiciário (`context/cf-recortes.md` [CF-5-XXXV]) sem prometer resultado; "a via administrativa suspende ou dispensa a judicial" ⇒ `PENDENTE DE FONTE`. Prazo de **mérito** da ANPD, ou de lei geral do processo administrativo usada como prazo de mérito, não é afirmado (nenhuma está no `context/`) ⇒ `PENDENTE DE FONTE`. Não tratar página de orientação da ANPD como norma (selo 🟡). Não citar decisão individual da ANPD (não capturada). Sem pedido lícito restante (único pedido = premissa contradita, nenhum direito do art. 18 indicado) ⇒ estado final `BLOQUEADO` com o motivo; sem trecho substituto, "requer-se", modelo em branco nem direito do art. 18 não pedido. Premissa expressa que o texto capturado contradiz ("o art. 42 é competência judicial" — o caput trata do dever de reparar, [LGPD-42-45]) ⇒ **só esse item** `BLOQUEADO` com o motivo, nunca `PENDENTE DE FONTE`; via correta e recurso factual seguem. Minimizar dados do titular e de terceiros na minuta.

## 6. Saída e estado

Roteiro em 3 etapas + minuta do requerimento + quadro petição × denúncia aplicado ao caso + **Controles executados** + estado **por item** (um estado único não pode esconder um item bloqueado ou pendente): `MINUTA PARA REVISÃO HUMANA` · `PENDENTE DE PROVA` (sem prova do pedido prévio, da resposta ou do fato) · `PENDENTE DE FONTE` (prazo ou premissa normativa necessária; item dependente sem selo) · `BLOQUEADO` (item que a fonte não sustenta no momento, com o motivo) · `FORA DO RECORTE` (consumo; compliance).

## Fechamento comum (chamada direta ou por wrapper)

Se o pedido trouxer matéria de fronteira (consumo, fraude financeira, tipificação penal, LGPD de compliance, autoral, eleitoral, infância digital, cliente-plataforma), parar e devolver `FORA DO RECORTE` com o destino indicado pela `triagem-digital-contencioso`. Esta skill entrega `RASCUNHO vN` (itens `I1…In`); o estado final vem da revisão aplicada por agentes próprios (`templates/revisao-aplicada.md`) e a entrega aprovada só existe quando o gate do plugin grava `entrega-verificada/<sessão>/ENTREGA-vN.md`. Sem a cadeia: "revisão não executada", rascunho e rota para `/digital-contencioso-revisar`; nunca `MINUTA PARA REVISÃO HUMANA`.
