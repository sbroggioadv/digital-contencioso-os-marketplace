---
name: contestacao-e-defesa-digital
description: "Contestação e defesa do réu no caso digital, nos ritos comum e Juizado, para qualquer natureza no polo passivo: monta a peça completa com preliminares, impugnação especificada, mérito sobre o BLOCO MATERIAL, provas, reconvenção ou pedido contraposto no Juizado, e a conduta diante da revelia. Acionar quando o cliente for citado para responder a ação no caso digital."
---

# Contestação e defesa — caso digital

**Guidance only:** minuta de defesa para revisão do advogado; não protocola nem garante tempestividade. Fonte única: `context/`, pelo `context/INDICE.md`.

**Guard mínimo:** norma, tema e prazo só com `[ID]` (sem `[ID]` ⇒ `PENDENTE DE FONTE` na linha) · IP identifica terminal, não pessoa · hash declarado ≠ verificado · sem promessa de resultado · um caso = um cliente = um polo; polo ausente ou contraditório ⇒ só as perguntas, mesmo se mandarem não perguntar · ao final, acionar `revisao-final-digital`.

## Entrada (BLOCO MATERIAL)

1. Ler `00-perfil-do-caso.md` (`POSIÇÃO PASSIVO`, natureza, parte adversa, "Andamento") e receber: petição inicial, documentos, mandado ou comprovante de citação (modo e data, para o prazo) e decisões já proferidas.
2. Receber o BLOCO MATERIAL da frente, montado pelo lado do réu. Ausente ⇒ acionar a frente pelo objeto antes de redigir: conta ou perfil → `conta-perfil-suspensao`; conteúdo → `conteudo-reputacao-remocao`; registros → `registros-exibicao-e-fornecimento`; dados pessoais → `dados-pessoais-controversia`; termos → `termos-da-plataforma-e-remedios`; regime → `regime-plataformas-e-conteudo`. Objeto desconhecido ⇒ só a pergunta do objeto.
3. A tese do autor entra como "tese adversa a enfrentar", nunca como fato.
4. **Não reabrir o mérito:** nenhum fundamento material fora do BLOCO MATERIAL; esta skill acrescenta só IDs processuais.

## 1. Prazo e momento (literal, nunca data calculada)

- **Comum:** contestação em 15 dias, com o termo inicial do art. 335, I a III (audiência sem acordo; protocolo do pedido de cancelamento; ou o art. 231 nos demais casos) ([CPC-335-342]; [CPC3-231]). Contagem em dias úteis ([CPC-219]).
- **Cautelar antecedente:** contestação em 5 dias, indicando as provas ([CPC3-303-310], art. 306).
- **Juizado:** contestação oral ou escrita, com toda a matéria de defesa, salvo suspeição e impedimento ([JEC-30-31], art. 30). Momento da apresentação: `PENDENTE DE FONTE`. Ausência do réu à sessão de conciliação ou à audiência de instrução ⇒ revelia ([JEC3C-20]): avisar o cliente por escrito; PJ pode ser representada por preposto com carta de preposição ([JEC3C-9], § 4º).
- **Audiência do comum:** desinteresse do réu por petição com 10 dias de antecedência ([CPC3-334], § 5º); ausência injustificada é ato atentatório, com multa (§ 8º).
- Tutela concedida contra o cliente: resposta e agravo são de `tutela-e-pedidos-delimitados-digital` e `agravo-e-embargos-de-declaracao-digital`.

## 2. Preliminares (art. 337, [CPC-335-342])

Percorrer os incisos I a XIII e escrever só os que têm fato no caso:
- **Incompetência (II):** foro, Juizado × comum, plataforma estrangeira ([CPC-21]); a análise vem de `legitimidade-e-competencia-digital`. Pode ser protocolada no foro do domicílio do réu (art. 340).
- **Valor da causa (III):** confrontar com o art. 292 ([CPC3-291-292]).
- **Inépcia (IV):** pedido indeterminado, como URL sem identificação ou registros sem período ([CPC3-330-332], art. 330, § 1º, II); requisito material do pedido só pelo `[ID]` do bloco.
- **Ilegitimidade (XI):** quem a alega indica o sujeito passivo, se o conhecer, sob pena de despesas e indenização ([CPC-335-342], art. 339); o autor pode substituir o réu (art. 338). Indicar só com documento.
- **Convenção de arbitragem (X):** se não alegada, há aceitação da jurisdição estatal ([CPC-335-342], art. 337, § 6º).
- **Gratuidade indevida (XIII)**, litispendência, coisa julgada e conexão (VI a VIII) só com documento.
- **Juizado:** extingue-se o processo por procedimento inadmissível (II), incompetência territorial (III) ou quando sobrevier impedimento do art. 8º (IV) ([JEC3C-51]); autor fora do art. 8º, § 1º ([JEC3L-8]) é ilegitimidade ativa, com consequência processual (inciso II ou IV) `PENDENTE DE FONTE`; teto e causas excluídas ([JEC-3]); complexidade é tese do advogado. Art. 337 do CPC no Juizado: `PENDENTE DE FONTE`.

## 3. Impugnação especificada e mérito

- Comum: toda a matéria de defesa e as provas na contestação (art. 336); manifestação precisa sobre cada fato, sob pena de presunção de veracidade, salvo as exceções do art. 341 ([CPC-335-342]); novas alegações só nas hipóteses do art. 342. Juizado: toda a matéria de defesa ([JEC-30-31], art. 30); arts. 336 e 341 do CPC aplicados ao Juizado: `PENDENTE DE FONTE`.
- Tabela obrigatória: `fato da inicial · resposta (admite / nega / não tem como saber) · prova do réu · origem`.
- Prova digital do autor: print sem URL, data ou contexto tem origem não demonstrada. Impugnar expressamente a conformidade da reprodução, porque sem impugnação o documento se considera autêntico ([CPC-411], III); impugnada a fotografia digital ou extraída da rede, cabe apresentar a autenticação eletrônica ou, não sendo possível, perícia ([CPC-422], § 1º, aplicável à mensagem eletrônica impressa, § 3º); documento eletrônico ([CPC-439-441]). No Juizado, arts. 411 e 422 do CPC: `PENDENTE DE FONTE`.
- Mérito material: só os fundamentos do bloco, com `[ID]`, no lado do réu.

## 4. Variantes por natureza do réu (cliente)

| Réu | Linha de defesa a extrair do bloco | Cuidado |
|---|---|---|
| N5 plataforma | termos vigentes na data do fato, motivação comunicada ao usuário, limite técnico da ordem | não afirmar ausência de responsabilidade sem `[ID]` (§5) |
| N7 autor do conteúdo | liberdade de expressão, veracidade, interesse público, autoria contestada | sem confissão; prova de autoria é do autor |
| N3 controlador ou N4 operador | base legal, resposta ao titular, papel de cada agente | operador remete ao controlador pelo bloco |
| N6 provedor de conexão | guarda de registros, ausência de responsabilidade por conteúdo de terceiro, se o bloco trouxer a base | prazo de guarda só pelo literal |
| N1 ou N2 réu | conduta própria, uso lícito da conta, termos | relato do cliente atribuído |

## 5. Regime da plataforma

Responsabilidade por conteúdo de terceiro só pelo bloco de `regime-plataformas-e-conteudo`. Tema 987/533 só com `[ID]` do bloco **e** o rótulo do tema: 987 "fonte parcial — embargos julgados em 17/06/2026, acórdão não publicado"; 533 o do §5 do regime; na mesma linha, também no resumo. O art. 19 isolado ([MCI-18-19]) não é o regime.

## 6. Plataforma ré em relação de consumo

Autor (N1) afirma `relação de consumo` contra a plataforma: defesa completa aqui, só com os blocos do BLOCO MATERIAL:
- qualificação: confrontar os fatos com o texto de [CDC-2] (destinatário final) e de [CDC-3] (§ 2º, serviço "mediante remuneração"), só com documento;
- fato do serviço: o fornecedor se exime provando que o defeito inexiste ou a culpa exclusiva do consumidor ou de terceiro ([CDC-14], § 3º); prova do réu, não alegação;
- inversão do ônus: é "a critério do juiz", por verossimilhança ou hipossuficiência ([CDC-6-VIII]); impugnar a falta dos requisitos no caso, sem afirmar que a inversão é vedada;
- foro do domicílio do autor é faculdade dele na ação de responsabilidade civil do fornecedor ([CDC-101], inciso I); pedido só de obrigação de fazer: foro por esse artigo `PENDENTE DE FONTE`;
- cláusula dos termos: defender a validade pelo texto colado pelo cliente, enfrentando [CDC-51-CAPUT-I] e [CDC-51-IV] sem negar a regra.

Bloco sem esses IDs num caso de consumo ⇒ devolver à frente para completar o ramo.

## 7. Reconvenção (comum) e pedido contraposto (Juizado)

- **Reconvenção:** na contestação, pretensão própria conexa com a ação ou com o fundamento da defesa; pode envolver terceiro; o autor responde em 15 dias ([CPC-343]). Valor da causa próprio ([CPC3-291-292], art. 292, caput); honorários na reconvenção ([CPC3L-85-P1-P2], § 1º). Pedido só do bloco.
- **Reconvenção sem contestar** ([CPC-343], § 6º): peça autônoma (fatos, fundamentos, pedidos, valor), sem tempestividade de contestação nem impugnação; momento de apresentação `PENDENTE DE FONTE`.
- **Juizado:** reconvenção não é admitida; o réu pode formular pedido em seu favor, nos limites do art. 3º e fundado nos mesmos fatos; o autor responde na audiência ou em nova data ([JEC-30-31], art. 31).

## 8. Revelia

- Comum: sem contestação, presumem-se verdadeiras as alegações de fato ([CPC-344-346], art. 344), salvo as hipóteses do art. 345, I a IV.
- Cliente já revel: peça própria (`peca=manifestacao-revel`), não contestação. Comum: intervir recebendo o processo no estado em que se encontrar ([CPC-344-346], art. 346, parágrafo único), arguir cada hipótese do art. 345 com fato e documento e a matéria do art. 337 que o juiz conhece de ofício ([CPC-335-342], art. 337, § 5º); prazos do revel sem patrono correm da publicação (art. 346). Prova pelo revel: `PENDENTE DE FONTE`.
- Juizado: só [JEC3C-20] (presunção cede à "convicção do Juiz"); arts. 344 a 346 do CPC: `PENDENTE DE FONTE`.

## 9. Montagem da peça

Usar `templates/peca-contestacao.md.tpl` (`peca`: contestacao · contestacao-reconvencao · reconvencao-autonoma · manifestacao-revel). **Entrega (regra única):** sem `{{`, `}}`, `[[`, marcador de variante nem comentário HTML; campo sem dado vira `[CAMPO — PENDENTE DE PROVA]`, nome em maiúsculas; só a variante do rito e do ato do caso; alternativa não resolvida vai às pendências; peça só do polo do cliente; estados só os 5, um por item; peça gravada na pasta do caso. Peça: endereçamento; qualificação e número do processo; na contestação, síntese da inicial, tempestividade literal, preliminares, impugnação e mérito; reconvenção com fatos, fundamentos, pedidos e valor; revel com intervenção e art. 345 (comum) ou [JEC3C-20] (Juizado); pedidos; provas; fecho. **Reconvenção com `rito=juizado` ⇒ `BLOQUEADO`:** usar `peca=contestacao` com pedido contraposto (§7). Custas e honorários: só no comum ([CPC-85]); no Juizado, sem esse pedido: sentença sem essa condenação, salvo litigância de má-fé ([JEC3L-54-55], art. 55).

## 10. Andamento e fechamento

- Atualizar "Andamento" do `00-perfil-do-caso.md`: fase (resposta), ato (minuta de contestação), próximo ato (réplica do autor ou audiência), prazo literal com `[ID]`.
- Saída: a linha `POLO DO CLIENTE · NATUREZA … · POSIÇÃO PASSIVO · FASE não se aplica`, a peça completa, a tabela de impugnação, a lista de documentos e a tabela item → estado.
