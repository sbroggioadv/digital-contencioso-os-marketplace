# Revisão aplicada — protocolo e formatos

Usado pelo `digital-contencioso-master`, por `/digital-contencioso-revisar` e por qualquer produtora ou comando de percurso que queira entregar `MINUTA PARA REVISÃO HUMANA`. É **revisão interna por chamadas separadas do mesmo modelo**, aplicada, versionada e verificada estruturalmente; não é revisão jurídica independente.

## 1. Rascunho e itens

A produtora entrega `RASCUNHO v1`: itens `I1…In` com id estável (um pedido, fundamento, providência ou trecho de minuta por item). `RASCUNHO` e `EM REVISÃO` são rótulos internos. Até a entrega ser emitida, o que aparece no chat é **"RASCUNHO, NÃO É ENTREGA APROVADA"**.

**Higiene da minuta técnica (guidance only):** retirar do corpo apenas notas de produção/rascunho, estados e campos “[a preencher]”; manter os IDs auditáveis de fonte exigidos pelo contrato no texto de cada item submetido aos controles. Rótulo D1/D2 usado como localizador de prova não substitui descrição inteligível nem comprova origem. Se usada uma norma, nomear o diploma (ex.: Lei nº 13.709/2018) e artigo/inciso/parágrafo, conservando o `[ID]`; orientação ou documento recebe referência inteligível com natureza e origem comprovadas. Não inventar título, anexo, apresentação, envio ou indicação pela titular. Ao auditar anexação, distinguir material que acompanha a minuta para revisão de documento anexado ao requerimento ou enviado ao destinatário; respeitar o objeto e o tempo verbal. A retirada de nota de produção não demonstra, por si, invenção de ato externo. Localizador de documento acompanhado de descrição inteligível não é proibido apenas por ser um rótulo interno. Matriz separada conserva arquivo/linha, IDs e pendências; prova integral segue no input. Não transformar o texto depois do selo: o literal entregue deve ser o revisado. Render externo separado (S7) está fora deste fluxo; higiene não autoriza selar item restritivo.

## 2. Cadeia por versão (sequencial, sem paralelo)

Para a versão `vN`, pela ferramenta **Agent**, uma chamada por vez, cada uma terminando antes da próxima (nunca em lote nem em background):

1. agente `anti-alucinacao-digital-contencioso`;
2. agente `validador-digital-contencioso`, recebendo também o retorno do anti **copiado literalmente**;
3. agente `suprema-corte-digital-contencioso`, recebendo também os dois retornos anteriores **copiados literalmente**.

O prompt de cada chamada começa com o cabeçalho próprio `VERSÃO N` em linha separada, antes de qualquer retorno `CONTROLE`; versões citadas em retornos anteriores não identificam esta entrada. Depois traz: o texto completo de cada item (`I1: …`); o caso e a prova recebidos em texto literal integral (sem resumo nem paráfrase), ou arquivos integralmente lidos nesta chamada, com caminho e leitura registrados; a produtora de origem; a lista dos IDs de bloco do `context/` citados pela versão; e, para a suprema, a seção `ACHADOS REJEITADOS ATÉ AQUI:` (§4). ID citado que não esteja no `context/` nem na entrada vira **pendência de injeção**, nunca "fonte inexistente".

Conservar todas as declarações de origem, simulação e “sem assinatura real”. Síntese sob o título “dossiê integral” não satisfaz a entrada. Notas da produtora ficam em seção separada “NÃO É PROVA”: não são documento, não corrigem sua origem nem antecipam conclusão dos controles. Sem acesso integral, declarar revisão não executada e solicitar o material, sem selo. Nos três retornos, premissa de escopo sem bloco/ID disponível deve constar explicitamente como `PENDENTE DE FONTE` na matriz e na Conclusão; fatos do caso não comprovam aplicabilidade normativa. Não injetar LGPD integral, capturas ocultas ou LC 123.

Sem a ferramenta Agent, com chamada recusada, cancelada, sem retorno ou com retorno sem o formato do §5: escrever **"revisão não executada"** e não apor `MINUTA PARA REVISÃO HUMANA` em nenhum item.

## 3. Aplicar, invalidar, reconvergir

- Achado do anti ou do validador que a suprema da mesma versão declarar improcedente com `CONFIRMA REJEIÇÃO` ⇒ candidato a `REJEITADA` (item não muda).
- Qualquer outro achado (inclusive todos os da suprema), se a correção tiver origem suficiente ⇒ aplicá-la no item, criar `v(N+1)` mudando só o necessário e rodar de novo a **cadeia inteira** sobre `v(N+1)`.
- A proposta de controle só retira afirmação, rotula pendência ou cita texto com origem literal no caso/ID, identificando arquivo/linha ou ID. Nunca cria fato, anexo ou ato. O livro registra o estado do achado/correção efetivamente aplicada, não da proposta literal. Se o achado procede mas a proposta inventa fato, documentar a recusa e a origem da proposta na nota da chave exata; aplicar retirada ou alternativa sustentada no item e registrar `APLICADA`, com antes → depois e motivo reais. Criar nova versão e rodar a cadeia integral dentro do orçamento, com a objeção e a prova integral; se a suprema já retornou, não reabrir sua chamada anterior. Achado próprio da suprema também admite essa correção efetiva `APLICADA` e nova cadeia, nunca autoconfirmação de rejeição. `REJEITADA` fica reservada ao achado improcedente (§4); nunca confirmar rejeição de achado procedente só para fechar. Sem correção efetiva, convergência ou espaço no orçamento, manter achado aberto e item restritivo, sem selo; não inventar aplicação, confirmação ou autoaceite.
- Qualquer diferença de conteúdo de item entre versões, além de espaços, invalida todas as revisões anteriores.
- Orçamento: 3 chamadas (sem achado), 6 (1 aplicação) ou 9 (2 aplicações, máximo de 3 versões). Sem convergência ⇒ item em estado restritivo (`PENDENTE DE FONTE`, `PENDENTE DE PROVA` ou `BLOQUEADO`), sem selo.

## 4. Rejeição de achado

`REJEITADA` significa achado improcedente, não proposta recusada, e só fecha se a suprema-corte da **versão final** a confirmar por escrito com fonte. Em toda versão nova, o prompt da suprema lista `ACHADOS REJEITADOS ATÉ AQUI:` (chave `<controle>@v<k>:F<n>` + motivo) e pede reconfirmação. Achado da própria suprema nunca se autoconfirma. `ESCALADA` ou conflito aberto não sela.

As chaves são exatamente `anti-alucinacao@v1:F1`, `validador@v1:F1` e `suprema-corte@v1:F1`, variando somente os números. Não usar `anti@`, `valid@` ou `supr@`, nem normalizar livro real. Exemplo canônico: `CONFIRMA REJEIÇÃO anti-alucinacao@v1:F1 · FONTE LGPD-18`. A chave conserva a versão de origem do achado, mesmo na reconfirmação final; a suprema nunca confirma seus próprios achados.

## 5. Retorno de cada controle (formato verificado pelo emissor)

```
CONTROLE <anti-alucinacao|validador|suprema-corte> · VERSÃO <N>
ITEM <Ik> · VEREDITO <PASS|CONCERNS|FAIL>
<<<
<texto literal do item, copiado sem resumir>
>>>
ACHADO F<n> · <ALTA|MÉDIA|BAIXA> · <Ik> · <localizador> · <correção proposta com origem, retirada ou pendência rotulada>
CONFIRMA REJEIÇÃO <controle>@v<N>:F<n> · FONTE <ID do bloco ou documento>   (só suprema-corte)
Conclusão: <uma linha>
```

Cada linha reservada `ACHADO` exige todos os campos acima, identificador positivo sem duplicidade e item presente no retorno. Não escreva linhas ACHADO incompletas; sem achados, omita essas linhas. Marcadores apresentados como lista, citação ou negrito fora do literal não substituem o formato canônico e são recusados. Texto entre `<<<` e `>>>` só é literal quando a abertura segue imediatamente um cabeçalho `ITEM` válido; delimitadores soltos são recusados. Nesse material, palavras ou linhas `ACHADO` e `CONTROLE` continuam sendo texto, não metadados.

A proposta segue o §3 e a higiene do §1. Nenhuma rubrica vinculante de severidade é criada nesta correção; não baixar severidade para forçar verde.

A matriz própria de cada controle (afirmações, fundamentos, R1–R4) pode vir depois dos itens, antes da `Conclusão`.

## 6. Elegibilidade do item (versão final)

Item `MINUTA PARA REVISÃO HUMANA` só se: anti sem invenção essencial (sem FAIL); validador PASS, ou CONCERNS com todo achado fechado; suprema R1–R4 sem FAIL; zero achado aberto; livro completo. FAIL em qualquer controle ⇒ estado canônico restritivo. Estado global = o mais restritivo dos itens.

`PENDENTE DE FONTE` sobre premissa normativa necessária mantém o item dependente nesse estado, sem selo, mesmo que a lacuna esteja só na matriz ou na Conclusão. Identificar os itens dependentes e refletir o estado no bloco final; não tratar a anotação como liberação. A falta de bloco de escopo pode impedir o selo dos pedidos que dele dependem no corpus atual: não injetar corpus nem declarar todos os itens elegíveis. Itens independentes exigem avaliação própria. Para cada pendência, registrar a proposição necessária, a lacuna concreta (fonte normativa ou prova factual), o item dependente e a etapa afetada. Texto legal disponível não comprova autenticidade ou suficiência do documento real; falta dessa prova não significa ausência do dispositivo. A revisão de minuta não certifica mandato nem autoriza envio: preservar a pendência material quando necessária ao item, sem presumir exigência formal específica ou sua dispensa. Declarações sintéticas nunca valem como assinatura real e este esclarecimento não cria exceção de elegibilidade para fixtures. Esta instrução é guidance only; o emissor não infere essa dependência a partir da Conclusão.

## 7. Bloco final da versão entregue (última mensagem do turno)

```
REVISÃO APLICADA · VERSÃO <N>
ITEM <Ik> · ESTADO <MINUTA PARA REVISÃO HUMANA|PENDENTE DE PROVA|PENDENTE DE FONTE|BLOQUEADO|FORA DO RECORTE>
<<<
<texto literal do item na versão N, igual ao revisado>
>>>
LIVRO DE ACHADOS
<controle>@v<k>:F<n> | <Ik> | <APLICADA|REJEITADA> | <antes → depois e motivo reais; ou motivo e fonte da improcedência>
FIM DA REVISÃO APLICADA
```

Exemplo ilustrativo (não é prova de caso): `anti-alucinacao@v1:F1 | I1 | APLICADA | v1: texto com ato não comprovado → v2: texto sem esse ato; motivo: retirada da afirmação sem prova; proposta do anti v1 F1 recusada por inventar outro ato, sem origem no caso`. Preencher a nota com os textos, motivos e localizadores reais; uma linha por chave, sem duplicar a recusa como `REJEITADA`. Os outros prefixos permitidos são `validador` e `suprema-corte`, por extenso. Rejeições seguem o §4, não o exemplo de aplicação.

Sem achados, o livro traz `nenhum`. Este bloco é rascunho até o gate do plugin gravar `entrega-verificada/<sessão>/ENTREGA-vN.md` e `RECIBO-vN.json`. **Entrega aprovada = esse par, aceito por `emitir-entrega verificar`.** Selo, bloco ou "entrega aprovada" escritos no chat nunca são entrega; o gate não retrai texto já exibido.


Transporte próprio no CLI: o hook PreToolUse de Agent conserva o prompt original e acrescenta retornos públicos completos da mesma versão antes do validador e da suprema. Sem sessão/turno, conclusão foreground, ordem ou correspondência dos itens, a chamada própria é recusada. Isso não substitui a obrigação de copiar integralmente os retornos nem fecha achados. O Stop e `verificar` conferem o input efetivo registrado pelo runtime; ausência dessa prova após transformação impede reconhecer entrega. A sonda técnica de transporte não é positivo real de mérito nem prova Cowork.
