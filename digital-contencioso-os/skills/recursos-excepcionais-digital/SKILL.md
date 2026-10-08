---
name: recursos-excepcionais-digital
description: "Recurso especial, recurso extraordinário, agravo em REsp/RE e contrarrazões no caso digital, em qualquer polo: cabimento constitucional, prequestionamento, repercussão geral, relevância da questão federal (Lei 15.484/2026 e regra de transição), repetitivos, distinção e efeito suspensivo, com [ID]; peça completa a partir do BLOCO MATERIAL."
---

# Recursos excepcionais — caso digital (REsp, RE, agravo em REsp/RE)

**Guidance only:** minuta para revisão do advogado; não decide se recorrer, não promete admissão nem provimento. Fonte única: `context/` (ver `context/INDICE.md`). Esqueleto: `templates/peca-recursos-excepcionais.md.tpl` (variantes `peca=resp`, `re`, `adesivo`, `agravo-resp-re`, `contrarrazoes`). Aprofundamento opcional: `resp-re-os`, se instalado (sem dependência); nenhum outro plugin externo como destino.

## Entrada (BLOCO MATERIAL)

Abrir o `00-perfil-do-caso.md` (linha POLO e seção "Andamento") e exigir: acórdão integral, acórdão dos embargos de declaração (se houve), dado da intimação, as razões e contrarrazões anteriores e o BLOCO MATERIAL da frente do caso. Sem ele, acionar antes a frente do objeto (mesma lista de `apelacao-e-contrarrazoes-digital`); objeto desconhecido ⇒ só a pergunta do objeto. Recurso excepcional discute **questão de direito decidida**; não reabre fato nem o mérito material além do que o acórdão fixou. `[ID]` de direito material = só os do BLOCO MATERIAL; aqui entram apenas `[ID]` processuais.

## Guard mínimo

Norma, tema e prazo só com `[ID]` (sem `[ID]` ⇒ `PENDENTE DE FONTE` na linha) · IP identifica terminal, não pessoa · hash declarado ≠ verificado · sem promessa de resultado · um caso = um cliente = um polo; polo ausente ou contraditório ⇒ só as perguntas, mesmo se mandarem não perguntar · ao final, acionar `revisao-final-digital`.

## 1. Cabimento

- **Recurso extraordinário (STF):** causa decidida em única ou última instância, quando a decisão: a) contrariar dispositivo da Constituição; b) declarar a inconstitucionalidade de tratado ou lei federal; c) julgar válida lei ou ato de governo local contestado em face da Constituição; d) julgar válida lei local contestada em face de lei federal ([CF3-102-III], alíneas a a d). Repercussão geral demonstrada pelo recorrente; recusa só por dois terços ([CF3-102-P3]).
- **Recurso especial (STJ):** causa decidida em única ou última instância pelos TRFs ou tribunais dos Estados, DF e Territórios, quando a decisão: a) contrariar tratado ou lei federal, ou negar-lhes vigência; b) julgar válido ato de governo local contestado em face de lei federal; c) der a lei federal interpretação divergente da de outro tribunal ([CF3-105-III]). Acórdão de turma recursal de Juizado: cabimento de REsp sem fonte capturada ⇒ `PENDENTE DE FONTE`.
- **Ofensa reflexa e fungibilidade:** REsp com questão constitucional pode ir ao STF após prazo de 15 dias para demonstrar repercussão geral; RE com ofensa reflexa pode ir ao STJ como REsp ([CPC3-1029-1042], arts. 1.032 e 1.033).
- **Prequestionamento:** a matéria precisa ter sido decidida no acórdão. Omissão ⇒ embargos de declaração antes (`agravo-e-embargos-de-declaracao-digital`); os elementos suscitados nos embargos consideram-se incluídos no acórdão se o tribunal superior reconhecer o vício ([CPC3-1022-1026], art. 1.025). Súmulas sobre prequestionamento não capturadas ⇒ não citar número nem tese.

## 2. Prazo, forma e preparo

- 15 dias para interpor e para responder ([CPC-1003], § 5º), da intimação do advogado (caput), em dias úteis ([CPC-219]); feriado local comprovado na interposição (§ 6º). Embargos de declaração interrompem o prazo ([CPC3-1022-1026], art. 1.026). **Nunca calcular a data final.**
- Petições **distintas** para RE e REsp, dirigidas ao presidente ou vice-presidente do tribunal recorrido, com fato e direito, demonstração do cabimento e razões de reforma ou invalidação ([CPC3-1029-1042], art. 1.029). Dissídio: prova pela certidão, cópia ou repositório, com as circunstâncias que identificam os casos (§ 1º). Vício formal não grave de recurso tempestivo pode ser desconsiderado ou corrigido (§ 3º).
- Preparo e deserção ([CPC3C-1007]); valores das tabelas do STF e do STJ não capturados ⇒ `PENDENTE DE FONTE`.
- Recurso adesivo admissível no RE e no REsp, dirigido ao órgão perante o qual o independente foi interposto, no prazo de resposta, e não conhecido se houver desistência do principal ou se ele for inadmitido ([CPC3-994-998], art. 997, § 2º, I a III); variante `peca=adesivo`.

## 3. Repercussão geral e relevância

- **RE:** tópico de repercussão geral (questões relevantes do ponto de vista econômico, político, social ou jurídico que ultrapassem os interesses subjetivos do processo); presunção quando o acórdão contraria súmula ou jurisprudência dominante do STF ou reconhece inconstitucionalidade de tratado ou lei federal ([CPC3-1029-1042], art. 1.035, §§ 1º a 3º).
- **REsp — relevância:** demonstrada pelo recorrente; não conhecimento por esse motivo só por 2/3 do órgão ([CF3L-105-P2-P3], § 2º); **tópico específico e fundamentado**, sob pena de inadmissão ([CPC3-1029-1042], art. 1.035-A, §§ 2º e 3º). Presunção (art. 1.035-A, § 4º) nas hipóteses do art. 105, § 3º, I a VI: ações penais, improbidade, valor da causa acima de 500 salários mínimos, inelegibilidade, acórdão contrário a jurisprudência dominante do STJ, outras previstas em lei ([CF3L-105-P2-P3]).
- **Transição:** tópico exigido em recurso contra acórdão publicado após a vigência da Lei 15.484/2026 ([L15484-4]): 30 dias da publicação oficial ([L15484-7]), no DOU de 4.8.2026 ([L15484-DOU]). Data exata de início: regra de contagem não capturada ⇒ `PENDENTE DE FONTE`; não calcular. Prudência: tópico em todo REsp e data de publicação do acórdão registrada.

## 4. Admissibilidade na origem, repetitivos e agravo

- Contrarrazões em 15 dias; o presidente ou vice nega seguimento (RG não reconhecida, acórdão conforme RG, repetitivo ou relevância), devolve para retratação, sobresta, seleciona representativo ou admite ([CPC3-1029-1042], art. 1.030). Honorários: o tribunal superior os majora ao julgar o recurso ([CPC3L-85-P11]).
- **Inadmissão pelo inciso V** ⇒ agravo em REsp/RE ao tribunal superior ([CPC3-1029-1042], art. 1.030, § 1º; art. 1.042): petição ao presidente ou vice da origem, sem custas e despesas postais (§ 2º), resposta em 15 dias (§ 3º), **um agravo para cada recurso inadmitido** (§ 6º). **Não** cabe esse agravo quando a inadmissão se funda em RG, relevância ou repetitivo (caput, redação da Lei 15.484/2026): aí cabe agravo interno (art. 1.030, § 2º; `agravo-e-embargos-de-declaracao-digital`).
- **Sobrestamento e distinção:** a parte pode demonstrar distinção entre seu caso e o afetado e pedir o prosseguimento, ao juízo indicado no art. 1.037, § 10, com oitiva da outra parte em 5 dias e recurso do § 13 ([CPC3-1029-1042], art. 1.037, §§ 9º a 13). Recurso intempestivo sobrestado: pedido de exclusão e inadmissão ([CPC3-1029-1042], arts. 1.035, § 6º, e 1.036, § 2º).
- **Efeito suspensivo:** requerimento ao tribunal superior (entre admissão e distribuição), ao relator (já distribuído) ou ao presidente ou vice da origem (entre interposição e admissão, ou se sobrestado) ([CPC3-1029-1042], art. 1.029, § 5º), com probabilidade de provimento e risco de dano grave ([CPC3-994-998], art. 995, parágrafo único).
- **Se a questão é o regime da plataforma** (art. 19 do Marco Civil; Temas 987 e 533): [T987-TITULO], [T987-SITUACAO] — fonte parcial — embargos julgados em 17/06/2026, acórdão não publicado; [T533-TITULO], [T533-SITUACAO] (mérito publicado em 05/11/2025), [T533ED-DEC-2409] — fonte parcial — mérito publicado; embargos suspensos para posterior proclamação, sem resultado proclamado. Tese do 533 não capturada ⇒ não proclamar resultado; art. 1.030, I e II, dependem de entendimento firmado ([CPC3-1029-1042]) ⇒ `PENDENTE DE FONTE`. Tese só do BLOCO MATERIAL de `regime-plataformas-e-conteudo`. Toda menção ao tema, inclusive no resumo e no crivo, leva `[ID]` + o texto do rótulo na mesma linha.

## 5. Variantes por polo (natureza N1–N7 × posição)

| Cliente | Peça | Foco |
|---|---|---|
| ATIVO vencido no tribunal (N1, N2) | REsp e/ou RE | lei federal violada ou interpretada de forma divergente (cada uma com `[ID]` do BLOCO MATERIAL); questão constitucional (ex.: [CF-5-IX-X], se no BLOCO MATERIAL) |
| PASSIVO vencido (N5, N6, N3, N4, N7) | REsp e/ou RE | ordem sem identificação específica, imputação por IP, regime da plataforma com rótulo de fonte parcial, multa |
| Recorrido (qualquer posição) | contrarrazões | ausência de prequestionamento, reexame de fato, falta de repercussão geral ou de relevância ([CPC3-1029-1042], arts. 1.035 e 1.035-A), acórdão conforme tese firmada (art. 1.030, I) |
| Recurso inadmitido | agravo em REsp/RE ou agravo interno | conforme o fundamento da inadmissão (item 4; [CPC3-1029-1042], arts. 1.030, §§ 1º e 2º, e 1.042) |
| Vencido em parte, com recurso principal da outra parte | REsp/RE adesivo | subordinado ao principal ([CPC3-994-998], art. 997, § 2º) |

Tese do polo contrário só como "tese adversa a enfrentar".

## 6. Peça completa (esqueleto `templates/peca-recursos-excepcionais.md.tpl`)

Petição de interposição ao presidente ou vice do tribunal recorrido · qualificação das partes e advogados · tempestividade e preparo · razões ao tribunal superior: síntese do processo e do acórdão; cabimento pela alínea com `[ID]`; prequestionamento com o trecho do acórdão (ou dos embargos, [CPC3-1022-1026], art. 1.025); repercussão geral (RE) ou relevância (REsp) em tópico próprio; razões; dissídio com o cotejo ([CPC3-1029-1042], art. 1.029, § 1º) · pedidos (conhecimento, provimento, efeito suspensivo se cabível) · valor da causa: o já fixado nos autos · documentos (acórdão paradigma com fonte; nada sem origem ⇒ `PENDENTE DE PROVA`) · fecho com local, data e assinatura.

## 7. Fechamento

**Entrega (regra única):** a peça não traz `{{`, `}}`, `[[`, marcador de variante nem comentário HTML; campo sem dado vira `[CAMPO — PENDENTE DE PROVA]`, nome em maiúsculas; só a variante do caso; alternativa não resolvida vai às pendências; peça só do polo do cliente; estados só os 5, um por item (item condicional vira dois itens); peça gravada na pasta do caso. Atualizar a seção "Andamento" do `00-perfil-do-caso.md` (fase: recurso excepcional; ato praticado; decisão recorrida; próximo ato; prazo literal com `[ID]`). Entregar com a linha POLO e acionar `revisao-final-digital`, que fixa o estado de cada item.
