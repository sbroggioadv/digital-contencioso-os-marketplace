---
name: via-administrativa-anpd-regulado
description: "Agente de tratamento perante a ANPD, por fase (fiscalizado, investigado, autuado, sancionado): resposta a ofício, plano de conformidade, proposta de termo de ajustamento de conduta, defesa ao auto de infração, alegações finais, recurso ao Conselho Diretor e demonstração de cumprimento de sanção, com a Lei 9.784 subsidiária; prazo só literal, multa sem cálculo."
---

# Via administrativa ANPD — agente regulado

Lado de quem **responde** à ANPD: controlador, operador ou outro agente regulado ([ANPD-R1-4], I). Petição de titular, denúncia e terceiro interessado ⇒ `via-administrativa-anpd-titular`. Comunicação de incidente ainda não fiscalizada ⇒ `lgpd-incidente-de-seguranca`; instaurada fiscalização ou processo, o caso é desta skill. Mandado de segurança ou anulatória contra o ato ⇒ `controle-judicial-ato-administrativo`. Fonte só do `context/` (ver `context/INDICE.md`).

## Guard mínimo

Norma, tema e prazo só com `[ID]` (sem `[ID]` ⇒ `PENDENTE DE FONTE` na linha) · IP identifica terminal, não pessoa · hash declarado ≠ verificado · sem promessa de resultado · um caso = um cliente = um polo; sem polo, só as perguntas · ao final, acionar `revisao-final-digital`.

## 1. Entrada e fase

Ler a linha POLO e a seção "Andamento" do `00-perfil-do-caso.md`. Exigir o documento do procedimento (ofício, intimação, auto de infração, decisão), o número do processo, o meio e a data de ciência e o prazo escrito no próprio ato. A ciência oficial se prova pelo meio e pelo evento, não pela data de expedição ([ANPD-R1-12]). A fase sai do documento ou do pedido e vai numa linha própria, também na saída:

`Fase do regulado: <fiscalizado|investigado|autuado|sancionado>`

Sem fase no documento nem no pedido ⇒ só a pergunta de fase, mesmo se mandarem não perguntar. Fiscalização não é sanção; autuado não é infrator provado ([ANPD-R1-4], II).

**Norma do rito:** a Res. CD/ANPD 1/2021 rege; a Lei 9.784/1999 aplica-se subsidiariamente ([ANPD-R1-1], § 2º). Onde o regulamento tem regra própria, ele prevalece: prazos contados em dias úteis da ciência oficial ([ANPD-R1-8]), não a contagem contínua da lei ([PA-66]). Toda linha da saída que fale em prazo traz o `[ID]` do bloco; datas, só as do caso; nenhum vencimento calculado.

**Esqueletos:** cada ato tem seu `templates/peca-anpd-*.md.tpl` (endereçamento a fecho); manter só as variantes do caso; nenhum `{{` resta na minuta. Assistência por advogado, facultativa ([PA-3], IV); poderes conforme o instrumento do cliente (`PENDENTE DE PROVA` se não juntado).

## 2. Fiscalizado — `templates/peca-anpd-resposta-oficio.md.tpl`

- **Resposta a ofício ou requisição** (variante `resposta-oficio`): delimitada ao pedido, nos deveres do art. 5º ([ANPD-R1-5-6]); sigilo empresarial pedido com fundamento (art. 5º, § 2º), sem prometer deferimento. Descumprir os deveres pode caracterizar obstrução (art. 6º).
- Monitoramento, orientação e prevenção não são repressão ([ANPD-R1-15-16]); medidas preventivas ([ANPD-R1-32]) e de orientação **não constituem sanção** ([ANPD-R1-27-31]); não atender **medida preventiva** leva à progressão da atuação e é agravante em eventual processo ([ANPD-R1-32], § 2º); medida de orientação ou preventiva descumprida agrava a multa ([ANPD-R4-11-15], art. 12, III).
- **Solicitação de regularização** (variantes `comprovacao-regularizacao` e `pedido-prorrogacao`): comprovar no prazo determinado; prorrogação uma única vez, por igual período, com justificativa ([ANPD-R1-33-36], art. 35, § 3º). **Plano de conformidade** (variante `plano-conformidade`): conteúdo mínimo do art. 36.
- RIPD, registro ou documento **requisitado** entra como item da resposta ([LGPD-37-39]); elaborar o documento em si ⇒ `lgpd-ripd` ou `lgpd-programa-de-adequacao`.

## 3. Investigado (procedimento preparatório)

Averiguação preliminar quando os indícios não bastam; pode tramitar em sigilo; termina em arquivamento ou instauração ([ANPD-R1-40-44], arts. 40–42). O despacho de instauração não admite recurso ([ANPD-R1-37-38], art. 38). Peça: manifestação espontânea delimitada, com documentos, antes da decisão ([PA-3], III) — `peca-anpd-resposta-oficio.md.tpl`, variante `manifestacao-preparatorio`.

**Termo de ajustamento de conduta** — `templates/peca-anpd-compromisso-tac.md.tpl`: o interessado pode propor; a proposta vai ao Conselho Diretor; a suspensão só começa após a assinatura e o arquivamento só após o cumprimento integral ([ANPD-R1-40-44], art. 43). Conteúdo mínimo e rito seguem regulamentação própria (art. 44) não capturada ⇒ `PENDENTE DE FONTE`. Nunca afirmar que a proposta suspende o processo ou será aceita; o autuado que propõe também se defende.

## 4. Autuado — `templates/peca-anpd-defesa.md.tpl`

**Prazo (literal):** "apresentar defesa no prazo máximo de dez dias úteis, na forma indicada na intimação" ([ANPD-R1-45-49], art. 47), em dias úteis ([ANPD-R1-8]). Vencimento em data = `PENDENTE DE FONTE`.

**Regras da defesa** (variante `defesa`):
- Síntese: conduta **suposta**, fatos e dispositivo como escritos no auto ([ANPD-R1-45-49], art. 46). Preliminares só com documento: elemento do art. 46 ausente; intimação sem requisito legal, nula, mas o comparecimento supre a falta ([PA-26-28], art. 26, § 5º).
- Mérito fato a fato, com prova e origem; ônus de provar o que alega ([ANPD-R1-50-54], art. 50). Incidente: critérios cumulativos de risco ou dano relevante ([ANPD-R15-4-5]), definições ([ANPD-R15-3]) e quem tem o dever — comunicar à ANPD e ao titular é do **controlador** ([ANPD-R15-6-8]; [ANPD-R15-9]; [LGPD-48]); operador não o assume automaticamente.
- Dosimetria só por critérios: sanções ([LGPD-52]; [ANPD-R4-3-6]); classificação ([ANPD-R4-7-8]); advertência ou multa ([ANPD-R4-9-10]); cada atenuante literal ligada a fato provado, com marco temporal ([ANPD-R4-11-15]); sem prova ⇒ `PENDENTE DE PROVA`. Valor-base, piso e multa calculada ⇒ `PENDENTE DE FONTE` (apêndices não capturados). Proporcionalidade ([PA-2], parágrafo único, VI). Aspas só com o literal integral, sem costurar nem flexionar (corte com `[…]`).
- Pedidos: preliminares; arquivamento; subsidiariamente, sanção pelos critérios provados; perícia com quesitos suplementares e assistente técnico ([ANPD-R1-50-54], art. 52); sigilo empresarial ([ANPD-R1-5-6], § 2º). Prova emprestada exige contraditório ([ANPD-R1-45-49], art. 48, § 4º); os pedidos de prova "poderão ser indeferidos" ([ANPD-R1-50-54], art. 51), sem critério; tese da defesa: aplicar a essa lacuna o limite do [PA-38], § 2º ([ANPD-R1-1], § 2º).

**Depois da defesa** (variantes `alegacoes-finais` e `intervencao-revel`): alegações finais em dez dias úteis só se houver prova nova entre defesa e instrução ([ANPD-R1-50-54], art. 53). Sem defesa no prazo: o revel pode intervir em qualquer fase, sem repetir atos (art. 50, parágrafo único), e o desatendimento não importa reconhecimento da verdade dos fatos ([PA-26-28], art. 27).

## 5. Sancionado — recurso e cumprimento

- **Recurso ao Conselho Diretor** — `templates/peca-anpd-recurso-conselho-diretor.md.tpl`: "no prazo de dez dias úteis, contados da intimação da decisão", dirigido à autoridade que decidiu, na forma da intimação ([ANPD-R1-58-62], art. 58); ciência provada ([ANPD-R1-12]; [ANPD-R1-8]). Atacar a motivação ([ANPD-R1-55-57], art. 55, § 1º; [PA-50]). Efeito suspensivo limitado à matéria contestada; ampliado só com o fundado receio de prejuízo de difícil ou incerta reparação ([ANPD-R1-58-62], art. 60). Não conhecimento: art. 61, I–V. A reconsideração não agrava a sanção (art. 62, § 2º); o julgamento pode agravar, com intimação prévia para alegações em até dez dias úteis ([ANPD-R1-63-65], art. 65, § 1º; variante `alegacoes-gravame`).
- **Cumprimento** — `templates/peca-anpd-cumprimento-sancao.md.tpl`: a intimação determina o cumprimento e o prazo ([ANPD-R1-55-57], art. 56); obrigação de fazer ou não fazer traz prazo e forma de aferição (art. 55, § 2º); demonstrar item por item, com documento.
- **Multa:** "no prazo de até 20 (vinte) dias úteis" da ciência oficial ([ANPD-R4-17-19], art. 17); dobro para pequeno porte só com enquadramento provado (§ 2º); encargos citados, nunca calculados (§ 3º). Redução de 25% só com **renúncia expressa** ao recurso e pagamento no prazo (art. 18): escolha do cliente, nunca com recurso. Pagar após a intimação não prejudica o recurso (art. 19).
- **Não pecuniárias:** pressupostos e comprovação de regularização ([ANPD-R4-20-26], lido com [ANPD-R4-3-6]). Multa diária sem quantificação ([ANPD-R4-16]).
- **Revisão:** sanção revista a qualquer tempo com fato novo, sem agravamento ([PA-56-65], art. 65), lei subsidiária ([ANPD-R1-1], § 2º).
- Cobrança, execução e Cadin ⇒ `PENDENTE DE FONTE` (dispositivos fora de propósito nesta versão).

## 6. Variantes por natureza

N3 controlador: dever de comunicar incidente à ANPD e ao titular ([LGPD-48]; [ANPD-R15-6-8]). N4 operador: segue instruções do controlador ([LGPD-37-39]); separar o que é dele do que é do controlador. N5 plataforma e N6 provedor de conexão: só a matéria de dados pessoais; procedimento da Anatel ⇒ `via-administrativa-anatel`. Pequeno porte: prazos em dobro só nas hipóteses literais ([ANPD-R2-14]). Pessoa jurídica de direito público: informe ([ANPD-R1-33-36], art. 35, § 1º).

## 7. Travas

Não presumir infração, culpa ou sanção. Nunca prometer arquivamento, absolvição, aceitação de compromisso ou redução. Prazo só literal. Um caso, um polo: nunca a defesa do agente e o pedido do titular juntos. Outra autoridade sem bloco capturado ⇒ `PENDENTE DE FONTE`. Reclamação de consumo em Procon ⇒ `FORA DO RECORTE` desta via.

## 8. Saída

1. Linha `POLO DO CLIENTE · NATUREZA <N3|N4|N5|N6|outra> · POSIÇÃO REGULADO · FASE <fiscalizado|investigado|autuado|sancionado>` e, abaixo, `Fase do regulado: <valor>`.
2. Peça completa da fase no esqueleto do ato (§§ 2–5): resposta, plano, proposta de termo, defesa, alegações finais, recurso ou demonstração de cumprimento.
3. Tabela item × `[ID]` × prova × estado: `MINUTA PARA REVISÃO HUMANA` · `PENDENTE DE PROVA` (fase, ciência, fato ou atenuante sem documento) · `PENDENTE DE FONTE` (vencimento em data, valor de multa, rito do termo, Cadin, outra autoridade) · `BLOQUEADO` (item que a revisão barra: premissa contradita, competência inexistente; ou `ALERTA DE CONFLITO`) · `FORA DO RECORTE` (com destino). Só um dos 5 por item, sem texto livre; campo ausente ⇒ `[PENDENTE DE PROVA: o quê]`.
4. Atualizar "Andamento": fase, ato praticado, decisão recebida, próximo ato e prazo literal com `[ID]`.
5. Acionar `revisao-final-digital` sobre a versão final.
