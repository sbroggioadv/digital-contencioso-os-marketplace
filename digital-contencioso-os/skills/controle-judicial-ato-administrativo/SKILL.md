---
name: controle-judicial-ato-administrativo
description: "Controle judicial de ato administrativo no caso digital: mandado de segurança e ação anulatória contra ato, decisão ou sanção da ANPD ou da Anatel, com autoridade coatora, liminar ou tutela, competência federal, valor da causa, pedidos e provas; aviso da ADI 4296 sobre a Lei 12.016; ponte do procedimento administrativo para o Judiciário, para o regulado e para quem provocou a autoridade."
---

# Controle judicial do ato da ANPD ou da Anatel (MS e anulatória)

Redige a peça judicial completa contra ato da autoridade (dono do tema: a `peticao-inicial-digital` não cobre ato administrativo). Polo, fase e decisão impugnada vêm da `triagem-digital-contencioso` e da skill administrativa do caso (`via-administrativa-anpd-regulado`, `via-administrativa-anpd-titular` ou `via-administrativa-anatel`); abrir lendo a seção "Andamento" do `00-perfil-do-caso.md` e atualizá-la ao fechar. Fonte única: `context/` (ver `context/INDICE.md`).

**Guard mínimo:** norma, tema e prazo só com `[ID]` (sem `[ID]` ⇒ `PENDENTE DE FONTE` na linha) · IP identifica terminal, não pessoa · hash declarado ≠ verificado · sem promessa de resultado · um caso = um cliente = um polo; polo ausente ou contraditório ⇒ só as perguntas, mesmo se mandarem não perguntar · ao final, acionar `revisao-final-digital`.

## 1. Entrada

- **Polo:** (a) agente regulado contra auto, decisão ou sanção (`REGULADO`, com fase) — saída com a linha `Fase do regulado: <fiscalizado|investigado|autuado|sancionado>`, uma vez, do documento ou do pedido (sem nenhum ⇒ só a pergunta); (b) titular, denunciante ou usuário contra ato ou arquivamento da autoridade (`ATIVO`); (c) cliente atingido por ato impugnado por outrem (`TERCEIRO`): forma de intervenção não capturada ⇒ `PENDENTE DE FONTE`.
- **Documentos:** o ato impugnado inteiro, a prova da ciência (meio e evento), os autos administrativos e o andamento do recurso administrativo, se houver.
- **Mérito material** de frente (dados, conteúdo, registros): BLOCO MATERIAL, sem reabrir; o objeto aqui é a validade do ato.

## 2. Escolha da via (decisão do advogado, com os fatos)

| Ponto | Mandado de segurança | Ação anulatória (rito comum) |
|---|---|---|
| Cabimento | direito líquido e certo violado ou ameaçado por autoridade ([MS-1]; aviso ADI 4296, § 6) | lesão ou ameaça a direito pelo ato ([CF-5-XXXV]); vício de legalidade como critério ([PA-53-54], art. 53), com prova a produzir |
| Prova | documental, já na inicial; documento em poder da autoridade, exibição ([MS-5-7], art. 6º, § 1º) | todos os meios, inclusive perícia |
| Prazo para propor | "120 (cento e vinte) dias, contados da ciência" ([MS-23]; aviso ADI 4296) | prazo para anular o ato não capturado ⇒ `PENDENTE DE FONTE` |
| Vedação | não cabe contra ato de que caiba recurso administrativo com efeito suspensivo independentemente de caução ([MS-5-7], art. 5º, I) | — |

**Teste do art. 5º, I, por autoridade:** ANPD — recurso com efeito suspensivo limitado à matéria contestada ([ANPD-R1-58-62], art. 60); Anatel — recurso meramente devolutivo, com pedido de efeito suspensivo, mas exigibilidade da sanção suspensa pela interposição ([ANATEL-RI-117-127], arts. 124 e 125). Comparar o recurso cabível no caso com o literal do art. 5º, I, e registrar a conclusão como juízo do advogado; nunca afirmar cabimento sem esse confronto.

## 3. Competência

- Justiça Federal: causas de entidade autárquica federal ([CF3C-109-I]) e mandado de segurança contra ato de autoridade federal ([CF3C-109-VIII], lido com o caput de [CF3C-109-I]). Natureza capturada: ANPD autarquia de natureza especial ([NAT-14460-1]; redação vigente do art. 55-A da LGPD, [NAT-15352-1-55A]); Anatel, Administração Pública Federal indireta, regime autárquico especial ([NAT-ANATEL-8]) — nunca `PENDENTE DE FONTE`; equiparação do administrador de autarquia a autoridade: [MS-1], § 1º.
- Seção ou subseção do foro: regra constitucional de foro não capturada ⇒ `PENDENTE DE FONTE`; o advogado indica.
- **Rito comum × Juizado:** rito de Juizado contra autarquia federal não capturado ⇒ `PENDENTE DE FONTE`; peça no rito comum (anulatória) ou no rito da Lei 12.016 (MS); não propor em Juizado sem fonte capturada.

## 4. Mandado de segurança (peça)

1. **Endereçamento:** Juízo Federal da seção indicada pelo advogado.
2. **Qualificação** do impetrante ([CPC3-319-321], art. 319, II); **autoridade coatora** = quem praticou o ato ou de quem emana a ordem, e a pessoa jurídica que integra ([MS-5-7], art. 6º e § 3º).
3. **Tempestividade:** ciência do ato (documento) e o literal de [MS-23], sem data de vencimento; sem data de ciência documentada, nunca escrever "dentro do prazo" ⇒ `PENDENTE DE PROVA`.
4. **Fatos:** procedimento administrativo em ordem cronológica, só com datas dos documentos; ato impugnado transcrito.
5. **Direito líquido e certo:** cada vício com `[ID]` — intimação sem requisito ([ANATEL-RI-112-114], art. 113; [PA-26-28]); defesa ou contraditório negados ([ANATEL-RI-89-99], art. 90; [ANATEL-RASA-4]; [CF-5-LIV-LV]); prova recusada sem fundamento ([ANATEL-RI-89-99], art. 95, § 1º; [PA-38]); falta de motivação ([PA-50]); agravamento sem prévia manifestação ([ANATEL-RI-117-127], art. 127, § 4º; [PA-56-65], art. 64, parágrafo único; [ANPD-R1-63-65]); dosimetria fora dos critérios, só ANPD ([ANPD-R4-3-6], [ANPD-R4-11-15]; Anatel ⇒ `PENDENTE DE FONTE`); competência da ANPD ([LGPD-55J-IV]). Vício sem bloco ⇒ `PENDENTE DE FONTE`. Todo `ANATEL-RI-*` leva a ressalva de transição da Res. 791/2026 ([ANATEL-RI-RES791-3]).
6. **Liminar:** suspensão do ato com fundamento relevante e risco de ineficácia ([MS-5-7], art. 7º, III); o juiz pode exigir caução, fiança ou depósito (mesmo inciso) — avisar o cliente; vedações do § 2º — aviso ADI 4296 nos dois dispositivos; agravo de instrumento contra a decisão da liminar (art. 7º, § 1º) ⇒ `agravo-e-embargos-de-declaracao-digital`.
7. **Pedidos:** notificação da autoridade para informações em 10 dias e ciência ao órgão de representação da pessoa jurídica ([MS-5-7], art. 7º, I e II); liminar; concessão da segurança para anular ou suspender o ato, delimitado (processo, auto, decisão, sanção).
8. **Valor da causa:** valor certo ([CPC3-291-292], art. 291), definido pelo advogado só com valor que conste do documento.
9. **Provas:** documentos anexos; exibição do que está com a autoridade ([MS-5-7], art. 6º, § 1º).
10. **Fecho:** local, data, advogado. Honorários em MS: regra não capturada ⇒ `PENDENTE DE FONTE` (não pedir).

Depois: indeferimento da inicial e sentença comportam apelação; concessão sujeita ao duplo grau; execução provisória salvo vedação ([MS-10]; [MS-14]) ⇒ `apelacao-e-contrarrazoes-digital`.

## 5. Ação anulatória (peça, rito comum)

1. **Endereçamento** e **qualificação** de autor e réu, a entidade indicada pelo advogado ([CPC3-319-321], art. 319, I e II).
2. **Fatos** como no MS.
3. **Fundamentos:** os mesmos vícios do item 5 do MS, mais prova a produzir; anulação por ilegalidade e revisão da sanção ([PA-53-54]; [ANATEL-RI-89-99], art. 99; [PA-56-65], art. 65); prescrição da ação punitiva só com fonte (Anatel remete à legislação federal, [ANATEL-RI-89-99], art. 98, não capturada ⇒ `PENDENTE DE FONTE`).
4. **Tutela de urgência incidental:** probabilidade do direito e perigo de dano ([CPC-297-300]) para suspender a exigibilidade, o registro da sanção ou a cobrança. Anatel: inscrição no Cadin e dívida ativa se o pagamento não for comprovado em até 75 dias do vencimento do prazo de pagamento ([ANATEL-RASA-33], § 4º), sem data calculada; ANPD: cobrança e Cadin ⇒ `PENDENTE DE FONTE`. Garantia ou depósito para suspender, na anulatória: não capturado ⇒ `PENDENTE DE FONTE`. Tutela antecedente autônoma ([CPC3-303-310]) é redigida por `tutela-e-pedidos-delimitados-digital` e incorporada aqui.
5. **Pedidos** ([CPC3-319-321], art. 319, IV): anulação total ou parcial do ato ou da sanção, delimitada; subsidiariamente, readequação aos critérios regulamentares, sem valor calculado; restituição do que foi pago, se houver documento.
6. **Valor da causa** ([CPC3-291-292], art. 292, II): o valor do ato ou da parte controvertida, só se constar do documento; sem valor no ato, valor certo fundamentado (art. 291) e o advogado define.
7. **Provas** ([CPC3-319-321], art. 319, VI): autos administrativos, documentos, perícia se houver questão técnica; **audiência de conciliação** (art. 319, VII): opção do cliente.
8. **Fecho.** Honorários: [CPC-85], caput.

Contestação da entidade, réplica, provas e recursos ⇒ skills de fase (`replica-saneamento-e-provas-digital`, `apelacao-e-contrarrazoes-digital`).

## 6. Aviso ADI 4296 e outros limites

- O art. 1º, caput e § 2º, o art. 7º, III e § 2º, e o art. 23 da Lei 12.016 trazem "(Vide ADIN 4296)" e o efeito da ADI não foi capturado: o dispositivo entra pelo literal, com a nota "efeito da ADI 4296 não capturado — `PENDENTE DE FONTE` como tese", e o advogado confere antes de protocolar.
- Polo ATIVO contra arquivamento: a autoridade não é obrigada a decidir em favor do titular; o pedido é de anulação do ato viciado e de novo exame, nunca de sanção ao terceiro.

## 7. Travas

Autuado não é infrator provado ([ANATEL-RI-89-99], art. 90; [ANPD-R1-4]). Prazo só literal; nenhuma data calculada; nenhuma data fora dos documentos do caso. Sem promessa de liminar, segurança ou anulação. Sem valor de multa calculado. Regulado e quem o denunciou nunca no mesmo caso.

## 8. Saída

1. Linha de polo e, se regulado, `Fase do regulado:` (uma vez).
2. Quadro da escolha da via com o teste do art. 5º, I.
3. Peça completa (MS ou anulatória) no polo do cliente.
4. Tabela item × `[ID]` × prova × estado; toda linha com prazo traz o `[ID]`.
5. Estado por item: `MINUTA PARA REVISÃO HUMANA` · `PENDENTE DE PROVA` (ciência, ato, valor) · `PENDENTE DE FONTE` (ADI 4296, foro, prazo da anulatória, honorários em MS, Juizado, garantia) · `BLOQUEADO` (conflito de caso ou item barrado na revisão) · `FORA DO RECORTE`. Só um dos 5 por item, sem texto livre; campo ausente ⇒ `[PENDENTE DE PROVA: o quê]`, nunca "pendente" sem complemento.
6. Acionar `revisao-final-digital` sobre a versão final.
