---
name: matriz-fato-prova-dano-digital
description: "Monta a matriz fato → prova (item do inventário e origem) → direito lesado → dano alegado → pedido no caso digital de qualquer polo (fatos do pedido ou da defesa), separando dano provado de dano alegado e apontando lacunas antes da peça."
---

# Matriz fato × prova × dano — caso digital

**Guidance only:** a matriz organiza a demonstração; não decide procedência nem quantifica indenização. Fonte única: `context/` (ver `context/INDICE.md`). A matriz é insumo das skills de fase (§ 6), que montam a peça; ao final, a saída vai a `revisao-final-digital`.

**Guard mínimo:** norma, tema e prazo só com `[ID]` (sem `[ID]` ⇒ `PENDENTE DE FONTE` na linha) · IP identifica terminal, não pessoa · hash declarado ≠ verificado · sem promessa de resultado · um caso = um cliente = um polo; polo ausente ou contraditório ⇒ só as perguntas, mesmo se mandarem não perguntar · ao final, acionar `revisao-final-digital`.

## 1. Entrada

`00-perfil-do-caso.md` (polo e "Andamento"); inventário e cronologia de `origem-e-cronologia-da-prova-digital` (obrigatórios — sem eles, `PENDENTE DE PROVA`); BLOCO MATERIAL da frente, se já existir; objetivo do cliente e descrição dos prejuízos (financeiros, de imagem, de clientela, de acesso, de dados).

## 2. Matriz (saída principal)

| # | Fato (como alegado) | Prova (nº do inventário) | Origem | Direito afetado (`[ID]`) | Dano alegado | Prova do dano | Pedido ligado | Ônus | Lacuna |
|---|---|---|---|---|---|---|---|---|---|

Regras:
- Cada fato aponta para **item do inventário**; fato sem item = `relato do cliente` e lacuna.
- Item com `origem não demonstrada` não sustenta sozinho fato essencial: lacuna `PENDENTE DE PROVA` e encaminhamento a `preservacao-e-encaminhamento-probatorio`.
- **Dano provado ≠ dano alegado.** Prejuízo financeiro exige documento do valor (nota, extrato, contrato, relatório de faturamento); sem documento, fica `alegado`. Nenhum valor é estimado pelo plugin.
- Autoria: "publicado pelo perfil X" é fato observável; "o perfil X é a pessoa Y" é conclusão que exige prova própria — nunca inferida. IP e registros identificam terminal ([MCI-5]); autoria incerta vira pedido em `registros-exibicao-e-fornecimento`.
- Pedido ligado: delimitado pelo objeto (conteúdo por URL, conta por identificador, registros por período, dados por direito) e pelo destinatário; pedido sem fato provado fica com a lacuna aberta.

## 3. Direitos afetados — só com fonte capturada

| Direito / efeito | Bloco |
|---|---|
| Inviolabilidade da intimidade, vida privada, honra e imagem; indenização por dano material ou moral | `context/cf-recortes.md` [CF-5-IX-X]; `context/marco-civil-lei-12965.md` [MCI-7] (inciso I) |
| Cessar ameaça ou lesão a direito da personalidade e reclamar perdas e danos; nome; imagem; vida privada | `context/codigo-civil-recortes.md` [CC-11-21] |
| Ato ilícito, abuso de direito, dever de reparar, extensão do dano | [CC-186-187], [CC-927], [CC-944] |
| Injúria, difamação ou calúnia: reparação e fixação equitativa sem prova de prejuízo material | [CC-953] |
| Dano por tratamento de dados pessoais em violação à legislação | `context/lgpd-lei-13709.md` [LGPD-42-45] |
| Relação de consumo (pessoa natural × plataforma): direitos básicos e responsabilidade do fornecedor por defeito do serviço | `context/cdc-lei-8078.md` [CDC-6-CAPUT], [CDC-14] |
| Liberdade de expressão (premissa contrária obrigatória) | [CF-5-IX-X] (inciso IX) |
| Fatos verídicos e licitamente publicados × passagem do tempo | `context/stf-tema-786-andamento.md` [T786-TESE] (excerto cortado: incompatível com a Constituição o direito ao esquecimento pela só passagem do tempo; excessos, caso a caso) |

Responsabilidade **da plataforma** por conteúdo de terceiro: a matriz não conclui. O enquadramento, com os seus `[ID]` e o rótulo de fonte parcial, vem do BLOCO MATERIAL de `regime-plataformas-e-conteudo`; sem ele, a coluna fica `PENDENTE DE PROVA` e a frente é acionada. A matriz pode apontar o **autor do conteúdo** e a **plataforma** como destinatários de pedidos distintos.

## 4. Ônus da prova (coluna "Ônus")

- Regra: ao autor, o fato constitutivo; ao réu, o fato impeditivo, modificativo ou extintivo; distribuição diversa só por decisão fundamentada ou convenção, nos limites dos §§ 1º a 3º (`context/cpc-v03-fase-judicial.md`, [CPC3-369-373], art. 373).
- Dados pessoais: o juiz **poderá** inverter o ônus a favor do titular nas hipóteses do [LGPD-42-45] (art. 42, § 2º).
- Consumo: inversão a favor do consumidor, a critério do juiz, quando verossímil a alegação ou hipossuficiente ([CDC-6-VIII]).
- Inversão é pedido, não pressuposto: a matriz registra quem tem o ônus hoje e o que se pede; nunca dá a inversão como certa.

## 5. Premissa contrária (obrigatória)

Para cada fato essencial, escrever a defesa mais forte do outro lado: conteúdo verídico/lícito ou crítica; exercício de direito; violação de termos pelo próprio cliente; ausência de nexo; dano não comprovado; prova impugnável (fotografia digital ou extraída da internet, se impugnada, exige autenticação eletrônica ou perícia — [CPC-422], § 1º). Indicar a prova que a enfrentaria.

Variantes por polo:
- **ATIVO** (N1, N2; N3 ou N5 autores): matriz dos fatos do pedido; premissa contrária = defesa provável do réu.
- **PASSIVO** (N5 plataforma, N7 autor do conteúdo, N3 controlador): matriz dos fatos da defesa (impeditivos, modificativos, extintivos) e coluna "prova adversa impugnável"; premissa contrária = tese do autor.
- **REGULADO** (N3, N4, N5, N6): matriz da conduta imputada no documento do órgão × prova da conformidade; fiscalização não é sanção; infração sem documento não entra como fato.
- **TERCEIRO** destinatário de ordem: só alcance e viabilidade do que se pede, sem mérito.

## 6. Quem consome a matriz (skills de fase)

| Fase | Skill | O que usa da matriz |
|---|---|---|
| Ajuizar | `peticao-inicial-digital` | fatos com prova, pedidos ligados, rol de provas, valor só com documento |
| Tutela | `tutela-e-pedidos-delimitados-digital` | probabilidade do direito (fato + item) e perigo; tabela de pedidos delimitados |
| Prova antes da ação | `producao-antecipada-de-prova-digital` | fatos sobre os quais a prova recai e a lacuna que justifica antecipar |
| Defesa | `contestacao-e-defesa-digital` | impugnação especificada fato a fato; prova adversa sem origem; reconvenção ou pedido contraposto |
| Réplica e saneamento | `replica-saneamento-e-provas-digital` | pontos controvertidos, distribuição do ônus, especificação de provas, quesitos |
| Recursos | `apelacao-e-contrarrazoes-digital` · `agravo-e-embargos-de-declaracao-digital` · `recurso-inominado-digital` · `recursos-excepcionais-digital` | fato × prova dos autos para o capítulo de erro de valoração ou omissão; nos excepcionais, a matriz não reabre prova |
| Cumprimento | `cumprimento-de-ordem-digital` · `cumprimento-pagar-quantia-digital` | descumprimento provado item a item; crédito só com documento |
| Competência e regime | `legitimidade-e-competencia-digital` · `regime-plataformas-e-conteudo` | partes por fato e destinatário; enquadramento do provedor |
| Administrativo | `via-administrativa-anpd-titular` · `via-administrativa-anpd-regulado` · `via-administrativa-anatel` · `ministerio-publico-inquerito-civil-tac` · `saci-adm-dominio-br` · `controle-judicial-ato-administrativo` | fatos e documentos do requerimento ou da defesa; no processo administrativo federal (ANPD, Anatel), o interessado junta documentos e requer diligências e perícias na instrução ([PA-38]); no inquérito civil, qualquer pessoa apresenta documentos ou subsídios ([CNMP-IC-6], § 5º), e o pedido de diligência ou perícia fica `PENDENTE DE FONTE` |

## 7. Saída e estado

Linha `POLO DO CLIENTE · NATUREZA <N1…N7> · POSIÇÃO <ATIVO|PASSIVO|REGULADO|TERCEIRO> · FASE <fiscalizado|investigado|autuado|sancionado|não se aplica>` + matriz + premissas contrárias + lacunas priorizadas com destino + "Andamento" atualizado. Estados por item: `MINUTA PARA REVISÃO HUMANA` (matriz pronta para revisão) · `PENDENTE DE PROVA` (fato essencial sem origem; dano sem documento) · `PENDENTE DE FONTE` (norma sem `[ID]` no `context/INDICE.md`) · `BLOQUEADO` (fato ou valor inventado, barrado na revisão). Só um dos 5 por item, sem texto livre; campo ausente ⇒ `[PENDENTE DE PROVA: o quê]`, data desconhecida ⇒ `não informada`; a data de hoje nunca entra como fato do caso. Ao final, acionar `revisao-final-digital`.
