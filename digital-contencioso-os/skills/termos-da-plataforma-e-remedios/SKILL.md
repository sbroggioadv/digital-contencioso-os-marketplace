---
name: termos-da-plataforma-e-remedios
description: "Lê os termos e políticas da plataforma COLADOS pelo cliente (usuário ou a própria plataforma), vigentes na data do fato, e devolve BLOCO MATERIAL com cláusula aplicada, data, canal interno, foro, deveres de informação, termos como adesão no CDC e mapa de remédios; sem termos colados, pendência de prova, nunca contrato presumido."
---

# Termos da plataforma e remédios (frente)

**Guidance only:** termos de uso são **contrato privado mutável**, não norma; esta frente lê os termos do caso e não redige peça processual. Fonte única: `context/` (ver `context/INDICE.md`). A peça é montada pela skill de fase do § 5, que recebe o BLOCO MATERIAL daqui. Ao final, acionar `revisao-final-digital`.

**Guard mínimo:** norma, tema e prazo só com `[ID]` (sem `[ID]` ⇒ `PENDENTE DE FONTE` na linha) · IP identifica terminal, não pessoa · hash declarado ≠ verificado · sem promessa de resultado · um caso = um cliente = um polo; sem polo, só as perguntas · ao final, acionar `revisao-final-digital`.

**Saída da frente:** portão antes: polo ausente ou contraditório ⇒ só as perguntas, mesmo se mandarem não perguntar; com polo, sempre o BLOCO MATERIAL, mesmo com dado faltante (vira pendência; nunca minuta estrutural nem recusa) · estado só um dos 5; envio, urgência e posição vão a Pendências sem estado · dado ausente ⇒ `[CAMPO — PENDENTE DE PROVA]`, data ⇒ `[DATA — PENDENTE DE PROVA]` · Tema 987/533 em qualquer linha só com `[ID]` + rótulo de fonte parcial; a abertura não conclui o regime · frente não rodada não é `PENDENTE DE FONTE`.

## 1. Entrada obrigatória

- **Texto dos termos/políticas colado pelo cliente** (ou arquivo na pasta `03-termos-colados/`), com: nome da plataforma, título do documento, versão ou data exibida, data em que o cliente obteve o texto e se era o vigente **na data do fato**.
- Decisão ou comunicação da plataforma (suspensão, remoção, recusa), com data e canal.
- Histórico de uso relevante (o que o cliente publicou ou fez), contado por ele; se paga pelo serviço (dado da relação de consumo, § 3.1).

**Sem termos colados ⇒ `PENDENTE DE PROVA`.** Pedir o texto vigente na data do fato. Não usar memória, versão "atual" presumida nem a de outra plataforma. Os arquivos `context/plat-*.md` são **exemplos de leitura** capturados em 02/10/2026 (Google, X, TikTok, Google Perfil da Empresa) e **nunca** substituem os termos do caso. Termos Meta/Instagram/WhatsApp não foram capturados: nada é afirmado sobre eles.

## 2. Leitura dos termos

| Cláusula (trecho colado) | Onde está (seção/linha do arquivo do cliente) | Data/versão | O que permite à plataforma | O que exige do usuário | Canal interno previsto | Prazo previsto no termo |
|---|---|---|---|---|---|---|

Regras:
- Citar **o trecho colado** e o local no arquivo do cliente; nunca parafrasear como se fosse a cláusula.
- Prazo ou canal só se estiver **no texto colado**.
- Divergência entre a cláusula invocada pela plataforma e o texto colado: registrar como ponto a provar.

Exemplo do que a leitura dos exemplos capturados ensina (não é o caso do cliente): o termo do Google prevê suspensão ou encerramento em hipóteses e remete à contestação (`context/plat-google-termos.md` [G-GOOGLE]); o do X cita remédios internos expressos só para Reino Unido e União Europeia (`context/plat-x-termos.md` [G-X]) — ausência de remédio brasileiro no termo não significa ausência de direito; o do TikTok, na versão "Outras regiões", traz lei e foro estrangeiros (`context/plat-tiktok-termos.md` [G-TIKTOK]).

## 3. Cláusulas que pedem análise jurídica (sem conclusão automática)

- **Foro ou lei estrangeira em contrato de adesão:** confrontar com o art. 8º, parágrafo único, II, do Marco Civil (nulidade de cláusula que, em contrato de adesão, não ofereça alternativa de foro brasileiro para serviços prestados no Brasil) e com o art. 11 (`context/marco-civil-lei-12965.md` [MCI-8], [MCI-11]). Aplicação ao caso = análise do advogado; o foro vai a `legitimidade-e-competencia-digital`.
- **Comunicação ao usuário sobre indisponibilização de conteúdo:** o art. 20 prevê comunicação de motivos e informações ao usuário responsável pelo conteúdo, salvo previsão legal ou determinação judicial em contrário ([MCI-20-21]).
- **Informação clara nas políticas de uso:** direitos do art. 7º, incisos VI, VIII e XI ([MCI-7]).
- **Deveres de provedores criados pelo Decreto 12.975/2026** (canal de denúncia, representante legal no País, comunicação ao usuário após notificação): `context/decreto-8771-compilado.md` [DEC-16A], [DEC-16E] — sempre com a ressalva "vigência não certificada; ADI 7981 em curso" ([ADI7981-ANDAMENTO]).
- **Deveres do Tema 987 ligados aos termos:** autorregulação com sistema de notificações, devido processo e relatórios de transparência, canais de atendimento acessíveis e regras publicadas e revisadas, itens 7 a 9 ([T987ED-ITEM7-9], fonte parcial — embargos julgados em 17/06/2026, acórdão não publicado); sede e representante no País, item 10 ([T987ED-ITEM10], fonte parcial — embargos julgados em 17/06/2026, acórdão não publicado). Servem para comparar o termo colado com o dever; o efeito sobre a responsabilidade é de `regime-plataformas-e-conteudo`. O Tema 533 segue sem resultado proclamado ([T533-SITUACAO], [T533ED-DEC-2409], fonte parcial — mérito publicado; embargos suspensos para posterior proclamação, sem resultado proclamado).

### 3.1 Termos em relação de consumo

Se o cliente usa o serviço como destinatário final ([CDC-2]) e a plataforma o fornece mediante remuneração ([CDC-3], § 2º) — fatos a provar —, os termos são lidos como contrato de adesão: cláusula que limita direito do consumidor redigida com destaque; cláusula resolutória só alternativa, com escolha do consumidor ([CDC-54], §§ 2º e 4º); informação adequada ([CDC-6-III-IV]); nulidade de cláusula exoneratória, iníqua ou de desvantagem exagerada ([CDC-51-CAPUT-I], [CDC-51-IV], [CDC-51-P1]) como tese do advogado, nunca conclusão automática. A peça segue completa neste plugin.

## 4. Polo da plataforma (N5)

- Resposta apoiada nos **próprios termos colados pela plataforma**, vigentes na data da decisão, e no registro da decisão de moderação (data, motivo comunicado, canal de revisão). Sem eles ⇒ `PENDENTE DE PROVA`.
- Redação ou revisão preventiva dos próprios termos de uso e da política de privacidade, sem conflito instaurado ⇒ `lgpd-politicas-e-avisos`.

## 5. Remédios — mapa, não promessa (quem redige)

| Via | Quando | Skill |
|---|---|---|
| Revisão interna pelo canal da plataforma | canal previsto no termo colado ou na comunicação recebida | o advogado orienta o cliente; registrar protocolo |
| Notificação extrajudicial (enviar ou responder) | revisão interna sem resposta ou insuficiente | `notificacao-extrajudicial-digital` |
| Urgência | via interna esgotada ou dano iminente | `tutela-e-pedidos-delimitados-digital` |
| Ação (ajuizar ou responder) | obrigação de fazer, exibição, perdas e danos | `peticao-inicial-digital` · `contestacao-e-defesa-digital` |
| Decisão no processo | conforme o ato recorrido e o rito | `agravo-e-embargos-de-declaracao-digital` · `apelacao-e-contrarrazoes-digital` · `recurso-inominado-digital` · `recursos-excepcionais-digital` |
| Ordem judicial | fazer ou pagar | `cumprimento-de-ordem-digital` · `cumprimento-pagar-quantia-digital` |
| Matéria da frente | conta suspensa; conteúdo removido; dados retidos | `conta-perfil-suspensao` · `conteudo-reputacao-remocao` · `dados-pessoais-controversia` |

Nenhuma via garante restabelecimento, remoção ou resposta.

## 6. Saída — BLOCO MATERIAL (não redige peça)

1. POLO — linha `POLO DO CLIENTE · NATUREZA <N1…N7> · POSIÇÃO <ATIVO|PASSIVO> · FASE não se aplica`.
2. Fatos — tabela do § 2 (cláusula colada, local, data/versão, decisão da plataforma), cada linha com a origem do arquivo do cliente.
3. Fundamentos — pontos dos §§ 3 e 3.1 com `[ID]`; Tema 987/533 só com `[ID]` e o rótulo de fonte parcial.
4. Pedidos — remédio escolhido pelo advogado no mapa do § 5, delimitado por conta, conteúdo ou dado.
5. Pendências — estado por linha: `MINUTA PARA REVISÃO HUMANA` (leitura sobre termos colados) · `PENDENTE DE PROVA` (termos ausentes, presumidos ou sem data; regime não enquadrado ⇒ `regime-plataformas-e-conteudo`) · `PENDENTE DE FONTE` (termos Meta) · `BLOQUEADO` (termo inventado barrado pela revisão; conflito de caso) · `FORA DO RECORTE` (com destino).

Entregar o bloco à skill de fase do § 5; ao final da peça, `revisao-final-digital`.
