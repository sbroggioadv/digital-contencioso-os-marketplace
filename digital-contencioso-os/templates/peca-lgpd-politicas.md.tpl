<!-- esqueleto: peca-lgpd-politicas · consumido por skills/lgpd-politicas-e-avisos/SKILL.md (§7) -->
<!-- REGRA DE ENTREGA (única, vale para todo o esqueleto): slot {{...}} só com dado do mapeamento fornecido pelo cliente e origem. O documento entregue não traz chaves duplas de slot, marcador de variante nem comentário HTML (estas linhas de cabeçalho saem também). Atividade sem dado fica fora do texto público e vira PENDENTE DE PROVA na nota interna; campo de identificação sem dado vira [NOME DO CAMPO — PENDENTE DE PROVA], em maiúsculas (ex.: [CNPJ — PENDENTE DE PROVA]); nunca marcador em minúscula nem o estado sem complemento. Só entra a variante do documento pedido. Estado por item da nota interna: só MINUTA PARA REVISÃO HUMANA, PENDENTE DE PROVA, PENDENTE DE FONTE, BLOQUEADO, FORA DO RECORTE. O documento é gravado na pasta do caso. -->
<!-- variantes: variante = bloco entre "VARIANTE chave=valor" e "FIM VARIANTE"; entra só o conteúdo do bloco do caso e os marcadores saem (peca: politica | aviso | termos | cookies). Polo ATIVO, fase não se aplica (consultivo). Documento extrajudicial: sem rito e sem valor da causa. -->
<!-- O texto público NÃO cita [ID]: o fundamento vai só na NOTA INTERNA, uma linha por cláusula. [ID] só de bloco existente no context/; sem [ID] ⇒ PENDENTE DE FONTE. Estrutura do documento = decisão do cliente; vedações = §4 da skill; cláusula sem [ID] = recomendação do advogado, nunca atribuída à lei. Sem promessa de conformidade. A minuta segue para revisao-final-digital. -->

<!-- VARIANTE peca=politica -->
# POLÍTICA DE PRIVACIDADE — {{servico_site_ou_app}}

Destinatários: {{usuarios_clientes_candidatos_visitantes}}.

1. **Quem trata seus dados:** {{controlador_nome_empresarial}}, {{cnpj}}, {{endereco}}; contato: {{contato_controlador}}.
2. **Encarregado (ou canal com o titular):** {{encarregado_ou_canal}}.
3. **O que tratamos, para quê e por quanto tempo:** uma linha por atividade do mapeamento — {{atividade}} · {{finalidade}} · {{categorias_de_dados}} · {{hipotese_legal_escolhida_pelo_advogado}} · {{retencao_informada}}.
4. **Tratamento como condição do serviço:** {{se_houver_com_destaque}}.
5. **Compartilhamento:** {{com_quem_e_por_que}}; responsabilidades: {{responsabilidades}}.
6. **Transferência internacional:** {{pais_e_mecanismo_se_houver}}.
7. **Segurança:** {{medidas_em_termos_gerais}}.
8. **Seus direitos:** rol do art. 18 por extenso, canal {{canal}}, gratuidade, prazos de confirmação e acesso.
9. **Decisão automatizada:** {{se_houver}}.
10. **Crianças e adolescentes:** {{se_houver}}.
11. **Atualizações:** como avisamos alterações e como revogar o consentimento quando ele for a base.
<!-- FIM VARIANTE -->

<!-- VARIANTE peca=aviso -->
# AVISO DE PRIVACIDADE — {{ponto_de_coleta}}

{{controlador}} trata {{dados_coletados_aqui}} para {{finalidade}} ({{hipotese_legal}}), por {{retencao}}. Seus direitos e detalhes: {{link_da_politica}}. Contato: {{encarregado_ou_canal}}.
<!-- FIM VARIANTE -->

<!-- VARIANTE peca=termos -->
# TERMOS DE USO — {{aplicacao_de_internet}}

1. **Objeto e serviço:** {{descricao_do_servico}}.
2. **Cadastro e conta:** {{requisitos_informados_pelo_cliente}}.
3. **Regras de uso e moderação:** {{regras_do_cliente}}.
4. **Suspensão e encerramento:** {{hipoteses_e_procedimento_do_cliente}}.
5. **Responsabilidade:** {{regime_redigido_pelo_advogado}}.
6. **Dados pessoais:** remissão à Política de Privacidade ({{link}}); aceite destacado quando a base for consentimento.
7. **Alteração dos termos:** {{forma_de_aviso}}.
8. **Lei e foro:** {{lei_e_foro}}.
9. **Contato:** {{contato}}.
<!-- FIM VARIANTE -->

<!-- VARIANTE peca=cookies -->
# POLÍTICA DE COOKIES — {{site_ou_app}}

| Categoria | Finalidade | Fornecedor | Retenção | Base | Como recusar | Como revogar |
|---|---|---|---|---|---|---|
| {{categoria}} | {{finalidade}} | {{fornecedor}} | {{retencao}} | {{base}} | {{como_recusar}} | {{como_revogar}} |
<!-- FIM VARIANTE -->

**Versão** {{versao}} · **Vigência:** [VIGÊNCIA — PENDENTE DE PROVA] · **Histórico de versões:** {{historico}} · **Contato:** {{contato}}.

---

## NOTA INTERNA AO ADVOGADO (não publicar)

| Cláusula | Fundamento | Origem da informação | Estado |
|---|---|---|---|
| Quem trata / contato | [LGPD-5] VI; [LGPD3L-9] III e IV | {{origem}} | {{estado}} |
| Encarregado ou canal | [LGPD3-41] § 1º; [ANPD3-R18-A8-11] art. 9º; pequeno porte: [ANPD3L-R2-11] § 1º | {{origem}} | {{estado}} |
| Finalidade, forma, duração, condição do serviço | [LGPD3L-9] I, II e § 3º; hipótese: [LGPD3-7]; consentimento: [LGPD3L-8] | {{origem}} | {{estado}} |
| Compartilhamento e responsabilidades | [LGPD3L-9] V e VI | {{origem}} | {{estado}} |
| Transferência (cláusulas-padrão) | [LGPD3-33] II, b; [ANPD3-R19-A15-17] arts. 15 e 17, §§ 2º e 3º | {{origem}} | {{estado}} |
| Direitos do titular | [LGPD3L-9] VII; [LGPD-18]; [LGPD-19] | {{origem}} | {{estado}} |
| Alterações | [LGPD3L-8] § 6º (incisos I, II, III ou V do art. 9º); [LGPD3L-9] § 2º; prazo do aviso: PENDENTE DE FONTE | {{origem}} | {{estado}} |
| Termos — dados, destaque, clareza | [MCI-7] VIII, IX, XI | {{origem}} | {{estado}} |
| Termos — foro brasileiro em adesão; lei brasileira | [MCI-8] parágrafo único, II; [MCI-11] | {{origem}} | {{estado}} |
| Termos — relação de consumo | [CDC-54] §§ 3º e 4º; [CDC-51-CAPUT-I]; [CDC-51-IV] | {{origem}} | {{estado}} |
| Termos — moderação, suspensão, responsabilidade da plataforma | PENDENTE DE FONTE (fica com o contencioso) | {{origem}} | {{estado}} |
| Cookies — base e consentimento | [ANPD3L-COOKIES-HL]; [ANPD3L-COOKIES-CONS]; [ANPD3L-COOKIES-LI] (guia 🟡 [ANPD3L-COOKIES-VERSAO]) | {{origem}} | {{estado}} |
| Cookies — "recusar tudo" e layout | PENDENTE DE FONTE (recomendação do advogado) | {{origem}} | {{estado}} |

Lacunas (`PENDENTE DE PROVA`): {{atividades_sem_informacao}}. Provas a guardar: versão publicada com data; registro de aceite e de preferências de cookies, quando houver. Valor da causa: não se aplica.
