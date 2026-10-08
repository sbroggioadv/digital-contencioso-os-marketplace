---
name: conta-perfil-suspensao
description: "Conta ou perfil suspenso, bloqueado ou encerrado no caso digital, para o usuário afetado (pessoa ou empresa) ou para a plataforma: titularidade, termos colados e data, decisão de moderação, revisão interna, dados retidos, conta não autêntica e relação de consumo com o CDC; devolve BLOCO MATERIAL à skill de fase e nunca promete restabelecimento."
---

# Conta/perfil — suspensão, bloqueio ou encerramento (frente)

**Guidance only:** o plugin **não recupera conta** e não garante resultado; esta frente organiza fatos, prova e fundamentos da conta e não redige peça processual. Fonte única: `context/` (ver `context/INDICE.md`). A peça é montada pela skill de fase indicada no § 5, que recebe o BLOCO MATERIAL daqui. Ao final, acionar `revisao-final-digital`.

**Guard mínimo:** norma, tema e prazo só com `[ID]` (sem `[ID]` ⇒ `PENDENTE DE FONTE` na linha) · IP identifica terminal, não pessoa · hash declarado ≠ verificado · sem promessa de resultado · um caso = um cliente = um polo; sem polo, só as perguntas · ao final, acionar `revisao-final-digital`.

**Saída da frente:** portão antes: polo ausente ou contraditório ⇒ só as perguntas, mesmo se mandarem não perguntar; com polo, sempre o BLOCO MATERIAL, mesmo com dado faltante (vira pendência; nunca minuta estrutural nem recusa) · estado só um dos 5; envio, urgência e posição vão a Pendências sem estado · dado ausente ⇒ `[CAMPO — PENDENTE DE PROVA]`, data ⇒ `[DATA — PENDENTE DE PROVA]` · Tema 987/533 em qualquer linha só com `[ID]` + rótulo de fonte parcial; a abertura não conclui o regime · frente não rodada não é `PENDENTE DE FONTE`.

## 1. Entrada

- **Titularidade:** identificador da conta ou perfil, e-mail ou telefone de cadastro (só o necessário) e prova de que é do cliente (e-mails de cadastro, cobranças de anúncios, documentos da empresa ligados ao perfil).
- **Decisão da plataforma:** texto da comunicação, data, canal, cláusula invocada (se houver), protocolo.
- **Termos colados**, vigentes na data da decisão (`termos-da-plataforma-e-remedios`). Sem termos ⇒ `PENDENTE DE PROVA`.
- **Histórico:** pedidos de revisão interna feitos, respostas e prazos; dependência econômica da conta (empresa), com documentos; se o cliente paga pelo serviço (assinatura, anúncios) — dado da relação de consumo (§ 3.1).
- Inventário de prova (`origem-e-cronologia-da-prova-digital`); dano só com documento (`matriz-fato-prova-dano-digital`).

## 2. Quadro de fatos e prova

| Bloco | Conteúdo | Prova (nº inventário) | Estado |
|---|---|---|---|
| Titularidade | quem é o titular e como se prova | | |
| Linha do tempo | criação, uso, decisão, revisão interna, resposta | | |
| Fundamento invocado pela plataforma | cláusula **colada** + data/versão | | `PENDENTE DE PROVA` se não colada |
| Revisão interna | canal, data, protocolo, resposta | | |
| Efeitos | acesso, conteúdo, dados, receita (só documentada) | | |
| Dados pessoais retidos | pedido de acesso ou portabilidade ao controlador? (rota: `dados-pessoais-controversia`) | | |

## 3. Fundamentos utilizáveis (só texto capturado)

- Direitos do usuário: informação clara nos contratos e políticas de uso; exclusão definitiva de dados ao término da relação, ressalvada guarda obrigatória (`context/marco-civil-lei-12965.md` [MCI-7], incisos VI, X, XI).
- Comunicação ao usuário dos motivos da indisponibilização de **conteúdo**, com informações que permitam contraditório e ampla defesa em juízo, salvo previsão legal ou determinação judicial em contrário ([MCI-20-21], art. 20). Aplicação à suspensão da **conta inteira** = análise do advogado.
- Contraditório e ampla defesa em processo **judicial ou administrativo** ([CF-5-LIV-LV]) — não estender automaticamente a procedimento interno de empresa privada.
- Deveres do Decreto 12.975/2026 (canal, comunicação de fundamento e meios de contestar após notificação): [DEC-16A], [DEC-16E] — **condicionados** (vigência não certificada; ADI 7981 em curso, [ADI7981-ANDAMENTO]).
- Cláusula de foro ou lei estrangeira nos termos: [MCI-8] — análise, não conclusão; o foro vai a `legitimidade-e-competencia-digital`.
- **Conta denunciada como não autêntica** (perfil falso que imita o cliente): item 3.1 do Tema 987 ([T987ED-ITEM3], fonte parcial — embargos julgados em 17/06/2026, acórdão não publicado). O enquadramento item a item (notificação, diligência, modulação — [T987ED-ITEM13], fonte parcial — embargos julgados em 17/06/2026, acórdão não publicado) é de `regime-plataformas-e-conteudo`; o Tema 533 segue sem resultado proclamado ([T533-SITUACAO], [T533ED-DEC-2409], fonte parcial — mérito publicado; embargos suspensos para posterior proclamação, sem resultado proclamado) e não fundamenta nada.
- Perdas e danos fora de consumo: ato ilícito e dever de indenizar ([CC-186-187], [CC-927]), só com dano documentado.

**Sem precedente capturado** sobre restabelecimento de conta: nenhum julgado é citado; nenhum "entendimento dominante" é afirmado.

### 3.1 Relação de consumo (pessoa natural ou empresa × plataforma)

Quando o cliente usa o serviço como destinatário final ([CDC-2]) e a plataforma o fornece no mercado de consumo mediante remuneração ([CDC-3], § 2º), há relação de consumo e a peça segue completa neste plugin. Remuneração e destinação final são fatos a provar (assinatura, anúncios pagos, uso da conta pela empresa); serviço sem pagamento direto ou conta usada como insumo da atividade = questão aberta ao advogado, sem conclusão. Fundamentos candidatos, conforme o fato:

- Termos como contrato de adesão; cláusula que limita direito com destaque; cláusula resolutória só alternativa, com escolha do consumidor ([CDC-54], §§ 2º e 4º).
- Cláusulas nulas: exoneração de responsabilidade, obrigação iníqua ou desvantagem exagerada ([CDC-51-CAPUT-I], [CDC-51-IV], [CDC-51-P1]) — nulidade é tese do advogado, não conclusão da skill.
- Informação adequada e proteção contra prática abusiva ([CDC-6-III-IV]); vício do serviço ([CDC-20]); fato do serviço, com as excludentes que a plataforma terá de provar ([CDC-14], § 3º); reparação de danos ([CDC-6-VI]).
- Tutela específica da obrigação de fazer ([CDC-84]); inversão do ônus da prova a critério do juiz ([CDC-6-VIII]); foro do domicílio do autor na ação de responsabilidade civil do fornecedor ([CDC-101]) — os dois últimos são aplicados pela skill de fase.

## 4. Polo passivo — plataforma (N5) que responde

- **Revisão interna ou notificação recebida:** resposta delimitada com a cláusula **colada pela própria plataforma**, vigente na data da decisão, e a prova da decisão de moderação (data, motivo comunicado, canal de revisão oferecido). Sem termos ou sem registro da decisão ⇒ `PENDENTE DE PROVA`. Deveres de informação e de motivação ([MCI-7], [MCI-20-21]) são pontos a demonstrar, não absolvição.
- **Ação de restabelecimento:** pontos materiais da defesa — titularidade e legitimidade, cláusula de foro ([MCI-8]), fundamento contratual provado, motivação comunicada, ausência de dano documentado; em consumo, as excludentes de [CDC-14], § 3º, só com prova. Preliminares, prazos, revelia e recursos ficam com a skill de fase.
- Responsabilidade da plataforma por regime de conteúdo = `regime-plataformas-e-conteudo`: não afirmar que a plataforma "não responde". Usuário e plataforma nunca no mesmo caso.

## 5. Encaminhamento por polo e fase (quem redige)

| Momento | Afetado (ATIVO) | Plataforma (PASSIVO) |
|---|---|---|
| Antes do processo | revisão interna (item 4 do bloco); `notificacao-extrajudicial-digital` | resposta por `notificacao-extrajudicial-digital` |
| Prova em risco | `preservacao-e-encaminhamento-probatorio`; autônoma: `producao-antecipada-de-prova-digital` | manifestação na mesma skill |
| Urgência | `tutela-e-pedidos-delimitados-digital` | resposta à tutela, mesma skill |
| Ajuizar / responder | `peticao-inicial-digital` (foro: `legitimidade-e-competencia-digital`) | `contestacao-e-defesa-digital` |
| Instrução | `replica-saneamento-e-provas-digital` | idem |
| Decisão | `agravo-e-embargos-de-declaracao-digital` · `apelacao-e-contrarrazoes-digital` · Juizado: `recurso-inominado-digital` · `recursos-excepcionais-digital` | idem |
| Ordem e valores | restabelecimento: `cumprimento-de-ordem-digital`; indenização ou multa: `cumprimento-pagar-quantia-digital` | idem, como executado ou destinatário |

Dados retidos ⇒ `dados-pessoais-controversia`; frustrado o pedido ao controlador, ANPD por `via-administrativa-anpd-titular`. Suspensões em massa com dano coletivo ⇒ representação por `ministerio-publico-inquerito-civil-tac`. Escolha da via e do momento = decisão do advogado.

## 6. Travas

Não prometer restabelecimento, prazo de resposta ou indenização. Não presumir motivo da suspensão. Não afirmar que a cláusula é abusiva ou nula sem análise. Termos Meta/Instagram/WhatsApp: nenhuma citação (não capturados). Dados de terceiros nas capturas: minimizar.

## 7. Saída — BLOCO MATERIAL (não redige peça)

1. POLO — linha `POLO DO CLIENTE · NATUREZA <N1…N7> · POSIÇÃO <ATIVO|PASSIVO> · FASE não se aplica`, com a fase do processo ou procedimento anotada em "Andamento" do `00-perfil-do-caso.md`.
2. Fatos — cada um com o item de prova e sua origem (titularidade, decisão, termos colados, revisão interna, efeitos); relação de consumo como fato a provar.
3. Fundamentos — §§ 3 e 3.1 (ou § 4) com `[ID]`; Tema 987/533 citado só para excluir também leva `[ID]` + rótulo ([T987ED-ITEM3], [T533-SITUACAO]), ou não é citado.
4. Pedidos — conta por identificador (restabelecimento ou acesso), comunicação do motivo, dados por direito (exportação, exclusão), perdas e danos só documentadas; a mensagem de revisão interna, quando pedida, sai aqui em texto curto, sem ameaça e sem promessa, com campo ausente como `[PENDENTE DE PROVA: o quê]`.
5. Pendências — estado por linha: `MINUTA PARA REVISÃO HUMANA` · `PENDENTE DE PROVA` (titularidade, decisão de moderação ou termos ausentes; regime não enquadrado ⇒ `regime-plataformas-e-conteudo`) · `PENDENTE DE FONTE` (ponto sem `[ID]` no `context/INDICE.md`) · `BLOQUEADO` (promessa ou termo inventado barrados pela revisão; conflito de caso) · `FORA DO RECORTE` (com destino).

Entregar o bloco à skill de fase do § 5; ao final da peça, `revisao-final-digital`.
