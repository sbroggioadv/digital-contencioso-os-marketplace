---
name: agravo-e-embargos-de-declaracao-digital
description: "Agravo de instrumento, contraminuta, agravo interno e embargos de declaração no caso digital, em qualquer polo: cabimento pelo art. 1.015 capturado, prazos com [ID], efeito suspensivo ou tutela recursal, instrução, multa e prequestionamento pelos embargos; peça completa a partir do BLOCO MATERIAL, rito comum; no Juizado, o que não estiver capturado fica PENDENTE DE FONTE."
---

# Agravo e embargos de declaração — caso digital

**Guidance only:** minuta para revisão do advogado; não decide se recorrer, não promete provimento nem efeito suspensivo. Fonte única: `context/` (ver `context/INDICE.md`). Esqueleto: `templates/peca-agravo-ed.md.tpl` (variantes `peca=agravo-instrumento`, `contraminuta`, `agravo-interno`, `embargos-declaracao`, `resposta-embargos`).

## Entrada (BLOCO MATERIAL)

Abrir o `00-perfil-do-caso.md` (linha POLO e seção "Andamento") e exigir: decisão recorrida integral, dado da intimação, a petição que gerou a decisão e o BLOCO MATERIAL da frente do caso (1. POLO · 2. Fatos · 3. Fundamentos · 4. Pedidos · 5. Pendências). Sem o BLOCO MATERIAL, acionar antes a frente (`conta-perfil-suspensao`, `conteudo-reputacao-remocao`, `registros-exibicao-e-fornecimento`, `dados-pessoais-controversia`, `termos-da-plataforma-e-remedios` ou `regime-plataformas-e-conteudo`). Esta skill **não reabre o mérito material**: aponta o erro, a omissão ou o vício da decisão contra o BLOCO MATERIAL e a norma processual. `[ID]` de direito material = só os do BLOCO MATERIAL; aqui entram apenas `[ID]` processuais.

## Guard mínimo

Norma, tema e prazo só com `[ID]` (sem `[ID]` ⇒ `PENDENTE DE FONTE` na linha) · IP identifica terminal, não pessoa · hash declarado ≠ verificado · sem promessa de resultado · um caso = um cliente = um polo; sem polo, só as perguntas · ao final, acionar `revisao-final-digital`.

## 1. Qual recurso (decisão recorrida → peça)

| Decisão | Peça | Fonte |
|---|---|---|
| Interlocutória sobre tutela provisória (remoção, restabelecimento, fornecimento liminar) | agravo de instrumento | [CPC-1015], I |
| Interlocutória sobre exibição ou posse de documento ou coisa (registros, dados, logs) | agravo de instrumento | [CPC-1015], VI |
| Interlocutória em liquidação, cumprimento de sentença ou execução (astreintes, bloqueio) | agravo de instrumento | [CPC-1015], parágrafo único |
| Outra interlocutória | conferir o rol inteiro ([CPC3L-1015], incisos I a XIII e parágrafo único); se a hipótese estiver no rol, agravo de instrumento, sob pena de preclusão (só a decisão que não comporta agravo escapa dela, [CPC-1009], § 1º); fora do rol, preliminar de apelação ou contrarrazões ⇒ `apelacao-e-contrarrazoes-digital`. Na dúvida, confirmar com o advogado antes de reservar a questão | [CPC3L-1015]; "outros casos expressamente referidos em lei" (XIII): lei específica não capturada ⇒ `PENDENTE DE FONTE` |
| Decisão do relator | agravo interno | [CPC3-1016-1021], art. 1.021 |
| Qualquer decisão com obscuridade, contradição, omissão ou erro material | embargos de declaração | [CPC3-1022-1026], art. 1.022 |
| Decisão no Juizado | embargos de declaração contra sentença ou acórdão (item 4); agravo no Juizado não capturado ⇒ `PENDENTE DE FONTE`; sentença ⇒ `recurso-inominado-digital` | [JEC3L-48-50] |

## 2. Agravo de instrumento

- **Prazo:** 15 dias ([CPC-1003], § 5º), da intimação do advogado (caput), em dias úteis ([CPC-219]); feriado local comprovado na interposição (§ 6º). Registrar o prazo literal e o termo inicial documentado; **nunca calcular a data final**.
- **Endereçamento e requisitos:** diretamente ao tribunal competente, com nomes das partes, exposição do fato e do direito, razões de reforma ou invalidação, pedido, nome e endereço dos advogados ([CPC3-1016-1021], art. 1.016).
- **Instrução:** peças obrigatórias do art. 1.017, I ([CPC3-1016-1021]), ou declaração de inexistência (II); em autos eletrônicos, dispensadas (§ 5º); custas e porte quando devidos (§ 1º); preparo e deserção ([CPC3C-1007]); vício sanável pelo art. 932, parágrafo único (§ 3º). Autos físicos: juntada na origem em 3 dias, sob pena de inadmissibilidade se arguido e provado (art. 1.018, §§ 2º e 3º).
- **Efeito suspensivo ou tutela recursal:** o relator pode atribuir efeito suspensivo ou antecipar a pretensão recursal ([CPC3-1016-1021], art. 1.019, I). Pedir no tópico próprio, com probabilidade de provimento e risco de dano grave ([CPC3-994-998], art. 995, parágrafo único). Sem promessa de deferimento.
- **Contraminuta (agravado):** 15 dias da intimação ([CPC3-1016-1021], art. 1.019, II), com documentos que entender necessários.

## 3. Agravo interno

Contra decisão do relator, ao órgão colegiado, no prazo de 15 dias ([CPC-1003], § 5º); impugnar **especificadamente** os fundamentos da decisão agravada (art. 1.021, § 1º); dirigido ao relator, resposta em 15 dias (§ 2º); o agravante impugna cada fundamento (§ 1º), e veda-se ao relator limitar-se a reproduzir os fundamentos da decisão agravada para julgar improcedente o agravo (§ 3º); risco de multa entre 1% e 5% do valor atualizado da causa se manifestamente inadmissível ou improcedente por unanimidade (§ 4º), condicionando outro recurso ao depósito (§ 5º) ([CPC3-1016-1021]). Avisar o cliente desse risco, sem quantificar resultado.

## 4. Embargos de declaração

- **Cabimento:** obscuridade, contradição, omissão (inclusive tese de casos repetitivos ou IAC não enfrentada e condutas do art. 489, § 1º) e erro material ([CPC3-1022-1026], art. 1.022). Conteúdo do art. 489, § 1º, não capturado ⇒ citar só a remissão.
- **Prazo e forma:** 5 dias, petição ao prolator indicando o vício, sem preparo ([CPC3-1022-1026], art. 1.023); prazo do art. 229 aplicável (§ 1º; conteúdo do art. 229 não capturado ⇒ `PENDENTE DE FONTE`). Embargado: 5 dias quando o acolhimento puder modificar a decisão ([CPC3-1022-1026], art. 1.023, § 2º).
- **Juizado:** cabem contra sentença ou acórdão nos casos do CPC; erro material corrigível de ofício; por escrito ou oralmente, em 5 dias contados da ciência da decisão; interrompem o prazo para o recurso ([JEC3L-48-50], arts. 48 a 50). Forma de contagem no Juizado não capturada ⇒ `PENDENTE DE FONTE`.
- **Efeitos:** não suspendem e **interrompem** o prazo de outros recursos ([CPC3-1022-1026], art. 1.026); suspensão da eficácia só nas condições do § 1º.
- **Prequestionamento:** os elementos suscitados consideram-se incluídos no acórdão, ainda que os embargos sejam inadmitidos ou rejeitados, se o tribunal superior reconhecer o vício ([CPC3-1022-1026], art. 1.025). Ponte para `recursos-excepcionais-digital`.
- **Riscos:** multa de até 2% se protelatórios; até 10% na reiteração, com depósito prévio; terceiros embargos não admitidos após 2 protelatórios ([CPC3-1022-1026], art. 1.026, §§ 2º a 4º). Embargos contra decisão do relator podem ser conhecidos como agravo interno, com intimação para complementar ([CPC3-1022-1026], art. 1.024, § 3º).

## 5. Variantes por polo (natureza N1–N7 × posição)

| Cliente | Situação típica no caso digital | Peça |
|---|---|---|
| ATIVO (N1, N2) com tutela negada | remoção por URL, restabelecimento por identificador ou fornecimento por período indeferidos | agravo de instrumento com pedido de tutela recursal |
| PASSIVO (N5, N6, N3, N4, N7) com tutela deferida contra si | ordem indelimitada, prazo ou multa inexequível, fornecimento sem os requisitos do BLOCO MATERIAL | agravo de instrumento com pedido de efeito suspensivo |
| Agravado (qualquer posição) | defesa da decisão; inadmissibilidade (intempestividade, peça faltante em autos físicos, hipótese fora do rol de [CPC3L-1015]) | contraminuta |
| Qualquer polo | vício na decisão; prequestionar para REsp/RE | embargos de declaração ou resposta |
| TERCEIRO (ex.: provedor destinatário de ordem de fornecimento) | legitimidade do art. 996 antes do mérito ([CPC3-994-998]) | agravo de instrumento |

Polo ausente ou contraditório ⇒ devolver só as perguntas, mesmo se mandarem não perguntar. A peça é sempre do lado do cliente da linha POLO: autor do conteúdo condenado (N7) é quem embarga ou agrava contra a condenação, nunca o autor da ação. Tese do polo contrário só como "tese adversa a enfrentar".

## 6. Peça completa (esqueleto `templates/peca-agravo-ed.md.tpl`)

Endereçamento (tribunal, relator ou prolator) · qualificação das partes e advogados · tempestividade e preparo (ou dispensa) · síntese da decisão e dos fatos com item de prova e origem (do BLOCO MATERIAL) · cabimento com `[ID]` · razões (ou indicação do vício, ponto a ponto) · pedido de efeito suspensivo ou tutela recursal, se cabível · pedidos (reforma, invalidação, integração ou esclarecimento) · valor da causa: o já fixado nos autos · documentos (rol do art. 1.017 ou declaração, [CPC3-1016-1021]; nada fora dos autos sem origem ⇒ `PENDENTE DE PROVA`) · fecho com local, data e assinatura.

## 7. Fechamento

**Entrega (regra única):** a peça não traz `{{`, `}}`, `[[`, marcador de variante nem comentário HTML do esqueleto; campo sem dado vira `[CAMPO — PENDENTE DE PROVA]`, com o nome do campo em maiúsculas. Só a variante da peça, do polo e do rito do caso entra; alternativa excludente que a prova não resolve (tese A/B, autos físicos ou eletrônicos) sai do corpo e vai às pendências, e o vício pedido pelo cliente fica no corpo, não em anexo interno. Estados: só os 5, um por item. A peça é gravada na pasta do caso. Atualizar a seção "Andamento" do `00-perfil-do-caso.md` (fase recursal; ato praticado; decisão recorrida; próximo ato; prazo literal com `[ID]`). Se a decisão tratar do regime da plataforma e citar o Tema 987 ou 533, manter o `[ID]` vindo do BLOCO MATERIAL **e** o rótulo "fonte parcial — embargos julgados em 17/06/2026, acórdão não publicado" (Tema 533: "fonte parcial — mérito publicado; embargos suspensos para posterior proclamação, sem resultado proclamado", [T533-SITUACAO], [T533ED-DEC-2409]) na mesma linha, também no resumo e no crivo, com o texto do rótulo por extenso. Entregar com a linha POLO e acionar `revisao-final-digital`, que fixa o estado de cada item (`MINUTA PARA REVISÃO HUMANA` · `PENDENTE DE PROVA` · `PENDENTE DE FONTE` · `BLOQUEADO` · `FORA DO RECORTE`).
