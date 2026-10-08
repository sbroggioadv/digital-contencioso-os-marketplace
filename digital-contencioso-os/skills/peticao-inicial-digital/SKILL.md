---
name: peticao-inicial-digital
description: "Petição inicial do caso digital, para quem ajuíza, nos ritos comum e Juizado: monta a peça completa (endereçamento, qualificação, fatos com prova, fundamentos com [ID], pedidos delimitados, valor da causa, provas, opção de audiência e fecho) sobre o BLOCO MATERIAL da frente, incorpora a tutela antecedente redigida pela skill de tutela e faz o aditamento e a emenda. Acionar para ajuizar ação no caso digital."
---

# Petição inicial — caso digital

**Guidance only:** minuta de inicial para revisão do advogado; não protocola nem decide estratégia. Fonte: `context/INDICE.md`.

**Guard mínimo:** norma, tema e prazo só com `[ID]` (sem `[ID]` ⇒ `PENDENTE DE FONTE` na linha) · IP identifica terminal, não pessoa · hash declarado ≠ verificado · sem promessa de resultado · um caso = um cliente = um polo; polo ausente ou contraditório ⇒ só as perguntas, mesmo se mandarem não perguntar · ao final, acionar `revisao-final-digital`.

## Entrada (BLOCO MATERIAL)

1. Ler `00-perfil-do-caso.md`: polo (`POSIÇÃO ATIVO`), natureza, parte adversa e a seção "Andamento".
2. Receber o BLOCO MATERIAL da frente (POLO · fatos com prova e origem · fundamentos com `[ID]` · pedidos delimitados · pendências). Ausente ⇒ acionar a frente pelo objeto, antes de redigir: conta ou perfil → `conta-perfil-suspensao`; conteúdo ou reputação → `conteudo-reputacao-remocao`; registros → `registros-exibicao-e-fornecimento`; dados pessoais → `dados-pessoais-controversia`; termos de uso → `termos-da-plataforma-e-remedios`; regime da plataforma → `regime-plataformas-e-conteudo`. Objeto desconhecido ⇒ só a pergunta do objeto, sem minuta estrutural.
3. Receber, se existirem: competência e rito (`legitimidade-e-competencia-digital`), capítulo de tutela (`tutela-e-pedidos-delimitados-digital`) e inventário de prova (`matriz-fato-prova-dano-digital`).
4. **Não reabrir o mérito:** nenhum fato, fundamento material ou pedido fora do BLOCO MATERIAL. IDs de direito material só os do bloco; esta skill acrescenta só IDs processuais. Faltou algo ⇒ devolver à frente; não completar de memória.

## 1. Cabimento e donos

- Cobre a ação de conhecimento e o pedido autônomo de registros (bloco da frente de registros).
- Tutela antecedente: a skill de tutela redige o requerimento; aqui só se incorpora o capítulo e se faz o aditamento (§6).
- Não cobre: produção antecipada autônoma → `producao-antecipada-de-prova-digital`; mandado de segurança ou anulatória contra ato da ANPD ou da Anatel → `controle-judicial-ato-administrativo`; cumprimento → `cumprimento-de-ordem-digital` ou `cumprimento-pagar-quantia-digital`.

## 2. Variantes por polo (autor = cliente)

| Autor (natureza) | Réu típico | Núcleo da causa de pedir (do bloco) | Cuidado na peça |
|---|---|---|---|
| N1 pessoa natural | N5 plataforma | conta suspensa, bloqueada ou encerrada; conteúdo próprio removido | ramo `relação de consumo` (§3) |
| N1 ou N2 | N7 autor do conteúdo | honra, imagem, reputação | autoria só com prova; IP não é pessoa; sem autor identificado, registros antes ou cumulados |
| N1 ou N2 | N5 plataforma por conteúdo de terceiro | indisponibilização, indenização | regime só do bloco (§4) |
| N1 titular | N3 controlador | direito do titular por inciso | PJ não é titular de dado pessoal |
| N2 pessoa jurídica | N5 ou N7 | perfil empresarial, marca, avaliação | dano e legitimidade da PJ só com documento; no Juizado, só a PJ do art. 8º, § 1º, II a IV ([JEC3L-8]) |
| N5 ou N3 | N1, N2 ou N7 | violação de termos, uso indevido, declaratória | só fundamentos do bloco; sem presumir má-fé |

Posição diferente de ATIVO ⇒ esta skill não serve: contestação → `contestacao-e-defesa-digital`.

## 3. Variante pessoa natural × plataforma em relação de consumo

Aplica-se quando o bloco da frente de conta ou de conteúdo marcar `relação de consumo`. A peça sai completa aqui, sem depender de outro plugin, e usa só os blocos que vierem no BLOCO MATERIAL:
- consumidor [CDC-2] e fornecedor e serviço [CDC-3]; o § 2º fala em serviço "mediante remuneração": a forma de remuneração da plataforma é fato a provar (sem prova ⇒ `PENDENTE DE PROVA`);
- fato do serviço [CDC-14] ou vício do serviço [CDC-20]; informação adequada [CDC-6-III-IV];
- cláusula de termo de uso nula só pelo literal [CDC-51-CAPUT-I] ou [CDC-51-IV], com o termo vigente na data do fato colado pelo cliente;
- inversão do ônus como **requerimento**, "a critério do juiz", por verossimilhança ou hipossuficiência [CDC-6-VIII]; nunca como efeito automático;
- foro do domicílio do autor como faculdade na ação de responsabilidade civil do fornecedor [CDC-101], inciso I ("pode"); pedido só de obrigação de fazer (ex.: restabelecer conta, sem indenização): foro por esse artigo `PENDENTE DE FONTE`.

Bloco sem esses IDs num caso de consumo ⇒ devolver à frente; não acrescentar CDC por conta própria.

## 4. Regime da plataforma

Responsabilidade da plataforma por conteúdo de terceiro só pelo que o bloco trouxer de `regime-plataformas-e-conteudo`. Tema 987/533 só com `[ID]` do bloco (ex.: [T987-ED-ITEM2]) **e** o rótulo "fonte parcial — embargos julgados em 17/06/2026, acórdão não publicado" (Tema 533: "fonte parcial — mérito publicado; embargos suspensos para posterior proclamação, sem resultado proclamado", [T533-SITUACAO], [T533ED-DEC-2409]), na mesma linha, também no resumo. O art. 19 isolado ([MCI-18-19]) não é o regime.

## 5. Rito: comum × Juizado

A escolha vem de `legitimidade-e-competencia-digital`; aqui se aplicam as consequências.

**Comum.** Requisitos do art. 319, I a VII, documentos indispensáveis do art. 320 e emenda do art. 321 ([CPC3-319-321]); sem dado do réu, pedir diligências (art. 319, § 1º). Opção pela audiência: o autor indica na inicial o desinteresse na autocomposição ([CPC3-334], § 5º). Risco de indeferimento por inépcia, inclusive pedido indeterminado ([CPC3-330-332], art. 330, § 1º, II): por isso os pedidos vêm delimitados do bloco. Plataforma estrangeira: competência brasileira e domicílio da PJ com filial no Brasil ([CPC-21]).

**Juizado.** Causas até quarenta salários mínimos e renúncia ao excedente pela opção do rito, excetuada a hipótese de conciliação ([JEC-3], inciso I e § 3º); foro ([JEC-4]). Autor: só pessoa física capaz (excluído o cessionário de direito de PJ), MEI, ME, EPP, OSCIP ou sociedade de crédito ao microempreendedor ([JEC3L-8], § 1º); não são partes o incapaz, o preso, a PJ de direito público, a empresa pública da União, a massa falida e o insolvente civil (caput). Sem custas em primeiro grau ([JEC3L-54-55], art. 54) e sem condenação em custas e honorários na sentença, salvo litigância de má-fé (art. 55): a inicial não pede essa condenação. Advogado facultativo até vinte salários mínimos e obrigatório acima ([JEC3C-9]). Ausência do autor a qualquer audiência extingue o processo ([JEC3C-51], inciso I): avisar o cliente por escrito. Requisitos próprios do pedido no Juizado não capturados ⇒ `PENDENTE DE FONTE` nessa linha; a forma segue o template. Valor do salário mínimo não capturado: o advogado preenche; nunca calcular.

## 6. Tutela antecedente e aditamento

Se a tutela antecipada antecedente foi concedida, aditar a inicial com a complementação da argumentação, novos documentos e a confirmação do pedido de tutela final, "em 15 (quinze) dias ou em outro prazo maior que o juiz fixar" ([CPC3-303-310], art. 303, § 1º, I); sem aditamento, extinção (§ 2º); valor da causa considera o pedido de tutela final (§ 4º). Tutela incidental: inserir o capítulo recebido, sem reescrever requisitos.

## 7. Valor da causa ([CPC3-291-292])

- Toda causa tem valor certo, mesmo sem conteúdo econômico imediato (art. 291): obrigação de fazer recebe estimativa justificada pelo advogado, sem número inventado.
- Indenizatória, inclusive por dano moral: o valor pretendido (art. 292, V), definido pelo advogado com base no bloco.
- Cumulação: soma (VI); alternativos: o maior (VII); subsidiário: o principal (VIII). O juiz pode corrigir de ofício (§ 3º).
- Este § 7 vale para o comum. No Juizado, o valor fica no teto de [JEC-3]; o critério do art. 292 aplicado ao Juizado é `PENDENTE DE FONTE`.

## 8. Montagem da peça

Usar `templates/peca-inicial.md.tpl` (`peca=inicial`, `peca=aditamento-303` §6 ou `peca=emenda-321` §9). **Entrega (regra única):** a peça não traz `{{`, `}}`, `[[`, marcador de variante nem comentário HTML; campo sem dado vira `[CAMPO — PENDENTE DE PROVA]`; só a variante do polo e do rito do caso; alternativa não resolvida vai às pendências; peça só do polo do cliente; estados só os 5, um por item; peça gravada na pasta do caso.
1. Endereçamento: o juízo indicado pela competência (art. 319, I).
2. Qualificação (art. 319, II); plataforma pela pessoa jurídica que responde no Brasil, conforme documento.
3. Fatos: um parágrafo por fato do bloco, com o item de prova e a origem; relato atribuído ao cliente.
4. Fundamentos: processuais (esta skill) e materiais (literal do bloco, com `[ID]`).
5. Pedidos: os do item 4 do bloco, delimitados; custas e honorários só no comum ([CPC-85]) (conteúdo por URL, conta por identificador, registros com indícios e período, dados por direito; indenização com valor do advogado). Pedido amplo não entra: volta como `PENDENTE DE PROVA` com o campo faltante.
6. Requerimentos: citação; opção de audiência; tutela (capítulo recebido); inversão do ônus no ramo de consumo; segredo de justiça quando houver registros ou dados pessoais, se o bloco trouxer a base.
7. Provas (comum: art. 319, VI; Juizado: `PENDENTE DE FONTE`): lista do inventário, nos autos e a produzir.
8. Valor da causa e fecho (local, data e advogado: dado do caso ou `[CAMPO — PENDENTE DE PROVA]`).

## 9. Prazos (literal do bloco, nunca data calculada)

Emenda (comum): o juiz indica com precisão o que corrigir ou completar, em 15 dias; descumprida, indeferimento ([CPC3-319-321], art. 321 e parágrafo único). A peça `peca=emenda-321` traz a tabela ponto → correção → documento e a inicial emendada na íntegra. Emenda no Juizado: `PENDENTE DE FONTE`. Aditamento: §6. Contagem em dias úteis para prazos processuais ([CPC-219]); termo inicial pelo modo da intimação ([CPC3-231]). Data de vencimento não entra na minuta.

## 10. Andamento e fechamento

- Atualizar "Andamento" do `00-perfil-do-caso.md`: fase (inicial), ato praticado (minuta de petição inicial), próximo ato, prazo literal com `[ID]`.
- Saída: a linha `POLO DO CLIENTE · NATUREZA … · POSIÇÃO ATIVO · FASE não se aplica`, a peça completa, a lista de documentos a juntar e a tabela item → estado com os estados de `revisao-final-digital`.
