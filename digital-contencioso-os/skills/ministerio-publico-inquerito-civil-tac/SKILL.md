---
name: ministerio-publico-inquerito-civil-tac
description: "Atuação perante o Ministério Público no caso digital, para qualquer polo: representação para instaurar inquérito civil, recurso contra o indeferimento, resposta a requisição ou notificação, manifestação do investigado no procedimento preparatório e no inquérito civil, razões contra o arquivamento, negociação e minuta de compromisso de ajustamento de conduta (TAC), cumprimento do TAC e resposta a recomendação."
---

# Ministério Público — inquérito civil, requisição e TAC

Entrega o ato completo perante o Ministério Público para revisão humana. Polo e fase vêm da `triagem-digital-contencioso`; abrir lendo a seção "Andamento" do `00-perfil-do-caso.md` e atualizá-la ao fechar (ato, decisão recebida, próximo ato, prazo literal com `[ID]`). Fonte única: `context/lei-7347-acp.md` e `context/cnmp-inquerito-civil-tac.md` (ver `context/INDICE.md`). Esqueleto de todo ato: `templates/peca-mp-inquerito-tac.md.tpl` (variante `peca=` por ato).

**Guard mínimo:** norma, tema e prazo só com `[ID]` (sem `[ID]` ⇒ `PENDENTE DE FONTE` na linha) · IP identifica terminal, não pessoa · hash declarado ≠ verificado · sem promessa de resultado · um caso = um cliente = um polo; sem polo, só as perguntas · ao final, acionar `revisao-final-digital`.

## 1. Entrada

- **Polo:** representante (`ATIVO`: pessoa natural, empresa ou associação que noticia o fato); investigado ou compromissário (`PASSIVO`: plataforma, controlador, operador, autor do conteúdo); destinatário de requisição que não é investigado (`TERCEIRO`, p. ex. provedor requisitado sobre dados de usuário).
- **Fase, do documento ou do pedido:** representação ainda não apreciada · indeferimento · procedimento preparatório · inquérito civil (portaria) · promoção de arquivamento · TAC em negociação, celebrado ou descumprido · recomendação. Sem nenhum ⇒ só a pergunta de fase, mesmo se mandarem não perguntar.
- **Mérito material** vindo de frente (conteúdo, dados, registros, conta, termos): receber o BLOCO MATERIAL; não reabrir o mérito.
- Requisição em procedimento investigatório **criminal** ⇒ cross-link `criminal-adv-os`; aqui só a esfera civil.

## 2. Âmbito e natureza

- Ação civil pública: danos ao consumidor, à honra e à dignidade de grupos raciais, étnicos ou religiosos, a qualquer outro interesse difuso ou coletivo, entre outros, com as vedações do parágrafo único ([ACP-1]); legitimados, MP como fiscal da lei e TAC com eficácia de título executivo extrajudicial ([ACP-5], § 6º).
- Inquérito civil: unilateral e facultativo, não é condição de procedibilidade ([CNMP-IC-1-3], art. 1º); instaurado de ofício, por representação ou por designação (art. 2º).
- Interesse só individual do cliente, sem dimensão difusa ou coletiva: o MP pode indeferir ([CNMP-IC-5]); a via própria é a judicial individual (`peticao-inicial-digital`). Não prometer instauração.

## 3. Representante (ATIVO)

- **Representação (`peca=representacao`):** órgão do MP com atribuição (ramo e unidade = dado do caso; conflito de atribuição, [CNMP-IC-1-3], art. 3º); qualificação mínima do representante; **fato e provável autor** com informações que permitam identificar e localizar ([CNMP-IC-1-3], art. 2º, II) — conta, URL ou domínio identificam o objeto, não a pessoa: autoria incerta fica "a apurar"; dimensão difusa ou coletiva do dano com `[ID]`; provas com origem; pedido de instauração de inquérito civil ou procedimento preparatório e de diligências delimitadas. Anônima só justificada e com os mesmos requisitos (art. 2º, § 3º); informação verbal é reduzida a termo (§ 2º).
- **Recurso contra indeferimento:** indeferimento em até 30 dias com ciência pessoal; recurso com razões "no prazo de dez dias", protocolado no órgão que indeferiu ([CNMP-IC-5], §§ 1º e 2º); sem recurso no prazo, arquivamento na origem (§ 4º). Peça: `peca=recurso-indeferimento`, ao órgão que indeferiu, com reconsideração e remessa ao Conselho Superior ou à Câmara.
- **Contra a promoção de arquivamento — depende do polo:** razões escritas até a sessão do órgão de revisão são faculdade dos **co-legitimados** ([CNMP-IC-10-13], art. 10, § 3º; [ACP-9], § 2º), cujo rol é o de [ACP-5] (associação: constituída há pelo menos um ano, art. 5º, V, a, e com a finalidade do V, b, provadas por documento) ⇒ `peca=razoes-arquivamento`. Pessoa natural ou empresa privada fora do rol ⇒ só documentos e subsídios durante a tramitação ([CNMP-IC-6], § 5º), `peca=documentos-subsidios`. Condição de co-legitimado não comprovada ⇒ `PENDENTE DE PROVA`. Desarquivamento por prova nova em até seis meses ([CNMP-IC-10-13], art. 12).

## 4. Investigado ou compromissário (PASSIVO)

- **Recurso do representante contra o indeferimento:** o representado tem ciência pessoal do indeferimento e é notificado do recurso para, querendo, oferecer contrarrazões ([CNMP-IC-5], caput e § 3º); prazo sem bloco ⇒ `PENDENTE DE FONTE` (o da notificação, se houver). Peça: `peca=contrarrazoes-recurso`, sem admitir infração.
- **Notificação ou requisição recebida:** ofício requisitório deve ser fundamentado e acompanhado da portaria ou do endereço oficial em que ela está ([CNMP-IC-6], § 10); prazo assinalado pelo MP, "não poderá ser inferior a 10 (dez) dias úteis" ([ACP-8], § 1º); portaria com fato, fundamento e investigado ([CNMP-IC-4]). Conferir os requisitos; faltando, pedir complementação sem deixar o prazo correr em silêncio.
- **Resposta (`peca=resposta-requisicao`):** delimitada ao requisitado, item a item com documentos; sigilo legal com a regra literal ([ACP-8], § 2º); dilação fundamentada, sem afirmar que será deferida. **Sem confissão, sem admitir infração, sem juízo de autoria.**
- **Dados de usuários requisitados:** registros de conexão e de acesso, isolados ou associados a dados pessoais, só mediante ordem judicial ([MCI-10], § 1º); conteúdo de comunicação privada, idem (§ 2º); dados cadastrais de qualificação, filiação e endereço, por autoridade administrativa com competência legal para requisitar (§ 3º) — a competência do MP para essa requisição sem ordem judicial depende de lei não capturada ⇒ `PENDENTE DE FONTE`; a resposta aponta a regra e não entrega o que exige ordem judicial.
- **No inquérito civil:** defensor assiste o investigado, com razões e quesitos ([CNMP-IC-6], § 11); qualquer pessoa apresenta documentos e subsídios (§ 5º); conclusão em um ano prorrogável e suspensão de prazos entre 20/12 e 20/01, com as exceções do § 2º ([CNMP-IC-9-9A]). Manifestação: `peca=manifestacao-investigado` (objeto da portaria, fatos com prova, fundamentos com `[ID]`, diligência ou arquivamento fundamentado, [CNMP-IC-10-13], art. 10).

## 5. Compromisso de ajustamento de conduta (TAC)

- **Natureza e limites:** negócio jurídico com eficácia de título executivo extrajudicial desde a celebração; o MP não renuncia a direitos difusos ([CNMP-TAC-1-4], art. 1º e § 1º); TAC não afasta, necessariamente, responsabilidade administrativa ou penal e não importa reconhecimento automático de responsabilidade para outros fins (§ 3º); medida provisória ou parcial mantém a investigação no restante (art. 2º); qualquer fase da investigação ou da ação ([CNMP-TAC-1-4], art. 3º; [CNMP-IC-14]).
- **Minuta de TAC (`peca=minuta-tac`, compromissário):** partes e representação pelas regras do [CNMP-TAC-1-4], art. 3º, §§ 1º a 4º (detalhadas no esqueleto); considerandos sem confissão; obrigações **certas, líquidas e exigíveis, salvo peculiaridades do caso concreto**, com modo, tempo e lugar (art. 3º; art. 1º, § 1º); cominação por descumprimento obrigatória, com valor decidido pelas partes (o plugin não sugere número), admitida, em casos excepcionais e fundamentados, a fixação judicial (art. 4º); prestação periódica de informações ([CNMP-TAC-9-12], art. 9º, parágrafo único); cláusula expressa de não reconhecimento de responsabilidade para outros fins (art. 1º, § 3º); foro e assinaturas, testemunhas facultativas (art. 3º, § 5º).
- **Avisar o cliente antes de assinar:** o extrato é publicado em até quinze dias com partes, **CPF ou CNPJ** e endereço ([CNMP-TAC-6-8], art. 7º); o inteiro teor pode ficar acessível (§ 1º).
- **Descumprimento:** o órgão promove a execução judicial "no prazo máximo de sessenta dias", salvo justificativa ou repactuação ([CNMP-TAC-9-12], art. 11 e parágrafo único). Peça: `peca=justificativa-descumprimento`, com prova do cumprimento parcial. Defesa na execução do título ⇒ vizinho de rito `execucao-adv-os` (cross-link, sem chamada automática).

## 6. Recomendação

Regime da recomendação do MP não capturado ⇒ `PENDENTE DE FONTE`. Resposta (`peca=resposta-recomendacao`) como manifestação com documentos e subsídios no procedimento em que foi expedida ([CNMP-IC-6], § 5º), dizendo o que será ou não adotado e por quê, sem admitir infração.

## 7. Travas

MP não é parte contrária a ser vencida: tom técnico, sem imputar má-fé ao membro. Não presumir lesão nem autoria; investigação não é condenação. Prazo só literal; nunca data de vencimento (a suspensão de fim de ano é a do bloco, não calculada). Sem promessa de arquivamento, de instauração ou de celebração de TAC. Representação e defesa do investigado nunca no mesmo caso.

## 8. Saída

1. Linha de polo e fase do procedimento.
2. Peça completa pelo esqueleto `templates/peca-mp-inquerito-tac.md.tpl`, com todas as seções (endereçamento a fecho): representação, recurso, contrarrazões, resposta a requisição, manifestação, razões contra arquivamento (só co-legitimado), documentos e subsídios, minuta de TAC, justificativa de descumprimento ou resposta a recomendação; sem `<!--` nem `{{` do esqueleto na minuta.
3. Tabela item × `[ID]` × prova × estado; toda linha com prazo traz o `[ID]`.
4. Estado por item: `MINUTA PARA REVISÃO HUMANA` · `PENDENTE DE PROVA` (fase, notificação, fato, condição de co-legitimado) · `PENDENTE DE FONTE` (recomendação, competência para requisitar dados, prazo das contrarrazões, destinação de indenização) · `BLOQUEADO` (conflito de caso ou item barrado na revisão) · `FORA DO RECORTE` (requisição criminal). Só um dos 5 por item, literal, sem texto livre nem condicional ("planejada", "informativo", "não pedido", "fora desta via"); o que não é entrega vai a Pendências sem estado; campo ausente ⇒ `[PENDENTE DE PROVA: o quê]`, nunca "pendente" sem complemento.
5. Acionar `revisao-final-digital` sobre a versão final. O crivo da `revisao-final-digital` vai inteiro na saída: uma linha por citação (item · `[ID]` · OK ou BLOQUEAR), nunca resumo em uma linha.
