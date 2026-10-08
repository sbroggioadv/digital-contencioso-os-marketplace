# Complemento B-5 (v0.3) — CPC arts. 513 e 1.007; CF art. 109, I e VIII; Lei 9.099/1995 arts. 9º, 20 e 51 (captura W8)

- pacote: fontes-complemento-b5-w8-2026-10-07
- capturado_em: 2026-10-07T12:59Z
- origem: HTML compilado do Planalto baixado por `curl` (HTTP 200), decodificado como cp1252 (a página não declara charset; a ordem utf-8→latin-1 do script deixaria bytes 0x80–0x9F como caracteres de controle) e limpo pela função `limpar` de `PLAYBOOK/templates/capturar-planalto.py` (texto riscado removido e substituído pelo marcador `[dispositivo revogado — omitido]`); numeração de linha do texto limpo cujo hash é `sha256_corpo` (SHA-256 de `limpar(html) + "\n"`).
- sha256 de bloco: SHA-256 do excerto em UTF-8, exatamente como está entre as cercas, sem quebra de linha final.
- hashes de página: `sha256_raw` registra o HTML no momento da captura e pode não se reproduzir; a âncora verificável é o `sha256` de cada bloco e o `sha256_corpo`.
- regra: somente excertos literais; rótulos são do plugin e não são texto normativo; anotações como "(Redação dada pela ...)", "(Incluído pela ...)" e "Vigência" são da própria página do Planalto; o marcador `[dispositivo revogado — omitido]` é da limpeza, não do texto legal; nada aqui vem de memória.

## Fontes

### Lei 13.105/2015 (CPC)

- id: lei-13105-cpc
- url: https://www.planalto.gov.br/ccivil_03/_ato2015-2018/2015/lei/l13105.htm
- capturado_em: 2026-10-07T12:59Z
- sha256_raw: c300f12e8d24fddffef5092939ab024edbadebaed1eed8cb4fbd9a13099375bc
- sha256_corpo: 62ae1707273d0c45dac82fd4a53c5b7ee58cd5d88fc0c37a57609c7b37fd0751

### Constituição Federal de 1988

- id: cf-1988
- url: https://www.planalto.gov.br/ccivil_03/constituicao/constituicao.htm
- capturado_em: 2026-10-07T12:59Z
- sha256_raw: f5602acdc967d66ca5c054aa2b245a3c8569cf419bc5cab140e62285009f7155
- sha256_corpo: 834a0796b61f6bbad97d14dd038c64788a799142d1e3f11702a489319a7e2d2e

### Lei 9.099/1995 (Juizados Especiais)

- id: lei-9099-jec-v03
- url: https://www.planalto.gov.br/ccivil_03/leis/l9099.htm
- capturado_em: 2026-10-07T12:59Z
- sha256_raw: ed4dcaa651ba33a4ab8f1b025687ce16009b1963ccc959ad846ed53603c5e924
- sha256_corpo: 209cde5a579263a759549a17fe705a41b14dc352f6875bc09c264239c4d1f559

Nota de id: `lei-9099-jec-v03` é o mesmo id da captura W3 (`lei-9099-v03-recursos-execucao.md`); o `sha256_corpo` desta captura é idêntico ao registrado lá (`209cde5a…1f559`), logo os blocos JEC3C- vêm do mesmo texto limpo. `lei-13105-cpc` e `cf-1988` têm `sha256_corpo` diferente das capturas anteriores porque a página foi baixada de novo; os blocos valem pelos próprios hashes.

---

## [CPC3C-513] Art. 513 (cumprimento de sentença: regras gerais, requerimento do exequente para pagar quantia, intimação do devedor, prazo de 1 ano, fiador e coobrigado)

Fonte: `lei-13105-cpc`. Localizador: texto limpo de `https://www.planalto.gov.br/ccivil_03/_ato2015-2018/2015/lei/l13105.htm` — linhas 4802–4828.

sha256: `3ba013278b9f7b8fd32aa4e9b3bca3be242bf860b3b8e6c80e78b8fbd5c627a1`

```text
Art. 513. O cumprimento da sentença será feito segundo as regras deste Título, observando-se, no que couber e conforme a natureza da obrigação, o disposto no Livro II da Parte Especial deste Código.

§ 1º O cumprimento da sentença que reconhece o dever de pagar quantia, provisório ou definitivo, far-se-á a requerimento do exequente.

§ 2º O devedor será intimado para cumprir a sentença:

I - pelo Diário da Justiça, na pessoa de seu advogado constituído nos autos;

II - por carta com aviso de recebimento, quando representado pela Defensoria Pública ou quando não tiver procurador constituído nos autos, ressalvada a hipótese do inciso IV;

III - por meio eletrônico, quando, no caso do

§ 1º do art. 246, não tiver procurador constituído nos autos

IV - por edital, quando, citado na forma do

art. 256, tiver sido revel na fase de conhecimento.

§ 3º Na hipótese do § 2º, incisos II e III, considera-se realizada a intimação quando o devedor houver mudado de endereço sem prévia comunicação ao juízo, observado o disposto no parágrafo único do art. 274.

§ 4º Se o requerimento a que alude o § 1º for formulado após 1 (um) ano do trânsito em julgado da sentença, a intimação será feita na pessoa do devedor, por meio de carta com aviso de recebimento encaminhada ao endereço constante dos autos, observado o disposto no

parágrafo único do art. 274

e no § 3º deste artigo.

§ 5º O cumprimento da sentença não poderá ser promovido em face do fiador, do coobrigado ou do corresponsável que não tiver participado da fase de conhecimento.
```

## [CPC3C-1007] Art. 1.007 (preparo do recurso, porte de remessa e retorno, dispensas, insuficiência, recolhimento em dobro, justo impedimento, equívoco na guia)

Fonte: `lei-13105-cpc`. Localizador: texto limpo de `https://www.planalto.gov.br/ccivil_03/_ato2015-2018/2015/lei/l13105.htm` — linhas 9751–9765.

sha256: `0b207b1e2fda06521c89b4eae3cc6305d7c25c7599131652d890b3a039f0a599`

```text
Art. 1.007. No ato de interposição do recurso, o recorrente comprovará, quando exigido pela legislação pertinente, o respectivo preparo, inclusive porte de remessa e de retorno, sob pena de deserção.

§ 1º São dispensados de preparo, inclusive porte de remessa e de retorno, os recursos interpostos pelo Ministério Público, pela União, pelo Distrito Federal, pelos Estados, pelos Municípios, e respectivas autarquias, e pelos que gozam de isenção legal.

§ 2º A insuficiência no valor do preparo, inclusive porte de remessa e de retorno, implicará deserção se o recorrente, intimado na pessoa de seu advogado, não vier a supri-lo no prazo de 5 (cinco) dias.

§ 3º É dispensado o recolhimento do porte de remessa e de retorno no processo em autos eletrônicos.

§ 4º O recorrente que não comprovar, no ato de interposição do recurso, o recolhimento do preparo, inclusive porte de remessa e de retorno, será intimado, na pessoa de seu advogado, para realizar o recolhimento em dobro, sob pena de deserção.

§ 5º É vedada a complementação se houver insuficiência parcial do preparo, inclusive porte de remessa e de retorno, no recolhimento realizado na forma do § 4º.

§ 6º Provando o recorrente justo impedimento, o relator relevará a pena de deserção, por decisão irrecorrível, fixando-lhe prazo de 5 (cinco) dias para efetuar o preparo.

§ 7º O equívoco no preenchimento da guia de custas não implicará a aplicação da pena de deserção, cabendo ao relator, na hipótese de dúvida quanto ao recolhimento, intimar o recorrente para sanar o vício no prazo de 5 (cinco) dias.
```

## [CF3C-109-I] Art. 109, caput e inciso I (competência dos juízes federais: causas em que a União, autarquia ou empresa pública federal forem interessadas)

Fonte: `cf-1988`. Localizador: texto limpo de `https://www.planalto.gov.br/ccivil_03/constituicao/constituicao.htm` — linhas 6438–6444.

sha256: `74333d6ed2c317f2549a9972fa6d02fd10e1a15644c6440f139f21a500f0f968`

```text
Art. 109. Aos juízes federais compete processar e
julgar:

I - as causas em que a União, entidade autárquica ou empresa pública federal
forem interessadas na condição de autoras, rés, assistentes ou oponentes,
exceto as de falência, as de acidentes de trabalho e as sujeitas à Justiça
Eleitoral e à Justiça do Trabalho;
```

Nota da captura: excerto limitado ao pedido (caput + inciso I; inciso VIII). Os demais incisos e parágrafos do art. 109 não estão neste arquivo.

## [CF3C-109-VIII] Art. 109, inciso VIII (mandados de segurança e habeas data contra ato de autoridade federal)

Fonte: `cf-1988`. Localizador: texto limpo de `https://www.planalto.gov.br/ccivil_03/constituicao/constituicao.htm` — linhas 6477–6482.

sha256: `3ff7cacfb1876958a5538b743675483e2f1d1e8713d9e4bcec52d7b887cb1986`

```text
VIII - os mandados de segurança e os

habeas data

contra ato de autoridade federal, excetuados os casos de competência dos
tribunais federais;
```

Nota da captura: excerto limitado ao pedido (caput + inciso I; inciso VIII). Os demais incisos e parágrafos do art. 109 não estão neste arquivo.

## [JEC3C-9] Art. 9º (assistência por advogado no Juizado: até vinte salários mínimos facultativa, acima obrigatória; mandato; preposto)

Fonte: `lei-9099-jec-v03`. Localizador: texto limpo de `https://www.planalto.gov.br/ccivil_03/leis/l9099.htm` — linhas 157–181.

sha256: `6c1826ea6b9cd8158cd8cb64c36ee261e3f390c544e8eae78bb7b507cc9d7dba`

```text
Art. 9º Nas causas de valor até vinte
salários mínimos, as partes comparecerão pessoalmente, podendo ser assistidas por
advogado; nas de valor superior, a assistência é obrigatória.

§
1º Sendo facultativa a assistência, se uma das partes comparecer assistida por advogado,
ou se o réu for pessoa jurídica ou firma individual, terá a outra parte, se quiser,
assistência judiciária prestada por órgão instituído junto ao Juizado Especial, na
forma da lei local.

§
2º O Juiz alertará as partes da conveniência do patrocínio por advogado, quando a
causa o recomendar.

§
3º O mandato ao advogado poderá ser verbal, salvo quanto aos poderes especiais.

[dispositivo revogado — omitido]

§ 4o
O réu, sendo pessoa jurídica ou titular de firma individual, poderá ser
representado por preposto credenciado, munido de carta de preposição com poderes
para transigir, sem haver necessidade de vínculo empregatício.
(Redação dada pela Lei nº
12.137, de 2009)
```

Nota da captura: o marcador `[dispositivo revogado — omitido]` substitui, na página do Planalto, a redação original riscada do § 4º; a redação vigente, dada pela Lei 12.137/2009, segue logo abaixo no excerto.

## [JEC3C-20] Art. 20 (revelia no Juizado)

Fonte: `lei-9099-jec-v03`. Localizador: texto limpo de `https://www.planalto.gov.br/ccivil_03/leis/l9099.htm` — linhas 310–313.

sha256: `52f641f417f56357defc534259219d82e196af7d65d6f11fa61825b94b93b966`

```text
Art. 20. Não comparecendo o demandado à
sessão de conciliação ou à audiência de instrução e julgamento, reputar-se-ão
verdadeiros os fatos alegados no pedido inicial, salvo se o contrário resultar da
convicção do Juiz.
```

## [JEC3C-51] Art. 51 (extinção do processo sem julgamento do mérito no Juizado)

Fonte: `lei-9099-jec-v03`. Localizador: texto limpo de `https://www.planalto.gov.br/ccivil_03/leis/l9099.htm` — linhas 543–573.

sha256: `e60cd04906c70d93c546712d574d68532b6c9ac8cb8053b8938aadd50e7f6a7e`

```text
Art. 51. Extingue-se o processo, além dos
casos previstos em lei:

I
- quando o autor deixar de comparecer a qualquer das audiências do processo;

II
- quando inadmissível o procedimento instituído por esta Lei ou seu prosseguimento,
após a conciliação;

III - quando for reconhecida a incompetência
territorial;

IV
- quando sobrevier qualquer dos impedimentos previstos no art. 8º desta Lei;

V
- quando, falecido o autor, a habilitação depender de sentença ou não se der no prazo
de trinta dias;

VI
- quando, falecido o réu, o autor não promover a citação dos sucessores no prazo de
trinta dias da ciência do fato.

§
1º A extinção do processo independerá, em qualquer hipótese, de prévia intimação
pessoal das partes.

§
2º No caso do inciso I deste artigo, quando comprovar que a ausência decorre de força
maior, a parte poderá ser isentada, pelo Juiz, do pagamento das custas.
```
