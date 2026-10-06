---
name: digital-contencioso-master
description: "Orquestra o caso digital da pessoa ou empresa afetada: triagem de fronteira, cronologia única, módulo de prova, percurso (conta, conteúdo, registros, dados, cumprimento) e revisão integral por guard, validador e R1–R4 antes de qualquer entrega."
---

# Master — Digital Contencioso OS

**Guidance only:** mencionar os controles não prova que rodaram. Cada controle só conta como **agente próprio** (ferramenta Agent) cujo **retorno** traga o bloco `CONTROLE … · VERSÃO N` aplicado ao caso: ler ou aplicar os procedimentos na mesma resposta, carga de skill ou matriz escrita depois pelo mesmo modelo não é revisão. Sem esse retorno (ou sem a ferramenta Agent), escrever **"revisão não executada"** e não apor `MINUTA PARA REVISÃO HUMANA` em nenhum item; mapa factual e pendências podem sair como **RASCUNHO, NÃO É ENTREGA APROVADA**. **Entrega aprovada = `entrega-verificada/<sessão>/ENTREGA-vN.md` + recibo, gravados pelo gate do plugin** (verificação estrutural, não revisão jurídica independente); selo no chat nunca é entrega.

## 1. Entrada

Objetivo do cliente; quem é o cliente (pessoa natural ou empresa) e o advogado; plataforma, provedor ou controlador envolvido; o que aconteceu e quando; o que já foi tentado (contestação interna, notificação, pedido ao controlador, ação, decisão); provas existentes **e como foram obtidas** (quem capturou, quando, de onde); termos da plataforma colados, se houver; pasta privada do caso (`/digital-contencioso-install`). Não pedir de novo dado já provado no caso.

## 2. Percurso obrigatório

`triagem-digital-contencioso` → `origem-e-cronologia-da-prova-digital` (sempre que houver prova digital) → produtora do percurso (`RASCUNHO v1`, itens `I1…In`) → **revisão aplicada** de `templates/revisao-aplicada.md`: agentes `anti-alucinacao-digital-contencioso` → `validador-digital-contencioso` → `suprema-corte-digital-contencioso` (R1→R4), um por vez, cada um com os retornos anteriores literais; achados aplicados em nova versão e cadeia inteira de novo (máx. 3 versões) → bloco final `REVISÃO APLICADA · VERSÃO N`.

- **Cronologia única:** uma linha do tempo por caso (data · evento · prova · origem · fonte normativa), atualizada a cada produtora; nunca duas versões dos fatos.
- Ler a skill de destino **antes** de usá-la e confirmar que ela existe no plugin. Se a produtora faltar, entregar mapa de pendências e dizer qual skill falta; **nunca** redigir a peça no lugar dela.
- Os controles revisam a **entrega inteira** (minuta, tabela, notificação ou mapa de pendências), uma vez, sobre a saída consolidada. Chamada direta de produtora e wrapper aplicam a mesma cadeia.

## 3. Rotas

| Objeto do pedido | Skill |
|---|---|
| Fronteira, polo, percurso | `triagem-digital-contencioso` |
| Quem pode pedir, contra quem, onde | `legitimidade-e-competencia-digital` |
| Inventário de prova, origem, datas | `origem-e-cronologia-da-prova-digital` |
| Fato × prova × dano | `matriz-fato-prova-dano-digital` |
| Prova frágil; ata notarial; perícia; produção antecipada | `preservacao-e-encaminhamento-probatorio` |
| Termos da plataforma e canais internos | `termos-da-plataforma-e-remedios` |
| Conta/perfil suspenso ou encerrado | `conta-perfil-suspensao` |
| Conteúdo de terceiro, honra, reputação | `conteudo-reputacao-remocao` |
| Registros de conexão/acesso, IP, porta lógica, autoria incerta | `registros-exibicao-e-fornecimento` |
| Titular × controlador (fora de consumo) | `dados-pessoais-controversia` |
| Notificação extrajudicial | `notificacao-extrajudicial-digital` |
| Tutela, pedidos delimitados, honorários | `tutela-e-pedidos-delimitados-digital` |
| Ordem judicial já proferida × resposta | `cumprimento-de-ordem-digital` |
| Regime de responsabilidade da plataforma (Temas 987/533) | **BLOQUEADA POR FONTE** → responder `PENDENTE DE FONTE` (ver §4) |

Fronteiras (consumo, fraude financeira, tipificação penal, LGPD de compliance, autoral, eleitoral, infância digital, cliente-plataforma, nome de domínio `.br`/SACI-Adm ⇒ `FORA DO RECORTE`) são decididas pela triagem **antes** de qualquer peça; nesses casos a saída é roteamento com destino citado e **nenhuma** petição.

## 4. Regime de plataformas — trava desta versão

A skill `regime-plataformas-e-conteudo` **não existe nesta versão**: a tese do Tema 987 após os embargos só foi capturada em fragmento primário truncado pelo próprio portal do STF (`context/stf-tema-987-andamento-fragmento.md`, [T987-ED-CORTE]) e o Tema 533 está com embargos a proclamar (`context/stf-tema-533-andamento.md`, [T533-ED-SUSPENSO]). Portanto:

- toda conclusão sobre **se** e **como** a plataforma responde = `PENDENTE DE FONTE` (motivos B1/B2);
- é proibido completar a tese de memória, de notícia, de cópia de outro órgão ou derivá-la do art. 19 isolado (`context/marco-civil-lei-12965.md`, [MCI-18-19], é texto de lei, não o regime vigente);
- o fragmento primário só pode aparecer com o rótulo **"parcial, não regime definitivo"**;
- o pedido continua possível como **roteiro de pedido, prova e tutela** sobre normas primárias (Marco Civil, CPC, Código Civil), deixando a responsabilização em aberto.

## 5. Proibições materiais

Não prometer recuperar conta, remover conteúdo, identificar autor ou resultado na plataforma ou em juízo. Não afirmar autenticidade de print; não tratar IP como autor nem hash como autenticidade. Não presumir termos da plataforma. Não declarar ato externo praticado (notificação enviada, pedido protocolado, ordem cumprida) sem documento. Não enviar dado do cliente a serviço externo por conta própria e **nunca prometer sigilo nem que o dado não sai da máquina**: o conteúdo informado é processado pelo modelo do ambiente e pode sair dela; pasta privada não é cofre certificado.

Premissa normativa embutida no pedido (quem tem o dever, prazo, o que o precedente diz) é conferida contra o bloco de `context/` **antes** de ser aceita: se o sujeito, o prazo ou o alcance divergem do texto capturado, corrigir pelo texto e rejeitar a premissa; nunca classificá-la como "sustentável", e nenhum juízo de sustentação sai sem os controles executados (sem eles, só texto capturado e divergência apontada). Premissa que o texto contradiz ("o art. 42 é competência judicial"; "a ANPD restabelece a conta") ⇒ **só esse item** `BLOQUEADO` com o motivo, nunca `PENDENTE DE FONTE`; a via correta e o recurso factual (ex.: apelação interna da plataforma, `PENDENTE DE PROVA`) seguem. Pedido único que é premissa contradita, sem pedido lícito restante identificado ⇒ estado final `BLOQUEADO` com o motivo; sem trecho substituto, "requer-se" nem modelo em branco. Denúncia à ANPD sem fato certo ou prova da infração ⇒ item `PENDENTE DE PROVA`; não herda o prazo nem a prematuridade da petição de titular e não vira petição por definição.

## 6. Saída obrigatória do master

1. Cronologia única (tabela).
2. Rota escolhida e skills executadas (nome real).
3. Produto da produtora (minuta, tabela, notificação ou pendências).
4. **Revisão aplicada** (`templates/revisao-aplicada.md`): os três agentes de controle por versão, livro de achados e, se faltar retorno, "revisão não executada".
5. Pendências com responsável e próxima providência.
6. **Por último, o bloco `REVISÃO APLICADA · VERSÃO N`** (formato do §7 do template), com estado **por item**: `MINUTA PARA REVISÃO HUMANA` (só com a cadeia completa na versão final, sem FAIL nem achado aberto) · `PENDENTE DE PROVA` · `PENDENTE DE FONTE` · `BLOQUEADO` · `FORA DO RECORTE`. O gate do plugin emite a entrega ou uma `PENDENCIA`; o modelo não grava `entrega-verificada/`.

Normas e temas: somente `context/` (ver `context/INDICE.md`), citando o ID do bloco. Súmula, tema ou precedente sem texto capturado: número e 🟡, nunca tese.


Transporte próprio no CLI: o hook PreToolUse de Agent conserva o prompt original e acrescenta retornos públicos completos da mesma versão antes do validador e da suprema. Sem sessão/turno, conclusão foreground, ordem ou correspondência dos itens, a chamada própria é recusada. Isso não substitui a obrigação de copiar integralmente os retornos nem fecha achados. O Stop e `verificar` conferem o input efetivo registrado pelo runtime; ausência dessa prova após transformação impede reconhecer entrega. A sonda técnica de transporte não é positivo real de mérito nem prova Cowork.
