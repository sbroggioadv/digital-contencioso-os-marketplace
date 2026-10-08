# Lacunas da onda 2 (v0.3) — Lei 9.099, CPC, CF, Lei 15.484/2026, natureza jurídica de ANPD e Anatel, LGPD arts. 8º a 10, ANPD (Res. 2/2022, Res. 19/2024 Anexo II, guia de cookies) — captura W9

- pacote: fontes-lacunas-onda2-w9-2026-10-07
- capturado_em: 2026-10-07T17:51Z a 17:53Z (UTC)
- origem (Planalto): HTML baixado por `curl` (HTTP 200), decodificado como cp1252 (a página não declara charset) e limpo pela função `limpar` de `PLAYBOOK/templates/capturar-planalto.py` (texto riscado removido e substituído pelo marcador `[dispositivo revogado — omitido]`); numeração de linha do texto limpo cujo hash é `sha256_corpo` (SHA-256 de `limpar(html) + "\n"`).
- origem (gov.br/ANPD, páginas HTML): mesmo procedimento, decodificação utf-8 (charset declarado). O `limpar` não quebra linha em `</caption>`: nos quadros do Anexo II da Res. 19/2024, o título do quadro aparece colado à primeira célula (ex.: "CLÁUSULA 1. Identificação das PartesNome:"). É efeito da limpeza, não texto normativo.
- origem (guia de cookies, PDF): PDF oficial baixado por `curl` (HTTP 200, `application/pdf`, 40 páginas) e convertido por `pdftotext` (Poppler, modo padrão, sem `-layout`); `sha256_raw` é o hash do PDF e `sha256_corpo` o do texto extraído. Nos blocos ANPD3L-COOKIES-*, as linhas de cabeçalho/rodapé de página ("guia anpd · Cookies e proteção de dados pessoais" e o número da página) foram retiradas, o caractere de quebra de página do `pdftotext` (U+000C) foi removido e linhas em branco repetidas foram reduzidas a uma; o resto é a saída do `pdftotext` sem edição (inclusive grafias do próprio PDF, como "legitimo" e as siglas em caixa baixa "lgpd"/"anpd").
- sha256 de bloco: SHA-256 do excerto em UTF-8, exatamente como está entre as cercas, sem quebra de linha final. Onde um bloco junta faixas não contíguas, elas são separadas por uma linha `[…]` (marcador do plugin, não texto da fonte), que entra no hash.
- hashes de página: o `sha256_raw` de HTML registra a página no momento da captura e pode não se reproduzir; a âncora verificável é o `sha256` de cada bloco e o `sha256_corpo`. O PDF da ANPD reproduz o `sha256_raw`.
- regra: somente excertos literais; rótulos são do plugin e não são texto normativo; anotações como "(Redação dada pela ...)", "(Incluído pela ...)", "(Revogado pela ...)", "Vigência" e "(Regulamento)" são da própria página da fonte; o marcador `[dispositivo revogado — omitido]` é da limpeza; nada aqui vem de memória. Captura ≠ conferência jurídica ≠ vigência certificada.
- integração WB3 (07/10/2026): depois da revisão REV-W9 (PASS), só as notas dos blocos JEC3L-48-50, NAT-LGPD-55A e NAT-14460-7 foram complementadas (achados M1 e M2); nenhum excerto e nenhum `sha256` de bloco mudou. O `sha256` do arquivo (`ae88a95b…`) registrado no relatório W9 vale para a versão anterior a essa integração.

## Fontes

### Lei 9.099/1995 (Juizados Especiais)

- id: lei-9099-jec-v03
- url: https://www.planalto.gov.br/ccivil_03/leis/l9099.htm
- capturado_em: 2026-10-07
- sha256_raw: 94424b815e606926caca3822b58e030da76e0e79aa68f103f77e5eeb429355cf
- sha256_corpo: 209cde5a579263a759549a17fe705a41b14dc352f6875bc09c264239c4d1f559

### Lei 13.105/2015 (CPC)

- id: lei-13105-cpc
- url: https://www.planalto.gov.br/ccivil_03/_ato2015-2018/2015/lei/l13105.htm
- capturado_em: 2026-10-07
- sha256_raw: b698418fdcc4e5c5e6bcd5346e3f56edef5a922191da29e4478d1c0a9dd287f5
- sha256_corpo: 62ae1707273d0c45dac82fd4a53c5b7ee58cd5d88fc0c37a57609c7b37fd0751

### Constituição Federal de 1988

- id: cf-1988
- url: https://www.planalto.gov.br/ccivil_03/constituicao/constituicao.htm
- capturado_em: 2026-10-07
- sha256_raw: ee0ec513040643a3e4b110c2a8e95089ff012f710edf5765e6be7b2b0c1ddcae
- sha256_corpo: f827e57c1e2becf39a1b93bff6b5ea6a2c1ade63182505961d78c19f4a767b18

### Lei 15.484/2026 (relevância no recurso especial)

- id: lei-15484-2026-relevancia-resp
- url: https://www.planalto.gov.br/ccivil_03/_ato2023-2026/2026/lei/L15484.htm
- capturado_em: 2026-10-07
- sha256_raw: 44c1e3cc01a54c28dfd671c054553388ed76db6f17eb3d8167dc3002fbda0726
- sha256_corpo: 7119a594a9663b016996cadf0bfea2ca2ace7b4711d7ce5c134eee6f9c4fe5f0

### Lei 13.709/2018 (LGPD), texto compilado

- id: lei-13709-lgpd-compilado-v03l
- url: https://www.planalto.gov.br/ccivil_03/_ato2015-2018/2018/lei/l13709compilado.htm
- capturado_em: 2026-10-07
- sha256_raw: b3f2759ffe09d80c548cf216b08b555b7009e145e5d0fad820ca9ba4d1f03f0c
- sha256_corpo: d758c2539cced820d655fc6645bd09cda5e5cbde936071e1a934fc53ff507d47

### Lei 14.460/2022 (ANPD em autarquia de natureza especial)

- id: lei-14460-2022-anpd-autarquia
- url: https://www.planalto.gov.br/ccivil_03/_ato2019-2022/2022/lei/L14460.htm
- capturado_em: 2026-10-07
- sha256_raw: dccab5871390f62b96a9f7ee1229d0e157470e6223284e4ab99cadcf652c4fbc
- sha256_corpo: 92be8571cafa9fdd1118b57c86ef916c8a3c13e4c46ec7231f3d681e8959a372

### Lei 15.352/2026 (Agência Nacional de Proteção de Dados)

- id: lei-15352-2026-agencia-anpd
- url: https://www.planalto.gov.br/ccivil_03/_ato2023-2026/2026/lei/L15352.htm
- capturado_em: 2026-10-07
- sha256_raw: 8606b430e2ac8b3b2eb14fffd6d69cacf32ccd0e7aafb09b6c6c81fcf92824ef
- sha256_corpo: bfcee467f43d9bb05bf234ac05ff1b2830e12970ff52519bd32251a95957844f

### Lei 9.472/1997 (Lei Geral de Telecomunicações — Anatel)

- id: lei-9472-lgt-anatel
- url: https://www.planalto.gov.br/ccivil_03/leis/l9472.htm
- capturado_em: 2026-10-07
- sha256_raw: c5e8efba85c11b310d219e2e932778370d0f32563c79669633c1379a121470d9
- sha256_corpo: b41be92f7b9179edcf6d5d5c129dbac074755765d8961956f837ca699ba2f162

### Resolução CD/ANPD 2/2022 (agentes de pequeno porte), página gov.br

- id: anpd-res-cd-2-2022-pequeno-porte-v03l
- url: https://www.gov.br/anpd/pt-br/acesso-a-informacao/institucional/atos-normativos/regulamentacoes_anpd/resolucao-cd-anpd-no-2-de-27-de-janeiro-de-2022
- capturado_em: 2026-10-07
- sha256_raw: db77cb4e86609ba5552c61911291f281c2f8be11f186bc156ef0d09942d2e81a
- sha256_corpo: af7b9c3e07aae98d3c8c7b88d82af84c67ede5b3c571dbe54dd8141a661521dc

### Resolução CD/ANPD 19/2024 (transferência internacional), página gov.br com a Retificação de 18/08/2025

- id: anpd-res-cd-19-2024-gov-br-retificada
- url: https://www.gov.br/anpd/pt-br/acesso-a-informacao/institucional/atos-normativos/regulamentacoes_anpd/resolucao-cd-anpd-no-19-de-23-de-agosto-de-2024
- capturado_em: 2026-10-07
- sha256_raw: 47a45fa5abf2d95e1be0d13ed34bfa9aa38654624c4442dd5c3ae1a08e4a51ed
- sha256_corpo: c5c845f53b1672d4f7a20ff65cb4bcd2d82f12847934314cdf1b73f7249ae385

### ANPD — Guia orientativo "Cookies e proteção de dados pessoais" (PDF, versão 1.0, out./2022)

- id: anpd-guia-cookies-2022
- url: https://www.gov.br/anpd/pt-br/centrais-de-conteudo/materiais-educativos-e-publicacoes/guia-orientativo-cookies-e-protecao-de-dados-pessoais.pdf/@@download/file
- capturado_em: 2026-10-07
- sha256_raw: dad0b5e5df838feb733377205040ab93f63f244f90ce487a09cb0618e36e85e8
- sha256_corpo: 549dd9cda8286ac0ea35b2778a763bc6ad1494cdd382978af8e7fb23f95fcfb9

Notas de id: `lei-9099-jec-v03` e `lei-13105-cpc` têm `sha256_corpo` idêntico ao da captura W8 (`v03-complemento-b5.md`), ou seja, o texto limpo é o mesmo. A `cf-1988` desta captura tem `sha256_corpo` diferente da W8 (`834a0796…`) porque a página foi baixada de novo; os blocos valem pelos próprios hashes. A LGPD usa o id novo `lei-13709-lgpd-compilado-v03l` porque a URL é a do texto compilado (`l13709compilado.htm`), diferente das capturas anteriores. A Res. CD/ANPD 19/2024 usa id próprio porque `res-cd-anpd-19-2024` (W5) é o texto do DOU de 23/08/2024, sem a retificação; aqui a fonte é a página gov.br, que declara o texto "alterado pela RETIFICAÇÃO de 18/08/2025". A Res. CD/ANPD 2/2022 usa id próprio porque é captura nova da mesma página gov.br de `anpd-res-cd-2-2022-pequeno-porte` (02/10/2026).

---

## [JEC3L-8] Lei 9.099/1995, art. 8º, caput e §§ 1º e 2º (quem não pode ser parte; quem pode propor ação no Juizado; maior de 18 anos)

Fonte: `lei-9099-jec-v03`. Localizador: texto limpo de `https://www.planalto.gov.br/ccivil_03/leis/l9099.htm` — linhas 118–155.

sha256: `2f3f833bc052fb1076780cdc0407c3bab355528b1e23d2e859cec1c45d776260`

Nota: os dois marcadores `[dispositivo revogado — omitido]` substituem, conferido no HTML, a redação original do § 1º ("Somente as pessoas físicas capazes serão admitidas a propor ação perante o Juizado Especial, excluídos os cessionários de direito de pessoas jurídicas.") e a redação do inciso II dada pela Lei 12.126/2009 ("as microempresas, assim definidas pela Lei no 9.841..."). As redações vigentes vêm logo abaixo de cada marcador no excerto.

```text
Art. 8º Não poderão ser partes, no processo
instituído por esta Lei, o incapaz, o preso, as pessoas jurídicas de direito público,
as empresas públicas da União, a massa falida e o insolvente civil.

[dispositivo revogado — omitido]

§ 1o Somente
serão admitidas a propor ação perante o Juizado Especial: (Redação
dada pela Lei nº 12.126, de 2009)

I - as pessoas físicas capazes, excluídos os
cessionários de direito de pessoas jurídicas; (Incluído
pela Lei nº 12.126, de 2009)

[dispositivo revogado — omitido]

II - as
pessoas enquadradas como microempreendedores individuais, microempresas
e empresas de pequeno porte na forma da Lei Complementar no
123, de 14 de dezembro de 2006;
(Redação dada pela Lei Complementar nº 147, de
2014)

III - as pessoas jurídicas qualificadas como
Organização da Sociedade Civil de Interesse Público, nos termos da
Lei no 9.790,
de 23 de março de 1999; (Incluído
pela Lei nº 12.126, de 2009)

IV - as sociedades de crédito ao microempreendedor,
nos termos do
art. 1o da Lei no
10.194, de 14 de fevereiro de 2001. (Incluído
pela Lei nº 12.126, de 2009)

§
2º O maior de dezoito anos poderá ser autor, independentemente de assistência,
inclusive para fins de conciliação.
```

## [JEC3L-48-50] Lei 9.099/1995, arts. 48 a 50 (embargos de declaração: cabimento, erro material, prazo de cinco dias, efeito interruptivo)

Fonte: `lei-9099-jec-v03`. Localizador: texto limpo de `https://www.planalto.gov.br/ccivil_03/leis/l9099.htm` — linhas 518–536.

sha256: `8e754a8d49625134a797983ea7fbd596051e8d10c295c072d0b4948f0ddba00f`

Nota: o marcador `[dispositivo revogado — omitido]` substitui, conferido no HTML, a redação original do art. 50 ("Quando interpostos contra sentença, os embargos de declaração suspenderão o prazo para recurso."). A redação vigente, dada pela Lei 13.105/2015, vem logo abaixo. A redação original do art. 48 ("Caberão embargos de declaração quando, na sentença ou acórdão, houver obscuridade, contradição, omissão ou dúvida."), também riscada na página, vem imediatamente antes do início do bloco (marcador na linha 516 do texto limpo), fora do excerto.

```text
Art. 48. Caberão embargos de declaração contra sentença ou acórdão nos
casos previstos no Código de Processo Civil.

(Redação dada pela Lei nº 13.105, de 2015)
(Vigência)

Parágrafo único. Os erros materiais podem ser
corrigidos de ofício.

Art. 49. Os embargos de declaração serão
interpostos por escrito ou oralmente, no prazo de cinco dias, contados da ciência da
decisão.

[dispositivo revogado — omitido]

Art. 50. Os
embargos de declaração interrompem o prazo para a interposição de recurso.
(Redação dada pela Lei nº 13.105, de 2015)
(Vigência)
```

## [JEC3L-54-55] Lei 9.099/1995, arts. 54 e 55 (gratuidade em primeiro grau, preparo do recurso, sucumbência só em segundo grau e custas na execução)

Fonte: `lei-9099-jec-v03`. Localizador: texto limpo de `https://www.planalto.gov.br/ccivil_03/leis/l9099.htm` — linhas 665–689.

sha256: `735e645362776dc11a4ce2f9dba1ac2c0b537978793cd064d73b507eae4f68e3`

```text
Art. 54. O acesso ao Juizado Especial
independerá, em primeiro grau de jurisdição, do pagamento de custas, taxas ou despesas.

Parágrafo único. O preparo do recurso, na
forma do § 1º do art. 42 desta Lei, compreenderá todas as despesas processuais,
inclusive aquelas dispensadas em primeiro grau de jurisdição, ressalvada a hipótese de
assistência judiciária gratuita.

Art. 55. A sentença de primeiro grau não
condenará o vencido em custas e honorários de advogado, ressalvados os casos de
litigância de má-fé. Em segundo grau, o recorrente, vencido, pagará as custas e
honorários de advogado, que serão fixados entre dez por cento e vinte por cento do valor
de condenação ou, não havendo condenação, do valor corrigido da causa.

Parágrafo único. Na execução não serão
contadas custas, salvo quando:

I
- reconhecida a litigância de má-fé;

II
- improcedentes os embargos do devedor;

III - tratar-se de execução de sentença que
tenha sido objeto de recurso improvido do devedor.
```

## [CPC3L-85-P1-P2] CPC, art. 85, §§ 1º e 2º, incisos I a IV (honorários cumulativos; faixa de 10% a 20% e critérios)

Fonte: `lei-13105-cpc`. Localizador: texto limpo de `https://www.planalto.gov.br/ccivil_03/_ato2015-2018/2015/lei/l13105.htm` — linhas 839–849.

sha256: `ccb2b0c6b9c2b47c5fe79747c9aece6f28025fbbbfc1d8136fdef018536cd685`

```text
§ 1º São devidos honorários advocatícios na reconvenção, no cumprimento de sentença, provisório ou definitivo, na execução, resistida ou não, e nos recursos interpostos, cumulativamente.

§ 2º Os honorários serão fixados entre o mínimo de dez e o máximo de vinte por cento sobre o valor da condenação, do proveito econômico obtido ou, não sendo possível mensurá-lo, sobre o valor atualizado da causa, atendidos:

I - o grau de zelo do profissional;

II - o lugar de prestação do serviço;

III - a natureza e a importância da causa;

IV - o trabalho realizado pelo advogado e o tempo exigido para o seu serviço.
```

## [CPC3L-85-P8] CPC, art. 85, §§ 8º e 8º-A (apreciação equitativa e valores recomendados pela OAB)

Fonte: `lei-13105-cpc`. Localizador: texto limpo de `https://www.planalto.gov.br/ccivil_03/_ato2015-2018/2015/lei/l13105.htm` — linhas 888–897.

sha256: `cbe5e17f2424b9b204981ceec0f406ad0d919580d5d364591e24643ffa1419b4`

Nota: o § 8º-A não estava no pedido; entra no mesmo bloco porque se aplica "Na hipótese do § 8º". O § 6º-A (vedação da apreciação equitativa quando o valor é líquido ou liquidável) fica fora deste bloco e está nas linhas 877–884 do mesmo texto limpo.

```text
§ 8º Nas causas em que for inestimável ou irrisório o proveito econômico ou, ainda, quando o valor da causa for muito baixo, o juiz fixará o valor dos honorários por apreciação equitativa, observando o disposto nos incisos do § 2º.

§ 8º-A. Na hipótese do § 8º deste artigo, para fins
de fixação equitativa de honorários sucumbenciais, o juiz deverá observar os
valores recomendados pelo Conselho Seccional da Ordem dos Advogados do
Brasil a título de honorários advocatícios ou o limite mínimo de 10% (dez
por cento) estabelecido no § 2º deste artigo, aplicando-se o que for maior.

(Incluído pela Lei
nº 14.365, de 2022)
```

## [CPC3L-85-P11] CPC, art. 85, § 11 (majoração dos honorários em grau recursal)

Fonte: `lei-13105-cpc`. Localizador: texto limpo de `https://www.planalto.gov.br/ccivil_03/_ato2015-2018/2015/lei/l13105.htm` — linhas 903.

sha256: `fa419ef2023fc345034114bdc55627416e2447e6dbf9ff5cd6f008b962fdc3a2`

```text
§ 11. O tribunal, ao julgar recurso, majorará os honorários fixados anteriormente levando em conta o trabalho adicional realizado em grau recursal, observando, conforme o caso, o disposto nos §§ 2º a 6º, sendo vedado ao tribunal, no cômputo geral da fixação de honorários devidos ao advogado do vencedor, ultrapassar os respectivos limites estabelecidos nos §§ 2º e 3º para a fase de conhecimento.
```

## [CPC3L-1015] CPC, art. 1.015, caput, incisos I a XIII e parágrafo único (agravo de instrumento, texto completo)

Fonte: `lei-13105-cpc`. Localizador: texto limpo de `https://www.planalto.gov.br/ccivil_03/_ato2015-2018/2015/lei/l13105.htm` — linhas 9871–9903.

sha256: `b858ac5f52cabf99bef850f07c9c4c25b717618178ef73caaead8bc122256ea0`

Nota: o bloco `CPC-1015` de `cpc-recortes.md` tem só o caput, os incisos I e VI e o parágrafo único; este bloco traz o artigo inteiro. As quebras de linha em volta de "art. 373, § 1º" e do ";" no inciso XI são do texto limpo.

```text
Art. 1.015. Cabe agravo de instrumento contra as decisões interlocutórias que versarem sobre:

I - tutelas provisórias;

II - mérito do processo;

III - rejeição da alegação de convenção de arbitragem;

IV - incidente de desconsideração da personalidade jurídica;

V - rejeição do pedido de gratuidade da justiça ou acolhimento do pedido de sua revogação;

VI - exibição ou posse de documento ou coisa;

VII - exclusão de litisconsorte;

VIII - rejeição do pedido de limitação do litisconsórcio;

IX - admissão ou inadmissão de intervenção de terceiros;

X - concessão, modificação ou revogação do efeito suspensivo aos embargos à execução;

XI - redistribuição do ônus da prova nos termos do

art. 373, § 1º

;

XII - (VETADO);

XIII - outros casos expressamente referidos em lei.

Parágrafo único. Também caberá agravo de instrumento contra decisões interlocutórias proferidas na fase de liquidação de sentença ou de cumprimento de sentença, no processo de execução e no processo de inventário.
```

## [CF3L-105-P2-P3] CF/1988, art. 105, §§ 2º e 3º, incisos I a VI (relevância da questão de direito federal no recurso especial — EC 125/2022)

Fonte: `cf-1988`. Localizador: texto limpo de `https://www.planalto.gov.br/ccivil_03/constituicao/constituicao.htm` — linhas 6324–6361.

sha256: `662612a63718d2a45e2b155d9e4b67bf33a985857e4ac741c55e7ec45762042e`

Nota: o bloco `CF3-105-III` (W2) cobre só o inciso III; os §§ 2º e 3º não tinham captura. "(Regulamento)" e "Vigência" são anotações da própria página do Planalto.

```text
§ 2º No recurso especial, o recorrente deve demonstrar a relevância das
questões de direito federal infraconstitucional discutidas no caso, nos
termos da lei, a fim de que a admissão do recurso seja examinada pelo
Tribunal, o qual somente pode dele não conhecer com base nesse motivo
pela manifestação de 2/3 (dois terços) dos membros do órgão competente
para o julgamento.
(Incluído pela Emenda Constitucional nº 125, de 2022)
(Regulamento)

Vigência

§ 3º Haverá a relevância de que trata o § 2º deste artigo nos seguintes
casos: (Incluído pela
Emenda Constitucional nº 125, de 2022)

I - ações penais;
(Incluído pela Emenda Constitucional nº 125, de 2022)

II - ações de improbidade administrativa;
(Incluído pela Emenda
Constitucional nº 125, de 2022)

III - ações cujo valor da causa ultrapasse 500 (quinhentos) salários
mínimos; (Incluído
pela Emenda Constitucional nº 125, de 2022)

IV - ações que possam gerar inelegibilidade;
(Incluído pela Emenda
Constitucional nº 125, de 2022)

V - hipóteses em que o acórdão recorrido contrariar jurisprudência
dominante do Superior Tribunal de Justiça;
(Incluído pela Emenda
Constitucional nº 125, de 2022)

VI - outras hipóteses previstas em lei.
(Incluído pela Emenda
Constitucional nº 125, de 2022)
```

## [L15484-EMENTA] Lei 15.484/2026, epígrafe e ementa

Fonte: `lei-15484-2026-relevancia-resp`. Localizador: texto limpo de `https://www.planalto.gov.br/ccivil_03/_ato2023-2026/2026/lei/L15484.htm` — linhas 8–16.

sha256: `6001c6d541a3b0a536d55fd5a3945167ad8c9a9184e74bda6ef62c8dbeccc241`

```text
LEI
Nº 15.484, DE 4 DE AGOSTO DE 2026

Vigência

Regulamenta o regime de relevância das
questões de direito federal infraconstitucional para admissão dos recursos
especiais no Superior Tribunal de Justiça e altera a Lei nº 13.105, de 16 de
março de 2015 (Código de Processo Civil).
```

## [L15484-1] Lei 15.484/2026, art. 1º (objeto: regulamenta a relevância prevista no art. 105, § 2º, da CF e altera o CPC)

Fonte: `lei-15484-2026-relevancia-resp`. Localizador: texto limpo de `https://www.planalto.gov.br/ccivil_03/_ato2023-2026/2026/lei/L15484.htm` — linhas 26–32.

sha256: `a9bd3a698b9a8dbc5b0442cd3085c52fc667ef8283ca33cf2793211847d6d715`

```text
Art. 1º Esta Lei regulamenta o regime de relevância das
questões de direito federal infraconstitucional para admissão dos recursos
especiais no Superior Tribunal de Justiça, conforme previsto no
art. 105, § 2º, da
Constituição Federal, e altera, para esse fim, a
Lei nº 13.105, de 16 de
março de 2015 (Código de Processo Civil).
```

## [L15484-4] Lei 15.484/2026, art. 4º (tópico de relevância exigido nos recursos contra acórdãos publicados após a vigência)

Fonte: `lei-15484-2026-relevancia-resp`. Localizador: texto limpo de `https://www.planalto.gov.br/ccivil_03/_ato2023-2026/2026/lei/L15484.htm` — linhas 266–269.

sha256: `28657ad9791d5599ba65015e9c80c891c9e55b17491e56412f6d370db200ed6b`

```text
Art. 4º A indicação no recurso especial, em tópico
específico e fundamentado, dos argumentos da relevância da questão de
direito federal infraconstitucional será exigida em recursos interpostos
contra acórdãos publicados após a data de entrada em vigor desta Lei.
```

## [L15484-7] Lei 15.484/2026, art. 7º (cláusula de vigência: 30 dias após a publicação oficial)

Fonte: `lei-15484-2026-relevancia-resp`. Localizador: texto limpo de `https://www.planalto.gov.br/ccivil_03/_ato2023-2026/2026/lei/L15484.htm` — linhas 280–281.

sha256: `6bb7e1423d355d78cfcfd7f7ad30ecbd77ed0170a1985be40694f42e4da21e39`

Nota: o bloco é só o texto da cláusula. A data de início de vigência não é calculada aqui; a publicação consta do bloco L15484-DOU ("DOU de 4.8.2026 - Edição extra").

```text
Art. 7º Esta Lei entra em vigor após decorridos 30
(trinta) dias de sua publicação oficial.
```

## [L15484-DOU] Lei 15.484/2026, data da lei e nota de publicação no DOU (fecho da página do Planalto)

Fonte: `lei-15484-2026-relevancia-resp`. Localizador: texto limpo de `https://www.planalto.gov.br/ccivil_03/_ato2023-2026/2026/lei/L15484.htm` — linhas 283–284, 291–292.

sha256: `3ca1d6fb2153efe08686da55414643525534e8cbf5089c4b45136232260b3fc4`

```text
Brasília, 4 de agosto de 2026; 205o da Independência e 138o
da República.
[…]
Este texto não substitui o publicado no DOU de 4.8.2026
- Edição extra
```

## [NAT-LGPD-55A] LGPD, art. 55-A na redação vigente (Lei 15.352/2026) e §§ 1º a 3º revogados pela Lei 14.460/2022

Fonte: `lei-13709-lgpd-compilado-v03l`. Localizador: texto limpo de `https://www.planalto.gov.br/ccivil_03/_ato2015-2018/2018/lei/l13709compilado.htm` — linhas 1193–1226.

sha256: `187a1c1e555fac9591ae96b08ebbc583182e62866a1ac911279629d53ea8caf4`

Nota: a redação vigente do caput é a dada pela Lei 15.352/2026 ("Agência Nacional de Proteção de Dados (ANPD)", vinculada ao Ministério da Justiça e Segurança Pública, nos termos da Lei 13.848/2019). Os §§ 1º a 3º estão revogados pela Lei 14.460/2022. A página compilada não traz texto riscado nesse trecho: a redação do caput dada pela Lei 14.460/2022 não aparece nela, nem riscada, e a página não a marca como anterior.

```text
Art. 55-A. Fica criada a Agência Nacional de Proteção de Dados (ANPD),
autarquia de natureza
especial vinculada
ao Ministério da Justiça e
Segurança Pública,
dotada de
autonomia funcional,
técnica, decisória,
administrativa e
financeira, com
patrimônio próprio e com sede e foro no Distrito Federal,
nos termos
da
Lei nº 13.848,
de 25
de junho de 2019.

(Redação dada
pela Lei nº 15.352, de 2026)

§ 1º

(Revogado pela
Lei nº 14.460, de 2022)

§ 2º

(Revogado pela
Lei nº 14.460, de 2022)

§ 3º

(Revogado pela
Lei nº 14.460, de 2022)
```

## [NAT-14460-EMENTA] Lei 14.460/2022, epígrafe e ementa (transforma a ANPD em autarquia de natureza especial)

Fonte: `lei-14460-2022-anpd-autarquia`. Localizador: texto limpo de `https://www.planalto.gov.br/ccivil_03/_ato2019-2022/2022/lei/L14460.htm` — linhas 8–61.

sha256: `c384de8da321bfd61844de96e365264ce497138d83d8278fae783ab9af2e32a6`

```text
LEI Nº
14.460,
DE 25 DE OUTUBRO DE 2022

Conversão da Medida
Provisória nº 1.124, de 2022

Transforma a Autoridade Nacional de Proteção de

Dados (ANPD) em autarquia de natureza especial e

transforma cargos comissionados; altera as Leis nºs

13.709,

de

14

de

agosto

de

2018

(Lei

Geral

de

Proteção de Dados Pessoais), e 13.844, de 18 de

junho

de

2019;

e

revoga

dispositivos

da

Lei

nº

13.853, de 8 de julho de 2019.
```

## [NAT-14460-1] Lei 14.460/2022, art. 1º (transformação da ANPD em autarquia de natureza especial)

Fonte: `lei-14460-2022-anpd-autarquia`. Localizador: texto limpo de `https://www.planalto.gov.br/ccivil_03/_ato2019-2022/2022/lei/L14460.htm` — linhas 80–88.

sha256: `9defa0ca722e9228c5222019ed834314d138ef023cf480ba786e2b7b770c341a`

```text
Art. 1º Fica a Autoridade Nacional de Proteção de Dados (ANPD) transformada

em autarquia de natureza especial, mantidas a estrutura organizacional e as
competências

e observados os demais dispositivos da

Lei nº 13.709, de 14 de agosto de
2018.
```

## [NAT-14460-7] Lei 14.460/2022, art. 7º, no trecho que dá nova redação ao art. 55-A da LGPD (redação depois substituída pela Lei 15.352/2026)

Fonte: `lei-14460-2022-anpd-autarquia`. Localizador: texto limpo de `https://www.planalto.gov.br/ccivil_03/_ato2019-2022/2022/lei/L14460.htm` — linhas 165–200.

sha256: `7797f743ca4f6934217ad1455514ff23fa37ece628b9945e072351d87a79bfd2`

Nota: redação do art. 55-A dada pela Lei 14.460/2022 ("Autoridade Nacional de Proteção de Dados", autarquia de natureza especial). Ela não é mais a vigente: a página compilada da LGPD atribui o caput atual à Lei 15.352/2026 (blocos NAT-LGPD-55A e NAT-15352-1-55A). Nenhuma página do Planalto marca esta redação como anterior: a compilada da LGPD simplesmente não a reproduz, e a página da Lei 14.460/2022 não traz nota de alteração. A substituição decorre do "(Redação dada pela Lei nº 15.352, de 2026)" na compilada e do art. 1º da Lei 15.352/2026; ao citar a redação vigente, a fonte é a Lei 15.352/2026. O "depois substituída" do título é rótulo do plugin.

```text
Art. 7º A
Lei nº 13.709, de 14 de agosto de 2018 (Lei Geral de Proteção de

Dados Pessoais), passa a vigorar com as seguintes alterações:

"Art. 55-A. Fica criada a Autoridade Nacional de Proteção de Dados (ANPD),

autarquia

de

natureza

especial,

dotada

de

autonomia

técnica

e

decisória,

com

patrimônio próprio e com sede e foro no Distrito Federal.

§ 1º (Revogado).

§ 2º (Revogado).

§ 3º (Revogado)." (NR)
```

## [NAT-14460-10] Lei 14.460/2022, art. 10 (vigência na data da publicação) e nota de publicação no DOU

Fonte: `lei-14460-2022-anpd-autarquia`. Localizador: texto limpo de `https://www.planalto.gov.br/ccivil_03/_ato2019-2022/2022/lei/L14460.htm` — linhas 323, 333–334.

sha256: `9a0ae3fc6af4f6b10b5948c15f47257dda08e1f2df1d10e9b5ee795de447a9a8`

```text
Art. 10. Esta Lei entra em vigor na data de sua publicação.
[…]
Este texto não substitui o publicado no DOU de
26.10.2022
```

## [NAT-15352-EMENTA] Lei 15.352/2026, epígrafe e ementa (dispõe sobre a Agência Nacional de Proteção de Dados)

Fonte: `lei-15352-2026-agencia-anpd`. Localizador: texto limpo de `https://www.planalto.gov.br/ccivil_03/_ato2023-2026/2026/lei/L15352.htm` — linhas 8–23.

sha256: `fd9bc8c061c114eeec19ce0f658542427fe44950658fa721bec30ce12c47305c`

```text
LEI
Nº 15.352, DE 25 DE FEVEREIRO DE 2026

Conversão da Medida Provisória nº 1.317, de 2025

Transforma cargos no âmbito do Poder
Executivo federal; altera a Lei nº 13.709, de 14 de agosto de 2018 (Lei
Geral de Proteção de Dados Pessoais), para dispor sobre a Agência
Nacional de Proteção de Dados (ANPD), a Lei nº 10.871, de 20 de maio de
2004, para criar a Carreira de Regulação e Fiscalização de Proteção de
Dados, a Lei nº 15.211, de 17 de setembro de 2025 (Estatuto Digital da
Criança e do Adolescente), para dispor sobre o início da vigência da
referida Lei; altera as Leis nºs 9.008, de 21 de março de 1995, 11.890,
de 24 de dezembro de 2008, 13.326, de 29 de julho de 2016, 13.848, de 25
de junho de 2019, e 14.600, de 19 de junho de 2023; revoga a Medida
Provisória nº 1.319, de 17 de setembro de 2025; e dá outras providência.
```

## [NAT-15352-1-55A] Lei 15.352/2026, art. 1º, caput, no trecho que dá a redação vigente do art. 55-A da LGPD

Fonte: `lei-15352-2026-agencia-anpd`. Localizador: texto limpo de `https://www.planalto.gov.br/ccivil_03/_ato2023-2026/2026/lei/L15352.htm` — linhas 29–36, 79–96.

sha256: `f22859c9b2512885db2b55d534649ca5855156486ea02a0d9da2a099f763b691`

Nota: a linha `[…]` separa o caput do art. 1º (que introduz as alterações da LGPD) do trecho do art. 55-A; entre eles a lei altera outros dispositivos da LGPD, não capturados aqui.

```text
Art.1º A
Lei nº 13.709, de 14 de
agosto de 2018 (Lei Geral
de Proteção
de Dados
Pessoais), passa a
vigorar com as seguintes
alterações:
[…]
‘Art.
55-A. Fica criada a Agência Nacional de Proteção de Dados (ANPD),
autarquia de natureza
especial vinculada
ao Ministério da Justiça e
Segurança Pública,
dotada de
autonomia
funcional, técnica, decisória,
administrativa e
financeira, com
patrimônio próprio e com sede e foro no Distrito Federal,
nos termos
da
Lei nº 13.848,
de 25
de junho de 2019.’
(NR)
```

## [NAT-15352-21] Lei 15.352/2026, art. 21 (vigência na data da publicação) e nota de publicação no DOU

Fonte: `lei-15352-2026-agencia-anpd`. Localizador: texto limpo de `https://www.planalto.gov.br/ccivil_03/_ato2023-2026/2026/lei/L15352.htm` — linhas 557–563, 575–576.

sha256: `4cc4a2b7819b3bfe2b0f5afa688b02183bfd26319cd52a9ee4c20ff49c1002a0`

```text
Art.21.
Esta Lei
entra em
vigor na
data de
sua
publicação.
[…]
Este texto não substitui o publicado no DOU de 25.2.2026
- Edição extra
```

## [NAT-ANATEL-8] Lei 9.472/1997, art. 8º, caput e §§ 1º e 2º (Anatel: Administração indireta, regime autárquico especial)

Fonte: `lei-9472-lgt-anatel`. Localizador: texto limpo de `https://www.planalto.gov.br/ccivil_03/leis/l9472.htm` — linhas 187–199.

sha256: `69cc2a9982975bdaf6fa7e827cb47fc025385d4bcc830b5f275957888a0cde40`

```text
Art. 8° Fica criada a Agência Nacional de Telecomunicações, entidade integrante da
Administração Pública Federal indireta, submetida a regime autárquico especial e
vinculada ao Ministério das Comunicações, com a função de órgão regulador das
telecomunicações, com sede no Distrito Federal, podendo estabelecer unidades regionais.

§
1º A Agência terá como órgão máximo o Conselho Diretor, devendo contar, também, com
um Conselho Consultivo, uma Procuradoria, uma Corregedoria, uma Biblioteca e uma Ouvidoria, além das unidades especializadas incumbidas de diferentes funções.

§
2º A natureza de autarquia especial conferida à Agência é caracterizada por
independência administrativa, ausência de subordinação hierárquica, mandato fixo e
estabilidade de seus dirigentes e autonomia financeira.
```

## [LGPD3L-8] LGPD, art. 8º, caput e §§ 1º a 6º (forma, prova, vícios, finalidade e revogação do consentimento)

Fonte: `lei-13709-lgpd-compilado-v03l`. Localizador: texto limpo de `https://www.planalto.gov.br/ccivil_03/_ato2015-2018/2018/lei/l13709compilado.htm` — linhas 280–296.

sha256: `df0f75fcf86cb913392c733df59921b9f342304fade4def1bfcc9a18c2dcf3e7`

```text
Art. 8º O consentimento previsto no inciso I do art. 7º desta Lei deverá ser fornecido por escrito ou por outro meio que demonstre a manifestação de vontade do titular.

§ 1º Caso o consentimento seja fornecido por escrito, esse deverá constar de cláusula destacada das demais cláusulas contratuais.

§ 2º Cabe ao controlador o ônus da prova de que o consentimento foi obtido em conformidade com o disposto nesta Lei.

§ 3º É vedado o tratamento de dados pessoais mediante vício de consentimento.

§ 4º O consentimento deverá referir-se a finalidades determinadas, e as autorizações genéricas para o tratamento de dados pessoais serão nulas.

§ 5º O consentimento pode ser revogado a qualquer momento mediante manifestação expressa do titular, por procedimento gratuito e facilitado, ratificados os tratamentos realizados sob amparo do consentimento anteriormente manifestado enquanto não houver requerimento de eliminação, nos termos do inciso VI do

caput

do art. 18 desta Lei.

§ 6º Em caso de alteração de informação referida nos incisos I, II, III ou V do art. 9º desta Lei, o controlador deverá informar ao titular, com destaque de forma específica do teor das alterações, podendo o titular, nos casos em que o seu consentimento é exigido, revogá-lo caso discorde da alteração.
```

## [LGPD3L-9] LGPD, art. 9º, caput, incisos I a VII e §§ 1º a 3º (acesso facilitado às informações sobre o tratamento)

Fonte: `lei-13709-lgpd-compilado-v03l`. Localizador: texto limpo de `https://www.planalto.gov.br/ccivil_03/_ato2015-2018/2018/lei/l13709compilado.htm` — linhas 298–318.

sha256: `56f57ac9c46052f2062627613543800d26b05aa8878e47b52cf6bf067454e246`

```text
Art. 9º O titular tem direito ao acesso facilitado às informações sobre o tratamento de seus dados, que deverão ser disponibilizadas de forma clara, adequada e ostensiva acerca de, entre outras características previstas em regulamentação para o atendimento do princípio do livre acesso:

I - finalidade específica do tratamento;

II - forma e duração do tratamento, observados os segredos comercial e industrial;

III - identificação do controlador;

IV - informações de contato do controlador;

V - informações acerca do uso compartilhado de dados pelo controlador e a finalidade;

VI - responsabilidades dos agentes que realizarão o tratamento; e

VII - direitos do titular, com menção explícita aos direitos contidos no art. 18 desta Lei.

§ 1º Na hipótese em que o consentimento é requerido, esse será considerado nulo caso as informações fornecidas ao titular tenham conteúdo enganoso ou abusivo ou não tenham sido apresentadas previamente com transparência, de forma clara e inequívoca.

§ 2º Na hipótese em que o consentimento é requerido, se houver mudanças da finalidade para o tratamento de dados pessoais não compatíveis com o consentimento original, o controlador deverá informar previamente o titular sobre as mudanças de finalidade, podendo o titular revogar o consentimento, caso discorde das alterações.

§ 3º Quando o tratamento de dados pessoais for condição para o fornecimento de produto ou de serviço ou para o exercício de direito, o titular será informado com destaque sobre esse fato e sobre os meios pelos quais poderá exercer os direitos do titular elencados no art. 18 desta Lei.
```

## [LGPD3L-10] LGPD, art. 10, caput, incisos I e II e §§ 1º a 3º (legítimo interesse)

Fonte: `lei-13709-lgpd-compilado-v03l`. Localizador: texto limpo de `https://www.planalto.gov.br/ccivil_03/_ato2015-2018/2018/lei/l13709compilado.htm` — linhas 320–330.

sha256: `0fa1a9b597bdd445ee782c05b2d825283f4ac608f4aeab493d983fa0d5f752c8`

```text
Art. 10. O legítimo interesse do controlador somente poderá fundamentar tratamento de dados pessoais para finalidades legítimas, consideradas a partir de situações concretas, que incluem, mas não se limitam a:

I - apoio e promoção de atividades do controlador; e

II - proteção, em relação ao titular, do exercício regular de seus direitos ou prestação de serviços que o beneficiem, respeitadas as legítimas expectativas dele e os direitos e liberdades fundamentais, nos termos desta Lei.

§ 1º Quando o tratamento for baseado no legítimo interesse do controlador, somente os dados pessoais estritamente necessários para a finalidade pretendida poderão ser tratados.

§ 2º O controlador deverá adotar medidas para garantir a transparência do tratamento de dados baseado em seu legítimo interesse.

§ 3º A autoridade nacional poderá solicitar ao controlador relatório de impacto à proteção de dados pessoais, quando o tratamento tiver como fundamento seu interesse legítimo, observados os segredos comercial e industrial.
```

## [ANPD3L-R2-OBS] Res. CD/ANPD 2/2022, título, ementa e observação da página sobre a alteração pela Res. CD/ANPD 15/2024

Fonte: `anpd-res-cd-2-2022-pequeno-porte-v03l`. Localizador: texto limpo de `https://www.gov.br/anpd/pt-br/acesso-a-informacao/institucional/atos-normativos/regulamentacoes_anpd/resolucao-cd-anpd-no-2-de-27-de-janeiro-de-2022` — linhas 16–20.

sha256: `9396fcdf7826a404307cb659654703e219eee1d0f1eec5848f7e7660ac1eb028`

Nota: a observação da página registra alteração pela Res. CD/ANPD 15/2024. Nos arts. 2º, 3º e 11 capturados não há texto riscado; o único marcador da página está no art. 14, II (já capturado no bloco `ANPD-R2-14`).

```text
RESOLUÇÃO CD/ANPD Nº 2, DE 27 DE JANEIRO DE 2022RESOLUÇÃO CD/ANPD Nº 2, DE 27 DE JANEIRO DE 2022

Aprova o Regulamento de aplicação da Lei nº 13.709, de 14 de agosto de 2018, Lei Geral de Proteção de Dados Pessoais (LGPD), para agentes de tratamento de pequeno porte.

Observação: Este texto não substitui a publicação no DOU de 28/01/2022, alterado pela Resolução CD/ANPD nº 15, de 25 de abril de 2024.
```

## [ANPD3L-R2-2] Res. CD/ANPD 2/2022, Anexo (Regulamento), art. 2º, incisos I a IV (definições: agente de pequeno porte, ME/EPP, startups, zonas acessíveis ao público)

Fonte: `anpd-res-cd-2-2022-pequeno-porte-v03l`. Localizador: texto limpo de `https://www.gov.br/anpd/pt-br/acesso-a-informacao/institucional/atos-normativos/regulamentacoes_anpd/resolucao-cd-anpd-no-2-de-27-de-janeiro-de-2022` — linhas 37–41.

sha256: `a7e8c44e017d966a9f7b8642ed2abb2af577df18906487c5eaaab10741608176`

```text
Art. 2º Para efeitos deste regulamento são adotadas as seguintes definições:
I - agentes de tratamento de pequeno porte: microempresas, empresas de pequeno porte, startups, pessoas jurídicas de direito privado, inclusive sem fins lucrativos, nos termos da legislação vigente, bem como pessoas naturais e entes privados despersonalizados que realizam tratamento de dados pessoais, assumindo obrigações típicas de controlador ou de operador;
II - microempresas e empresas de pequeno porte: sociedade empresária, sociedade simples, sociedade limitada unipessoal, nos termos do art. 41 da Lei nº 14.195, de 26 de agosto de 2021, e o empresário a que se refere o art. 966 da Lei nº 10.406, de 10 de janeiro de 2002 (Código Civil), incluído o microempreendedor individual, devidamente registrados no Registro de Empresas Mercantis ou no Registro Civil de Pessoas Jurídicas, que se enquadre nos termos do art. 3º e 18-A, § 1º da Lei Complementar nº 123, de 14 de dezembro de 2006;
III - startups: organizações empresariais ou societárias, nascentes ou em operação recente, cuja atuação caracteriza-se pela inovação aplicada a modelo de negócios ou a produtos ou serviços ofertados, que atendam aos critérios previstos no Capítulo II da Lei Complementar nº 182, de 1º de junho de 2021; e
IV - zonas acessíveis ao público: espaços abertos ao público, como praças, centros comerciais, vias públicas, estações de ônibus, de metrô e de trem, aeroportos, portos, bibliotecas públicas, dentre outros.
```

## [ANPD3L-R2-3] Res. CD/ANPD 2/2022, Anexo (Regulamento), art. 3º, incisos I a III (quem não se beneficia do tratamento diferenciado)

Fonte: `anpd-res-cd-2-2022-pequeno-porte-v03l`. Localizador: texto limpo de `https://www.gov.br/anpd/pt-br/acesso-a-informacao/institucional/atos-normativos/regulamentacoes_anpd/resolucao-cd-anpd-no-2-de-27-de-janeiro-de-2022` — linhas 42–45.

sha256: `3497e0358fe0ed0cc1940e931dd8a3969a8da52ac85755059d530a966d1ce7e2`

```text
Art. 3º Não poderão se beneficiar do tratamento jurídico diferenciado previsto neste Regulamento os agentes de tratamento de pequeno porte que:
I - realizem tratamento de alto risco para os titulares, ressalvada a hipótese prevista no art. 8º;
II - aufiram receita bruta superior ao limite estabelecido no art. 3º, II, da Lei Complementar nº 123, de 2006 ou, no caso de startups, no art. 4º, § 1º, I, da Lei Complementar nº 182, de 2021; ou
III - pertençam a grupo econômico de fato ou de direito, cuja receita global ultrapasse os limites referidos no inciso II, conforme o caso.
```

## [ANPD3L-R2-11] Res. CD/ANPD 2/2022, Anexo (Regulamento), art. 11, caput e §§ 1º e 2º (dispensa de indicar encarregado; canal de comunicação)

Fonte: `anpd-res-cd-2-2022-pequeno-porte-v03l`. Localizador: texto limpo de `https://www.gov.br/anpd/pt-br/acesso-a-informacao/institucional/atos-normativos/regulamentacoes_anpd/resolucao-cd-anpd-no-2-de-27-de-janeiro-de-2022` — linhas 81–83.

sha256: `57963f116c5d2401ab2ac71d1fa3390b74f4197eee23f9e12cf37ad78dfbca56`

```text
Art. 11. Os agentes de tratamento de pequeno porte não são obrigados a indicar o encarregado pelo tratamento de dados pessoais exigido no art. 41 da LGPD.
§ 1º O agente de tratamento de pequeno porte que não indicar um encarregado deve disponibilizar um canal de comunicação com o titular de dados para atender o disposto no art. 41, § 2º, I da LGPD.
§ 2º A indicação de encarregado por parte dos agentes de tratamento de pequeno porte será considerada política de boas práticas e governança para fins do disposto no art. 52, § 1º, IX da LGPD.
```

## [ANPD3L-R19-OBS] Res. CD/ANPD 19/2024, título, ementa e observação da página sobre a Retificação de 18/08/2025

Fonte: `anpd-res-cd-19-2024-gov-br-retificada`. Localizador: texto limpo de `https://www.gov.br/anpd/pt-br/acesso-a-informacao/institucional/atos-normativos/regulamentacoes_anpd/resolucao-cd-anpd-no-19-de-23-de-agosto-de-2024` — linhas 16–20.

sha256: `6f871d4194e1f2afcf7cdc0d76c7a70079034efe8e1496617f470daf5d355a17`

```text
Resolução CD/ANPD nº 19, de 23 de agosto de 2024RESOLUÇÃO CD/ANPD Nº 19, DE 23 DE AGOSTO DE 2024

Aprova o Regulamento de Transferência Internacional de Dados e o conteúdo das cláusulas-padrão contratuais.

Observação: Este texto não substitui a publicação no DOU de 23/08/2024, alterado pela RETIFICAÇÃO de 18/08/2025.
```

## [ANPD3L-R19-A2-S1] Res. CD/ANPD 19/2024, Anexo II, abertura e Seção I (Cláusulas 1 a 4: partes, objeto, transferências posteriores, responsabilidades)

Fonte: `anpd-res-cd-19-2024-gov-br-retificada`. Localizador: texto limpo de `https://www.gov.br/anpd/pt-br/acesso-a-informacao/institucional/atos-normativos/regulamentacoes_anpd/resolucao-cd-anpd-no-19-de-23-de-agosto-de-2024` — linhas 238–322.

sha256: `f61cdd5784bfd3512766594ad0875f280e66fe64357a0933eb70a0f038593cda`

Nota: os quadros de preenchimento (Nome, Qualificação, Endereço etc.) são campos em branco do modelo. O título do quadro aparece colado à primeira célula por efeito da limpeza (ver cabeçalho).

```text
ANEXO II
CLÁUSULAS-PADRÃO CONTRATUAIS
(OBS: Conforme previsto no Anexo I - Regulamento de Transferência Internacional de Dados, as Cláusulas previstas neste ANEXO II poderão integrar contrato celebrado para reger, especificamente, a transferência internacional de dados ou contrato com objeto mais amplo, inclusive mediante a assinatura de termo aditivo pelo exportador e pelo importador envolvidos na operação de transferência internacional de dados).
Seção I - Informações Gerais
(OBS: Esta Seção contém Cláusulas que podem ser complementadas pelas Partes, exclusivamente, nos espaços indicados e conforme as orientações apresentadas. As definições dos termos utilizados nestas Cláusulas encontram-se detalhadas na CLÁUSULA 6).
CLÁUSULA 1. Identificação das Partes
1.1. Pelo presente instrumento contratual, o Exportador e o Importador (doravante, Partes), abaixo identificados, resolvem adotar as cláusulas-padrão contratuais (doravante Cláusulas) aprovadas pela Autoridade Nacional de Proteção de Dados (ANPD), para reger a Transferência Internacional de Dados descrita na Cláusula 2, em conformidade com as disposições da Legislação Nacional.

CLÁUSULA 1. Identificação das PartesNome:
Qualificação:
Endereço principal:
Endereço de e-mail:
Contato para o Titular:
Outras informações:

( ) Exportador/Controlador ( ) Exportador/Operador
(OBS: assinalar a opção correspondente a "Controlador" ou "Operador" e preencher com as informações de identificação, conforme indicadas no quadro).

CLÁUSULA 1. Identificação das Partes 2Nome:
Qualificação:
Endereço principal:
Endereço de e-mail:
Contato para o Titular:
Outras informações:

( ) Importador/Controlador ( ) Importador/Operador
(OBS: assinalar a opção correspondente a "Controlador" ou "Operador" e preencher com as informações de identificação, conforme indicadas no quadro).
CLÁUSULA 2. Objeto
2.1. Estas Cláusulas se aplicam às Transferências Internacionais de Dados do Exportador para o Importador, conforme a descrição abaixo.
Descrição da transferência internacional de dados:

CLÁUSULA 2. ObjetoPrincipais finalidades da transferência:
Categorias de dados pessoais transferidos:
Período de armazenamento dos dados:
Outras informações:

(OBS: preencher da forma mais detalhada possível com as informações relativas à transferência internacional)
CLÁUSULA 3. Transferências Posteriores
(OBS: escolher entre a "OPÇÃO A" e a "OPÇÃO B", conforme o caso.).
OPÇÃO A. 3.1. O Importador não poderá realizar Transferência Posterior dos Dados Pessoais objeto da Transferência Internacional de Dados regida por estas Cláusulas, salvo nas hipóteses previstas no item 18.3.
OPÇÃO B. 3.1. O Importador poderá realizar Transferência Posterior dos Dados Pessoais objeto da Transferência Internacional de Dados regida por estas Cláusulas nas hipóteses e conforme as condições descritas abaixo e desde que observadas as disposições da Cláusula 18.

CLÁUSULA 3. Transferências PosterioresPrincipais finalidades da transferência:
Categorias de dados pessoais transferidos:
Período de armazenamento dos dados:
Outras informações:

(OBS: preencher da forma mais detalhada possível com as informações relativas às transferências posteriores autorizadas).
CLÁUSULA 4. Responsabilidades das Partes
(OBS: escolher entre a "OPÇÃO A" e a "OPÇÃO B", conforme o caso)
OPÇÃO A. (a "Opção A" é exclusiva para as transferências internacionais de dados nas quais ao menos uma das Partes atua como Controlador)
4.1. Sem prejuízo do dever de assistência mútua e das obrigações gerais das Partes, caberá à Parte Designada abaixo, na condição de Controlador, a responsabilidade pelo cumprimento das seguintes obrigações previstas nestas Cláusulas:
a) Responsável por publicar o documento previsto na Cláusula 14:
( ) Exportador ( ) Importador
b) Responsável por atender às solicitações de titulares de que trata a CLÁUSULA 15:
( ) Exportador ( ) Importador
c) Responsável por realizar a comunicação de incidente de segurança prevista na Cláusula 16:
( ) Exportador ( ) Importador
(OBS: nas alíneas "a", "b" e "c", assinalar a opção correspondente a: (i) "Exportador" ou "Importador", nos casos em que apenas uma das Partes atua como controlador; ou (ii) assinalar ambas as opções, nos casos em que as duas Partes atuam como controladores. A responsabilidade pelo cumprimento das obrigações referidas nas Cláusulas 14 a 16 não pode ser atribuída à Parte que atua como Operador. Caso se verifique, posteriormente, que a Parte Designada atua como Operador, aplicar-se-á o disposto no item 4.2)
4.2. Para os fins destas Cláusulas, verificado, posteriormente, que a Parte Designada na forma do item 4.1. atua como Operador, o Controlador permanecerá responsável:
a) pelo cumprimento das obrigações previstas nas Cláusulas 14, 15 e 16 e demais disposições estabelecidas na Legislação Nacional, especialmente em caso de omissão ou descumprimento das obrigações pela Parte Designada;
b) pelo atendimento às determinações da ANPD; e
c) pela garantia dos direitos dos Titulares e pela reparação dos danos causados, observado o disposto na Cláusula 17.
OPÇÃO B. (OBS: a "Opção B" é exclusiva para as transferências internacionais de dados realizadas entre operadores)
4.1. Considerando que ambas as Partes atuam, exclusivamente, como Operadores no âmbito da Transferência Internacional de Dados regida por estas Cláusulas, o Exportador declara e garante que a transferência é efetuada em conformidade com as instruções fornecidas por escrito pelo Terceiro Controlador identificado no quadro abaixo.

CLÁUSULA 4. Responsabilidades das PartesInformações de identificação do Terceiro Controlador:
Nome:
Qualificação:
Endereço principal:
Endereço de e-mail:
Contato para o Titular:
Informações sobre Contrato Coligado:

(OBS: preencher da forma mais detalhada possível com as informações de identificação e de contato do Terceiro Controlador e, se for o caso, do Contrato Coligado).
4.2. O Exportador responde, solidariamente, pelos danos causados pela Transferência Internacional de Dados caso esta seja realizada em desconformidade com as obrigações da Legislação Nacional ou com as instruções lícitas do Terceiro Controlador, hipótese em que o Exportador se equipara a Controlador, observado o disposto na Cláusula 17.
4.3. Caso verificada a equiparação a Controlador de que trata o item 4.2, caberá ao Exportador o cumprimento das obrigações previstas nas Cláusulas 14, 15 e 16.
4.4. Ressalvado o disposto nos itens 4.2. e 4.3, não se aplica às Partes, na condição de Operadores, o disposto nas Cláusulas 14, 15 e 16.
4.5. As Partes fornecerão, em qualquer hipótese, todas as informações de que dispuserem e que se demonstrarem necessárias para que o Terceiro Controlador possa atender a determinações da ANPD e cumprir adequadamente obrigações previstas na Legislação Nacional relacionadas à transparência, ao atendimento a direitos dos titulares e à comunicação de incidentes de segurança à ANPD.
4.6. As Partes devem promover assistência mútua com a finalidade de atender às solicitações dos Titulares.
4.7. Em caso de recebimento de solicitação de Titular, a Parte deverá:
a) atender à solicitação, quando dispuser das informações necessárias;
b) informar ao Titular o canal de atendimento disponibilizado pelo Terceiro Controlador; ou
c) encaminhar a solicitação para o Terceiro Controlador o quanto antes, a fim de viabilizar a resposta no prazo previsto na Legislação Nacional.
4.8. As Partes devem manter o registro de incidentes de segurança com dados pessoais, nos termos da Legislação Nacional.
```

## [ANPD3L-R19-A2-C5-10] Res. CD/ANPD 19/2024, Anexo II, Seção II, Cláusulas 5 a 10 (finalidade, definições, legislação, interpretação, adesão, obrigações gerais)

Fonte: `anpd-res-cd-19-2024-gov-br-retificada`. Localizador: texto limpo de `https://www.gov.br/anpd/pt-br/acesso-a-informacao/institucional/atos-normativos/regulamentacoes_anpd/resolucao-cd-anpd-no-19-de-23-de-agosto-de-2024` — linhas 323–376.

sha256: `6ee5d3449c186e8fde972e0ee288c254d1fc80a99cef9f376734e8b865fdbea3`

```text
Seção II - Cláusulas Mandatórias
(OBS: Esta Seção contém Cláusulas que devem ser adotadas integralmente e sem qualquer alteração em seu texto a fim de assegurar a validade da transferência internacional de dados).
CLÁUSULA 5. Finalidade
5.1. Estas Cláusulas se apresentam como mecanismo viabilizador do fluxo internacional seguro de dados pessoais, estabelecem garantias mínimas e condições válidas para a realização de Transferência Internacional de Dados e visam garantir a adoção das salvaguardas adequadas para o cumprimento dos princípios, dos direitos do Titular e do regime de proteção de dados previstos na Legislação Nacional.
CLÁUSULA 6. Definições
6.1. Para os fins destas Cláusulas, serão consideradas as definições do art. 5º da Lei nº 13.709, de 14 de agosto de 2018, e do art. 3º do Regulamento de Transferência Internacional de Dados Pessoais, sem prejuízo de outros atos normativos expedidos pela ANPD. As Partes concordam, ainda, em considerar os termos e seus respectivos significados, conforme exposto a seguir:
a) Agentes de tratamento: o controlador e o operador;
b) ANPD: Autoridade Nacional de Proteção de Dados;
c) Cláusulas: as cláusulas-padrão contratuais aprovadas pela ANPD, que integram as Seções I, II e III;
d) Contrato Coligado: instrumento contratual firmado entre as Partes ou, pelo menos, entre uma destas e um terceiro, incluindo um Terceiro Controlador, que possua propósito comum, vinculação ou relação de dependência com o contrato que rege a Transferência Internacional de Dados;
e) Controlador: Parte ou terceiro ("Terceiro Controlador") a quem compete as decisões referentes ao tratamento de Dados Pessoais;
f) Dado Pessoal: informação relacionada a pessoa natural identificada ou identificável;
g) Dado Pessoal Sensível: dado pessoal sobre origem racial ou étnica, convicção religiosa, opinião política, filiação a sindicato ou a organização de caráter religioso, filosófico ou político, dado referente à saúde ou à vida sexual, dado genético ou biométrico, quando vinculado a uma pessoa natural;
h) Eliminação: exclusão de dado ou de conjunto de dados armazenados em banco de dados, independentemente do procedimento empregado;
i) Exportador: agente de tratamento, localizado no território nacional ou em país estrangeiro, que transfere dados pessoais para Importador;
j) Importador: agente de tratamento, localizado em país estrangeiro ou que seja organismo internacional, que recebe dados pessoais transferidos por Exportador;
k) Legislação Nacional: conjunto de dispositivos constitucionais, legais e regulamentares brasileiros a respeito da proteção de Dados Pessoais, incluindo a Lei nº 13.709, de 14 de agosto de 2018, o Regulamento de Transferência Internacional de Dados e outros atos normativos expedidos pela ANPD;
l) Lei de Arbitragem: Lei nº 9.307, de 23 de setembro de 1996;
m) Medidas de Segurança: medidas técnicas e administrativas adotadas para proteger os dados pessoais de acessos não autorizados e de situações acidentais ou ilícitas de destruição, perda, alteração, comunicação ou difusão;
n) Órgão de Pesquisa: órgão ou entidade da administração pública direta ou indireta ou pessoa jurídica de direito privado sem fins lucrativos legalmente constituída sob as leis brasileiras, com sede e foro no País, que inclua em sua missão institucional ou em seu objetivo social ou estatutário a pesquisa básica ou aplicada de caráter histórico, científico, tecnológico ou estatístico;
o) Operador: Parte ou terceiro, incluindo um Subcontratado, que realiza o tratamento de Dados Pessoais em nome do Controlador;
p) Parte Designada: Parte do contrato designada, nos termos da Cláusula 4 ("Opção A"), para cumprir, na condição de Controlador, obrigações específicas relativas à transparência, direitos dos Titulares e comunicação de incidentes de segurança;
q) Partes: Exportador e Importador;
r) Solicitação de Acesso: solicitação de atendimento obrigatório, por força de lei, regulamento ou determinação de autoridade pública, para conceder acesso aos Dados Pessoais objeto da Transferência Internacional de Dados regida por estas Cláusulas;
s) Subcontratado: agente de tratamento contratado pelo Importador, sem vínculo com o Exportador, para realizar tratamento de Dados Pessoais após uma Transferência Internacional de Dados;
t) Terceiro Controlador: Controlador dos Dados Pessoais que fornece instruções por escrito para a realização, em seu nome, da Transferência Internacional de Dados entre Operadores regida por estas Cláusulas, na forma da Cláusula 4 ("Opção B");
u) Titular: pessoa natural a quem se referem os Dados Pessoais que são objeto da Transferência Internacional de Dados regida por estas Cláusulas;
v) Transferência: modalidade de tratamento por meio da qual um agente de tratamento transmite, compartilha ou disponibiliza acesso a Dados Pessoais a outro agente de tratamento;
w) Transferência Internacional de Dados: transferência de Dados Pessoais para país estrangeiro ou organismo internacional do qual o país seja membro; e
x) Transferência Posterior: transferência Internacional de Dados, originada de um Importador, e destinada a um terceiro, incluindo um Subcontratado, desde que não configure Solicitação de Acesso.
CLÁUSULA 7. Legislação aplicável e fiscalização da ANPD
7.1. A Transferência Internacional de Dados objeto das presentes Cláusulas submete-se à Legislação Nacional e à fiscalização da ANPD, incluindo o poder de aplicar medidas preventivas e sanções administrativas a ambas as Partes, conforme o caso, bem como o de limitar, suspender ou proibir as transferências internacionais decorrentes destas Cláusulas ou de um Contrato Coligado.
CLÁUSULA 8. Interpretação
8.1. Qualquer aplicação destas Cláusulas deve ocorrer de acordo com os seguintes termos:
a) estas Cláusulas devem sempre ser interpretadas de forma mais favorável ao Titular e de acordo com as disposições da Legislação Nacional;
b) em caso de dúvida sobre o significado de termos destas Cláusulas, aplica-se o significado que mais se alinha com a Legislação Nacional;
c) nenhum item destas Cláusulas, incluindo-se aqui um Contrato Coligado e as disposições previstas na Seção IV, poderá ser interpretado com o objetivo de limitar ou excluir a responsabilidade de qualquer uma das Partes em relação a obrigações previstas na Legislação Nacional; e
d) as disposições das Seções I e II prevalecem em caso de conflito de interpretação com Cláusulas adicionais e demais disposições previstas nas Seções III e IV deste instrumento ou em Contratos Coligados.
CLÁUSULA 9. Possibilidade de adesão de terceiros
9.1. Em comum acordo entre as Partes, é possível a um agente de tratamento aderir a estas Cláusulas na condição de Exportador ou de Importador, por meio do preenchimento e assinatura de documento escrito, que integrará o presente instrumento.
9.2. A parte aderente terá os mesmos direitos e obrigações das Partes originárias, conforme a posição assumida de Exportador ou Importador e de acordo com a categoria de agente de tratamento correspondente.
CLÁUSULA 10. Obrigações gerais das Partes
10.1. As Partes se comprometem a adotar e, quando necessário, demonstrar a adoção de medidas eficazes e capazes de comprovar a observância e o cumprimento das disposições destas Cláusulas e da Legislação Nacional e, inclusive, da eficácia dessas medidas e, em especial:
a) utilizar os Dados Pessoais somente para as finalidades específicas descritas na Cláusula 2, sem possibilidade de tratamento posterior de forma incompatível com essas finalidades, observadas, em qualquer caso, as limitações, garantias e salvaguardas previstas nestas Cláusulas;
b) garantir a compatibilidade do tratamento com as finalidades informadas ao Titular, de acordo com o contexto do tratamento;
c) limitar o tratamento ao mínimo necessário para a realização de suas finalidades, com abrangência dos dados pertinentes, proporcionais e não excessivos em relação às finalidades do tratamento de Dados Pessoais;
d) garantir aos Titulares, observado o disposto na Cláusula 4,
(d.1.) informações claras, precisas e facilmente acessíveis sobre a realização do tratamento e os respectivos agentes de tratamento, observados os segredos comercial e industrial;
(d.2.) consulta facilitada e gratuita sobre a forma e a duração do tratamento, bem como sobre a integralidade de seus Dados Pessoais; e
(d.3.) a exatidão, clareza, relevância e atualização dos Dados Pessoais, de acordo com a necessidade e para o cumprimento da finalidade de seu tratamento;
e) adotar as medidas de segurança apropriadas e compatíveis com os riscos envolvidos na Transferência Internacional de Dados regida por estas Cláusulas;
f) não realizar tratamento de Dados Pessoais para fins discriminatórios ilícitos ou abusivos;
g) assegurar que qualquer pessoa que atue sob sua autoridade, inclusive subcontratados ou qualquer agente que com ele colabore, de forma gratuita ou onerosa, realize tratamento de dados apenas em conformidade com suas instruções e com o disposto nestas Cláusulas; e
h) manter registro das operações de tratamento dos Dados Pessoais objeto da Transferência Internacional de Dados regida por estas Cláusulas, e apresentar a documentação pertinente à ANPD, quando solicitado.
```

## [ANPD3L-R19-A2-C11-17] Res. CD/ANPD 19/2024, Anexo II, Seção II, Cláusulas 11 a 17 (sensíveis, crianças, uso legal, transparência, direitos do titular — com a Retificação de 18/08/2025 na 15.4, b —, incidente, responsabilidade)

Fonte: `anpd-res-cd-19-2024-gov-br-retificada`. Localizador: texto limpo de `https://www.gov.br/anpd/pt-br/acesso-a-informacao/institucional/atos-normativos/regulamentacoes_anpd/resolucao-cd-anpd-no-19-de-23-de-agosto-de-2024` — linhas 377–431.

sha256: `7f6671de5a50ebeca874db84ff366075497bdc9e46a288cda248df79c25fdea9`

Nota: o marcador `[dispositivo revogado — omitido]` na Cláusula 15.4 substitui, conferido no HTML, a redação anterior da alínea b ("... a fim de viabilizar a resposta no prazo previsto no item 15.2."). A redação vigente, "(Redação dada pela Retificação publicada no DOU de 18/08/2025)", remete ao item 15.3 e vem logo abaixo. É a única alteração que o texto da página marca no Anexo II.

```text
CLÁUSULA 11. Dados pessoais sensíveis
11.1. Caso a Transferência Internacional de Dados envolva Dados Pessoais sensíveis, as Partes aplicarão salvaguardas adicionais, incluindo medidas de segurança específicas e proporcionais aos riscos da atividade de tratamento, à natureza específica dos dados e aos interesses, direitos e garantias a serem protegidos, conforme descrito na Seção III.
CLÁUSULA 12. Dados pessoais de crianças e adolescentes
12.1. Caso a Transferência Internacional de Dados envolva Dados Pessoais de crianças e adolescentes, as Partes aplicarão salvaguardas adicionais, incluindo medidas que assegurem que o tratamento seja realizado em seu melhor interesse, nos termos da Legislação Nacional e dos instrumentos pertinentes de direito internacional.
CLÁUSULA 13. Uso legal dos dados
13.1. O Exportador garante que os Dados Pessoais foram coletados, tratados e transferidos para o Importador de acordo com a Legislação Nacional.
CLÁUSULA 14. Transparência
14.1. A Parte Designada publicará, em sua página na Internet, documento contendo informações facilmente acessíveis redigidas em linguagem simples, clara e precisa sobre a realização da Transferência Internacional de Dados, incluindo, pelo menos, informações sobre:
a) a forma, a duração e a finalidade específica da transferência internacional;
b) o país de destino dos dados transferidos;
c) a identificação e os contatos da Parte Designada;
d) o uso compartilhado de dados pelas Partes e a finalidade;
e) as responsabilidades dos agentes que realizarão o tratamento;
f) os direitos do Titular e os meios para o seu exercício, incluindo canal de fácil acesso disponibilizado para atendimento às suas solicitações e o direito de peticionar contra o Controlador perante a ANPD; e
g) Transferências Posteriores, incluindo as relativas aos destinatários e à finalidade da transferência.
14.2. O documento referido no item 14.1. poderá ser disponibilizado em página específica ou integrado, de forma destacada e de fácil acesso, à Política de Privacidade ou documento equivalente.
14.3. A pedido, as Partes devem disponibilizar, gratuitamente, ao Titular uma cópia destas Cláusulas, observados os segredos comercial e industrial.
14.4. Todas as informações disponibilizadas aos titulares, nos termos destas Cláusulas, deverão ser redigidas na língua portuguesa.
CLÁUSULA 15. Direitos do Titular
15.1. O Titular tem direito a obter da Parte Designada, em relação aos Dados Pessoais objeto da Transferência Internacional de Dados regida por estas Cláusulas, a qualquer momento, e mediante requisição, nos termos da Legislação Nacional:
a) confirmação da existência de tratamento;
b) acesso aos dados;
c) correção de dados incompletos, inexatos ou desatualizados;
d) anonimização, bloqueio ou eliminação de dados desnecessários, excessivos ou tratados em desconformidade com estas Cláusulas e com o disposto na Legislação Nacional;
e) portabilidade dos dados a outro fornecedor de serviço ou produto, mediante requisição expressa, de acordo com a regulamentação da ANPD, observados os segredos comercial e industrial;
f) eliminação dos Dados Pessoais tratados com o consentimento do Titular, exceto nas hipóteses previstas na Cláusula 20;
g) informação das entidades públicas e privadas com as quais as Partes realizaram uso compartilhado de dados;
h) informação sobre a possibilidade de não fornecer consentimento e sobre as consequências da negativa;
i) revogação do consentimento mediante procedimento gratuito e facilitado, ratificados os tratamentos realizados antes do requerimento de eliminação;
j) revisão de decisões tomadas unicamente com base em tratamento automatizado de dados pessoais que afetem seus interesses, incluídas as decisões destinadas a definir o seu perfil pessoal, profissional, de consumo e de crédito ou os aspectos de sua personalidade; e
k) informações a respeito dos critérios e dos procedimentos utilizados para a decisão automatizada, observados os segredos comercial e industrial.
15.2. O titular pode opor-se a tratamento realizado com fundamento em uma das hipóteses de dispensa de consentimento, em caso de descumprimento ao disposto nestas Cláusulas ou na Legislação Nacional.
15.3. O prazo para atendimento às solicitações previstas nesta Cláusula e no item 14.3. é de 15 (quinze) dias contados da data do requerimento do titular, ressalvada a hipótese de prazo distinto estabelecido em regulamentação específica da ANPD.
15.4. Caso a solicitação do Titular seja direcionada à Parte não designada como responsável pelas obrigações previstas nesta Cláusula ou no item 14.3., a Parte deverá:
a) informar ao Titular o canal de atendimento disponibilizado pela Parte Designada; ou
[dispositivo revogado — omitido]
b) encaminhar a solicitação para a Parte Designada o quanto antes, a fim de viabilizar a resposta no prazo previsto no item 15.3. (Redação dada pela Retificação publicada no DOU de 18/08/2025)
15.5. As Partes deverão informar, imediatamente, aos Agentes de Tratamento com os quais tenham realizado uso compartilhado de dados a correção, a eliminação, a anonimização ou o bloqueio dos dados, para que repitam idêntico procedimento, exceto nos casos em que esta comunicação seja comprovadamente impossível ou implique esforço desproporcional.
15.6. As Partes devem promover assistência mútua com a finalidade de atender às solicitações dos Titulares.
CLÁUSULA 16. Comunicação de Incidente de Segurança
16.1. A Parte Designada deverá comunicar à ANPD e aos Titulares, no prazo de 3 (três) dias úteis, a ocorrência de incidente de segurança que possa acarretar risco ou dano relevante para os Titulares, observado o disposto na Legislação Nacional.
16.2. O Importador deve manter o registro de incidentes de segurança nos termos da Legislação Nacional.
CLÁUSULA 17. Responsabilidade e ressarcimento de danos
17.1. A Parte que, em razão do exercício da atividade de tratamento de Dados Pessoais, causar dano patrimonial, moral, individual ou coletivo, em violação às disposições destas Cláusulas e da Legislação Nacional, é obrigada a repará-lo.
17.2. O Titular poderá pleitear a reparação do dano causado por quaisquer das Partes em razão da violação destas Cláusulas.
17.3. A defesa dos interesses e dos direitos dos Titulares poderá ser pleiteada em juízo, individual ou coletivamente, na forma do disposto na legislação pertinente acerca dos instrumentos de tutela individual e coletiva.
17.4. A Parte que atuar como Operador responde, solidariamente, pelos danos causados pelo tratamento quando descumprir as presentes Cláusulas ou quando não tiver seguido as instruções lícitas do Controlador, ressalvado o disposto no item 17.6.
17.5. Os Controladores que estiverem diretamente envolvidos no tratamento do qual decorreram danos ao Titular respondem, solidariamente, por estes danos, ressalvado o disposto no item 17.6.
17.6. Não caberá responsabilização das Partes se comprovado que:
a) não realizaram o tratamento de Dados Pessoais que lhes é atribuído;
b) embora tenham realizado o tratamento de Dados Pessoais que lhes é atribuído, não houve violação a estas Cláusulas ou à Legislação Nacional; ou
c) o dano é decorrente de culpa exclusiva do Titular ou de terceiro que não seja destinatário de Transferência Posterior ou subcontratado pelas Partes.
17.7. Nos termos da Legislação Nacional, o juiz poderá inverter o ônus da prova a favor do Titular quando, a seu juízo, for verossímil a alegação, houver hipossuficiência para fins de produção de prova ou quando a produção de prova pelo Titular resultar-lhe excessivamente onerosa.
17.8. As ações de reparação por danos coletivos que tenham por objeto a responsabilização nos termos desta Cláusula podem ser exercidas coletivamente em juízo, observado o disposto na legislação pertinente.
17.9. A Parte que reparar o dano ao titular tem direito de regresso contra os demais responsáveis, na medida de sua participação no evento danoso.
```

## [ANPD3L-R19-A2-C18-24] Res. CD/ANPD 19/2024, Anexo II, Seção II, Cláusulas 18 a 24 (transferência posterior, solicitação de acesso, término, segurança, lei do destino, descumprimento, foro)

Fonte: `anpd-res-cd-19-2024-gov-br-retificada`. Localizador: texto limpo de `https://www.gov.br/anpd/pt-br/acesso-a-informacao/institucional/atos-normativos/regulamentacoes_anpd/resolucao-cd-anpd-no-19-de-23-de-agosto-de-2024` — linhas 432–471.

sha256: `20e22ce6447bf21032eda0f1d0179b63f60c23f53526203dc2ad4177e8e3f987`

```text
CLÁUSULA 18. Salvaguardas para Transferência Posterior
18.1. O Importador somente poderá realizar Transferências Posteriores dos Dados Pessoais objeto da Transferência Internacional de Dados regida por estas Cláusulas se expressamente autorizado, conforme as hipóteses e condições descritas na Cláusula 3.
18.2. Em qualquer caso, o Importador:
a) deve assegurar que a finalidade da Transferência Posterior é compatível com as finalidades específicas descritas na Cláusula 2;
b) deve garantir, mediante instrumento contratual escrito, que as salvaguardas previstas nestas Cláusulas serão observadas pelo terceiro destinatário da Transferência Posterior; e
c) para fins destas Cláusulas, e em relação aos Dados Pessoais transferidos, será considerado o responsável por eventuais irregularidades praticadas pelo terceiro destinatário da Transferência Posterior.
18.3. A Transferência Posterior poderá, ainda, ser realizada com base em outro mecanismo válido de Transferência Internacional de Dados previsto na Legislação Nacional, independentemente da autorização de que trata a Cláusula 3.
CLÁUSULA 19. Notificação de Solicitação de Acesso
19.1. O Importador notificará o Exportador e o Titular sobre Solicitação de Acesso relacionada aos Dados Pessoais objeto da Transferência Internacional de Dados regida por estas Cláusulas, ressalvada a hipótese de vedação de notificação pela lei do país de tratamento dos dados.
19.2. O Importador adotará as medidas legais cabíveis, incluindo ações judiciais, para proteger os direitos dos Titulares sempre que houver fundamento jurídico adequado para questionar a legalidade da Solicitação de Acesso e, se for o caso, a vedação de realizar a notificação referida no item 19.1.
19.3. Para atender às solicitações da ANPD e do Exportador, o Importador deve manter registro de Solicitações de Acesso, incluindo data, solicitante, finalidade da solicitação, tipo de dados solicitados, número de solicitações recebidas e medidas legais adotadas.
CLÁUSULA 20. Término do tratamento e eliminação dos dados
20.1. As Partes deverão eliminar os Dados Pessoais objeto da Transferência Internacional de Dados regida por estas Cláusulas após o término do tratamento, no âmbito e nos limites técnicos das atividades, autorizada a conservação apenas para as seguintes finalidades:
a) cumprimento de obrigação legal ou regulatória pelo Controlador;
b) estudo por Órgão de Pesquisa, garantida, sempre que possível, a anonimização dos Dados Pessoais;
c) transferência a terceiro, desde que respeitados os requisitos previstos nestas Cláusulas e na Legislação Nacional; e
d) uso exclusivo do Controlador, vedado seu acesso por terceiro, e desde que anonimizados os dados.
20.2. Para fins desta Cláusula, considera-se que o término do tratamento ocorrerá quando:
a) alcançada a finalidade prevista nestas Cláusulas;
b) os Dados Pessoais deixarem de ser necessários ou pertinentes ao alcance da finalidade específica prevista nestas Cláusulas;
c) finalizado o período de tratamento;
d) atendida solicitação do Titular; e
e) determinado pela ANPD, quando houver violação ao disposto nestas Cláusulas ou na Legislação Nacional.
CLÁUSULA 21. Segurança no tratamento dos dados
21.1. As Partes deverão adotar medidas de segurança que garantam proteção aos Dados Pessoais objeto da Transferência Internacional de Dados regida por estas Cláusulas, mesmo após o seu término.
21.2. As Partes informarão, na Seção III, as Medidas de Segurança adotadas, considerando a natureza das informações tratadas, as características específicas e a finalidade do tratamento, o estado atual da tecnologia e os riscos para os direitos dos Titulares, especialmente no caso de dados pessoais sensíveis e de crianças e adolescentes.
21.3. As Partes deverão realizar os esforços necessários para adotar medidas periódicas de avaliação e revisão visando manter nível de segurança adequado às características do tratamento de dados.
CLÁUSULA 22. Legislação do país destinatário dos dados
22.1. O Importador declara que não identificou leis ou práticas administrativas do país destinatário dos Dados Pessoais que o impeçam de cumprir as obrigações assumidas nestas Cláusulas.
22.2. Sobrevindo alteração normativa que altere esta situação, o Importador notificará, de imediato, o Exportador para avaliação da continuidade do contrato.
CLÁUSULA 23. Descumprimento das Cláusulas pelo Importador
23.1. Havendo violação das salvaguardas e garantias previstas nestas Cláusulas ou a impossibilidade de seu cumprimento pelo Importador, o Exportador deverá ser comunicado imediatamente, ressalvado o disposto no item 19.1.
23.2. Recebida a comunicação de que trata o item 23.1 ou verificado o descumprimento destas Cláusulas pelo Importador, o Exportador adotará as providências pertinentes para assegurar a proteção aos direitos dos Titulares e a conformidade da Transferência Internacional de Dados com a Legislação Nacional e as presentes Cláusulas, podendo, conforme o caso:
a) suspender a Transferência Internacional de Dados;
b) solicitar a devolução dos Dados Pessoais, sua transferência a um terceiro, ou a sua eliminação; e
c) rescindir o contrato.
CLÁUSULA 24. Eleição do foro e jurisdição
24.1. Aplica-se a estas Cláusulas a legislação brasileira e qualquer controvérsia entre as Partes decorrente destas Cláusulas será resolvida perante os tribunais competentes do Brasil, observado, se for o caso, o foro eleito pelas Partes na Seção IV.
24.2. Os Titulares podem ajuizar ações judiciais contra o Exportador ou o Importador, conforme sua escolha, perante os tribunais competentes no Brasil, inclusive naqueles localizados no local de sua residência.
24.3. Em comum acordo, as Partes poderão se valer da arbitragem para resolver os conflitos decorrentes destas Cláusulas, desde que realizada no Brasil e conforme as disposições da Lei de Arbitragem.
```

## [ANPD3L-R19-A2-S3-S4] Res. CD/ANPD 19/2024, Anexo II, Seções III e IV (medidas de segurança; cláusulas adicionais e anexos; fecho)

Fonte: `anpd-res-cd-19-2024-gov-br-retificada`. Localizador: texto limpo de `https://www.gov.br/anpd/pt-br/acesso-a-informacao/institucional/atos-normativos/regulamentacoes_anpd/resolucao-cd-anpd-no-19-de-23-de-agosto-de-2024` — linhas 472–481.

sha256: `f842f6741074f4c0c81ab6fd2b39834134d07031527f9826efa0dd71610b9e13`

```text
Seção III - Medidas De Segurança
(OBS: Nesta Seção deve ser incluído o detalhamento das medidas de segurança adotadas, incluindo medidas específicas para a proteção de dados sensíveis e de crianças e adolescentes. As medidas podem contemplar, entre outros, os seguintes aspectos, conforme indicados no quadro abaixo).

Seção III - Medidas De Segurança(i) governança e supervisão de processos internos:
(ii) medidas de segurança técnicas e administrativas, incluindo medidas para garantir a segurança das operações realizadas, tais como a coleta, a transmissão e o armazenamento dos dados:

Seção IV - Cláusulas Adicionais e Anexos
(OBS: Nesta Seção, de preenchimento e de divulgação facultativos, podem ser incluídas Cláusulas Adicionais e Anexos, a critério das Partes, para disciplinar, entre outras, questões de natureza comercial, rescisão contratual, prazo de vigência e eleição de foro no Brasil. Conforme previsto no Regulamento de Transferência Internacional de Dados, as Cláusulas estabelecidas nesta Seção ou em Contratos Coligados não poderão excluir, modificar ou contrariar, direta ou indiretamente, as Cláusulas previstas nas Seções I, II e III).
Local, data.
Assinaturas.
```

## [ANPD3L-COOKIES-VERSAO] Guia orientativo da ANPD "Cookies e proteção de dados pessoais": título, versão e data

Fonte: `anpd-guia-cookies-2022`. Localizador: texto extraído por `pdftotext` do PDF em `https://www.gov.br/anpd/pt-br/centrais-de-conteudo/materiais-educativos-e-publicacoes/guia-orientativo-cookies-e-protecao-de-dados-pessoais.pdf/@@download/file` — linhas 7–10, 40–41 (antes da retirada de cabeçalho/rodapé de página).

sha256: `95d5de48eb4800f06535d2bffe802a33635d05c48133fd24bdb4f7fccd2de037`

Nota: a página gov.br do arquivo registra "Modificado em 23/01/2025 10:46"; os metadados do PDF registram criação e modificação em 14/10/2022. O PDF se identifica como "Versão 1.0". Esta captura não pesquisou se há versão posterior.

```text
guia orientativo

Cookies e proteção de
dados pessoais
[…]
Versão 1.0
Publicação digital (outubro / 2022)
```

## [ANPD3L-COOKIES-HL] Guia de cookies, "Aspectos Gerais", item (v) Hipóteses legais (p. 17)

Fonte: `anpd-guia-cookies-2022`. Localizador: texto extraído por `pdftotext` do PDF em `https://www.gov.br/anpd/pt-br/centrais-de-conteudo/materiais-educativos-e-publicacoes/guia-orientativo-cookies-e-protecao-de-dados-pessoais.pdf/@@download/file` — linhas 335–339 (antes da retirada de cabeçalho/rodapé de página).

sha256: `f336a1ae60c0c367f28e6890125227dd41e350a7bd58655adeb8ed7e76e357a1`

```text
(v) Hipóteses legais: são as hipóteses em que a lgpd autoriza o tratamento de dados pessoais, conforme o disposto no art. 7º e no
art. 11, este no caso de dados pessoais sensíveis. Assim, sempre
que envolvido tratamento de dados pessoais, a utilização de
cookies somente poderá ser admitida se identificada a hipótese
legal aplicável pelo controlador e atendidos os requisitos específicos estipulados para esse fim na lgpd.
```

## [ANPD3L-COOKIES-CONS] Guia de cookies, "Hipóteses legais": abertura e consentimento (pp. 17–20)

Fonte: `anpd-guia-cookies-2022`. Localizador: texto extraído por `pdftotext` do PDF em `https://www.gov.br/anpd/pt-br/centrais-de-conteudo/materiais-educativos-e-publicacoes/guia-orientativo-cookies-e-protecao-de-dados-pessoais.pdf/@@download/file` — linhas 341–424 (antes da retirada de cabeçalho/rodapé de página).

sha256: `b66a815d79dfa5c0e051b6bbc8c94d6c0423e917dbcc605aa1fa452ce1af4cfb`

```text
Hipóteses legais[ 4 ]
A seguir serão apresentadas duas hipóteses legais, o consentimento e
o legitimo interesse, as mais usuais e relevantes para o contexto analisado. A indicação efetuada neste Guia não é exaustiva, uma vez que
a coleta de dados pessoais por meio de cookies pode, eventualmente,
se amparar em outras hipóteses legais, desde que atendidos os requisitos previstos na lgpd.
consentimento
De acordo com a lgpd, o consentimento deve ser livre, informado e
inequívoco. O consentimento será livre quando o titular realmente
tiver o poder de escolha sobre o tratamento de seus dados pessoais.

Ou seja, deve lhe ser assegurada a possibilidade efetiva de aceitar ou
recusar a utilização de cookies, sem consequências negativas ou intervenções do controlador que possam vir a viciar ou a prejudicar a sua
manifestação de vontade.
Em razão desse requisito legal, não é compatível com a lgpd a obtenção “forçada” do consentimento, isto é, de forma condicionada ao
aceite integral das condições de uso de cookies, sem o fornecimento de
opções efetivas ao titular. Deve-se ressalvar, no entanto, que a regularidade do consentimento deve ser verificada de acordo com o contexto e as peculiaridades de cada caso concreto, considerando-se, em
particular, se é fornecida ao titular uma alternativa real e satisfatória.
O consentimento também deve ser informado, exigindo-se, para
tanto, que sejam apresentadas ao titular todas as informações necessárias para uma avaliação e uma tomada de decisão consciente a
respeito da autorização ou recusa para a utilização de cookies. Assim,
como já mencionado, devem ser fornecidas aos titulares informações
claras, precisas e facilmente acessíveis sobre a forma do tratamento,
o período de retenção e as finalidades específicas que justificam a coleta de seus dados por meio de cookies, entre outras informações indicadas no art. 9º da lgpd.
É importante ressaltar que essas informações se vinculam à própria
utilização do dado pessoal. Qualquer alteração das premissas adotadas para a obtenção do consentimento macula a hipótese legal
adotada, exigindo novo consentimento pelo titular de dados, ou a
utilização de outra hipótese legal, de acordo com as novas premissas
estabelecidas e com todas as informações necessárias para tanto.
Além disso, o consentimento deve ser inequívoco, o que demanda a
obtenção de uma manifestação de vontade clara e positiva do titular
dos dados, não se admitindo a sua inferência ou a obtenção de forma

tácita ou a partir de uma omissão do titular. Por isso, dada a incompatibilidade com as disposições da lgpd, não é recomendável a utilização de banners de cookies com opções de autorização pré-selecionadas ou a adoção de mecanismos de consentimento tácito, como
a pressuposição de que, ao continuar a navegação em uma página,
o titular forneceria consentimento para o tratamento de seus dados
pessoais.
No caso de coleta de dados sensíveis com base no consentimento do
titular, é necessário que, adicionalmente, o consentimento seja obtido por forma específica e destacada, conforme preconiza o art. 11, i,
da lgpd. Em relação à forma destacada, recomenda-se que a autorização para tratamento de dados sensíveis conste separadamente do
texto principal ou, ainda, que se usem recursos para evidenciá-lo, de
modo a indicar quais dados sensíveis serão coletados e para qual finalidade específica serão utilizados pelo agente de tratamento.
Em qualquer caso, deve ser disponibilizado ao titular um procedimento simplificado e gratuito para revogar o consentimento fornecido para a utilização de cookies, de forma similar ao procedimento
utilizado para obtê-lo. Nesse sentido, o art. 8º, § 5º, da lgpd, estabelece que “o consentimento pode ser revogado a qualquer momento mediante
manifestação expressa do titular, por procedimento gratuito e facilitado”. O
ato de revogação é unilateral e deverá ser atendido sempre que requisitado pelo titular.
Importante observar que compete ao controlador a responsabilidade
de comprovar que o consentimento foi obtido com respeito a todos os
parâmetros estabelecidos pela lgpd. Dessa forma, é uma boa prática
o registro e a documentação de todos os requisitos necessários para a
comprovação de que o consentimento não possui vícios e contou com
todas as informações necessárias.

Diante do que estabelecem esses requisitos legais, pode-se afirmar
que não é apropriado utilizar a hipótese legal do consentimento nas
hipóteses de cookies estritamente necessários. Isso porque, nestes
casos, a coleta da informação é essencial para assegurar o funcionamento da página eletrônica ou para a adequada prestação do serviço, de modo que não há condições efetivas para uma manifestação
livre do titular ou, ainda, para que se assegure a este a real possibilidade de escolher entre aceitar ou recusar o tratamento de seus dados pessoais.
De forma similar, o consentimento não será a hipótese legal apropriada se o tratamento for estritamente necessário para o cumprimento de
obrigações e atribuições legais, notadamente quando demonstrada a
existência de um vínculo claro e direto entre a coleta de dados por meio
de cookies e o exercício de prerrogativas estatais típicas por entidades
e órgãos públicos[ 5 ]. Em qualquer hipótese, devem ser fornecidas aos
titulares as informações pertinentes, em conformidade com os princípios da transparência e do livre acesso, além de assegurado o exercício
de seus direitos e observadas as disposições do art. 23 da lgpd.
Assim, embora inexista hierarquia ou preferência entre as hipóteses legais previstas na lgpd, o recurso ao consentimento será mais
apropriado quando a coleta de informações for realizada por cookies
não necessários. Nessas situações, a coleta da informação não é essencial para a adequada prestação do serviço ou para assegurar o
funcionamento da página eletrônica. De fato, como visto anteriormente, cookies não necessários estão relacionados com funcionalidades não essenciais do serviço ou da página eletrônica, a exemplo
da exibição de anúncios ou da formação de perfis comportamentais.
Nesses casos, torna-se possível fornecer ao usuário uma opção genuína entre aceitar ou recusar a instalação de cookies para uma ou mais
dessas finalidades, pressuposto central para a utilização da hipótese
legal do consentimento.
```

## [ANPD3L-COOKIES-LI] Guia de cookies, "Hipóteses legais": legítimo interesse (pp. 23–25)

Fonte: `anpd-guia-cookies-2022`. Localizador: texto extraído por `pdftotext` do PDF em `https://www.gov.br/anpd/pt-br/centrais-de-conteudo/materiais-educativos-e-publicacoes/guia-orientativo-cookies-e-protecao-de-dados-pessoais.pdf/@@download/file` — linhas 484–549 (antes da retirada de cabeçalho/rodapé de página).

sha256: `a3dc278287ff415cc6780a2726f77b38975b08ef6b935391235e7588a92c5e83`

```text
legítimo interesse
A hipótese legal do legítimo interesse autoriza o tratamento de dados
pessoais de natureza não sensível quando necessário ao atendimento
de interesses legítimos do controlador ou de terceiros, “exceto no caso
de prevalecerem direitos e liberdades fundamentais do titular que exijam a
proteção dos dados pessoais” (art. 7º, ix).
O interesse do controlador será considerado legítimo quando for
compatível com o ordenamento jurídico e não contrariar as disposições da lei. Além disso, o controlador deverá avaliar, em momento
anterior à realização de qualquer operação baseada em legítimo interesse, se, no caso, prevalecem direitos e liberdades fundamentais
do titular que exijam a proteção dos dados pessoais e, portanto, impeçam a realização do tratamento. Como em qualquer operação de
tratamento de dados, é importante também comprovar a adoção de
medidas técnicas e administrativas capazes de salvaguardar a operação e os dados utilizados, garantindo a segurança do tratamento e a
transparência para os titulares.
A avaliação a ser realizada pelo controlador acerca das legítimas expectativas do titular de dados deve considerar o respeito aos seus
direitos e liberdades individuais. Para ser adequado o tratamento, o
controlador deve se certificar de que a utilização pretendida, além
de não ferir direitos e liberdades, poderia ser razoavelmente prevista pelo titular de dados, isto é, que seria possível ao titular supor que
aquela utilização poderia ocorrer com seus dados pessoais a partir
das informações prestadas pelo controlador no momento da coleta
do dado pessoal. Além disso, deve-se considerar que, conforme o art.
18, § 2º, o titular tem o direito de se opor ao tratamento realizado com
base no legítimo interesse, em caso de descumprimento dos requisitos previstos na lgpd.

De forma geral, o legítimo interesse poderá ser a hipótese legal apropriada nos casos de utilização de cookies estritamente necessários,
isto é, aqueles que são essenciais para a adequada prestação do serviço ou para o funcionamento da página eletrônica, o que pode ser
entendido como uma forma de apoio e promoção de atividades do
controlador e de prestação de serviços que beneficiem o titular (art.
10, i e ii, lgpd). A análise, no entanto, deve considerar as peculiaridades de cada situação concreta e avaliar se, no caso, não prevalecem os
direitos e interesses dos titulares, observados os demais requisitos
legais aplicáveis.
No caso do setor público, a hipótese legal do legítimo interesse poderá amparar a coleta dos dados pessoais por meio de cookies, salvo,
conforme orientação já firmada pela anpd, em caso de vínculo claro e direto entre o tratamento e o exercício de prerrogativas estatais
típicas, que decorrem do cumprimento de obrigações e atribuições
legais[ 6 ].Em qualquer hipótese, devem ser fornecidas aos titulares
as informações pertinentes, em conformidade com os princípios da
transparência e do livre acesso, além de assegurado o exercício de
seus direitos e observadas as disposições do art. 23 da lgpd.
A utilização de cookies para fins de medição de audiência (cookies analíticos ou de medição) pode ser amparada na hipótese legal do legítimo interesse em determinados contextos, observados, em qualquer
hipótese, os requisitos previstos na lgpd. Em particular, é razoável supor que a medição de audiência constituirá um interesse legítimo do
controlador, bem como que os riscos à privacidade de titulares serão
de menor monta quando o tratamento se limitar à finalidade específica de identificação de padrões e tendências, com base em dados
agregados e sem a combinação com outros mecanismos de rastreamento ou sem a formação de perfis de usuários.

Por outro lado, é possível afirmar que o legítimo interesse dificilmente
será a hipótese legal mais apropriada nas hipóteses em que os dados
coletados por meio de cookies são utilizados para fins de publicidade.
É o que se verifica, em especial, se a coleta é efetuada por meio de
cookies de terceiros e quando associada a práticas que podem implicar
maior risco à privacidade e aos direitos fundamentais dos titulares,
como as de formação de perfis comportamentais, análise e previsão
de preferências e comportamentos ou, ainda, rastreamento do usuário por páginas eletrônicas distintas.
Em tais contextos, o teste de balanceamento previsto na lgpd conduzirá, em geral, à conclusão de que devem prevalecer direitos e liberdades fundamentais dos titulares sobre os interesses legítimos
do controlador ou de terceiro. Assim, o consentimento pode ser considerado uma hipótese legal mais apropriada para o uso de cookies
de publicidade, observados os requisitos legais aplicáveis e as circunstâncias do caso concreto. Essa conclusão é reforçada ao se considerar
que os cookies de publicidade são classificados como não necessários
e que é de suma importância respeitar as legítimas expectativas dos
titulares, conferindo-lhes maior controle sobre o uso de seus dados
pessoais no ambiente digital.
```

## [ANPD3L-COOKIES-NOTAS] Guia de cookies, notas 4 a 6 (fontes das orientações sobre consentimento e legítimo interesse; Poder Público) (pp. 38–39)

Fonte: `anpd-guia-cookies-2022`. Localizador: texto extraído por `pdftotext` do PDF em `https://www.gov.br/anpd/pt-br/centrais-de-conteudo/materiais-educativos-e-publicacoes/guia-orientativo-cookies-e-protecao-de-dados-pessoais.pdf/@@download/file` — linhas 874–894 (antes da retirada de cabeçalho/rodapé de página).

sha256: `d78b3e54e4dd61cef3652cb25722c3afe4a6c21bb5d0e17e015e3481a616d052`

```text
[ 4 ] As orientações aqui apresentadas sobre as bases legais do consentimento e do legítimo interesse seguem, com adaptações, o exposto no Guia Orientativo – Aplicação da
lgpd por agentes de tratamento no contexto eleitoral, p. 21–25; e 27–29. Disponível em: https://www.gov.br/anpd/pt-br/documentos-e-publicacoes/guia_lgpd_final.pdf. ▶ p.17
[ 5 ] Vale ressaltar que “o consentimento poderá eventualmente ser admitido como base
legal para o tratamento de dados pessoais pelo Poder Público. Para tanto, a utilização
dos dados não deve ser compulsória e a atuação estatal não deve, em regra, basear-se
no exercício de prerrogativas estatais típicas, que decorrem do cumprimento de obrigações e atribuições legais”. Guia Orientativo – Tratamento de dados pessoais pelo Poder
Público, jan. 2022, p. 7. Disponível em: https://www.gov.br/anpd/pt-br/documentos-e-publicacoes/guia-poder-publico-anpd-versao-final.pdf. ▶ p.20
[ 6 ] Vale ressaltar que “o legítimo interesse poderá eventualmente ser admitido como
base legal para o tratamento de dados pessoais pelo Poder Público. Para tanto, a uti-

lização dos dados não deve ser compulsória ou, ainda, a atuação estatal não deve se
basear no exercício de prerrogativas estatais típicas, que decorrem do cumprimento
de obrigações e atribuições legais. Nesse contexto, torna-se efetivamente possível
realizar uma ponderação entre, de um lado, os interesses legítimos do controlador
ou de terceiro e, de outro, as expectativas legítimas e os direitos dos titulares.” Guia
Orientativo – Tratamento de dados pessoais pelo Poder Público, jan. 2022, p. 8. Disponível
em: https://www.gov.br/anpd/pt-br/documentos-e-publicacoes/guia-poder-publico-anpd-versao-final.pdf. ▶ p.24
```
