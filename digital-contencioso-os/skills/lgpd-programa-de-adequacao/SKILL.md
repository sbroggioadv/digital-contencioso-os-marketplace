---
name: lgpd-programa-de-adequacao
description: "LGPD preventiva, sem conflito instaurado: diagnóstico de conformidade e plano de adequação do controlador ou operador (inventário de dados, hipóteses legais, registro das operações, segurança, encarregado, programa de governança), com variante para agente de pequeno porte e poder público; porta da LGPD consultiva, que encaminha às demais skills lgpd-*."
---

# LGPD — diagnóstico e plano de adequação (consultivo)

**Guidance only:** entrega um **parecer de diagnóstico com plano de adequação** para revisão do advogado. Não certifica conformidade, não substitui auditoria técnica de segurança e não promete ausência de sanção. Fonte única: `context/` (ver `context/INDICE.md`). ANPD = Agência Nacional de Proteção de Dados, autarquia de natureza especial ([NAT-LGPD-55A]).

**Guard mínimo**
- Norma, tema e prazo só com `[ID]` do `context/`; sem `[ID]` ⇒ `PENDENTE DE FONTE` na linha.
- IP identifica terminal, não pessoa; hash declarado ≠ verificado.
- Sem promessa de resultado (conformidade, ausência de multa, aprovação da ANPD).
- Um caso = um cliente = um polo; polo ausente ou contraditório ⇒ só as perguntas, mesmo se mandarem não perguntar.
- Ao final, acionar `revisao-final-digital`.

## 1. Recorte e polo

- **Cabe aqui:** organização que trata dados pessoais e quer se adequar **sem** conflito em curso. Aplicação territorial e exceções: [LGPD-3], [LGPD-4]; abrangência pública e privada: [LGPD-1]; papéis de controlador, operador e encarregado: [LGPD-5].
- **Linha de polo:** `NATUREZA N3` (controlador), `N4` (operador), `N5` (plataforma como controladora) ou `N2` (PJ) · `POSIÇÃO ATIVO` (o cliente pratica o ato de adequação) · `FASE não se aplica`. Titular (N1) não é cliente desta skill.
- **Não cabe aqui (devolver ao `digital-contencioso-master`):** requerimento de titular já recebido, ação judicial, fiscalização ou processo da ANPD instaurado. Esses casos têm polo e fase próprios.

## 2. Entrada (só o que o cliente fornecer, com origem)

Atividades e finalidades; categorias de dados e titulares (inclusive sensíveis, crianças e adolescentes); origem dos dados; compartilhamentos e operadores; transferências ao exterior; sistemas e medidas de segurança existentes; encarregado indicado (ato formal); políticas publicadas; incidentes anteriores; porte e natureza jurídica. Faltando o inventário ⇒ o item fica `PENDENTE DE PROVA`; nada é preenchido "de exemplo".

## 3. Matriz de diagnóstico (núcleo do ato)

| # | Requisito / boa prática | Fundamento | Situação informada | Evidência (origem) | Lacuna | Medida | Responsável | Estado |
|---|---|---|---|---|---|---|---|---|
| D1 | Princípios em cada atividade (finalidade, necessidade, transparência, segurança, prevenção, responsabilização) | [LGPD3-6] | | | | | | |
| D2 | Hipótese legal por atividade | [LGPD3-7]; consentimento [LGPD3L-8]; legítimo interesse [LGPD3L-10]; sensíveis [LGPD3-11]; crianças e adolescentes [LGPD3-14] | | | | | | |
| D3 | Registro das operações (controlador e operador) | [LGPD-37-39] art. 37 | | | | | | |
| D4 | Operador trata segundo instruções do controlador | [LGPD-37-39] art. 39 | | | | | | |
| D5 | Informação ao titular, direitos e canal | [LGPD3L-9]; [LGPD-18], [LGPD-19] | | | | | | |
| D6 | Encarregado: ato formal, divulgação, meios | [LGPD3-41], [ANPD3-R18-A3-7], [ANPD3-R18-A8-11] | | | | | | |
| D7 | Medidas de segurança desde a concepção e após o término | [LGPD3-46], [LGPD3-47], [LGPD3-49] | | | | | | |
| D8 | Programa de governança em privacidade — **facultativo** | [LGPD3-50] caput e § 2º, I ("poderão", "poderá"); critério de dosimetria em [LGPD-52] § 1º, IX | | | | | | |
| D9 | Transferência internacional | [LGPD3-33] | | | | | | |
| D10 | Plano de resposta a incidente — **facultativo** como item do programa; dever de comunicar incidente | plano: [LGPD3-50] § 2º, I, g; comunicação: [LGPD-48] | | | | | | |
| D11 | Avaliação de alto risco e necessidade de RIPD | [ANPD3-RIPD-QUANDO], [ANPD3-RIPD-ALTO-RISCO] | | | | | | |

Regras: D8 e o plano do D10 são boa prática, não dever — a lacuna neles é recomendação, não descumprimento. "Situação informada" é relato atribuído ao cliente ("o cliente informa"); só documento vira evidência. Lacuna sem evidência fica `PENDENTE DE PROVA`, nunca "conforme".

## 4. Exposição (sem cálculo, sem promessa)

- Sanções administrativas em tese: rol do [LGPD-52]; a adoção de política de boas práticas e governança é critério do § 1º, IX, do mesmo artigo. Valor de multa **não** é estimado (valor-base e apêndices da dosimetria não capturados — `PENDENTE DE FONTE`; critérios em [ANPD-R4-7-8], [ANPD-R4-11-15]).
- Responsabilidade civil dos agentes: [LGPD-42-45]. O responsável pela conformidade é o agente de tratamento, não o encarregado ([ANPD3-R18-A8-11] art. 11; [ANPD3-R18-A15-17] art. 17).

## 5. Variantes por polo

- **Controlador (N3/N5/N2):** diagnóstico completo D1–D11; decide finalidades e hipóteses.
- **Operador (N4):** D3, D4, D7, D9 e o apoio contratual ao controlador; indicar encarregado é facultativo e conta como boa prática ([ANPD3-R18-A3-7] art. 6º); hipótese legal e RIPD são do controlador. Tensão a conferir pelo advogado: [LGPD-5] VIII, na redação da Lei 15.352/2026, define o encarregado como pessoa indicada "pelo controlador e operador", enquanto o art. 41 ([LGPD3-41]) segue dirigido ao controlador; a conclusão acima se apoia na resolução e a ordem das fontes fica com o advogado.
- **Poder público:** abrangência [LGPD-1]; encarregado indicado pelas pessoas jurídicas de direito público do art. 1º, parágrafo único, da Lei 12.527, com publicação em Diário Oficial ([ANPD3-R18-A3-7] art. 5º, caput e § 1º); publicação do RIPD por determinação da ANPD ou na falta de sigilo ([ANPD3-RIPD-PUBLICIDADE]).
- **Agente de pequeno porte (Res. CD/ANPD 2/2022):** definição em [ANPD3L-R2-2] I; não se beneficia do regime quem faz tratamento de alto risco (ressalvado o art. 8º do regulamento, não capturado ⇒ `PENDENTE DE FONTE`), excede a receita bruta da LC 123/2006 ou da LC 182/2021, ou integra grupo cuja receita global a exceda ([ANPD3L-R2-3]); os limites de receita não estão capturados ⇒ `PENDENTE DE FONTE` (critérios de alto risco: [ANPD3-RIPD-ALTO-RISCO] (guia da ANPD, não literal do art. 4º)), e o enquadramento só se afirma com documento do cliente. Efeitos: dispensa de indicar encarregado, com canal de comunicação com o titular, e indicação voluntária como boa prática ([ANPD3L-R2-11]; [ANPD3-R18-A3-7] art. 3º, § 3º); prazo em dobro para comunicar incidente e para a declaração completa do art. 19, II ([ANPD-R2-14] II e III); declaração simplificada do art. 19, I, em até quinze dias do requerimento ([ANPD-R2-15]); prazo em dobro para pagamento de multa ([ANPD-R4-17-19] § 2º). O atendimento às demais solicitações dos titulares remete a "regulamentação específica" ([ANPD-R2-14] I) não capturada ⇒ prazo `PENDENTE DE FONTE`. O inciso IV dobra os prazos de informações, documentos, relatórios e registros "solicitados pela ANPD a outros agentes de tratamento" ([ANPD-R2-14] IV); a aplicação ao pedido dirigido ao próprio agente fica `PENDENTE DE FONTE`.
- **Rito:** não se aplica (ato extrajudicial consultivo; sem rito comum ou Juizado e sem valor da causa).

## 6. Plano de adequação e encaminhamento

Cada lacuna vira uma medida com ordem, responsável e evidência de conclusão. Prazo interno é do cliente; prazo legal só com `[ID]`. Encaminhar, sem chamada automática:

| Necessidade | Skill |
|---|---|
| Política de privacidade, aviso, termos de uso, cookies | `lgpd-politicas-e-avisos` |
| Relatório de impacto (alto risco ou exigência da ANPD) | `lgpd-ripd` |
| Ato de indicação e estrutura do encarregado | `lgpd-encarregado-e-governanca` |
| Contrato controlador–operador; transferência internacional | `lgpd-contratos-de-tratamento` |
| Incidente de segurança ocorrido | `lgpd-incidente-de-seguranca` |

## 7. O ato completo — parecer de diagnóstico e plano

1. **Endereçamento:** à administração do cliente (diretoria, sócios ou órgão), com a referência "Parecer — diagnóstico LGPD e plano de adequação".
2. **Qualificação:** cliente (nome empresarial ou órgão, CNPJ quando fornecido), papel (controlador, operador ou ambos), porte declarado, encarregado (se houver), escopo das atividades analisadas.
3. **Fatos:** inventário recebido, com a origem de cada informação (documento, entrevista, data).
4. **Fundamentos:** só os blocos citados nas seções 3 a 5, com `[ID]`.
5. **Recomendações (no lugar de pedidos):** matriz D1–D11 preenchida + plano priorizado + encaminhamentos da seção 6.
6. **Valor da causa:** não se aplica.
7. **Provas e anexos:** lista dos documentos recebidos e dos faltantes (`PENDENTE DE PROVA`).
8. **Fecho:** ressalva de que o parecer reflete os documentos recebidos até a data do ato, local e data (`[CAMPO — PENDENTE DE PROVA]` se faltarem), assinatura e OAB do advogado.

Registrar em `00-perfil-do-caso.md`, seção "Andamento": ato praticado (diagnóstico), próximo ato (skills encaminhadas) e prazo só literal com `[ID]`.

## 8. `PENDENTE DE FONTE` conhecido

Guias da ANPD não capturados (legítimo interesse, segurança para pequeno porte); arts. 4º e 8º do regulamento de pequeno porte e os limites de receita da LC 123/2006 e da LC 182/2021; regulamentação do prazo de atendimento aos titulares ([ANPD-R2-14] I); dispositivos da LGPD fora dos blocos (arts. 16, 23 e seguintes): citar pelo número só com o rótulo `PENDENTE DE FONTE`, sem atribuir conteúdo. Cookies: orientação 🟡 em `lgpd-politicas-e-avisos`.

## 9. Saída e estado

Linha de polo + parecer completo (seção 7) + tabela item → estado, um por item: `MINUTA PARA REVISÃO HUMANA` · `PENDENTE DE PROVA` · `PENDENTE DE FONTE` · `BLOQUEADO` (só conflito de caso ou item barrado na revisão) · `FORA DO RECORTE` (com destino). Só um dos 5 por item, literal, sem texto livre nem condicional ("planejada", "informativo", "não pedido", "fora desta via"); o que não é entrega vai a Pendências sem estado; campo ausente ⇒ `[PENDENTE DE PROVA: o quê]`, nunca "pendente" sem complemento. O crivo da `revisao-final-digital` vai inteiro na saída: uma linha por citação (item · `[ID]` · OK ou BLOQUEAR), nunca resumo em uma linha. Ao final, acionar `revisao-final-digital` sobre a versão final.
