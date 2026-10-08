# Digital — Contencioso, Administrativo e LGPD

Plugin `digital-contencioso-os` · versão 0.3.0 · Sbroggio Advocacia & IA Combativa.

Produto vendido sob licença de uso: o código pode estar em repositório público para viabilizar a instalação, mas não é software livre. Condições em [LICENCA](LICENCA).

## Para quem é

Para o **advogado de qualquer polo** em caso digital: pessoa natural ou empresa afetada, plataforma ou provedor, controlador ou operador de dados, autor do conteúdo — pedindo, respondendo, fiscalizado ou autuado, ou como terceiro. Cada caso tem um cliente e um polo.

## O que ele faz

- **Fase administrativa completa:** petição de titular e defesa do regulado perante a ANPD (fiscalização, processo sancionador, recurso, compromisso e cumprimento de sanção), procedimento perante a Anatel, Ministério Público (representação, requisição, inquérito civil e TAC) e disputa de domínio `.br` no SACI-Adm, com a ponte para o mandado de segurança ou a ação anulatória.
- **Fase judicial completa, sem depender de outro plugin:** competência, petição inicial (rito comum e Juizado), produção antecipada de prova, tutela de urgência, contestação, réplica e provas, apelação, agravo e embargos de declaração, recurso inominado, recurso especial e extraordinário, cumprimento de obrigação de fazer e de pagar quantia.
- **Frentes do caso digital:** conta ou perfil suspenso, conteúdo e reputação, registros de acesso para identificar autoria, dados pessoais em conflito, termos da plataforma e regime de responsabilidade das plataformas por conteúdo de terceiro, notificação extrajudicial (enviar e responder).
- **LGPD contenciosa e consultiva:** conflito com o titular, procedimento na ANPD e, sem conflito instaurado, programa de adequação, políticas e avisos, RIPD, encarregado e governança, contratos controlador–operador e transferência internacional, incidente de segurança até a comunicação. Agente de pequeno porte tratado em cada etapa.
- **Prova digital:** origem e cronologia da prova, matriz fato–prova–dano e preservação, com o encaminhamento para a produção antecipada quando cabível.
- **Revisão final** de toda minuta antes da entrega ao advogado.

## Como instalar

- **Claude Desktop (Cowork):** Personalização → Plugins → Adicionar → Adicionar marketplace → Adicionar de um repositório → `https://github.com/sbroggioadv/digital-contencioso-os-marketplace` → Sincronizar; depois instale **digital-contencioso-os** em Plugins.
- **Claude Code:** `claude plugin marketplace add sbroggioadv/digital-contencioso-os-marketplace` e `claude plugin install digital-contencioso-os@digital-contencioso-os-marketplace`.

Depois de instalar, rode `/digital-contencioso-install` para configurar a pasta privada dos casos e o primeiro caso, e conduza o caso por `/digital-contencioso-master`.

## Portas

| Comando | Para quê |
|---|---|
| `/digital-contencioso-install` | configurar a pasta privada, o índice de casos, o polo do cliente e o primeiro percurso |
| `/digital-contencioso-master` | conduzir o caso de ponta a ponta: polo, fase, frente, peça e revisão |
| `/digital-contencioso-triagem` | polo, matéria, fase do processo ou procedimento e via |
| `/digital-contencioso-administrativo` | ANPD, Anatel, Ministério Público, domínio `.br` e controle judicial do ato |
| `/digital-contencioso-revisar` | revisão final de uma minuta |

Atalhos por frente e por ato: `/digital-contencioso-prova` · `/digital-contencioso-termos` · `/digital-contencioso-conta` · `/digital-contencioso-conteudo` · `/digital-contencioso-registros` · `/digital-contencioso-dados` · `/digital-contencioso-notificar` · `/digital-contencioso-inicial` · `/digital-contencioso-defesa` · `/digital-contencioso-tutela` · `/digital-contencioso-recurso` · `/digital-contencioso-cumprimento` · `/digital-contencioso-lgpd`.

## Fontes

A pasta `context/` traz excertos literais de fontes oficiais (legislação, regulamentos das autoridades, decisões dos tribunais superiores e termos de plataformas como exemplo), cada um com endereço de origem, data de captura e sha256, listados em `context/INDICE.md`. Norma, tema ou prazo sem excerto capturado sai marcado `PENDENTE DE FONTE` na linha, sem travar o restante do caso. Captura não certifica vigência: confira a versão vigente na data do fato.

## Limites

- Toda saída é **minuta sujeita à revisão do advogado**. Não é parecer, perícia nem ata notarial e não substitui o advogado.
- Não promete resultado perante plataforma, autoridade ou juízo, não protocola e não acessa sistemas externos.
- Print não prova autenticidade sozinho; IP identifica terminal, não pessoa; hash declarado não é hash verificado.
- Os termos da plataforma são os que você colar, vigentes na data do fato.
- Responsabilidade das plataformas: o Tema 987 do STF entra só pela decisão de julgamento dos embargos de 17/06/2026, ainda sem acórdão publicado, e o Tema 533 está sem resultado proclamado; cada citação desses temas sai com o aviso "fonte parcial" para você conferir.
- A revisão final de cada minuta é feita pelo mesmo modelo de IA que a redigiu: ajuda a achar erros, mas não substitui a sua conferência.
- A instalação pelo Claude Desktop (Cowork) ainda não foi testada de ponta a ponta.
- Um caso = um cliente = um polo; coincidência com a parte adversa de outro caso gera alerta de conflito para a sua decisão.
- O conteúdo que você informa é processado pelo modelo de IA do ambiente e pode sair da máquina em direção ao provedor desse modelo. Guarde os casos em pasta privada, minimize dados de terceiros e avalie o seu dever de sigilo.

Estados de cada item: `MINUTA PARA REVISÃO HUMANA` · `PENDENTE DE PROVA` · `PENDENTE DE FONTE` · `BLOQUEADO` · `FORA DO RECORTE`.

## Licença e suporte

Produto vendido sob licença de uso proprietária: leia [LICENCA](LICENCA) antes de usar. Suporte: **luis@sbroggio.io**.
