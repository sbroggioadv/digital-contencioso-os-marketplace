<!-- esqueleto: peca-anpd-defesa · consumido por skills/via-administrativa-anpd-regulado/SKILL.md (§4, autuado) -->
<!-- REGRA DE ENTREGA (única, vale para todo o esqueleto): slot {{...}} só com dado do caso e origem. A peça entregue não traz chaves duplas de slot, marcador de variante nem comentário HTML (estas linhas de cabeçalho saem também). Slot sem dado vira [NOME DO CAMPO — PENDENTE DE PROVA] na linha, em maiúsculas (ex.: [NÚMERO DO AUTO — PENDENTE DE PROVA]); nunca marcador em minúscula nem o estado sem complemento. Só entra a variante da fase, da natureza e do ato do caso; alternativa que a prova não resolve sai do corpo e vai às pendências. A peça é do polo do cliente (linha POLO do perfil), nunca do adverso. Estado por item: só MINUTA PARA REVISÃO HUMANA, PENDENTE DE PROVA, PENDENTE DE FONTE, BLOQUEADO, FORA DO RECORTE. A peça é gravada na pasta do caso. -->
<!-- variantes: variante = bloco entre "VARIANTE chave=valor" e "FIM VARIANTE"; entra só o conteúdo do bloco do caso e os marcadores saem (peca: defesa | alegacoes-finais | intervencao-revel; natureza: N3 | N4 | N5-N6 | orgao-publico; materia: incidente). Polo: REGULADO. Sem rito judicial. -->
<!-- [ID] só de bloco existente no context/INDICE.md; sem [ID] ⇒ PENDENTE DE FONTE na linha. Datas só as do caso; nenhum vencimento calculado. Sem promessa de arquivamento, absolvição ou redução. A minuta segue para revisao-final-digital. -->

À COORDENAÇÃO-GERAL DE FISCALIZAÇÃO DA AGÊNCIA NACIONAL DE PROTEÇÃO DE DADOS — ANPD

Processo nº {{numero_processo}} · Auto de infração nº {{numero_auto}}
Protocolo na forma indicada na intimação: {{forma_indicada}} ([ANPD-R1-45-49], art. 47)

{{agente_nome}}, {{agente_qualificacao}} (CNPJ ou documento, sede), endereço eletrônico para intimações {{email_intimacoes}} ([ANPD-R1-12], § 2º), assistido por advogado ({{instrumento_de_representacao}}), assistência facultativa ([PA-3], IV); instrumento não juntado ⇒ PENDENTE DE PROVA,

<!-- VARIANTE natureza=N3 -->
na condição de controlador e agente regulado ([ANPD-R1-4], I),
<!-- FIM VARIANTE -->
<!-- VARIANTE natureza=N4 -->
na condição de operador, que realiza o tratamento segundo as instruções do controlador {{controlador_identificado}} ([LGPD-37-39], art. 39),
<!-- FIM VARIANTE -->
<!-- VARIANTE natureza=N5-N6 -->
na condição de agente regulado ([ANPD-R1-4], I), apenas quanto à matéria de dados pessoais objeto do auto,
<!-- FIM VARIANTE -->
<!-- VARIANTE natureza=orgao-publico -->
pessoa jurídica de direito público, a quem o regulamento se aplica ([ANPD-R1-1], § 1º),
<!-- FIM VARIANTE -->

vem apresentar

<!-- VARIANTE peca=defesa -->
**DEFESA** ao auto de infração, garantidos o contraditório e a ampla defesa ([ANPD-R1-45-49], art. 45), pelos fundamentos a seguir.
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=alegacoes-finais -->
**ALEGAÇÕES FINAIS** sobre as provas novas produzidas entre a defesa e a instrução ([ANPD-R1-50-54], art. 53), pelos fundamentos a seguir.
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=intervencao-revel -->
**MANIFESTAÇÃO**, intervindo na fase em que o processo se encontra, sem repetição de ato já praticado ([ANPD-R1-50-54], art. 50, parágrafo único); o desatendimento da intimação não importa reconhecimento da verdade dos fatos ([PA-26-28], art. 27).
<!-- FIM VARIANTE -->

## I. TEMPESTIVIDADE

Ciência oficial: {{meio_e_evento_de_ciencia}} ([ANPD-R1-12], {{inciso}}); origem: {{documento_de_ciencia}}. Contagem em dias úteis, excluído o dia do começo ([ANPD-R1-8]).
<!-- VARIANTE peca=defesa -->
Prazo literal: "apresentar defesa no prazo máximo de dez dias úteis, na forma indicada na intimação" ([ANPD-R1-45-49], art. 47). Data final a conferir pelo advogado.
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=alegacoes-finais -->
Prazo literal: "prazo de dez dias úteis para manifestação do autuado antes da elaboração do Relatório de instrução" ([ANPD-R1-50-54], art. 53). Prova nova que o abre: {{prova_nova_e_origem}}.
<!-- FIM VARIANTE -->

## II. SÍNTESE DO AUTO

Conduta **suposta**, fatos a apurar e dispositivo, como escritos no auto ([ANPD-R1-45-49], art. 46, I a III):
- Identificação do autuado: {{inciso_I}}
- Conduta imputada e fatos: {{inciso_II}}
- Dispositivo indicado: {{inciso_III}}

## III. PRELIMINARES (só com documento do caso)

### III.1 Auto sem elemento obrigatório
{{elemento_ausente}} ([ANPD-R1-45-49], art. 46, {{inciso}}).

### III.2 Vício de intimação
{{requisito_ausente}} ([PA-26-28], art. 26, § 1º, {{inciso}}); nulidade pelo § 5º do mesmo artigo. <!-- o mesmo § 5º diz que o comparecimento supre a falta: o advogado decide se a preliminar subsiste -->

## IV. MÉRITO

Cabe ao autuado a prova dos fatos que alegar, sem prejuízo do dever de instrução do órgão ([ANPD-R1-50-54], art. 50).

| Fato do auto | Resposta (admite · nega · esclarece) | Prova do autuado | Origem |
|---|---|---|---|
| {{fato_1}} | {{resposta}} | {{doc}} | {{origem}} |

{{fundamento_de_merito_1}} [{{id}}]

<!-- VARIANTE materia=incidente -->
### IV.x Incidente de segurança
- Definições aplicáveis: {{definicao}} ([ANPD-R15-3]).
- Risco ou dano relevante exige afetar significativamente interesses e direitos fundamentais **e**, cumulativamente, ao menos um critério do art. 5º ([ANPD-R15-4-5]): {{analise_criterio_a_criterio}}.
- O dever de comunicar à ANPD e ao titular é do **controlador** ([LGPD-48]; [ANPD-R15-4-5], art. 4º; [ANPD-R15-6-8], art. 6º): {{quem_comunicou_e_quando_com_documento}}.
<!-- FIM VARIANTE -->
<!-- VARIANTE natureza=N4 -->
- Atos praticados por instrução do controlador, separados dos próprios: {{instrucoes_e_documentos}} ([LGPD-37-39], art. 39).
<!-- FIM VARIANTE -->

<!-- VARIANTE peca=alegacoes-finais -->
### IV.y Provas novas
Cada prova nova, seu conteúdo e a contradita: {{prova_nova}} — {{contradita}}. Prova emprestada ou diligência só vale com contraditório ([ANPD-R1-45-49], art. 48, § 4º).
<!-- FIM VARIANTE -->

## V. DOSIMETRIA (subsidiária, só por critérios)

Sanções e critérios ([LGPD-52]; [ANPD-R4-3-6]); classificação da infração ([ANPD-R4-7-8]); advertência ou multa ([ANPD-R4-9-10]); adequação entre meios e fins ([PA-2], parágrafo único, VI).

| Atenuante literal | Fato | Prova | Marco temporal |
|---|---|---|---|
| {{atenuante}} ([ANPD-R4-11-15], art. {{art}}) | {{fato}} | {{doc}} | {{marco}} |

Atenuante sem prova ⇒ PENDENTE DE PROVA. Valor-base, piso e multa calculada ⇒ PENDENTE DE FONTE (apêndices não capturados).

## VI. PEDIDOS

Requer:
a) o acolhimento das preliminares {{lista}};
b) no mérito, o arquivamento do processo;
c) subsidiariamente, a classificação e a sanção apenas pelos critérios provados ([ANPD-R4-7-8]; [ANPD-R4-11-15]);
<!-- VARIANTE peca=defesa -->
d) a produção das provas especificadas ([ANPD-R1-45-49], art. 48, § 1º; [PA-38]) e, deferida perícia, a formulação de quesitos suplementares e a indicação de assistente técnico ([ANPD-R1-50-54], art. 52, II e III);
e) a intimação para alegações finais se houver prova nova ([ANPD-R1-50-54], art. 53) e o contraditório sobre prova emprestada ou diligência ([ANPD-R1-45-49], art. 48, § 4º);
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=alegacoes-finais -->
d) a consideração das provas novas e da contradita do item IV.y antes do Relatório de instrução ([ANPD-R1-50-54], art. 53), sem valor para prova emprestada ou diligência sem contraditório ([ANPD-R1-45-49], art. 48, § 4º);
<!-- FIM VARIANTE -->
<!-- VARIANTE peca=intervencao-revel -->
d) o recebimento desta manifestação e o prosseguimento a partir da fase em que o processo se encontra, sem repetição de ato já praticado ([ANPD-R1-50-54], art. 50, parágrafo único), com as comunicações no endereço informado ([ANPD-R1-12], § 2º);
<!-- FIM VARIANTE -->
<!-- alíneas seguintes: renumerar em sequência depois de remover as variantes -->
f) o sigilo das informações empresariais identificadas em {{itens}} ([ANPD-R1-5-6], art. 5º, § 2º);
g) as intimações no endereço eletrônico informado ([ANPD-R1-12], § 2º).

## VII. PROVAS

1. {{documento}} — {{origem: arquivo, quem produziu, quando}}

Os pedidos de prova "poderão ser indeferidos" ([ANPD-R1-50-54], art. 51), sem critério no regulamento. Tese da defesa: aplicar a essa lacuna o limite do [PA-38], § 2º (recusa só fundamentada, de prova ilícita, impertinente, desnecessária ou protelatória), pela aplicação subsidiária da Lei 9.784 ([ANPD-R1-1], § 2º).

Termos em que pede deferimento.

Local e data: em branco para o advogado.

[ADVOGADO — PENDENTE DE PROVA] — OAB [NÚMERO DA OAB — PENDENTE DE PROVA]
