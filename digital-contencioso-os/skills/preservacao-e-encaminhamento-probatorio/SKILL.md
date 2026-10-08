---
name: preservacao-e-encaminhamento-probatorio
description: "Decide, diante de prova digital frágil, quando recomendar ata notarial, perícia, produção antecipada de prova ou pedido de guarda de registros, distinguindo advogado, tabelião e perito, sem prometer valor probatório e sem redigir ata ou laudo."
---

# Preservação e encaminhamento probatório

**Guidance only:** recomendar um meio de prova não garante seu valor. **Advogado ≠ tabelião ≠ perito.** O plugin não lavra ata, não faz perícia e não certifica arquivo. Fonte única: `context/` (ver `context/INDICE.md`). Esta skill **decide** o meio e o destino; a peça é redigida pela skill de fase indicada. Ao final, a saída vai a `revisao-final-digital`.

**Guard mínimo:** norma, tema e prazo só com `[ID]` (sem `[ID]` ⇒ `PENDENTE DE FONTE` na linha) · IP identifica terminal, não pessoa · hash declarado ≠ verificado · sem promessa de resultado · um caso = um cliente = um polo; polo ausente ou contraditório ⇒ só as perguntas, mesmo se mandarem não perguntar · ao final, acionar `revisao-final-digital`.

## 1. Entrada

`00-perfil-do-caso.md` (polo e "Andamento": há ação ou procedimento em curso? em que fase?); inventário e fragilidades de `origem-e-cronologia-da-prova-digital`; matriz de `matriz-fato-prova-dano-digital`, se houver; risco de perda (conteúdo apagável, conta encerrável, registros sujeitos a prazo de guarda); probabilidade de impugnação; urgência.

## 2. Quadro de decisão (saída principal)

| Fragilidade | Meio | Quem faz | Base | Destino (quem redige) |
|---|---|---|---|---|
| Conteúdo on-line que pode desaparecer; existência e modo de existir a documentar | **Ata notarial** | Tabelião | [CPC-381-384] (art. 384); [NOT-6] (III); [NOT-7] (III) | requerimento ao tabelionato (§ 5); o advogado junta a ata à peça |
| Arquivo cuja integridade, edição ou origem técnica será impugnada | **Perícia** | Perito nomeado | [CPC3-464-465]; [CPC-422] (§ 1º) | antes da ação: `producao-antecipada-de-prova-digital`; no processo: `replica-saneamento-e-provas-digital` (§ 6) |
| Fato que pode se tornar impossível ou muito difícil de verificar; prova que viabiliza acordo; conhecimento prévio que justifica ou evita ação | **Produção antecipada de prova** | Juízo | [CPC-381-384] (arts. 381 e 382) | decisão de cabimento (§ 3) → `producao-antecipada-de-prova-digital` |
| Registros de conexão ou de acesso necessários e sujeitos a guarda | **Guarda e fornecimento por ordem judicial** | Juízo | [MCI-13]; [MCI-15]; [MCI-22-23] | `registros-exibicao-e-fornecimento` (BLOCO MATERIAL) → § 4 |
| Documento ou coisa em poder da parte adversa ou de terceiro | **Exibição** | Juízo | [CPC-396-404] | `registros-exibicao-e-fornecimento`; no processo, `replica-saneamento-e-provas-digital`; urgente, `tutela-e-pedidos-delimitados-digital` |
| Processo administrativo na ANPD ou na Anatel em curso | **Juntada e requerimento de diligência ou perícia na instrução** | Interessado | [PA-38] (processo administrativo federal) | `via-administrativa-anpd-titular` · `via-administrativa-anpd-regulado` · `via-administrativa-anatel` |
| Inquérito civil no MP em curso | **Apresentação de documentos ou subsídios**; pedido de diligência ou perícia pelo interessado: `PENDENTE DE FONTE` | Qualquer pessoa | [CNMP-IC-6] (§ 5º) | `ministerio-publico-inquerito-civil-tac` |
| Captura do próprio cliente, sem risco imediato | **Preservação organizada** | Cliente e advogado | — (sem regra de valor probatório capturada) | instrução: guardar originais, exportações e metadados na pasta privada; registrar quem, quando e onde |

## 3. Cabimento da produção antecipada (decisão desta skill)

Conferir, com o literal de [CPC-381-384]:
- **Hipótese** do art. 381: I (receio de impossibilidade ou muita dificuldade de verificar o fato na pendência da ação), II (prova que viabiliza autocomposição) ou III (conhecimento prévio que justifica ou evita a ação). Nenhuma ⇒ não cabe; indicar outro meio do § 2.
- **Competência:** foro onde a prova deva ser produzida ou do domicílio do réu (art. 381, § 2º); não previne a competência da ação futura (§ 3º); regra do § 4º para ente federal sem vara federal na localidade. Detalhamento: `legitimidade-e-competencia-digital`.
- **Limites:** a petição menciona com precisão os fatos e as razões da antecipação; o juiz não se pronuncia sobre a ocorrência do fato nem suas consequências; não se admite defesa ou recurso, salvo contra o indeferimento total (art. 382, §§ 2º e 4º).
- **Entrega a `producao-antecipada-de-prova-digital`:** hipótese escolhida, prova pedida (perícia, exibição, oitiva), fatos com item do inventário, risco de perda e urgência. Esta skill não redige a petição.

## 4. Registros: guarda e fornecimento

- O administrador de sistema autônomo guarda registros de conexão e o provedor de aplicações com fins econômicos, os de acesso, nos prazos e nas condições literais dos blocos [MCI-13] e [MCI-15]; ordem judicial pode obrigar outros provedores à guarda de fatos específicos em período determinado ([MCI-15], § 1º).
- O pedido **cautelar** de guarda por prazo superior é da autoridade policial ou administrativa ou do Ministério Público ([MCI-13], § 2º; [MCI-15], § 2º); o particular pede ao juízo ([MCI-22-23]: fundados indícios, utilidade, período). Investigação criminal ⇒ fronteira `criminal-adv-os`.
- Fluxo: `registros-exibicao-e-fornecimento` monta o BLOCO MATERIAL delimitado → pedido autônomo embrulhado por `peticao-inicial-digital`; urgência, por `tutela-e-pedidos-delimitados-digital`; ação em curso, pedido incidental.
- Nunca calcular quando o prazo de guarda termina; sinalizar urgência. Registro identifica terminal, não autor ([MCI-5]).

## 5. Ata notarial: requerimento ao tabelionato (ato que esta skill entrega)

Minuta de requerimento, não minuta da ata:

> **Ao Tabelião de Notas de** [tabelionato competente; regra de competência da ata presencial `PENDENTE DE FONTE`; para a eletrônica, ver [CNJ-100-20] abaixo].
> **Requerente:** [nome, qualificação e documento do cliente], por seu advogado [nome, OAB].
> **Objeto:** constatação, em data e hora da diligência, da existência e do modo de existir do conteúdo abaixo, com captura de imagem e, se possível, dos dados de arquivo ([CPC-381-384], art. 384, parágrafo único):
> 1. URL completa · perfil ou identificador · o que deve ser constatado (texto, imagem, vídeo, data visível, comentários) — um item por linha, só do inventário.
> **Acesso:** se exigir login, quem acessa e por qual conta (decisão do advogado).
> **Dados de terceiros:** limitar a constatação ao necessário.
> [local, data, assinatura do advogado].

Ata eletrônica: o Provimento CNJ 100/2020 atribui sua lavratura ao tabelião, remotamente, pelo e-Notariado ([CNJ-100-20]) — **vigência atual não conferida** ⇒ procedimento eletrônico, emolumentos e regras estaduais `PENDENTE DE FONTE`; consultar o tabelionato. Se instalado, o `tabelionato-os` (skill `ata-notarial-de-constatacao`) pode ser citado, sem dependência.

## 6. Perícia: quesitos-rascunho

- A prova pericial consiste em exame, vistoria ou avaliação; o juiz a indefere nas hipóteses do § 1º e pode substituí-la por prova técnica simplificada; nomeado o perito, as partes têm o prazo literal do art. 465, § 1º, para arguir impedimento ou suspeição, indicar assistente técnico e apresentar quesitos ([CPC3-464-465]).
- Quesitos-rascunho (o perito responde; o plugin não): o arquivo examinado corresponde ao item nº __ do inventário? há sinais de edição, recorte ou conversão? que metadados existem e o que indicam? o hash informado confere com o arquivo examinado (sem concluir autenticidade do fato)? a captura permite localizar o conteúdo de origem?
- Polo que **impugna** prova adversa: o pedido de autenticação ou perícia vai na defesa (`contestacao-e-defesa-digital`) ou na réplica e especificação (`replica-saneamento-e-provas-digital`).

## 7. Variantes por polo

- **ATIVO** (N1, N2 afetados): preservar antes de notificar ou ajuizar; ata e produção antecipada quando o conteúdo puder sumir.
- **PASSIVO** (N5 plataforma, N7 autor, N3 controlador): preservar a própria prova de defesa (registros de moderação, logs, versões dos termos) e mapear a prova adversa impugnável ([CPC-422], § 1º).
- **REGULADO** (N3, N4, N5, N6): preservar a prova de conformidade e juntá-la na instrução do processo administrativo federal ([PA-38]); no inquérito civil, apresentá-la como documento ou subsídio ([CNMP-IC-6], § 5º).
- **TERCEIRO** destinatário de ordem: guardar o que a ordem delimita, pelo período nela fixado, e documentar o cumprimento (`cumprimento-de-ordem-digital`).

## 8. Travas

- Não prometer que ata, perícia ou hash farão prova; o valor é apreciado no processo ([CPC3-369-373], art. 371).
- Não afirmar requisitos, emolumentos ou procedimento estaduais da ata notarial: não capturados ⇒ consultar o tabelionato e a norma local.
- Não redigir ata nem laudo; não calcular prazo de guarda; não pedir "todos os dados da conta".
- Dados de terceiros visíveis nas capturas: minimizar o que vai ao tabelião, ao perito e aos autos.

## 9. Saída e estado

Linha `POLO DO CLIENTE · NATUREZA <N1…N7> · POSIÇÃO <ATIVO|PASSIVO|REGULADO|TERCEIRO> · FASE <fiscalizado|investigado|autuado|sancionado|não se aplica>` + quadro de decisão por fragilidade + providência imediata + destino de cada meio + requerimento ao tabelionato ou quesitos, se cabíveis + "Andamento" atualizado. Estados por item: `MINUTA PARA REVISÃO HUMANA` (roteiro e requerimento) · `PENDENTE DE PROVA` (fragilidade não descrita; URL ou período ausente) · `PENDENTE DE FONTE` (norma estadual, procedimento eletrônico ou valor probatório) · `BLOQUEADO` (pedido de "certificar" ou "garantir" prova, barrado na revisão). Só um dos 5 por item, sem texto livre (meio sem uso agora vai a Pendências sem estado); a data de hoje nunca entra como fato do caso. Ao final, acionar `revisao-final-digital`.
