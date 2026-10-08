# Índice do context/ — Digital Contencioso OS

Excertos literais de fontes oficiais/primárias capturadas em 02/10/2026, com id, URL, data e sha256 no topo de cada arquivo. Captura ≠ conferência jurídica ≠ vigência certificada.

**Ampliação v0.3 (07/10/2026):** 13 arquivos novos, capturados em 07/10/2026 pelas lanes W2–W5b da Trilha B: 137 blocos de CPC e CF (fase judicial e recursos excepcionais), Lei 9.099 (recurso e execução), Lei 12.016, Lei 9.784, Lei 7.347, CNMP (inquérito civil e TAC), Anatel (fiscalização, sanções e Pado), NIC.br SACI-Adm, STF Temas 987 e 533 depois dos embargos, LGPD e ANPD consultivas. Revisão independente REV-W2 a REV-W5b: PASS (o CONCERNS do REV-W5 foi resolvido pela W5b). Os bloqueios B1–B9 não foram reavaliados nesta ampliação. Avisos que acompanham os arquivos: o efeito da ADI 4296 sobre a Lei 12.016 está `PENDENTE DE FONTE`; a Res. Anatel 791/2026 não tem regra de transição, e ato anterior ao seu vigor fica `PENDENTE DE FONTE`; o Tema 987 está em decisão de julgamento, não em acórdão, e o termo inicial dos 60 dias segue aberto (B3); o Tema 533 não tem resultado proclamado (B2); o SACI-Adm é regulamento privado do NIC.br, não autoridade pública; a disputa de domínio `.br` no SACI-Adm está dentro do recorte, pela skill `saci-adm-dominio-br`. **Hashes:** o `sha256_raw` de página HTML (Planalto, Anatel, registro.br, DOU, ANPD e páginas de norma do CNMP) registra o momento da captura e não se reproduz, porque a página muda a cada requisição. A âncora verificável é o `sha256_excerto` de cada bloco e o `sha256_corpo` do texto limpo; nas capturas do Planalto da W3, o `sha256_corpo` é o SHA-256 de `limpar(html) + "\n"`. Os RTF e PDF do STF e os PDF do CNMP reproduzem também o `sha256_raw`. A captura nova da Lei 9.099 usa o id `lei-9099-jec-v03`, para não colidir com `lei-9099-jec`. Os pacotes de proveniência das lanes W2–W5 ainda não estão registrados em `tests/conferir-context.py`. **Lacunas da onda 2 (W9, 07/10/2026):** `v03-lacunas-onda2.md`, 40 blocos (Lei 9.099, CPC 85 e 1.015, CF 105 §§ 2º e 3º, Lei 15.484/2026, natureza jurídica de ANPD e Anatel, LGPD arts. 8º a 10, Res. CD/ANPD 2/2022 e 19/2024 Anexo II com a retificação de 18/08/2025, guia de cookies da ANPD); revisão REV-W9: PASS. A redação vigente do art. 55-A da LGPD é a da Lei 15.352/2026 ("Agência Nacional de Proteção de Dados"); a da Lei 14.460/2022 foi substituída, mas o Planalto não a marca como anterior. O início de vigência da Lei 15.484/2026 não foi calculado. O pacote W9 também não está registrado em `tests/conferir-context.py`.

**Ampliação multipolo (v0.2.0):** blocos de ANPD (Res. 1/2021 fiscalização e sancionador, Res. 4/2023 dosimetria, Res. 15/2024 incidentes), LGPD, Lei 9.099 e CPC (contestação, reconvenção, revelia, prazos em dias úteis, recursos; este último pela captura de 06/10/2026, com proveniência conferida pelo leitor estendido) aprovados um a um pela conferência independente de 06/10/2026 e importados pelas faixas do texto capturado em 02/10/2026. Fora de propósito nesta versão: cobrança/Cadin dos arts. 66–69 da Res. 1/2021 (divergência legal superveniente), art. 55-A da LGPD (atribuição editorial rejeitada nesta versão; o texto literal da página compilada entrou na ampliação W9, `v03-lacunas-onda2.md`, bloco NAT-LGPD-55A), CF art. 109, exceto o caput com o inciso I e o inciso VIII, capturados no complemento B-5 de 07/10/2026 (`context/v03-complemento-b5.md`); a Lei 9.784/1999 foi capturada na ampliação v0.3, `lei-9784-processo-administrativo.md`); valor numérico de multa (apêndices da Res. 4/2023 não capturados).

**Fora do context/ de propósito:** cópia secundária do TRT/RJ da tese do Tema 987 (A04, secundária — não aprova regime); campo 'Tese' do portal do Tema 987 (redação de 2025, superada); termos Meta/Instagram/WhatsApp (não capturados, B5); inteiro teor do STJ (L04); Lei 9.610, normas do TSE (fronteira). O CDC saiu desta lista na v0.3 (decisão Q3 de 07/10/2026): os dispositivos usados estão em `context/cdc-lei-8078.md`.

| Arquivo | Fonte (id) | IDs de bloco |
|---|---|---|
| `context/marco-civil-lei-12965.md` | lei-12965-marco-civil | MCI-5, MCI-7, MCI-8, MCI-10, MCI-11, MCI-13, MCI-15, MCI-18-19, MCI-20-21, MCI-22-23 |
| `context/decreto-8771-compilado.md` | dec-8771-2016-regulamenta-mci | DEC-15A, DEC-16A, DEC-16D, DEC-16E, DEC-16G |
| `context/decreto-12975-2026.md` | dec-12975-2026-altera-dec-8771 | D12975-EMENTA, D12975-VIGOR, D12975-DOU |
| `context/stf-adi-7981-noticia.md` | stf-noticia-adi-7981-decreto-12975 | ADI7981-NOTICIA |
| `context/stf-adi-7981-andamentos.md` | stf-adi-7981-andamentos | ADI7981-ANDAMENTO |
| `context/stf-tema-987-pagina.md` | stf-tema-987-pagina | T987-TITULO, T987-SITUACAO |
| `context/stf-tema-987-andamento-fragmento.md` | stf-tema-987-andamento | T987-ED-ITEM2, T987-ED-ITEM3, T987-ED-ITEM32, T987-ED-CORTE |
| `context/stf-tema-987-certidao-transito.md` | stf-tema-987-certidao-transito | T987-TRANSITO |
| `context/stf-tema-987-acordao-merito.md` | stf-tema-987-acordao-merito-inteiro-teor | T987-2025-ITEM3, T987-2025-ITEM14 |
| `context/stf-noticia-plataformas-60-dias.md` | stf-noticia-plataformas-60-dias-17-06-2026 | T987-NOTICIA |
| `context/stf-tema-533-pagina.md` | stf-tema-533-pagina | T533-TITULO, T533-SITUACAO |
| `context/stf-tema-533-andamento.md` | stf-tema-533-andamento | T533-ED-SUSPENSO, T533-ANDAMENTO |
| `context/stf-tema-533-certidao-ed-24-09-2026.md` | stf-tema-533-certidao-julgamento-ed-24-09-2026 | T533-VOTO-ITEM4, T533-VOTO-PRAZO |
| `context/stf-tema-786-pagina.md` | stf-tema-786-pagina | T786-SITUACAO |
| `context/stf-tema-786-andamento.md` | stf-tema-786-andamento | T786-TESE |
| `context/lgpd-lei-13709.md` | lei-13709-lgpd | LGPD-1, LGPD-3, LGPD-4, LGPD-5, LGPD-18, LGPD-19, LGPD-20, LGPD-21-22, LGPD-42-45, LGPD-55J-IV, LGPD-55J-V, LGPD-37-39, LGPD-48, LGPD-52, LGPD-53-54, LGPD-55J-XVII |
| `context/anpd-res-cd-1-2021.md` | anpd-res-cd-1-2021-fiscalizacao-sancionador | ANPD-R1-DEF, ANPD-R1-25, ANPD-R1-26, ANPD-R1-1, ANPD-R1-4, ANPD-R1-5-6, ANPD-R1-8, ANPD-R1-12, ANPD-R1-13, ANPD-R1-17-VIII, ANPD-R1-15-16, ANPD-R1-27-31, ANPD-R1-33-36, ANPD-R1-32, ANPD-R1-37-38, ANPD-R1-40-44, ANPD-R1-45-49, ANPD-R1-50-54, ANPD-R1-55-57, ANPD-R1-58-62, ANPD-R1-63-65 |
| `context/anpd-res-cd-4-2023-dosimetria.md` | anpd-res-cd-4-2023-dosimetria-dou | ANPD-R4-2-3, ANPD-R4-2-DEF, ANPD-R4-3-6, ANPD-R4-7-8, ANPD-R4-9-10, ANPD-R4-11-15, ANPD-R4-16, ANPD-R4-17-19, ANPD-R4-20-26, ANPD-R4-27-28 |
| `context/anpd-res-cd-15-2024-incidentes.md` | anpd-res-cd-15-2024-incidentes-dou | ANPD-R15-3, ANPD-R15-4-5, ANPD-R15-6-8, ANPD-R15-9, ANPD-R15-10, ANPD-R15-11-15, ANPD-R15-16-17, ANPD-R15-18-23 |
| `context/anpd-res-cd-2-2022-pequeno-porte.md` | anpd-res-cd-2-2022-pequeno-porte | ANPD-R2-14, ANPD-R2-15 |
| `context/anpd-res-cd-18-2024-encarregado.md` | anpd-res-cd-18-2024-encarregado-dou | ANPD-R18-10 |
| `context/anpd-titular-de-dados.md` | anpd-titular-de-dados | ANPD-TITULAR |
| `context/anpd-denuncia-peticao-de-titular.md` | anpd-denuncia-peticao-de-titular | ANPD-PETICAO |
| `context/anpd-agenda-regulatoria-2025-2026.md` | anpd-res-cd-31-2025-agenda-regulatoria-dou | ANPD-AGENDA |
| `context/anpd-regulamentacoes-indice.md` | anpd-regulamentacoes-indice | ANPD-INDICE |
| `context/cpc-recortes.md` | lei-13105-cpc | CPC-21, CPC-53, CPC-85, CPC-297-300, CPC-381-384, CPC-396-404, CPC-411, CPC-422, CPC-439-441, CPC-497-500, CPC-536-537, CPC-1015 |
| `context/cpc-r30-multipolo.md` | lei-13105-cpc (captura de 06/10/2026) | CPC-335-342, CPC-343, CPC-344-346, CPC-219, CPC-1003, CPC-1009 |
| `context/codigo-civil-recortes.md` | lei-10406-cc | CC-11-21, CC-186-187, CC-927, CC-944, CC-953 |
| `context/cf-recortes.md` | cf-1988 | CF-5-IX-X, CF-5-XXXV, CF-5-LIV-LV |
| `context/lei-9099-jec.md` | lei-9099-jec | JEC-3, JEC-4, JEC-30-31 |
| `context/lei-8935-notarios.md` | lei-8935-notarios | NOT-6, NOT-7 |
| `context/cnj-provimento-100-2020.md` | cnj-provimento-100-2020-pdf | CNJ-100-20 |
| `context/mp-2200-2-2001.md` | mp-2200-2-2001-icp-brasil | MP2200-10 |
| `context/stj-resp-1784156-ementa.md` | stj-resp-1784156-ementa-rej-html | STJ-1784156 |
| `context/stj-informativo-844-2025.md` | stj-informativo-844-2025 | STJ-INFO844 |
| `context/plat-google-termos.md` | plat-google-termos-pt-br | G-GOOGLE |
| `context/plat-x-termos.md` | plat-x-termos-pt | G-X |
| `context/plat-tiktok-termos.md` | plat-tiktok-termos-pt-br | G-TIKTOK |
| `context/plat-google-perfil-empresa.md` | plat-google-perfil-empresa-diretrizes | G-GBP |
| `context/lei-15211-eca-digital-triagem.md` | lei-15211-eca-digital-triagem | ECA-DIGITAL-VIGOR |
| `context/dec-12976-2026-triagem.md` | dec-12976-2026-violencia-digital-genero | D12976-EMENTA |
| `context/cpc-v03-fase-judicial.md` | lei-13105-cpc (pacote fontes-cpc-cf-w2-2026-10-07) | CPC3-231, CPC3-291-292, CPC3-303-310, CPC3-319-321, CPC3-330-332, CPC3-334, CPC3-350-351, CPC3-357, CPC3-369-373, CPC3-464-465, CPC3-520-527, CPC3-994-998, CPC3-1010-1014, CPC3-1016-1021, CPC3-1022-1026, CPC3-1029-1042 |
| `context/cf-v03-recursos-excepcionais.md` | cf-1988 (pacote fontes-cpc-cf-w2-2026-10-07) | CF3-102-III, CF3-102-P3, CF3-105-III |
| `context/lei-9099-v03-recursos-execucao.md` | lei-9099-jec-v03 | JEC3-41-46, JEC3-52 |
| `context/lei-12016-mandado-seguranca.md` | lei-12016-ms | MS-1, MS-5-7, MS-10, MS-14, MS-23 |
| `context/lei-9784-processo-administrativo.md` | lei-9784-pa | PA-2, PA-3, PA-26-28, PA-38, PA-44, PA-50, PA-53-54, PA-56-65, PA-66 |
| `context/lei-7347-acp.md` | lei-7347-acp | ACP-1, ACP-5, ACP-8, ACP-9 |
| `context/cnmp-inquerito-civil-tac.md` | cnmp-res-23-2007-compilada | CNMP-IC-1-3, CNMP-IC-4, CNMP-IC-5, CNMP-IC-6, CNMP-IC-9-9A, CNMP-IC-10-13, CNMP-IC-14 |
| `context/cnmp-inquerito-civil-tac.md` | cnmp-res-179-2017-compilada-326 | CNMP-TAC-1-4, CNMP-TAC-6-8, CNMP-TAC-9-12 |
| `context/anatel-fiscalizacao-sancoes.md` | anatel-res-746-2021-rfr | ANATEL-RFR-39-41 |
| `context/anatel-fiscalizacao-sancoes.md` | anatel-res-589-2012-rasa | ANATEL-RASA-4, ANATEL-RASA-25-30, ANATEL-RASA-31-32A, ANATEL-RASA-33 |
| `context/anatel-fiscalizacao-sancoes.md` | anatel-res-791-2026-regimento-interno | ANATEL-RI-RES791-3, ANATEL-RI-89-99, ANATEL-RI-112-114, ANATEL-RI-117-127, ANATEL-RI-128, ANATEL-RI-129-131 |
| `context/nicbr-saci-adm.md` | nicbr-saci-adm-regulamento-2022 | SACI-CAB-DATA, SACI-1, SACI-6-7, SACI-8-11, SACI-12-15, SACI-16-24, SACI-25, SACI-30-31, SACI-36 |
| `context/stf-tema-987-embargos-inteiro-teor.md` | stf-tema-987-ed-decisao-julgamento-2026 | T987ED-CAB, T987ED-ITEM2, T987ED-ITEM3, T987ED-ITEM32, T987ED-ITEM33, T987ED-ITEM34, T987ED-ITEM4, T987ED-ITEM5, T987ED-ITEM6, T987ED-ITEM7-9, T987ED-ITEM10, T987ED-ITEM11, T987ED-ITEM12, T987ED-ITEM13, T987ED-ITEM14, T987ED-FECHO, T987ED-DEC-1106, T987ED-SEM-ACORDAO, T987ED-ATA-ED, T987ED-ATA-ED-1806, T987ED-ATA-ED-1506 |
| `context/stf-tema-533-embargos-decisao.md` | stf-tema-533-ed-pos-24-09-2026 | T533ED-MC-IDENT, T533ED-MC-VI, T533ED-MC-DATA, T533ED-ANDAMENTO, T533ED-DEC-2409, T533ED-JULG-2409, T533ED-ATA-2509 |
| `context/lgpd-v03-consultiva.md` | lei-13709-lgpd-v03 | LGPD3-6, LGPD3-7, LGPD3-11, LGPD3-14, LGPD3-33, LGPD3-34, LGPD3-35, LGPD3-36, LGPD3-41, LGPD3-46, LGPD3-47, LGPD3-49, LGPD3-50, LGPD3-51 |
| `context/anpd-v03-consultiva.md` | res-cd-anpd-19-2024 | ANPD3-R19-RES, ANPD3-R19-A1, ANPD3-R19-A3, ANPD3-R19-A4-8, ANPD3-R19-A9, ANPD3-R19-A15-17, ANPD3-R19-A18-20, ANPD3-R19-A21-24, ANPD3-R19-A25-28, ANPD3-R19-A34 |
| `context/anpd-v03-consultiva.md` | anpd-ripd-perguntas-respostas | ANPD3-RIPD-CONCEITO, ANPD3-RIPD-QUANDO, ANPD3-RIPD-RISCO, ANPD3-RIPD-CONTEUDO, ANPD3-RIPD-PUBLICIDADE, ANPD3-RIPD-ESCOPO, ANPD3-RIPD-ALTO-RISCO, ANPD3-RIPD-ENVIO, ANPD3-RIPD-ENCARREGADO, ANPD3-RIPD-POS |
| `context/anpd-v03-consultiva.md` | res-cd-anpd-18-2024 | ANPD3-R18-RES, ANPD3-R18-A3-7, ANPD3-R18-A8-11, ANPD3-R18-A12-14, ANPD3-R18-A15-17, ANPD3-R18-A18-21 |
| `context/cdc-lei-8078.md` | lei-8078-cdc (pacote fontes-cdc-w6-2026-10-07) | CDC-2, CDC-3, CDC-4-CAPUT-I, CDC-6-CAPUT, CDC-6-III-IV, CDC-6-VI, CDC-6-VIII, CDC-7-PU, CDC-12, CDC-14, CDC-17, CDC-18-CAPUT, CDC-20, CDC-25, CDC-27, CDC-39-CAPUT-V, CDC-42-PU, CDC-43, CDC-51-CAPUT-I, CDC-51-IV, CDC-51-XV, CDC-51-P1, CDC-54, CDC-81, CDC-82, CDC-83, CDC-84, CDC-101 |
| `context/v03-complemento-b5.md` | lei-13105-cpc · cf-1988 · lei-9099-jec-v03 (pacote fontes-complemento-b5-w8-2026-10-07) | CPC3C-513, CPC3C-1007, CF3C-109-I, CF3C-109-VIII, JEC3C-9, JEC3C-20, JEC3C-51 |
| `context/v03-lacunas-onda2.md` | lei-9099-jec-v03 · lei-13105-cpc · cf-1988 · lei-15484-2026-relevancia-resp · lei-13709-lgpd-compilado-v03l · lei-14460-2022-anpd-autarquia · lei-15352-2026-agencia-anpd · lei-9472-lgt-anatel · anpd-res-cd-2-2022-pequeno-porte-v03l · anpd-res-cd-19-2024-gov-br-retificada · anpd-guia-cookies-2022 (pacote fontes-lacunas-onda2-w9-2026-10-07) | JEC3L-8, JEC3L-48-50, JEC3L-54-55, CPC3L-85-P1-P2, CPC3L-85-P8, CPC3L-85-P11, CPC3L-1015, CF3L-105-P2-P3, L15484-EMENTA, L15484-1, L15484-4, L15484-7, L15484-DOU, NAT-LGPD-55A, NAT-14460-EMENTA, NAT-14460-1, NAT-14460-7, NAT-14460-10, NAT-15352-EMENTA, NAT-15352-1-55A, NAT-15352-21, NAT-ANATEL-8, LGPD3L-8, LGPD3L-9, LGPD3L-10, ANPD3L-R2-OBS, ANPD3L-R2-2, ANPD3L-R2-3, ANPD3L-R2-11, ANPD3L-R19-OBS, ANPD3L-R19-A2-S1, ANPD3L-R19-A2-C5-10, ANPD3L-R19-A2-C11-17, ANPD3L-R19-A2-C18-24, ANPD3L-R19-A2-S3-S4, ANPD3L-COOKIES-VERSAO, ANPD3L-COOKIES-HL, ANPD3L-COOKIES-CONS, ANPD3L-COOKIES-LI, ANPD3L-COOKIES-NOTAS |
| `context/metodologia-digital.md` | mapa metodológico do plugin (não é fonte; aponta para os `[ID]` dos arquivos acima) | — (sem blocos próprios) |
