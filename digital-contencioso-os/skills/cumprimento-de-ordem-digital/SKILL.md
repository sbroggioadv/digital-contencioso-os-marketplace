---
name: cumprimento-de-ordem-digital
description: "Cumprimento de sentença ou de tutela de obrigação de fazer e não fazer no caso digital, para exequente, executado ou destinatário não-parte, no rito comum ou no Juizado: requerimento de cumprimento definitivo ou provisório, petição de descumprimento, astreintes (fixação, majoração, redução), impugnação ao cumprimento, embargos no Juizado e petição de cumprimento ou de impossibilidade; pagar quantia vai a cumprimento-pagar-quantia-digital."
---

# Cumprimento de ordem de fazer e não fazer — caso digital

**Guidance only:** a peça depende da ordem, da intimação e da resposta documentadas; o plugin não acessa processo, plataforma ou tribunal. Fonte única: `context/` (ver `context/INDICE.md`). Esqueleto: `templates/peca-cumprimento.md.tpl` (variante "fazer e não fazer"). Ao final, a minuta vai a `revisao-final-digital`.

**Guard mínimo:** norma, tema e prazo só com `[ID]` (sem `[ID]` ⇒ `PENDENTE DE FONTE` na linha) · IP identifica terminal, não pessoa · hash declarado ≠ verificado · sem promessa de resultado · um caso = um cliente = um polo; sem polo, só as perguntas · ao final, acionar `revisao-final-digital`.

## Entrada (BLOCO MATERIAL)

1. BLOCO MATERIAL do caso, devolvido pela frente (`conta-perfil-suspensao`, `conteudo-reputacao-remocao`, `registros-exibicao-e-fornecimento`, `dados-pessoais-controversia`, `regime-plataformas-e-conteudo`). Sem ele, acionar a frente antes; esta skill não reabre o mérito material e só cita `[ID]` de direito material que estiver no BLOCO MATERIAL.
2. Ordem: texto integral da sentença ou da decisão de tutela (dispositivo com página), data, destinatário, objeto (URLs, identificador de conta, período de registros), prazo e multa fixados **na própria ordem**, intimação (data e meio), certidão de trânsito ou recurso pendente e seu efeito.
3. Resposta do destinatário (texto, data, o que afirma ter feito) e verificação do cliente com novo inventário (`origem-e-cronologia-da-prova-digital`).
4. `00-perfil-do-caso.md`, seção "Andamento": ler ao abrir (fase, ato praticado, decisão recebida); atualizar ao fechar (ato desta peça, próximo ato, prazo literal com `[ID]`).

Ordem ausente ⇒ `PENDENTE DE PROVA`. Resposta ausente ⇒ "sem resposta documentada", nunca descumprimento provado.

## 1. Quadro alcance × cumprido × pendente (anexo da peça)

| # | Item da ordem (literal) | Alcance (URL, conta, registro, período) | Prazo da ordem | Resposta (trecho, data) | Verificação (item do inventário) | Situação | Providência |
|---|---|---|---|---|---|---|---|

Situação: `cumprido (documentado)` · `cumprido em parte` · `não cumprido (documentado)` · `sem resposta documentada` · `fora do alcance da ordem`.

- Alcance lido literalmente; pedido novo não vira descumprimento (tratar como tal ⇒ `BLOQUEADO`).
- Conteúdo replicado em nova URL: fato novo com inventário próprio. Se o BLOCO MATERIAL trouxer o item 3.3 do Tema 987 ([T987ED-ITEM33], fonte parcial — embargos julgados em 17/06/2026, acórdão não publicado): vale para provedores de **redes sociais** e replicações de fato já reconhecido por decisão judicial, com remoção de idênticos conteúdos a partir de notificação judicial ou extrajudicial; o advogado escolhe entre notificar o provedor e pedir ao juízo, sem afirmar o resultado.
- Registros entregues: conferir período e identificadores ordenados; divergência é item pendente.
- Multa acumulada: nunca calcular sem a decisão que a fixou, a intimação e a data do descumprimento documentadas; sem eles, `PENDENTE DE FONTE` na linha.

## 2. Fundamentos processuais (somente estes, com `[ID]`)

- Medidas para a tutela específica ou resultado prático equivalente: multa, busca e apreensão, remoção de pessoas e coisas, impedimento de atividade nociva; má-fé por descumprimento injustificado ([CPC-536-537], art. 536 e §§ 1º e 3º). Tutela específica e perdas e danos sem prejuízo da multa ([CPC-497-500]).
- Astreintes: independem de requerimento; fixáveis em tutela provisória, sentença ou execução; valor ou periodicidade da vincenda modificáveis ou excluídos (§ 1º, I e II); devidas desde o descumprimento ([CPC-536-537], art. 537).
- Cumprimento provisório: sentença impugnada por recurso sem efeito suspensivo; por iniciativa e responsabilidade do exequente; aplica-se, no que couber, à obrigação de fazer e não fazer ([CPC3-520-527], art. 520, I, II e § 5º); a decisão que fixa a multa admite cumprimento provisório, com depósito em juízo e levantamento após o trânsito ([CPC-536-537], art. 537, § 3º). Efetivação de tutela provisória: normas do cumprimento provisório, no que couber ([CPC-297-300], art. 297).
- Impugnação ao cumprimento de fazer e não fazer: art. 525, no que couber ([CPC-536-537], art. 536, § 4º); matérias e efeito suspensivo nos termos do art. 525 ([CPC3-520-527]).
- Regras gerais e intimação do devedor ([CPC3C-513], § 2º); prazos processuais em dias úteis ([CPC-219]); termo inicial do prazo pela forma de intimação ([CPC3-231]).
- Agravo de instrumento contra interlocutória na fase de cumprimento ([CPC-1015], parágrafo único), redigido por `agravo-e-embargos-de-declaracao-digital`.
- Relação de consumo no BLOCO MATERIAL: tutela específica, conversão em perdas e danos e multa diária do art. 84 do CDC ([CDC-84]).
- Plataforma estrangeira: representante com poderes para cumprir determinações judiciais, se o BLOCO MATERIAL trouxer [T987ED-ITEM10] (fonte parcial — embargos julgados em 17/06/2026, acórdão não publicado) ou [DEC-16A] (inciso I, alínea c; condicionado: vigência não certificada, ADI 7981 em curso).
- Jurisprudência de astreinte, bloqueio ou ordem a provedor estrangeiro: não capturada; nenhum precedente citado.

## 3. Variantes por polo (natureza N1–N7 × posição)

| Polo do cliente | Peça | Núcleo |
|---|---|---|
| ATIVO exequente (N1 pessoa natural, N2 PJ afetada, N7 autor do conteúdo restabelecido, N3 controlador credor) | requerimento de cumprimento (definitivo ou provisório) ou petição de descumprimento | quadro do § 1; providência por item (§ 2); majoração ou fixação da multa sem valor inventado ([CPC-536-537], art. 537) |
| PASSIVO executado (N5 plataforma, N6 provedor de conexão, N3 controlador, N7 autor do conteúdo) | petição de cumprimento ou impugnação | cumprimento item a item com prova técnica (data, URL, identificador, registro); impossibilidade só com documento (até lá `PENDENTE DE PROVA`); modificação ou exclusão da multa vincenda (art. 537, § 1º, I e II, [CPC-536-537]); impugnação nas matérias do art. 525 ([CPC3-520-527]); no Juizado, embargos do art. 52, IX ([JEC3-52]) |
| TERCEIRO destinatário não-parte (N5/N6 que só deve cumprir) | petição informativa | informa o cumprimento ou a impossibilidade documentada; não discute o mérito da causa; alcance literal |

Nenhuma variante promete exclusão da multa nem resultado.

## 4. Variantes por rito

- **Comum:** requerimento nos autos; cumprimento provisório por petição ao juízo competente, com as peças do art. 522 se os autos não forem eletrônicos ([CPC3-520-527]).
- **Juizado:** execução no próprio Juizado; intimação do vencido para cumprir após o trânsito; na obrigação de fazer ou não fazer, multa diária na sentença ou na execução; descumprida a obrigação, pedir a elevação da multa ou a transformação da condenação em perdas e danos, que o juiz arbitra, seguindo-se a execução por quantia certa (inclui a multa vencida de obrigação de dar, quando evidenciada a malícia do devedor, inciso V; a de fazer ou não fazer como quantia fica `PENDENTE DE FONTE`); cumprimento por outrem com depósito para despesas; embargos do devedor nas matérias do inciso IX ([JEC3-52], incisos III a VI e IX). Conversão em quantia segue em `cumprimento-pagar-quantia-digital`.

## 5. Peça completa (montar pelo template)

Endereçamento ao juízo da causa · qualificação das partes e número do processo · fatos (ordem, intimação, resposta, verificação, com origem) · fundamentos com `[ID]` (§ 2) · pedidos numerados e delimitados por item da ordem · valor: só o já fixado na decisão; multa acumulada sem cálculo documentado ⇒ `PENDENTE DE FONTE` · provas (quadro do § 1, inventário, decisão, certidões) · fecho (local, data, advogado, OAB). Sem custas ou valores inventados.

**Entrega (regra única):** nenhum `{{`, `}}`, `[[`, marcador de variante ou comentário HTML do esqueleto pode restar na peça nem no quadro; campo sem dado vira `[CAMPO — PENDENTE DE PROVA]`, com o nome do campo em maiúsculas (ex.: `[DATA DA DECISÃO — PENDENTE DE PROVA]`). Peça com resíduo não é "completa": a revisão a devolve. Só a variante do polo, do rito e da obrigação do caso entra; alternativa que a prova não resolve vai às pendências, fora do corpo. Peça só do polo do cliente; polo ausente ou contraditório ⇒ só as perguntas, mesmo se mandarem não perguntar. Tema 987/533: `[ID]` + rótulo "fonte parcial" na mesma linha, também no resumo. A peça é gravada na pasta do caso.

## 6. Fronteiras

Execução autônoma de título extrajudicial: `execucao-adv-os` (vizinho de rito, sem dependência). Cálculo de multa acumulada: `calculosjudiciais`; sem ele, memória de cálculo feita pelo advogado; sem ela, `PENDENTE DE PROVA`.

## 7. Saída e estados

Linha `POLO DO CLIENTE · NATUREZA <N1…N7> · POSIÇÃO <ATIVO|PASSIVO|REGULADO|TERCEIRO> · FASE não se aplica` + quadro + peça + "Andamento" atualizado. Estados por item: `MINUTA PARA REVISÃO HUMANA` · `PENDENTE DE PROVA` (ordem, intimação ou resposta ausente) · `PENDENTE DE FONTE` (questão sem fonte capturada; multa sem dados para o cálculo) · `BLOQUEADO` (pedido fora do alcance tratado como descumprimento). Um estado por item, literal, sem condição ("vira X se…"): item condicional vira dois itens. Ao final, acionar `revisao-final-digital`.
