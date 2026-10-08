---
name: lgpd-ripd
description: "LGPD preventiva: decide se o tratamento pede relatório de impacto (alto risco, legítimo interesse, dados sensíveis, poder público, exigência da ANPD) e redige o RIPD completo do controlador — descrição, necessidade, matriz de riscos, medidas, risco residual, consulta ao encarregado e conclusão — pela orientação de RIPD da ANPD capturada; variantes por papel e pequeno porte."
---

# LGPD — relatório de impacto à proteção de dados (RIPD) (consultivo)

**Guidance only:** entrega a **análise de necessidade** e o **RIPD redigido** para revisão do advogado e do encarregado. O RIPD é do controlador: a metodologia, o nível de risco e a decisão de prosseguir são dele. Não certifica segurança, não substitui avaliação técnica e não promete que a ANPD aceitará o relatório. Fonte única: `context/` (ver `context/INDICE.md`).

**Guard mínimo**
- Norma, tema e prazo só com `[ID]` do `context/`; sem `[ID]` ⇒ `PENDENTE DE FONTE` na linha.
- IP identifica terminal, não pessoa; hash declarado ≠ verificado.
- Sem promessa de resultado (aprovação, ausência de sanção, risco "zero").
- Um caso = um cliente = um polo; polo ausente ou contraditório ⇒ só as perguntas, mesmo se mandarem não perguntar.
- Ao final, acionar `revisao-final-digital`.

**Selo das fontes:** a página de perguntas e respostas da ANPD sobre o RIPD (blocos `ANPD3-RIPD-*`) é **orientação 🟡**, não regulamento; a própria página avisa que obrigações e parâmetros adicionais podem vir ([ANPD3-RIPD-CONCEITO]). Norma: [LGPD-37-39] art. 38 e os blocos da LGPD citados abaixo. ANPD = Agência Nacional de Proteção de Dados ([NAT-LGPD-55A]).

## 1. Recorte e polo

- **Linha de polo:** `NATUREZA N3` (controlador), `N5` (plataforma como controladora) ou `N2` (PJ controladora) · `POSIÇÃO ATIVO` (o cliente elabora o relatório) · `FASE não se aplica`.
- **Operador (N4):** não elabora o RIPD do controlador ([ANPD3-RIPD-CONCEITO]; [LGPD-37-39] art. 39); a skill produz o **dossiê de informações** que o operador entrega ao controlador e o registro da sua participação na consulta ([ANPD3-RIPD-ENCARREGADO]).
- **Não cabe aqui (devolver ao `digital-contencioso-master`):** a resposta à ANPD dentro de fiscalização ou processo instaurado (requisição de documentos, defesa). A skill pode redigir o RIPD que será juntado; o ato do procedimento é de outra skill.

## 2. Passo 1 — é caso de RIPD?

| Gatilho | Fonte |
|---|---|
| Tratamento que pode gerar alto risco aos princípios e aos direitos do titular (recomendado; avaliação do agente) | [ANPD3-RIPD-QUANDO] |
| ANPD pode exigir: segurança pública, defesa, investigação penal; legítimo interesse; poder público; controladores em geral, inclusive dados sensíveis | [ANPD3-RIPD-QUANDO]; [LGPD-4] § 3º; legítimo interesse [LGPD3L-10] § 3º; [LGPD-37-39] art. 38 |
| Programa de governança com avaliação sistemática de impactos e riscos | [LGPD3-50] § 2º, I, d |
| Determinação da ANPD | [LGPD-37-39] art. 38; [ANPD3-RIPD-QUANDO] |

**Critério de alto risco enquanto não houver regulamento do RIPD:** ao menos um critério geral (larga escala; afetar significativamente interesses e direitos fundamentais) **e** um específico (tecnologia emergente ou inovadora; vigilância de zona acessível ao público — definida em [ANPD3L-R2-2] IV; decisão unicamente automatizada; dados sensíveis ou de crianças, adolescentes e idosos), lista não exaustiva ([ANPD3-RIPD-ALTO-RISCO], que remete ao art. 4º do Regulamento da Res. CD/ANPD 2/2022 — artigo **não capturado** neste `context/`; citar só pelo bloco da ANPD).

Momento: antes de iniciar o tratamento; se já iniciado, assim que o alto risco for identificado; sempre que a ANPD solicitar ([ANPD3-RIPD-QUANDO]).

Saída do passo 1: "RIPD recomendado", "RIPD exigível" ou "RIPD não indicado — fundamentar", com o fato que sustenta cada critério (origem). Sem fato documentado ⇒ `PENDENTE DE PROVA`, nunca "baixo risco".

## 3. Passo 2 — escopo

Um RIPD por projeto ou processo com a mesma finalidade; operações similares em natureza, finalidade e risco podem caber em um só; controladores que compartilham dados podem ter, cada um, o seu ([ANPD3-RIPD-ESCOPO]).

## 4. Passo 3 — o RIPD (ato completo)

1. **Endereçamento:** documento interno do controlador, dirigido à sua administração; quando houver requisição, identificar a ANPD como destinatária da cópia (a remessa é ato do procedimento, fora desta skill).
2. **Qualificação:** controlador (nome empresarial, CNPJ fornecido), encarregado ([LGPD3-41]), responsáveis pela elaboração, operadores envolvidos, versão e data (`[CAMPO — PENDENTE DE PROVA]` se faltarem).
3. **Fatos — descrição do tratamento:** tipos de dados e titulares; operações do ciclo de vida ([LGPD-5] X); finalidades e hipóteses legais ([LGPD3-7]; sensíveis [LGPD3-11]; crianças e adolescentes [LGPD3-14]); origem, compartilhamento, operadores e transferências ([LGPD3-33]); retenção; tudo com a origem da informação.
4. **Fundamentos — necessidade e proporcionalidade:** confronto de cada operação com finalidade, adequação e necessidade ([LGPD3-6] I a III; no legítimo interesse, só os dados estritamente necessários — [LGPD3L-10] § 1º) e com transparência, segurança e prevenção ([LGPD3-6] VI a VIII); conteúdo mínimo exigido ([LGPD-37-39] art. 38, parágrafo único; [ANPD3-RIPD-CONTEUDO]).
5. **Análise de riscos:** metodologia escolhida e nomeada pelo controlador ([ANPD3-RIPD-RISCO]); matriz:

| # | Fator de risco | Consequência ao titular | Probabilidade | Impacto | Nível | Justificativa (origem) |
|---|---|---|---|---|---|---|

   Consequências a considerar: perda de confidencialidade, integridade ou disponibilidade; reversão de anonimização ou pseudonimização; uso incompatível; violação de direitos ([ANPD3-RIPD-RISCO]); fatores combinados podem elevar o risco. Probabilidade, impacto e nível são atribuídos pelo controlador, com justificativa; a skill não inventa escala nem número.
6. **Medidas e salvaguardas (no lugar de pedidos):** por fator, a medida técnica ou administrativa ([LGPD3-46]), o responsável, a situação (adotada × planejada, em coluna própria, nunca no campo Estado) e o **risco residual**.
7. **Consulta:** opinião do encarregado e, se houver, de operadores, especialistas ou titulares, com registro das divergências e da opção adotada ([ANPD3-RIPD-ENCARREGADO]; assistência do encarregado: [ANPD3-R18-A15-17] art. 16, III).
8. **Conclusão:** prosseguir, modificar ou não prosseguir — decisão do controlador ([ANPD3-RIPD-POS]); a skill apresenta as opções, não decide.
9. **Provas e anexos:** inventário, fluxos, contratos com operadores, evidências das medidas; o que faltar ⇒ `PENDENTE DE PROVA`.
10. **Fecho:** aprovação pelo controlador (nome e cargo; `[CAMPO — PENDENTE DE PROVA]` se faltarem), data, gatilhos de revisão (alteração das operações, novo fator de risco, agravamento, nova regulação ou orientação — [ANPD3-RIPD-POS]). Valor da causa: não se aplica.

Formato: livre enquanto não regulamentado ([ANPD3-RIPD-POS]). Segredos comercial e industrial preservados ([LGPD-37-39] art. 38).

## 5. Versão pública e envio

- Divulgação não é obrigatória em regra; se publicada, pode ser versão distinta da interna para resguardar segredos ([ANPD3-RIPD-PUBLICIDADE]). Órgão público: publicação por determinação da ANPD ou na falta de sigilo ([ANPD3-RIPD-PUBLICIDADE]).
- Envio à ANPD só quando requisitado; a ANPD não responde consulta em tese sobre salvaguardas ([ANPD3-RIPD-ENVIO]). Não prometer validação prévia.

## 6. Variantes por polo e porte

- **Controlador privado (N3/N5/N2):** passos 1 a 4 completos.
- **Poder público:** abrangência [LGPD-1]; exigência e publicação pela ANPD ([ANPD3-RIPD-QUANDO]; [ANPD3-RIPD-PUBLICIDADE]); regras do Capítulo IV da LGPD não capturadas ⇒ `PENDENTE DE FONTE`.
- **Operador (N4):** dossiê de informações ao controlador (seção 1).
- **Agente de pequeno porte:** o parâmetro de alto risco da orientação vem do regulamento de pequeno porte ([ANPD3-RIPD-ALTO-RISCO]); quem realiza tratamento de alto risco não se beneficia do regime diferenciado, ressalvado o art. 8º do regulamento, não capturado ⇒ `PENDENTE DE FONTE` ([ANPD3L-R2-3] I; definição em [ANPD3L-R2-2] I). O [ANPD-R2-14] IV dobra os prazos de informações, documentos, relatórios e registros "solicitados pela ANPD a outros agentes de tratamento"; a aplicação ao RIPD pedido ao próprio agente fica `PENDENTE DE FONTE`. Limites de receita não capturados ⇒ `PENDENTE DE FONTE`; critérios de alto risco: [ANPD3-RIPD-ALTO-RISCO] (guia da ANPD, não literal do art. 4º), nunca `PENDENTE DE FONTE`; não afirmar dispensa de RIPD.
- **Rito:** não se aplica (documento extrajudicial; sem rito comum ou Juizado).

Plano de adequação mais amplo ⇒ `lgpd-programa-de-adequacao`; aviso ao titular sobre o tratamento ⇒ `lgpd-politicas-e-avisos`.

Registrar em `00-perfil-do-caso.md`, seção "Andamento": RIPD (versão), conclusão do controlador, próxima revisão.

## 7. Saída e estado

Linha de polo + passo 1 fundamentado + RIPD completo (seção 4) + versão pública, se pedida + tabela item → estado, um por item: `MINUTA PARA REVISÃO HUMANA` · `PENDENTE DE PROVA` · `PENDENTE DE FONTE` · `BLOQUEADO` (só conflito de caso ou item barrado na revisão) · `FORA DO RECORTE` (com destino). Só um dos 5 por item, literal, sem texto livre nem condicional ("planejada", "informativo", "não pedido", "fora desta via"); o que não é entrega vai a Pendências sem estado; campo ausente ⇒ `[PENDENTE DE PROVA: o quê]`, nunca "pendente" sem complemento. "Guidance only" não entra na minuta. Ao final, acionar `revisao-final-digital` sobre a versão final.
