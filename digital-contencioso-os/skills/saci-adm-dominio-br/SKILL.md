---
name: saci-adm-dominio-br
description: "Disputa de nome de domínio .br no SACI-Adm no caso digital, nos dois lados: requerimento de abertura do Reclamante (má-fé somada a marca, nome ou anterioridade), defesa do Titular do domínio, provas, memoriais, pedido de esclarecimento da decisão, composição amigável e ponte para ação judicial ou arbitral que suspende a implementação da transferência ou do cancelamento."
---

# SACI-Adm — disputa de domínio `.br`

Entrega a peça completa do procedimento SACI-Adm para revisão humana. Polo vem da `triagem-digital-contencioso`; abrir lendo a seção "Andamento" do `00-perfil-do-caso.md` e atualizá-la ao fechar (ato, decisão, próximo ato, prazo literal com `[ID]`). Fonte única: `context/nicbr-saci-adm.md` (ver `context/INDICE.md`).

**Guard mínimo:** norma, tema e prazo só com `[ID]` (sem `[ID]` ⇒ `PENDENTE DE FONTE` na linha) · IP identifica terminal, não pessoa · hash declarado ≠ verificado · sem promessa de resultado · um caso = um cliente = um polo; polo ausente ou contraditório ⇒ só as perguntas, mesmo se mandarem não perguntar · ao final, acionar `revisao-final-digital`.

## 1. Natureza e limites

- **Regulamento privado**, não norma estatal: o Titular adere pelo contrato de registro e o Reclamante ao apresentar o requerimento a uma instituição credenciada, cujo regulamento próprio integra o procedimento ([SACI-1], §§ 2º a 4º). Regulamento da instituição escolhida, custas e prazos que ela fixar não estão capturados ⇒ `PENDENTE DE FONTE` até o cliente juntar o documento.
- **Alcance da decisão:** só manutenção, transferência ou cancelamento do registro ([SACI-1], § 1º). Indenização, abstenção de uso de marca ou remoção de conteúdo do site ⇒ via judicial (`peticao-inicial-digital`); conflito de marca no INPI ⇒ cross-link soft com plugin de marcas, sem chamada automática.
- **Regulamento aplicável:** o corrente vale para procedimentos instaurados a partir do início de vigência do art. 36 ([SACI-36]); procedimento anterior ⇒ regulamento anterior não capturado ⇒ `PENDENTE DE FONTE`.

## 2. Entrada

- **Polo:** Reclamante (`ATIVO`: titular de marca, nome empresarial, nome civil, título de estabelecimento ou domínio anterior) ou Titular do domínio (`PASSIVO`). Um caso, um lado.
- **Documentos:** resultado do Whois do domínio (whois.registro.br), prova da marca (depósito ou registro no INPI, com data, ou prova de notoriedade), prova do nome ou da anterioridade, capturas do uso do domínio com URL, data e origem (print sem origem = "origem não demonstrada"), comunicações entre as partes. Data de registro do domínio e data de depósito da marca vêm de documento; nunca presumidas.
- Ação judicial ou arbitral já existente sobre o domínio: informar no requerimento ou na defesa ([SACI-6-7], art. 6º, "g"; [SACI-12-15], art. 12, "f").

## 3. Reclamante (ATIVO) — requerimento de abertura

**Cabimento (cumulativo):** expor por que o domínio foi registrado **ou** está sendo usado de **má-fé**, de modo a causar prejuízo, **mais** pelo menos um requisito ([SACI-6-7], art. 7º):
- (a) idêntico ou similar o bastante para confundir com marca do Reclamante depositada antes do registro do domínio ou já registrada no INPI;
- (b) idem com marca não depositada no Brasil, mas notoriamente conhecida no seu ramo de atividade;
- (c) idem com título de estabelecimento, nome empresarial, nome civil, de família, pseudônimo ou apelido notoriamente conhecido, nome artístico ou outro domínio sobre o qual o Reclamante tenha anterioridade.

**Indícios de má-fé** (rol aberto, parágrafo único do art. 7º): registrar para vender, alugar ou transferir; para impedir o uso pelo Reclamante; para prejudicar a atividade comercial; usar para atrair usuários criando confusão. Cada indício aponta a prova e a origem; intenção não se presume do simples registro.

**Peça (requerimento à instituição credenciada):**
1. Endereçamento à instituição escolhida (dado do caso; lista de credenciadas não capturada).
2. Domínio(s) em disputa e resultado do Whois ([SACI-6-7], art. 6º, "a").
3. Qualificação do Reclamante com documentos; pessoa jurídica com representante legal (art. 6º, "b"); advogado com OAB e mandato, se houver ("d").
4. Fatos com prova e origem: titularidade e data da marca ou do nome, registro e uso do domínio, contatos havidos.
5. Fundamentos: cada requisito do art. 7º e cada indício de má-fé, todos com `[SACI-6-7]` e o documento correspondente — "desde logo" todos os argumentos e documentos (art. 6º, "c").
6. Número de especialistas, um ou três ("e"); finalidade: transferência **ou** cancelamento ("f"); procedimentos existentes ("g").
7. Declarações obrigatórias: submissão ao procedimento, competência exclusiva da instituição e isenção do NIC.br (art. 6º, parágrafo único).
8. Rol de documentos e fecho.

Requerimento irregular: prazo razoável para sanar, sob pena de arquivamento ([SACI-8-11], art. 8º, §§ 1º e 2º).

## 4. Titular do domínio (PASSIVO) — defesa

- **Ciência e efeitos:** a instituição intima o Titular com cópia de tudo; o NIC.br bloqueia a transferência de titularidade até o término ([SACI-8-11], arts. 8º e 9º). Comunicações vão aos e-mails de contato do registro (art. 10); prazos começam no dia útil seguinte ao e-mail (art. 11). Conferir de imediato os e-mails de contato do domínio.
- **Prazo:** o da instituição credenciada ([SACI-12-15], art. 12) — literal do documento da instituição; sem ele, `PENDENTE DE PROVA`. Sem defesa, segue à revelia, com aviso de congelamento do domínio se o Titular não se manifestar em 24 horas após o contato do NIC.br ([SACI-12-15], art. 15, §§ 1º a 3º); a revelia sozinha não induz procedência (§ 5º).
- **Peça (defesa):** endereçamento à instituição e ao procedimento; qualificação do Titular com documentos e representante, se pessoa jurídica (art. 12, "a"); advogado (art. 12, "c"); preliminares de inadmissibilidade (falta de requisito do art. 6º ou do art. 7º); mérito: todos os motivos de direito sobre o domínio (art. 12, "b") — uso de boa-fé com prova, ausência de confusão, data do registro do domínio anterior à marca (argumento, não tese conclusiva: a hipótese "a" do art. 7º também aceita marca "já registrada" no INPI, [SACI-6-7]), ausência de cada indício alegado; regularidade do registro e do uso (art. 13); número de especialistas (art. 12, "d"); declaração de isenção do NIC.br ("e"); procedimentos existentes ("f"); pedido de manutenção do registro; documentos; fecho. Fato do Titular não dado no pedido nunca é afirmado: `[PENDENTE DE PROVA: o quê]`.

## 5. Instrução, decisão e depois

- Provas novas a critério dos especialistas; audiência só se estritamente necessária; memoriais se o regulamento da instituição previr ([SACI-12-15], art. 14; [SACI-16-24], arts. 16 e 17).
- **Decisão:** requisitos do art. 21; comunicação às partes em até 5 dias ([SACI-16-24], art. 22). Prazo total do procedimento: [SACI-30-31], art. 30.
- **Pedido de esclarecimento:** erro material, obscuridade, dúvida, contradição ou omissão, "no prazo de 5 (cinco) dias contados da ciência da decisão" ([SACI-16-24], art. 23), suspendendo o prazo do art. 24 (§ 1º). Peça curta: ponto exato e pedido.
- **Implementação e ponte judicial:** transferência ou cancelamento só depois de "15 (quinze) dias úteis" da comunicação ao NIC.br; se a parte comprovar ação judicial ou arbitral ajuizada nesse período, o NIC.br não implementa e aguarda ([SACI-16-24], art. 24 e parágrafo único). Vencido no SACI-Adm e querendo manter ou obter o domínio: ação em `peticao-inicial-digital` (tutela em `tutela-e-pedidos-delimitados-digital`), com a comprovação do ajuizamento enviada dentro do prazo literal; nunca calcular a data-limite.
- **Composição amigável:** declarada em decisão a pedido das partes ([SACI-25]); minuta de acordo com o destino do domínio (manter, transferir, cancelar), prazo do ato de transferência e quitação; dados enviados fora do procedimento são responsabilidade da parte (parágrafo único).

## 6. Travas

Má-fé não se presume do registro; confusão se demonstra comparando sinais, ramo e uso com prova. Marca não depositada só pela via (b), com prova de notoriedade. Sem promessa de transferência, de manutenção ou de prazo de decisão. Sem dados de terceiros além do necessário (Whois traz dados pessoais: minimizar). Reclamante e Titular nunca no mesmo caso.

## 7. Saída

1. Linha de polo (Reclamante ou Titular) e fase (requerimento, defesa, memoriais, esclarecimento, implementação, acordo).
2. Peça completa da fase.
3. Tabela requisito/indício × prova × `[ID]` × estado; toda linha com prazo traz o `[ID]`.
4. Estado por item: `MINUTA PARA REVISÃO HUMANA` · `PENDENTE DE PROVA` (marca, data, uso, má-fé, prazo da instituição) · `PENDENTE DE FONTE` (regulamento da instituição, custas, regulamento anterior) · `BLOQUEADO` (conflito de caso ou item barrado na revisão) · `FORA DO RECORTE` (conflito de marca no INPI, com destino citado). Só um dos 5 por item, literal, sem texto livre nem condicional ("planejada", "informativo", "não pedido", "fora desta via"); o que não é entrega vai a Pendências sem estado; campo ausente ⇒ `[PENDENTE DE PROVA: o quê]`, nunca "pendente" sem complemento.
5. Acionar `revisao-final-digital` sobre a versão final.
