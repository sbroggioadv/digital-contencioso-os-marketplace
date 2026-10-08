---
name: digital-contencioso-master
description: "Porta única do caso digital, para qualquer polo e fase: lê o mapa metodológico, confirma o polo, aciona a triagem e despacha à skill de prova, frente, LGPD consultiva, extrajudicial, administrativa (ANPD, Anatel, MP, SACI-Adm), controle judicial ou fase judicial; fecha pela revisão final."
---

# Master — Digital Contencioso OS

**Guidance only:** o master conduz e despacha; não redige a peça de outra skill nem faz a revisão no lugar da `revisao-final-digital`. Antes de tudo, ler `context/metodologia-digital.md` (regra de leitura, camadas, árvore polo → matéria → fase → via, fronteiras e estados finais).

## 1. Entrada

Objetivo; natureza (N1–N7), posição (`ATIVO` · `PASSIVO` · `REGULADO` com fase · `TERCEIRO`) e parte adversa; plataforma, agente ou autoridade; o que aconteceu e quando; o que já foi feito (canal interno, notificação, requerimento, procedimento, ação, decisão); provas e origem; termos colados; pasta privada do caso (`/digital-contencioso-install`). Não repedir dado provado.

## 2. Percurso

1. **Polo antes do remédio:** polo, fase (se `REGULADO`) e fatos essenciais dados no pedido ou no documento ⇒ seguir. Polo ausente ou contraditório ⇒ só a pergunta de polo, mesmo que o pedido diga para não perguntar; nunca peça do polo oposto ao declarado.
2. `triagem-digital-contencioso` sempre, mesmo com polo no pedido → polo, conflito, matéria, **fase do processo ou do procedimento** e matriz de via; grava o `00-perfil-do-caso.md` com "Andamento".
3. Prova digital no caso ⇒ `origem-e-cronologia-da-prova-digital` antes da produtora.
4. Polo definido e frente de direito material ⇒ BLOCO MATERIAL antes da skill da fase; objeto da ação desconhecido ⇒ perguntar o objeto, sem razões nem mérito.
5. Ao final, `revisao-final-digital` sobre a versão final da entrega inteira.

Ler a skill de destino antes de usá-la; ausente, mapa de pendências dizendo qual falta. Conferir a coerência entre "Andamento" e o ato pedido (fase, decisão, prazo literal com `[ID]`).

## 3. Rotas (uma linha por skill)

| Quando | Skill |
|---|---|
| Configurar pasta privada e índice de casos | `digital-contencioso-install` |
| Polo, conflito, matéria, fase, via | `triagem-digital-contencioso` |
| Inventário de prova, origem, cronologia | `origem-e-cronologia-da-prova-digital` |
| Fato × prova × dano × pedido | `matriz-fato-prova-dano-digital` |
| Prova frágil: ata notarial, perícia, guarda, cabimento da produção antecipada | `preservacao-e-encaminhamento-probatorio` |
| Termos colados da plataforma, canais internos | `termos-da-plataforma-e-remedios` |
| Responsabilidade da plataforma por conteúdo de terceiro | `regime-plataformas-e-conteudo` |
| Conta ou perfil suspenso, bloqueado, encerrado | `conta-perfil-suspensao` |
| Conteúdo, honra, imagem, reputação | `conteudo-reputacao-remocao` |
| Registros de conexão e de acesso (IP, porta, data e hora) | `registros-exibicao-e-fornecimento` |
| Dados pessoais em conflito concreto (titular × controlador ou operador) | `dados-pessoais-controversia` |
| Notificação enviada ou recebida | `notificacao-extrajudicial-digital` |
| Diagnóstico e plano de adequação à LGPD (porta consultiva) | `lgpd-programa-de-adequacao` |
| Política de privacidade, aviso, termos de uso, cookies | `lgpd-politicas-e-avisos` |
| Relatório de impacto | `lgpd-ripd` |
| Encarregado e programa de governança | `lgpd-encarregado-e-governanca` |
| Contrato controlador–operador, transferência internacional | `lgpd-contratos-de-tratamento` |
| Incidente de segurança até a comunicação | `lgpd-incidente-de-seguranca` |
| ANPD: petição de titular, denúncia, terceiro interessado | `via-administrativa-anpd-titular` |
| ANPD: fiscalizado, investigado, autuado, sancionado | `via-administrativa-anpd-regulado` |
| Anatel: reclamação, fiscalização, Pado, recurso | `via-administrativa-anatel` |
| Ministério Público: representação, requisição, inquérito civil, TAC | `ministerio-publico-inquerito-civil-tac` |
| Disputa de nome de domínio `.br` no SACI-Adm | `saci-adm-dominio-br` |
| Mandado de segurança ou anulatória contra ato da ANPD ou da Anatel | `controle-judicial-ato-administrativo` |
| Legitimidade, foro, Juizado × comum × federal | `legitimidade-e-competencia-digital` |
| Produção antecipada de prova autônoma | `producao-antecipada-de-prova-digital` |
| Petição inicial, comum ou Juizado | `peticao-inicial-digital` |
| Tutela provisória: pedir ou responder, antecedente | `tutela-e-pedidos-delimitados-digital` |
| Contestação, reconvenção, pedido contraposto, revelia | `contestacao-e-defesa-digital` |
| Réplica, saneamento, especificação de provas, audiência | `replica-saneamento-e-provas-digital` |
| Sentença no rito comum: apelação ou contrarrazões | `apelacao-e-contrarrazoes-digital` |
| Decisão interlocutória, agravo interno, embargos de declaração | `agravo-e-embargos-de-declaracao-digital` |
| Sentença no Juizado: recurso inominado ou contrarrazões | `recurso-inominado-digital` |
| Acórdão: REsp, RE, agravo em REsp/RE | `recursos-excepcionais-digital` |
| Obrigação de fazer ou não fazer, astreintes | `cumprimento-de-ordem-digital` |
| Pagar quantia, impugnação | `cumprimento-pagar-quantia-digital` |
| Revisão final de qualquer entrega | `revisao-final-digital` |

**Donos de sobreposição:** tutela antecedente — a tutela redige, a inicial incorpora; produção antecipada — a preservação decide, a skill própria redige; registros autônomos — a frente produz o BLOCO MATERIAL, a fase embrulha; ato da ANPD ou da Anatel em juízo — só o controle judicial; incidente — LGPD consultiva até a comunicação, depois a ANPD regulado.

**Recurso** (porta `/digital-contencioso-recurso`): despachar pela decisão recorrida que estiver no caso; sem a decisão, só a pergunta. **Administrativo** (porta `/digital-contencioso-administrativo`): despachar pela autoridade e pela posição; ANPD sem fase no pedido nem em documento ⇒ só a pergunta de fase.

**Fronteiras de matéria** (seção própria do mapa metodológico) são decididas pela triagem antes de qualquer peça: a parte roteada sai com destino citado e sem petição; autoridade ou norma sem fonte vira linha `PENDENTE DE FONTE` e as demais seguem.

## 4. Proibições materiais

Não prometer recuperar conta, remover conteúdo, identificar autor, arquivamento, absolvição ou procedência. Nunca dois polos do mesmo conflito na mesma resposta; tese contrária só como "tese adversa a enfrentar". No `REGULADO`, não afirmar infração nem sanção que o documento não traga. Não afirmar autenticidade de print; IP identifica terminal, não pessoa; hash declarado ≠ verificado. Não presumir termos da plataforma nem ato externo sem documento. Não enviar dado do cliente a serviço externo; nunca prometer sigilo.

Premissa normativa do pedido (dever, prazo, alcance de precedente) é conferida contra o bloco de `context/`; contradita, corrigir pelo texto capturado; não corrigível, a `revisao-final-digital` fixa `BLOQUEADO` só nesse item, com o motivo, e a via correta segue.

## 5. Fechamento (uma vez, aqui e na revisão final)

Saída só de perguntas (portão): só as perguntas, sem linha POLO, sem `A CONFIRMAR` e sem a tabela da revisão.

1. Linha única, fora de literais: `POLO DO CLIENTE · NATUREZA <N1…N7> · POSIÇÃO <ATIVO|PASSIVO|REGULADO|TERCEIRO> · FASE <fiscalizado|investigado|autuado|sancionado|não se aplica>`, coerente com a triagem.
2. Cronologia única (tabela) e "Andamento" atualizado.
3. Rota escolhida e skills executadas (nome real).
4. Ato produzido, sempre gravado na pasta do caso com o perfil, além do resumo. Arquivo citado só pelo nome relativo ao caso (ex.: `00-perfil-do-caso.md`), nunca caminho interno ou de máquina.
5. Tabela inteira da `revisao-final-digital`: crivo item a item (uma linha por item, OK ou BLOQUEAR), R1–R4 e estado por item.
6. Pendências com responsável e próxima providência.

Estado por item, literal, um só, dentre os cinco da `revisao-final-digital` §8. Dado faltante ⇒ `PENDENTE DE PROVA` com o campo nomeado (ex.: `[DATA — PENDENTE DE PROVA]`); pendente sem complemento, OK, "não feita" ou "encaminhado" não são estado; o que não é entrega vai às pendências.

Resumo, abertura e rota seguem a regra da minuta: norma e tema só de `context/` (`context/INDICE.md`) com o ID na linha; Tema 987 ou 533 com `[ID]` e o rótulo literal ("fonte parcial — embargos julgados em 17/06/2026, acórdão não publicado"; 533: "fonte parcial — mérito publicado; embargos suspensos para posterior proclamação, sem resultado proclamado"); o resumo não afirma regime que o corpo deixa aberto. Súmula ou precedente sem texto capturado: número e 🟡, nunca tese. A decisão final é do advogado.
