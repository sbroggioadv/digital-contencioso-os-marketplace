---
name: apelacao-e-contrarrazoes-digital
description: "Apelação e contrarrazões de apelação no caso digital, em qualquer polo (autor ou réu vencido, apelado, terceiro prejudicado), rito comum: cabimento, prazo e preparo com [ID], efeito suspensivo, preliminares do art. 1.009 § 1º, apelação adesiva e peça completa de interposição e razões a partir do BLOCO MATERIAL; sentença de Juizado vai ao recurso inominado."
---

# Apelação e contrarrazões — caso digital

**Guidance only:** minuta para revisão do advogado; não decide se recorrer, não promete provimento. Fonte única: `context/` (ver `context/INDICE.md`). Esqueleto: `templates/peca-apelacao.md.tpl`.

## Entrada (BLOCO MATERIAL)

Abrir o `00-perfil-do-caso.md` (linha POLO e seção "Andamento") e exigir: sentença integral, certidão ou dado da intimação, petição inicial, contestação, decisões interlocutórias não agraváveis e o BLOCO MATERIAL da frente do caso (1. POLO · 2. Fatos · 3. Fundamentos · 4. Pedidos · 5. Pendências). Sem o BLOCO MATERIAL, acionar antes a frente (`conta-perfil-suspensao`, `conteudo-reputacao-remocao`, `registros-exibicao-e-fornecimento`, `dados-pessoais-controversia`, `termos-da-plataforma-e-remedios` ou `regime-plataformas-e-conteudo`); objeto da ação desconhecido ⇒ só a pergunta do objeto, sem razões, mérito ou minuta estrutural. A apelação **não reabre o mérito material**: aponta onde a sentença diverge do BLOCO MATERIAL, da prova dos autos ou da norma com `[ID]`; fato novo só no limite do art. 1.014 ([CPC3-1010-1014]). `[ID]` de direito material na peça = só os que o BLOCO MATERIAL trouxe; esta skill acrescenta apenas `[ID]` processual (CPC, Lei 9.099, CF 102/105/109).

## Guard mínimo

Norma, tema e prazo só com `[ID]` (sem `[ID]` ⇒ `PENDENTE DE FONTE` na linha) · IP identifica terminal, não pessoa · hash declarado ≠ verificado · sem promessa de resultado · um caso = um cliente = um polo; sem polo, só as perguntas · ao final, acionar `revisao-final-digital`.

## 1. Cabimento, legitimidade e rito

- Da sentença cabe apelação; questões da fase de conhecimento não agraváveis vão em preliminar da apelação ou nas contrarrazões ([CPC-1009], § 1º), com intimação do recorrente para responder em 15 dias (§ 2º).
- Legitimidade: parte vencida, terceiro prejudicado (que demonstra a possibilidade de a decisão atingir direito de que se afirme titular) e Ministério Público ([CPC3-994-998], art. 996).
- **Juizado:** da sentença cabe recurso para o próprio Juizado ([JEC3-41-46], art. 41) ⇒ usar `recurso-inominado-digital`, não esta skill.
- Causa com União, autarquia ou empresa pública federal é da Justiça Federal nas condições e com as exceções do inciso I ([CF3C-109-I]). Natureza: a Agência Nacional de Proteção de Dados (ANPD) é autarquia de natureza especial ([NAT-LGPD-55A], redação da Lei 15.352/2026); a Anatel integra a Administração Pública Federal indireta, em regime autárquico especial ([NAT-ANATEL-8]). Enquadramento do caso concreto e tribunal de destino: `legitimidade-e-competencia-digital`. Regra de competência recursal do TRF não capturada ⇒ `PENDENTE DE FONTE`.

## 2. Prazo, preparo e tempestividade

- Prazo para interpor e para responder: 15 dias ([CPC-1003], § 5º), contados da intimação do advogado ([CPC-1003], caput); prazo em dias úteis ([CPC-219]). **Nunca calcular a data final:** registrar o prazo literal, o termo inicial documentado e "data final a conferir pelo advogado".
- Feriado local: comprovar no ato de interposição ([CPC-1003], § 6º).
- Preparo comprovado na interposição, sob pena de deserção; dispensas, insuficiência (5 dias), recolhimento em dobro, justo impedimento e erro de guia ([CPC3C-1007]). Valor das custas: tabela do tribunal não capturada ⇒ `PENDENTE DE FONTE`; gratuidade só com decisão nos autos.

## 3. Efeitos

- Regra: efeito suspensivo ([CPC3-1010-1014], art. 1.012). **Exceção relevante no caso digital:** produz efeitos de imediato a sentença que confirma, concede ou revoga tutela provisória (art. 1.012, § 1º, V) — ordem de remoção, restabelecimento ou fornecimento confirmada na sentença pode ser cumprida provisoriamente (§ 2º; ver `cumprimento-de-ordem-digital`).
- Pedido de efeito suspensivo nas hipóteses do § 1º: ao tribunal (entre interposição e distribuição) ou ao relator (já distribuída), com probabilidade de provimento **ou** fundamentação relevante e risco de dano grave ou de difícil reparação ([CPC3-1010-1014], art. 1.012, §§ 3º e 4º). Peça autônoma, se necessária, na variante "requerimento de efeito suspensivo" do esqueleto.
- Devolutividade: matéria impugnada e questões do capítulo impugnado; julgamento imediato do mérito nas hipóteses do art. 1.013, §§ 3º e 4º; capítulo de tutela provisória impugnável na apelação (§ 5º) ([CPC3-1010-1014]).

## 4. Variantes por polo (natureza N1–N7 × posição)

| Cliente | Peça | Foco |
|---|---|---|
| ATIVO vencido (N1 pessoa natural ou N2 PJ afetada contra N5 plataforma, N3 controlador ou N7 autor do conteúdo) | apelação | erro da sentença contra o BLOCO MATERIAL: pedido delimitado (URL, identificador, período, direito) ignorado; prova da origem desconsiderada; fundamento sem enfrentamento |
| PASSIVO vencido (N5, N6, N3, N4, N7) | apelação | ordem indelimitada, autoria por IP sem prova de pessoa, condenação sem prova do dano (cada uma com o `[ID]` do BLOCO MATERIAL, ex.: [MCI-18-19], [MCI-5], [STJ-1784156]); multa ([CPC-536-537]) |
| Apelado (qualquer posição) | contrarrazões | manutenção da sentença, preliminares do art. 1.009, § 1º ([CPC-1009]), inadmissibilidade (deserção, intempestividade, falta de impugnação específica) |
| Vencidos autor e réu | apelação adesiva | subordinada à principal, no prazo de resposta, dirigida ao mesmo órgão; não conhecida se houver desistência ou inadmissão da principal ([CPC3-994-998], art. 997, § 2º) |
| Terceiro prejudicado | apelação | demonstração do art. 996, parágrafo único, antes do mérito ([CPC3-994-998]) |

Polo ausente ⇒ devolver só as perguntas (quem venceu o quê, capítulo, intimação). Tese do polo contrário aparece só como "tese adversa a enfrentar".

## 5. Peça completa (esqueleto `templates/peca-apelacao.md.tpl`)

1. **Interposição** dirigida ao juízo de primeiro grau ([CPC3-1010-1014], art. 1.010, caput), com nomes e qualificação das partes, tempestividade, preparo e pedido de remessa ao tribunal (a admissibilidade é do tribunal: § 3º).
2. **Razões** ao tribunal: síntese do processo e da sentença (fatos com item de prova e origem, do BLOCO MATERIAL); preliminares ([CPC-1009], § 1º, se houver); exposição do fato e do direito; razões de reforma ou de nulidade, capítulo por capítulo; pedido de nova decisão ([CPC3-1010-1014], art. 1.010, I a IV).
3. **Pedidos:** conhecimento e provimento para reformar ou anular o capítulo X; julgamento imediato do mérito quando cabível ([CPC3-1010-1014], art. 1.013, § 3º); efeito suspensivo, se for o caso; inversão da sucumbência ([CPC-85]). Regra geral: honorários nos recursos são devidos cumulativamente ([CPC3L-85-P1-P2], § 1º); o tribunal, ao julgar o recurso, majora os fixados pelo trabalho adicional, sem ultrapassar os limites dos §§ 2º e 3º para a fase de conhecimento ([CPC3L-85-P11]). A majoração não entra nos pedidos do apelante nem da adesiva; fica nas contrarrazões (direção do benefício: confirmar com o advogado). Conteúdo do § 3º não capturado ⇒ `PENDENTE DE FONTE`.
4. **Valor da causa:** o já fixado nos autos; não se atribui novo valor na apelação.
5. **Provas:** só documentos dos autos ou fato novo admitido ([CPC3-1010-1014], art. 1.014); documento novo sem essa base ⇒ `PENDENTE DE PROVA`.
6. **Fecho:** local, data e assinatura do advogado.

Contrarrazões: variante `peca=contrarrazoes`, dirigidas ao juízo de primeiro grau, que remete os autos ao tribunal sem juízo de admissibilidade ([CPC3-1010-1014], art. 1.010, §§ 1º a 3º), em 15 dias ([CPC3-1010-1014], art. 1.010, § 1º); havendo apelação adesiva do apelado, o apelante responde a ela no mesmo juízo (§ 2º).

Apelação adesiva: variante `peca=apelacao-adesiva`, dirigida ao órgão perante o qual a principal foi interposta, no prazo de resposta, subordinada à principal ([CPC3-994-998], art. 997, § 2º, I a III).

## 6. O que fica `PENDENTE DE FONTE`

Regimento e custas do tribunal; § 3º do art. 85; competência recursal federal; súmula ou precedente sem texto capturado (só número e 🟡, sem tese). Regime de responsabilidade da plataforma: o capítulo vem do BLOCO MATERIAL de `regime-plataformas-e-conteudo`; se a apelação citar o Tema 987 ou 533, usar o `[ID]` que a frente trouxe **e** o rótulo "fonte parcial — embargos julgados em 17/06/2026, acórdão não publicado" (Tema 533: "fonte parcial — mérito publicado; embargos suspensos para posterior proclamação, sem resultado proclamado", [T533-SITUACAO], [T533ED-DEC-2409]) na mesma linha.

## 7. Fechamento

**Entrega (regra única):** a peça não traz `{{`, `}}`, `[[`, marcador de variante nem comentário HTML do esqueleto; campo sem dado vira `[CAMPO — PENDENTE DE PROVA]`, com o nome do campo em maiúsculas. Só a variante do polo e do ato do caso entra; alternativa que a prova não resolve vai às pendências, fora do corpo. Peça só do polo do cliente; polo ausente ou contraditório ⇒ só as perguntas, mesmo se mandarem não perguntar. Tema 987/533 com `[ID]` + rótulo na mesma linha, também no resumo. Estados: só os 5, um por item. A peça é gravada na pasta do caso. Atualizar a seção "Andamento" do `00-perfil-do-caso.md` (fase: apelação; ato praticado; decisão recorrida; próximo ato; prazo literal com `[ID]`). Entregar a peça com a linha POLO e acionar `revisao-final-digital`; o estado de cada item é o que a revisão fixar (`MINUTA PARA REVISÃO HUMANA` · `PENDENTE DE PROVA` · `PENDENTE DE FONTE` · `BLOQUEADO` · `FORA DO RECORTE`).
