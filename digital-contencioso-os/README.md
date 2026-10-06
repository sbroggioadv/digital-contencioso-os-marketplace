# Digital — Contencioso e Administrativo

_Plugin `digital-contencioso-os`._

Apoio ao **advogado da pessoa ou empresa afetada** em controvérsias no ambiente digital: conta ou perfil suspenso, conteúdo de terceiro que ofende honra ou reputação, registros para identificar autoria incerta, dados pessoais (titular × controlador fora de consumo) e cumprimento de ordem judicial por plataforma ou provedor — com prova de origem, fonte capturada e revisão humana. Um único plugin, com a **via judicial** e, para dados pessoais, a **via administrativa perante a ANPD** (petição de titular e denúncia), cada pedido com a sua via, o seu fundamento e o seu estado.

> **Não é parecer jurídico, perícia nem ata notarial. Não substitui o advogado. Não foi testado no Cowork nativo.** Toda saída é minuta ou mapa de pendências para revisão humana.

## O que ele organiza para você

- **Cada pedido do cliente com a sua via:** uma tabela com o pedido, a via (juízo, ANPD, extrajudicial ou fora do recorte), a autoridade ou o juízo, o fundamento com a fonte capturada, a ordem dos atos, a prova usada e o estado de cada pedido (minuta, pendente de prova, pendente de fonte, bloqueado ou fora do recorte).
- **Quem pede × quem responde:** a primeira pergunta é o polo do cliente no procedimento. Quem responde ou é autuado fica fora do recorte.
- **Dados pessoais:** requerimento ao controlador para qualquer direito do art. 18 da LGPD (o prazo só é afirmado para confirmação e acesso), petição de titular × denúncia à ANPD e pendências de prova.
- **Fontes:** excertos literais da LGPD e de resoluções da ANPD no `context/`. Só a ANPD tem base capturada como autoridade; qualquer outra sai `PENDENTE DE FONTE`.

## Portas

| Comando | Para quê |
|---|---|
| `/digital-contencioso-install` | configurar a pasta privada do caso, o índice e o primeiro percurso (escolhas por botões) |
| `/digital-contencioso-master` | conduzir o caso: triagem → prova → percurso → guard → validador → R1–R4 |

## Comandos por percurso

`/digital-contencioso-triagem` · `/digital-contencioso-prova` · `/digital-contencioso-termos` · `/digital-contencioso-conta` · `/digital-contencioso-conteudo` · `/digital-contencioso-registros` · `/digital-contencioso-dados` · `/digital-contencioso-notificar` · `/digital-contencioso-tutela` · `/digital-contencioso-cumprimento` · `/digital-contencioso-revisar`

## Skills (18)

- **Portas e controles:** `digital-contencioso-install`, `digital-contencioso-master`, `triagem-digital-contencioso`, `anti-alucinacao-digital-contencioso`, `validador-digital-contencioso`, `suprema-corte-digital-contencioso`.
- **Fundação:** `termos-da-plataforma-e-remedios`, `legitimidade-e-competencia-digital`.
- **Módulo de prova:** `origem-e-cronologia-da-prova-digital`, `matriz-fato-prova-dano-digital`, `preservacao-e-encaminhamento-probatorio`.
- **Percursos:** `conta-perfil-suspensao`, `conteudo-reputacao-remocao` (condicionada), `registros-exibicao-e-fornecimento`, `dados-pessoais-controversia`, `notificacao-extrajudicial-digital`.
- **Processo e cumprimento:** `tutela-e-pedidos-delimitados-digital`, `cumprimento-de-ordem-digital`.

## Skill BLOQUEADA POR FONTE nesta versão

- **`regime-plataformas-e-conteudo`** — não existe nesta versão. A tese do Tema 987/STF após os embargos só foi capturada em fragmento primário **truncado pelo próprio portal**, e o Tema 533/STF tem embargos **a proclamar**. Por isso, **toda conclusão sobre se e como a plataforma responde por conteúdo de terceiro sai `PENDENTE DE FONTE`**. O plugin não completa a tese de memória, de notícia ou de cópia secundária, e não deriva o regime do art. 19 do Marco Civil isolado.
- `conteudo-reputacao-remocao` existe só como **roteiro de pedido, prova e tutela**, com a responsabilidade da plataforma em aberto.

## Revisão aplicada e entrega verificada

- Toda minuta passa por **revisão interna por chamadas separadas do mesmo modelo**, aplicada, versionada e verificada estruturalmente: agentes `anti-alucinacao` → `validador` → `suprema-corte` (R1–R4), um por vez; achados aplicados em nova versão e cadeia inteira de novo sobre a versão final (máximo de 3 versões). **Não é revisão jurídica independente.**
- **Entrega aprovada = `entrega-verificada/<sessão>/ENTREGA-vN.md` + `RECIBO-vN.json`, gravados pelo gate do plugin** (`scripts/emitir-entrega.py`, hook `Stop`) e aceitos por `python3 scripts/emitir-entrega.py verificar <arquivo>`. Selo, bloco ou "entrega aprovada" escritos no chat **nunca** são entrega.
- O gate confere estrutura e linhagem (chamadas, ordem, versão, texto literal, livro de achados, estados); **não julga mérito jurídico**. Hash dá consistência, não origem.
- Limites declarados: o hook `Stop` não retrai texto já exibido no chat (rascunho continua visível); sem `python3`, com hook desligado, erro, timeout ou teto de continuações, **nenhuma entrega é emitida** e a sessão segue; o guarda de escrita só barra gravação literal em `entrega-verificada/` (comando ofuscado não é barrado — o `verificar` recusa o par forjado); disco ou transcript adulterados por quem tem acesso à máquina estão fora do alcance.
- Estado no Cowork: **não testado**. O fluxo foi verificado só por linha de comando (protótipo e replays locais).

## O que o plugin NÃO faz

- Não recupera conta, não remove conteúdo e não identifica autor; **não promete resultado** perante plataforma ou juízo.
- Não afirma autenticidade de print; **IP não é autor; hash não é autenticidade**.
- Não presume termos da plataforma: exige o texto colado, vigente na data do fato. Termos da Meta (Facebook, Instagram, WhatsApp) não foram capturados.
- Não lavra ata notarial nem faz perícia (advogado ≠ tabelião ≠ perito).
- Não atende a plataforma ou o controlador como cliente (sem operação dual).
- Não trata de fraude financeira (Bancário), tipificação penal (Criminal), relação de consumo (Consumidor), LGPD de compliance/política/RIPD (Adv-OS), direito autoral, matéria eleitoral nem infância digital — esses pedidos são roteados ou ficam `FORA DO RECORTE`.
- Não calcula vigência do Decreto 12.975/2026 nem o prazo de 60 dias do Tema 987; dispositivos do decreto saem com a ressalva da ADI 7981 em curso.
- Não afirma prazo regulamentar do controlador para fins de petição à ANPD, nem prazo de correção, eliminação ou portabilidade; não afirma que a via administrativa suspende ou dispensa a judicial; não promete decisão, sanção, prazo de resposta ou indenização pela ANPD.
- Não acessa plataformas, tribunais ou serviços externos e não protocola. **Não garante sigilo:** o conteúdo que você digita ou anexa é processado pelo modelo de IA do ambiente em que o plugin roda e **pode sair da máquina em direção ao provedor desse modelo**; pasta privada local não é cofre criptográfico nem certifica sigilo. Antes de inserir dado sigiloso ou de terceiros, avalie as condições do seu provedor e o seu dever de sigilo profissional; minimize e anonimize o que for possível.

## Fontes

`context/` contém **apenas excertos literais** de fontes oficiais capturadas em 02/10/2026 (Planalto, STF, STJ, ANPD, CNJ e termos de plataformas como exemplo), cada arquivo com URL, data de captura e sha256 no topo. Ver `context/INDICE.md`. Captura não é certificação de vigência.

## Estados finais

`MINUTA PARA REVISÃO HUMANA` · `PENDENTE DE PROVA` · `PENDENTE DE FONTE` · `BLOQUEADO` · `FORA DO RECORTE`.

## Suporte e licença

Suporte: luis@sbroggio.io. Licença: ver `LICENCA`.

## Distribuição e verificação técnica local

Este pacote é um **candidato para homologação**, sem liberação comercial. O repositório público do marketplace é https://github.com/sbroggioadv/digital-contencioso-os-marketplace. Após o conteúdo ser publicado, a instalação para conferência usa Claude Desktop → Personalização → Plugins → Adicionar plugin → Adicionar marketplace → Adicionar de um repositório; sincronizar essa URL e instalar em Meus.

**Nesta homologação não executar o onboarding** (`/digital-contencioso-install`). Instalar o plugin e conferir sua presença é separado de configurar o escritório ou executar um caso. Use somente uma pasta de testes sem documentos reais. Instalação, hooks e revisão aplicada no Cowork ainda precisam de comprovação; este pacote não afirma esses resultados.

Para verificação técnica local no Claude Code, use `claude --plugin-dir "/caminho/absoluto/digital-contencioso-os"`. O carregamento vale somente para a sessão e não comprova funcionamento no Cowork. Não distribuir ZIP runtime para instalação no Cowork.
