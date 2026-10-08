---
name: legitimidade-e-competencia-digital
description: "Legitimidade e competência no caso digital, para autor ou réu: capítulo da inicial, preliminar da contestação ou manifestação sobre parte legítima, autoridade judiciária brasileira, foro, Juizado × rito comum × Justiça Federal (CF 109 I e VIII; mandado de segurança e anulatória contra autarquia), foro do consumidor na relação de consumo e cláusula de foro estrangeiro dos termos."
---

# Legitimidade e competência — caso digital

**Guidance only:** competência e legitimidade dependem dos fatos provados e da decisão do advogado. Fonte única: `context/` (ver `context/INDICE.md`). Esqueleto: `templates/peca-tutela.md.tpl`, bloco "Competência e legitimidade" (o mesmo capítulo é incorporado por `peticao-inicial-digital` e `contestacao-e-defesa-digital`). Ao final, a minuta vai a `revisao-final-digital`.

**Guard mínimo:** norma, tema e prazo só com `[ID]` (sem `[ID]` ⇒ `PENDENTE DE FONTE` na linha) · IP identifica terminal, não pessoa · hash declarado ≠ verificado · sem promessa de resultado · um caso = um cliente = um polo; sem polo, só as perguntas · ao final, acionar `revisao-final-digital`.

**Entrega (regra única):** o capítulo não traz `{{`, `}}`, `[[`, marcador de variante nem comentário HTML do esqueleto; campo sem dado vira `[CAMPO — PENDENTE DE PROVA]`, com o nome do campo em maiúsculas (ex.: `[VARA — PENDENTE DE PROVA]`). Só a variante do polo e do rito do caso entra (um endereçamento só); alternativa que a prova não resolve vai às pendências, fora do corpo. Peça só do polo do cliente; polo ausente ou contraditório ⇒ só as perguntas, mesmo se mandarem não perguntar. Tema 987/533: `[ID]` + rótulo "fonte parcial" na mesma linha, também no resumo. Estados: só os 5, um por item. A peça é gravada na pasta do caso.

## Entrada (BLOCO MATERIAL)

1. BLOCO MATERIAL devolvido pela frente: polo, fatos com prova, fundamentos com `[ID]`, pedidos delimitados. Sem ele, acionar a frente antes; esta skill não reabre o mérito e só cita `[ID]` de direito material que estiver no BLOCO MATERIAL.
2. Partes e documentos: natureza (N1–N7) e posição; domicílios e sedes; agência, filial ou sucursal no País; local do fato; lugar do cumprimento; relação com a plataforma (usuário, consumidor, anunciante, empresa com perfil, titular sem relação); valor estimado pelo advogado; termos colados com cláusula de lei ou foro; ato administrativo impugnado e autoridade, se houver.
3. `00-perfil-do-caso.md`, seção "Andamento": ler ao abrir; atualizar ao fechar.

## 1. Legitimidade (por natureza × posição)

| Situação | Regra de trabalho | Fonte |
|---|---|---|
| N1 pessoa natural ATIVO | titular da conta, do direito da personalidade ou dos dados | do BLOCO MATERIAL ([CC-11-21], [LGPD-5], [LGPD-18]) |
| N2 PJ ATIVO | perfil, marca ou nome próprios; PJ não é titular de dado pessoal | [LGPD-5], se no bloco |
| N5 plataforma PASSIVO (conteúdo, conta) | parte indicada pelo autor; se e como responde vem de `regime-plataformas-e-conteudo`; ao alegar ilegitimidade, indicar o sujeito passivo correto quando o conhecer, sem inventar réu (sem documento ⇒ `PENDENTE DE PROVA`) | [CPC-335-342], arts. 337, XI, e 339 |
| N5/N6 destinatário de pedido de registros | o responsável pela guarda: administrador de sistema autônomo (conexão) ou provedor de aplicações (acesso) | [MCI-13], [MCI-15], [MCI-22-23], se no bloco |
| N6 provedor de conexão | não responde civilmente por conteúdo de terceiro | [MCI-18-19], se no bloco |
| N3 controlador / N4 operador | direitos do titular obtidos do controlador (art. 18, caput), por requerimento a agente de tratamento (§ 3º); o operador responde solidariamente pelos danos quando descumprir a legislação ou não seguir as instruções lícitas do controlador (art. 42, § 1º, I), salvo as excludentes do art. 43; papel do operador além disso: `PENDENTE DE FONTE` | [LGPD-18], [LGPD-42-45], se no bloco |
| N7 autor do conteúdo PASSIVO | legitimidade por publicação própria; sem regime de plataforma | [CF-5-IX-X], [CC-186-187], se no bloco |
| Juizado, réu | contestação e pedido contraposto nos limites do art. 31; reconvenção vedada | [JEC-30-31] |

## 2. Competência

- **Autoridade brasileira:** réu domiciliado no Brasil (pessoa jurídica estrangeira com agência, filial ou sucursal considera-se domiciliada), obrigação a cumprir no Brasil ou fato ocorrido no Brasil ([CPC-21]). Lei brasileira na coleta e tratamento com ato no território nacional: [MCI-11], se no bloco.
- **Foro (rito comum):** sede da pessoa jurídica ré, agência ou sucursal, lugar do cumprimento; lugar do ato ou fato na reparação de dano ([CPC-53], III e IV). Conferir o inciso do pedido concreto.
- **Juizado Especial Cível:** causas até quarenta salários mínimos; excluídas, entre outras, as de interesse da Fazenda Pública; renúncia ao excedente ([JEC-3]); foro do domicílio do réu, do lugar da obrigação ou do domicílio do autor ou local do fato na reparação de dano ([JEC-4]); incompetência territorial extingue o processo ([JEC3C-51], inciso III); advogado facultativo até vinte salários mínimos e obrigatório acima ([JEC3C-9]). Honra, reputação e personalidade no Juizado: § 3º do art. 19 do Marco Civil, se no bloco ([MCI-18-19]). Plataforma estrangeira, complexidade e perícia no Juizado: decisão do advogado.
- **Justiça Federal:** causas em que União, entidade autárquica ou empresa pública federal forem interessadas como autoras, rés, assistentes ou oponentes ([CF3C-109-I]); mandado de segurança contra ato de autoridade federal, excetuada a competência dos tribunais federais ([CF3C-109-VIII]). Inciso I (anulatória): a Agência Nacional de Proteção de Dados (ANPD) é autarquia de natureza especial vinculada ao Ministério da Justiça e Segurança Pública ([NAT-LGPD-55A], redação da Lei 15.352/2026); a Anatel integra a Administração Pública Federal indireta, em regime autárquico especial ([NAT-ANATEL-8]); o advogado confere o enquadramento no caso concreto antes de endereçar. Inciso VIII (MS): não depende da natureza da entidade; conferir, no ato impugnado, que a autoridade coatora é federal. MS e anulatória contra ato da ANPD ou da Anatel são redigidos por `controle-judicial-ato-administrativo`; esta skill só fixa o juízo. Produção antecipada contra União ou autarquia federal sem vara federal na localidade: juízo estadual ([CPC-381-384], art. 381, § 4º).
- **Relação de consumo:** se o BLOCO MATERIAL trouxer consumidor ([CDC-2]) e fornecedor de serviço no mercado de consumo ([CDC-3]), a ação de responsabilidade civil do fornecedor pode ser proposta no domicílio do autor ([CDC-101], inciso I). Marketplace: item 6 do Tema 987 ([T987ED-ITEM6], fonte parcial — embargos julgados em 17/06/2026, acórdão não publicado), se no bloco. A peça segue completa neste plugin.
- **Cláusula de lei ou foro estrangeiro nos termos colados:** confrontar com o art. 8º, parágrafo único, II, do Marco Civil ([MCI-8], se no bloco); análise do advogado, sem declarar nulidade automática.

## 3. Variantes por polo e rito

| Polo | Peça |
|---|---|
| ATIVO (N1, N2, N3, N7) | capítulo "Da competência e da legitimidade" da inicial ou da tutela antecedente: juízo escolhido, inciso, legitimidade de cada réu |
| PASSIVO (N5, N6, N3, N4, N7) | preliminar de incompetência absoluta ou relativa e de ilegitimidade ([CPC-335-342], art. 337, II e XI); contestação no foro do domicílio do réu, com comunicação ao juízo da causa (art. 340); indicação do sujeito passivo (art. 339) |
| TERCEIRO | manifestação sobre a própria condição (destinatário de ordem, não parte), sem mérito |

Rito comum × Juizado × federal: escolher pelo § 2; Juizado com interesse da Fazenda Pública fica excluído ([JEC-3], § 2º).

## 4. Peça (montar pelo template)

Capítulo ou manifestação com: endereçamento ao juízo · qualificação das partes · fatos que fixam competência e legitimidade (domicílio, sede, local do fato, relação de consumo, ato administrativo), com documento · fundamentos com `[ID]` · pedidos (fixação do juízo; remessa; no polo passivo, indicação do sujeito passivo e exclusão da parte, com intimação do autor para os atos do art. 339, §§ 1º e 2º; a substituição é ato do autor, arts. 338 e 339, [CPC-335-342]) · valor da causa quando a peça for a inicial ([CPC3-291-292]) · provas · fecho.

## 5. Saída e estados

Linha `POLO DO CLIENTE · NATUREZA <N1…N7> · POSIÇÃO <ATIVO|PASSIVO|REGULADO|TERCEIRO> · FASE não se aplica` + quadro **pedido → legitimado → destinatário → juízo e foro → `[ID]` → pendência** + capítulo + "Andamento" atualizado. Estados por item: `MINUTA PARA REVISÃO HUMANA` · `PENDENTE DE PROVA` (domicílio, sede, relação ou ato não comprovados) · `PENDENTE DE FONTE` (enquadramento sem bloco capturado; cláusula estrangeira sem análise) · `BLOQUEADO` (fato inventado, como réu sem existência documentada; competência inexistente) · `FORA DO RECORTE` (matéria alheia ao plugin, com destino citado; nunca por polo). Ao final, acionar `revisao-final-digital`.
