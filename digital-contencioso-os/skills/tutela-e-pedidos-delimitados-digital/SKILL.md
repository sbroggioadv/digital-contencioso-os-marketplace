---
name: tutela-e-pedidos-delimitados-digital
description: "Tutela provisória no caso digital, para quem pede e para quem responde, no rito comum ou no Juizado: petição de tutela de urgência incidental, tutela antecipada ou cautelar requerida em caráter antecedente, pedidos delimitados por objeto e multa; manifestação sobre o pedido de tutela, contestação da cautelar antecedente, estabilização e manifestação do destinatário não-parte. A inicial completa só incorpora o capítulo."
---

# Tutela e pedidos delimitados — caso digital

**Guidance only:** a peça depende do BLOCO MATERIAL e da prova do caso; não promete deferimento. Fonte única: `context/` (ver `context/INDICE.md`). Esqueleto: `templates/peca-tutela.md.tpl`. Dono da tutela antecedente (CPC 303 a 310): esta skill redige; `peticao-inicial-digital` só incorpora o capítulo. Ao final, a minuta vai a `revisao-final-digital`.

**Guard mínimo:** norma, tema e prazo só com `[ID]` (sem `[ID]` ⇒ `PENDENTE DE FONTE` na linha) · IP identifica terminal, não pessoa · hash declarado ≠ verificado · sem promessa de resultado · um caso = um cliente = um polo; sem polo, só as perguntas · ao final, acionar `revisao-final-digital`.

**Entrega (regra única):** a peça não traz `{{`, `}}`, `[[`, marcador de variante nem comentário HTML do esqueleto; campo sem dado vira `[CAMPO — PENDENTE DE PROVA]`, com o nome do campo em maiúsculas. Só a variante do polo, do rito e da forma do caso entra; alternativa que a prova não resolve vai às pendências, fora do corpo. Peça só do polo do cliente; polo ausente ou contraditório ⇒ só as perguntas, mesmo se mandarem não perguntar. Tema 987/533: `[ID]` + rótulo "fonte parcial" na mesma linha, também no resumo. Estados: só os 5, um por item. A peça é gravada na pasta do caso.

## Entrada (BLOCO MATERIAL)

1. BLOCO MATERIAL devolvido pela frente (`conta-perfil-suspensao`, `conteudo-reputacao-remocao`, `registros-exibicao-e-fornecimento`, `dados-pessoais-controversia`, `termos-da-plataforma-e-remedios`, `regime-plataformas-e-conteudo`): polo, fatos com prova e origem, fundamentos com `[ID]`, pedidos delimitados e pendências. Sem ele, acionar a frente antes; esta skill não reabre o mérito e só cita `[ID]` de direito material que estiver no BLOCO MATERIAL.
2. Inventário e matriz de prova (`origem-e-cronologia-da-prova-digital`, `matriz-fato-prova-dano-digital`); competência definida por `legitimidade-e-competencia-digital`.
3. Para responder: a petição de tutela e a decisão, com data de intimação.
4. `00-perfil-do-caso.md`, seção "Andamento": ler ao abrir; atualizar ao fechar (ato, próximo ato, prazo literal com `[ID]`).

## 1. Tabela de pedidos (núcleo da peça)

| # | Pedido | Objeto delimitado | Destinatário | Fundamento (`[ID]` do BLOCO MATERIAL) | Prova (inventário) | Tutela? | Multa? | Estado |
|---|---|---|---|---|---|---|---|---|

Delimitação (os requisitos vêm do BLOCO MATERIAL; faltando, acionar a frente):
- **Conteúdo:** URL ou identificador estável que localize o material sem dúvida; ordem com identificação clara e específica ([MCI-18-19], § 1º, se no bloco). Sem URL ⇒ `PENDENTE DE PROVA`.
- **Conta:** identificador; o que restabelecer (acesso, conteúdo, dados); período.
- **Registros:** indícios, justificativa e período ([MCI-22-23], se no bloco). Faltando ⇒ `PENDENTE DE PROVA`.
- **Dados pessoais:** direito do titular por inciso e categoria de dados ([LGPD-18], se no bloco).
- **Indenização:** valor só com documento; dano moral sem valor inventado (o advogado define).
- Pedido amplo ⇒ `PENDENTE DE PROVA` até delimitar; pedido inventado ⇒ `BLOQUEADO`.

## 2. Pedir tutela (polo ATIVO)

- **Urgência incidental:** probabilidade do direito e perigo de dano ou risco ao resultado útil; caução; liminar ou após justificação; vedação se houver perigo de irreversibilidade ([CPC-297-300], art. 300).
- **Tutela antecipada antecedente:** urgência contemporânea à propositura; petição limitada ao requerimento da tutela e à indicação do pedido final, com exposição da lide, do direito e do perigo; valor da causa considerando o pedido final; declarar que se vale do benefício; concedida, aditar em 15 dias ou prazo maior fixado, sob pena de extinção ([CPC3-303-310], art. 303, §§ 1º a 6º). A tutela estabiliza se da decisão não for interposto o recurso ([CPC3-303-310], art. 304).
- **Cautelar antecedente:** lide e fundamento, exposição sumária do direito e perigo; efetivada, pedido principal em 30 dias nos mesmos autos; cessação da eficácia nas hipóteses do art. 309 ([CPC3-303-310], arts. 305, 308 e 309).
- **Conteúdo na internet:** se o BLOCO MATERIAL trouxer o § 4º do art. 19 do Marco Civil ([MCI-18-19]), apresentar ao advogado o confronto entre ele e o art. 300 do CPC, sem escolher.
- **Relação de consumo no bloco:** liminar e multa do art. 84 do CDC ([CDC-84], §§ 3º e 4º).
- **Tutela específica, resultado prático equivalente, perdas e danos sem prejuízo da multa** ([CPC-497-500]); multa fixável em tutela provisória, modificável, devida desde o descumprimento ([CPC-536-537], art. 537). Valor da multa: decisão do advogado, nunca calculado.

## 3. Responder à tutela (polo PASSIVO ou TERCEIRO)

- Confrontar cada requisito do art. 300 com a prova dos autos: probabilidade, perigo, irreversibilidade, caução ([CPC-297-300]).
- Cautelar antecedente: contestar e indicar provas em 5 dias; sem contestação, os fatos presumem-se aceitos ([CPC3-303-310], arts. 306 e 307).
- Tutela antecipada antecedente concedida: registrar ao advogado o efeito do art. 304 (estabilização sem o recurso) e a via do art. 304, § 2º; o recurso é redigido por `agravo-e-embargos-de-declaracao-digital` ([CPC-1015], inciso I).
- Apontar pedido indelimitado (URL, identificador, período) e pedir modificação ou exclusão da multa vincenda nas hipóteses do art. 537, § 1º ([CPC-536-537]).
- Plataforma ou autor do conteúdo: só nas hipóteses do rol taxativo do item 5 do Tema 987 e se o BLOCO MATERIAL o trouxer, tutela para impedir a retirada do conteúdo (item 5.6, [T987ED-ITEM5], fonte parcial — embargos julgados em 17/06/2026, acórdão não publicado). Sem afirmar ausência de responsabilidade e sem prometer revogação.

## 4. Variantes por polo (natureza N1–N7 × posição)

| Polo | Variante |
|---|---|
| ATIVO N1/N2 afetado (conta, conteúdo, reputação) | pede remoção, restabelecimento ou preservação, por item da tabela |
| ATIVO N1 titular de dados | pede o direito do titular por inciso, contra o controlador |
| ATIVO N7 autor do conteúdo removido | pede restabelecimento ou que não se retire, com o fundamento do bloco |
| PASSIVO N5 plataforma / N6 provedor de conexão | resposta: requisitos, delimitação, multa, viabilidade técnica documentada |
| PASSIVO N3 controlador / N4 operador | resposta: legitimidade do pedido de dados (direitos obtidos do controlador, art. 18, caput, [LGPD-18]); o operador responde solidariamente nos casos do art. 42, § 1º, I, salvo as excludentes do art. 43 ([LGPD-42-45]), se no bloco |
| PASSIVO N7 autor do conteúdo | resposta: delimitação e fundamento do bloco, sem tese de plataforma |
| TERCEIRO destinatário de ordem | só manifestação sobre alcance e viabilidade, sem mérito |

## 5. Variantes por rito

- **Comum:** §§ 2 e 3 integrais.
- **Juizado:** as causas de honra, reputação ou personalidade e de indisponibilização de conteúdo "poderão ser apresentadas" nos juizados especiais (§ 3º do art. 19 do Marco Civil, se no bloco, [MCI-18-19]), e limites do [JEC-3]; cabimento da tutela antecedente (CPC 303 a 310) no Juizado: `PENDENTE DE FONTE`; tutela incidental na inicial do Juizado: decisão do advogado, com `[CPC-297-300]`.

## 6. Peça completa (montar pelo template)

Endereçamento ao juízo competente · qualificação · fatos com prova e origem · fundamentos com `[ID]` · pedidos (tabela do § 1, tutela e multa) · **valor da causa**: na antecipada antecedente, considerado o pedido de tutela final ([CPC3-303-310], art. 303, § 4º); na cautelar antecedente, pelos arts. 291 e 292 sobre o pedido principal ([CPC3-291-292]; o art. 305 não traz regra de valor, [CPC3-303-310]), ou `PENDENTE DE FONTE` se o advogado não o definir · provas · fecho (local, data, advogado, OAB). Na resposta: capítulos por requisito impugnado e pedido de indeferimento ou revogação, sem promessa.

## 7. Saída e estados

Linha `POLO DO CLIENTE · NATUREZA <N1…N7> · POSIÇÃO <ATIVO|PASSIVO|REGULADO|TERCEIRO> · FASE não se aplica` + tabela + peça + "Andamento" atualizado. Estados por item: `MINUTA PARA REVISÃO HUMANA` · `PENDENTE DE PROVA` (prova, URL, identificador ou período ausente; pedido indelimitado) · `PENDENTE DE FONTE` (pedido que depende de fonte não capturada) · `BLOQUEADO` (pedido inventado). Ao final, acionar `revisao-final-digital`.
