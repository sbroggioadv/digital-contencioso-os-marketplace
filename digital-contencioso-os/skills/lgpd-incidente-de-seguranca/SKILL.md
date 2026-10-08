---
name: lgpd-incidente-de-seguranca
description: "LGPD consultiva até a comunicação: avalia o incidente de segurança pelos critérios da Res. CD/ANPD 15/2024 e redige a comunicação do controlador à ANPD e aos titulares, a complementação, o pedido de sigilo, a declaração de comunicação, o registro do incidente e o aviso do operador ao controlador, inclusive agente de pequeno porte. Recebido documento da ANPD (pedido de informações, auditoria, medida, determinação, auto), para e encaminha."
---

# Incidente de segurança até a comunicação — LGPD consultiva

**Guidance only:** vai até a comunicação e os atos que a própria comunicação exige (complementação e declaração); não acompanha documento nem processo da ANPD. Minuta para revisão do advogado; o envio é ato do cliente, só registrado com documento. Fonte única: `context/` (ver `context/INDICE.md`). Ler o `00-perfil-do-caso.md` ao abrir e atualizar a seção "Andamento" ao fechar.

## Guard mínimo

- Norma, tema e prazo só com `[ID]`; sem `[ID]` ⇒ `PENDENTE DE FONTE` na linha.
- IP identifica terminal, não pessoa · hash declarado ≠ verificado (autoria e origem do ataque não se presumem).
- Sem promessa de resultado (nem de arquivamento ou de ausência de sanção).
- Um caso = um cliente = um polo; polo ausente ou contraditório ⇒ só as perguntas, mesmo se mandarem não perguntar.
- Ao final, acionar `revisao-final-digital`.

## 1. Recorte e corte

Cobre: avaliação do incidente, comunicação à ANPD e aos titulares, complementação (art. 6º, § 3º), declaração de comunicação aos titulares (art. 9º, § 4º), registro (art. 10 — [ANPD-R15-10]) e aviso do operador ao controlador. **Corte:** documento da ANPD dirigido ao cliente — pedido de informações adicionais (art. 8º), auditoria ou inspeção (art. 12), medida preventiva (art. 15), apuração de incidente não comunicado (art. 16), determinação de comunicar ou de providências (arts. 17 e 19), processo sancionador (arts. 17, § 1º, e 21) ou fiscalização — encerra esta skill: registrar o documento e a fase que ele mostra e encaminhar a `via-administrativa-anpd-regulado`, sem redigir resposta, manifestação ou peça do procedimento ([ANPD-R15-11-15], [ANPD-R15-16-17], [ANPD-R15-18-23]). C e D são deveres do controlador na própria comunicação (arts. 6º, § 3º, e 9º, § 4º), juntados ao processo já aberto; não são resposta nem manifestação ([ANPD-R15-6-8], [ANPD-R15-9], [ANPD-R15-18-23], art. 18). Titular afetado que reclama ou pede reparação → `dados-pessoais-controversia`. Cláusula de incidente em contrato → `lgpd-contratos-de-tratamento`.

## 2. Perguntas (sem resposta, só as perguntas)

1. O cliente é controlador ou operador? Há outro controlador ou operador envolvido?
2. O que aconteceu, quando ocorreu e **quando o controlador soube que o incidente afetou dados pessoais** (documento que mostre a data)?
3. Categorias de dados; número de titulares, com crianças, adolescentes e idosos; total de titulares nas atividades afetadas; dados ininteligíveis a terceiros?
4. Medidas antes e depois; causa identificada; encarregado ou representante com documento de vínculo ou procuração.
5. Agente de pequeno porte (com documento)? Lei setorial com prazo próprio? A ANPD já fez algum contato?

## 3. Avaliação com fonte

1. **É incidente?** "qualquer evento adverso confirmado, relacionado à violação das propriedades de confidencialidade, integridade, disponibilidade e autenticidade da segurança de dados pessoais" ([ANPD-R15-3], XII). Não confirmado ⇒ registro interno e apuração técnica, sem afirmar incidente.
2. **Risco ou dano relevante?** Cumulativo: poder afetar significativamente interesses e direitos fundamentais (§ 1º) **e** ao menos um critério — sensíveis; crianças, adolescentes ou idosos; financeiros; autenticação; sigilo legal, judicial ou profissional; larga escala (§ 2º) ([ANPD-R15-4-5], art. 5º). Matriz: critério · presente? · prova · `[ID]`.
3. **Quem comunica:** o controlador, à ANPD e ao titular ([LGPD-48]; [ANPD-R15-4-5], art. 4º). Dados ininteligíveis entram no juízo de gravidade da ANPD ([LGPD-48], § 3º); não dispensam a avaliação por si.
4. **Decisão:** o controlador deverá comunicar ([ANPD-R15-4-5], art. 4º); não comunicar só se a matriz do passo 2 (art. 5º) não fecha, com os motivos registrados ([ANPD-R15-10], art. 10, § 1º, VIII). A decisão é do cliente com o advogado; a ANPD pode apurar incidente não comunicado ([ANPD-R15-16-17]).

## 4. Prazos e forma (literal; nunca data calculada)

- ANPD: "no prazo de três dias úteis", contado "do conhecimento pelo controlador de que o incidente afetou dados pessoais", ressalvado prazo em legislação específica; complementação fundamentada "no prazo de vinte dias úteis, a contar da data da comunicação" ([ANPD-R15-6-8], caput, §§ 1º e 3º).
- Titular: "no prazo de três dias úteis contados do conhecimento pelo controlador"; declaração de comunicação aos titulares "em até três dias úteis, contados do término do prazo" do caput ([ANPD-R15-9], caput e § 4º).
- **Pequeno porte:** prazos do art. 6º (caput e § 3º) e do caput do art. 9º contados em dobro ([ANPD-R15-6-8], § 8º; [ANPD-R15-9], § 6º; [ANPD-R2-14], II); a comunicação declara o porte (art. 6º, § 2º, IX). Enquadramento: definições do art. 2º e exclusões do art. 3º da Res. 2/2022 — alto risco, receita bruta acima do limite, grupo econômico ([ANPD3L-R2-2], [ANPD3L-R2-3]); critérios de alto risco: [ANPD3-RIPD-ALTO-RISCO] (guia da ANPD, não literal do art. 4º); literal do art. 4º ⇒ `PENDENTE DE FONTE`. Porte sem documento ⇒ `PENDENTE DE PROVA`.
- Data de conhecimento sem documento ⇒ `PENDENTE DE PROVA`; vencimento em data não se calcula. Prazo setorial ⇒ `PENDENTE DE FONTE`.
- Formulário eletrônico da ANPD, por canal específico ([ANPD-R15-6-8], § 4º; [ANPD-R15-18-23], art. 18); pelo encarregado com documento de vínculo, ou por representante com instrumento de poderes, juntados no mesmo prazo, sob pena de apuração (§§ 5º–7º).
- Sigilo: pedido fundamentado, indicando as informações protegidas ([ANPD-R15-6-8], art. 7º).

## 5. Atos a produzir (completos — esqueleto `templates/peca-lgpd-incidente.md.tpl`)

A a F: destinatário · identificação da comunicação, do protocolo ou do ato a que se ligam · qualificação resumida · conteúdo da alínea · documentos · fecho do cliente (local, data, responsável).

**A) Comunicação à ANPD** (conteúdo do formulário; variante `peca=comunicacao-anpd`)
- **Destinatário:** Agência Nacional de Proteção de Dados (ANPD) ([NAT-LGPD-55A]), pelo formulário eletrônico ([ANPD-R15-6-8], § 4º).
- **Qualificação:** controlador e declaração de pequeno porte, se houver (IX); operador (X); encarregado ou representante (VIII), com o documento do § 5º ([ANPD-R15-6-8], § 2º).
- **Fatos:** descrição e causa (XI); natureza e categoria dos dados (I); titulares afetados, com crianças, adolescentes e idosos (II); total de titulares nas atividades afetadas (XII); data da ocorrência e do conhecimento (VII); motivos da demora (V) ([ANPD-R15-6-8], § 2º).
- **Fundamentos:** [LGPD-48], [ANPD-R15-3], [ANPD-R15-4-5], [ANPD-R15-6-8].
- **Medidas e riscos:** medidas antes e após (III); riscos e impactos (IV); reversão e mitigação (VI) ([ANPD-R15-6-8], § 2º).
- **Pedidos:** recebimento da comunicação; sigilo das informações indicadas (art. 7º), se cabível; reserva de complementação no prazo do § 3º ([ANPD-R15-6-8]).
- **Provas:** documento de vínculo ou procuração; evidências técnicas com origem (arquivo, quem produziu, quando).
- **Fecho:** local, data e responsável — preenchidos pelo cliente.

**B) Comunicação aos titulares** (`peca=comunicacao-titulares`): linguagem simples; itens I a VII do art. 9º; forma direta e individualizada ("telefone, e-mail, mensagem eletrônica ou carta"); se inviável, divulgação nos meios do controlador, com fácil visualização, "pelo período de, no mínimo, três meses"; recomendações de mitigação como boa prática ([ANPD-R15-9], §§ 1º–3º e 5º). Sem frase de garantia ("seus dados estão seguros").

**C) Complementação** (art. 6º, § 3º; `peca=complementacao`): à ANPD, no procedimento já iniciado, com o número da comunicação; só informação nova, fundamentada, com os itens alterados ([ANPD-R15-6-8]).

**D) Declaração de comunicação aos titulares** (art. 9º, § 4º; `peca=declaracao-titulares`): juntada ao processo de comunicação, com o número dele; "os meios de comunicação ou divulgação utilizados", com documento ([ANPD-R15-9]).

**E) Registro do incidente** (`peca=registro`): campos mínimos I a VIII, inclusive incidente não comunicado e os motivos; guarda mínima de cinco anos, salvo obrigação maior ([ANPD-R15-10]).

**F) Aviso do operador ao controlador** (`peca=aviso-operador`): fatos que detém, medidas tomadas, contato; o dever de comunicar é do controlador ([ANPD-R15-4-5], art. 4º) e o operador segue as instruções dele ([LGPD-37-39], art. 39). Prazo do aviso: o do contrato; sem contrato, nenhum prazo legal no `context/` ⇒ `PENDENTE DE FONTE`.

Valor da causa e rito: não se aplicam (ato extrajudicial).

## 6. Variantes por polo

- **Controlador (N3/N5/N6):** A a E.
- **Controlador de pequeno porte, com prova:** A a E, com prazos em dobro e declaração de porte ([ANPD-R15-6-8], [ANPD-R15-9], [ANPD-R2-14]).
- **Operador (N4):** F e apoio ao controlador; não comunica à ANPD em nome próprio ([ANPD-R15-4-5], art. 4º).
- **Entidades do art. 23 da LGPD:** guarda do registro conforme tabela de temporalidade (art. 10, § 2º) ([ANPD-R15-10]).

## 7. Rejeitar com motivo

- "72 horas" ou prazo estrangeiro ⇒ sem fonte; vale o art. 6º ([ANPD-R15-6-8], [ANPD-R15-9]).
- "Três dias corridos" ⇒ o bloco diz dias úteis ([ANPD-R15-6-8], [ANPD-R15-9]).
- "Criptografado, logo não comunica" ⇒ o § 3º do art. 48 só entra no juízo de gravidade ([LGPD-48]).
- "Comunicar é confessar infração" ⇒ as providências do art. 19 não são sanção ([ANPD-R15-18-23], art. 22); não prometer ausência de processo.
- "Não houve dano, logo não comunica" ⇒ o critério é poder acarretar risco ou dano relevante ([ANPD-R15-4-5], art. 5º).

## 8. Fechamento

1. `POLO DO CLIENTE · NATUREZA <N3|N4|N5|N6> · POSIÇÃO REGULADO · FASE não se aplica` (consultivo; documento da ANPD recebido ⇒ corte do § 1).
2. Atos A a F pedidos, completos.
3. Tabela item → estado: `MINUTA PARA REVISÃO HUMANA` · `PENDENTE DE PROVA` · `PENDENTE DE FONTE` · `BLOQUEADO` · `FORA DO RECORTE`. Só um dos 5 por item, sem texto livre; campo ausente ⇒ `[PENDENTE DE PROVA: o quê]`. Decidir não comunicar não é `FORA DO RECORTE`: é item do registro.
4. Atualizar "Andamento" no `00-perfil-do-caso.md` e acionar `revisao-final-digital`.
