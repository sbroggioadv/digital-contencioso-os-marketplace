---
name: producao-antecipada-de-prova-digital
description: "Produção antecipada de prova no caso digital, como ação autônoma, para o requerente e para o interessado citado: redige a petição com as razões da antecipação, os fatos sobre os quais a prova recai, a prova pedida (perícia técnica, exibição de documento ou coisa, oitiva), competência e valor da causa, sobre o BLOCO MATERIAL e a decisão de cabimento da preservação. Acionar para pedir prova antes da ação no caso digital."
---

# Produção antecipada de prova — caso digital

**Guidance only:** minuta da ação autônoma de produção antecipada para revisão do advogado. Quem decide se cabe é `preservacao-e-encaminhamento-probatorio`; esta skill só redige. Fonte única: `context/`, pelo `context/INDICE.md`.

## Guard mínimo
- Norma, tema e prazo só com `[ID]` do `context/`; sem `[ID]` ⇒ `PENDENTE DE FONTE` na linha.
- IP identifica terminal, não pessoa; hash declarado ≠ hash verificado, e hash não é autenticidade.
- Sem promessa de resultado (deferimento, conteúdo da prova, identificação de autor).
- Um caso = um cliente = um polo; polo ausente ou contraditório no `00-perfil-do-caso.md` ⇒ só as perguntas, mesmo se mandarem não perguntar.
- Ao final, acionar `revisao-final-digital`.

## Entrada (BLOCO MATERIAL)

1. Ler `00-perfil-do-caso.md` (polo e "Andamento").
2. Receber a decisão de cabimento de `preservacao-e-encaminhamento-probatorio` (hipótese do art. 381, prova escolhida, risco de perda) e o BLOCO MATERIAL da frente (fatos com prova e origem; fundamentos com `[ID]`; objeto delimitado). Ausente qualquer dos dois ⇒ acionar a preservação ou a frente antes de redigir.
3. **Não reabrir o mérito:** o juiz não se pronuncia sobre a ocorrência do fato nem sobre suas consequências jurídicas ([CPC-381-384], art. 382, § 2º); a petição descreve o fato a provar e a razão da urgência, sem pedir declaração de ilicitude nem condenação. Fundamento material só pelos `[ID]` do BLOCO MATERIAL.

## 1. Donos e fronteiras

- Fornecimento de registros com base no Marco Civil em caráter autônomo: quem embrulha é `peticao-inicial-digital` (a frente de registros produz o bloco). Aqui, registros só como parte de perícia ou exibição definida pela preservação, com os requisitos que o bloco trouxer.
- Ata notarial: lavrada pelo tabelião ([CPC-381-384], art. 384); o advogado junta, não substitui. Se o objetivo é só documentar o que está na tela, encaminhar ao tabelião pela preservação, não por esta ação.
- Medida de apreensão ou bloqueio urgente: tutela cautelar antecedente, redigida por `tutela-e-pedidos-delimitados-digital`.

## 2. Hipóteses ([CPC-381-384], art. 381)

Enquadrar com fato do bloco, uma hipótese por linha:
- **I — risco de perda:** fundado receio de que a verificação se torne impossível ou muito difícil na pendência da ação (conteúdo que pode ser apagado, conta que será encerrada, dado sujeito a prazo de guarda — o prazo só pelo literal do bloco, nunca calculado).
- **II — autocomposição:** a prova pode viabilizar acordo ou outro meio de solução.
- **III — conhecer antes de litigar:** o prévio conhecimento dos fatos pode justificar ou evitar a ação.
- **§ 5º — justificação** de fato ou relação jurídica para simples documento, sem caráter contencioso.

## 3. Competência

- Foro onde a prova deva ser produzida ou do domicílio do réu (art. 381, § 2º); a produção antecipada não previne o juízo da ação futura (§ 3º); juízo estadual quando, contra União, autarquia ou empresa pública federal, não houver vara federal na localidade (§ 4º).
- Plataforma estrangeira: competência brasileira e PJ com filial no Brasil ([CPC-21]). Análise do foro: `legitimidade-e-competencia-digital`.
- Juizado: cabimento da produção antecipada no rito da Lei 9.099 não capturado ⇒ `PENDENTE DE FONTE`; a minuta parte do rito comum.

## 4. Variantes por polo

| Cliente | Papel | O que a peça faz |
|---|---|---|
| ATIVO (N1, N2, N3 ou N5) | requerente | expõe as razões da antecipação e os fatos com precisão (art. 382, caput); pede a citação dos interessados (§ 1º) e a prova delimitada; recurso só contra decisão que indeferir totalmente a produção da prova que pleiteou (§ 4º) |
| PASSIVO (N5, N6, N3, N7 ou outro) | interessado citado | não se admite defesa nem recurso (§ 4º); a única exceção do § 4º é o recurso contra decisão que indeferir totalmente a produção da prova pleiteada pelo requerente originário, e beneficia este, não o interessado; pode requerer outra prova sobre o mesmo fato, salvo excessiva demora (§ 3º); na perícia, indica assistente e quesitos; pede sigilo e minimização de dados de terceiros |

A peça do interessado é manifestação, não contestação: sem tese de mérito.

## 5. Prova pedida (delimitada)

- **Perícia técnica:** objeto (arquivo, conta, URL, sistema), pergunta técnica, quesitos iniciais e pedido de nomeação de perito especializado ([CPC3-464-465]); hash e metadados como pontos a verificar pelo perito, nunca como fato já certificado.
- **Exibição de documento ou coisa:** descrição do documento, dado ou categoria; finalidade, com os fatos a que se relaciona; e as circunstâncias que indicam que existe e está em poder do requerido ([CPC-396-404], art. 397, I a III).
- **Oitiva:** pessoa, fato e razão da urgência; regras de inquirição não capturadas ⇒ `PENDENTE DE FONTE` nessa linha.
- Pedido sem objeto identificado (URL, identificador, período, arquivo) não entra: volta como `PENDENTE DE PROVA` com o campo faltante.
- Dados pessoais ou registros: pedir segredo de justiça só se o bloco trouxer a base, citando o `[ID]` dele.

## 6. Valor da causa e efeitos

- Valor certo, ainda que sem conteúdo econômico imediato ([CPC3-291-292], art. 291): estimativa justificada pelo advogado, sem número inventado.
- Os autos ficam em cartório por 1 mês para cópias e certidões e depois são entregues ao promovente ([CPC-381-384], art. 383): registrar no "Andamento" como fato do procedimento, sem data calculada.
- A prova produzida alimenta a ação futura (`peticao-inicial-digital`) ou a negociação; a skill não afirma o resultado.

## 7. Montagem da peça

Usar `templates/peca-producao-antecipada.md.tpl` (variantes: requerente · interessado citado · justificação sem caráter contencioso):
1. Endereçamento ao juízo do § 2º do art. 381.
2. Qualificação do requerente e dos interessados a citar (plataforma pela PJ que responde no Brasil, conforme documento).
3. Fatos sobre os quais a prova recai, cada um com o item de prova e a origem, e a hipótese do art. 381.
4. Razões da necessidade de antecipar (urgência, autocomposição ou conhecimento prévio).
5. Prova pedida, delimitada (§5), com quesitos se houver perícia.
6. Pedidos: citação dos interessados; deferimento e produção da prova; nomeação de perito; sigilo, se cabível; entrega dos autos ao final.
7. Valor da causa e fecho (local, data e advogado: dado do caso ou `[CAMPO — PENDENTE DE PROVA]`).

**Entrega (regra única):** a peça não traz `{{`, `}}`, `[[`, marcador de variante nem comentário HTML do esqueleto; campo sem dado vira `[CAMPO — PENDENTE DE PROVA]`, com o nome do campo em maiúsculas. Só a variante do polo do caso entra (requerente, interessado ou justificação); alternativa que a prova não resolve vai às pendências, fora do corpo. Peça só do polo do cliente. Tema 987/533: `[ID]` + rótulo "fonte parcial" na mesma linha, também no resumo. Estados: só os 5, um por item; cronologia sem data usa `PENDENTE DE PROVA`, nunca o estado sem complemento. A peça é gravada na pasta do caso.

## 8. Andamento e fechamento

- Atualizar "Andamento" do `00-perfil-do-caso.md`: fase (produção antecipada), ato praticado, próximo ato (citação, perícia, entrega dos autos), prazo literal com `[ID]`.
- Saída: a linha `POLO DO CLIENTE · NATUREZA … · POSIÇÃO … · FASE não se aplica`, a peça completa, a lista de documentos e a tabela item → estado com os estados de `revisao-final-digital`.
- Acionar `revisao-final-digital` sobre a versão final.
