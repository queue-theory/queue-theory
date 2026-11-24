# Locales

## Codes

Every directory under `locales/` is named lowercase `<language>-<region>`
(e.g. `en-001`, `cy-gb`). `-001` means "world" (UN M.49), used for a
language-wide translation. Two-letter, region-less directories such as
`locales/en/` must not exist.

A directory name is also the locale's website route (`/<code>/`) and its
search-index name (`static/search/<code>.json`). The picker uses `_` and
mixed case (`cy_GB`); its bare value `en` means `en-001`.

## Files per locale

Each `locales/<code>/` contains exactly:

- `index.md`: the README, translated. Headings are translated, and the
  contents list and in-page links use the translated heading slugs.
- `README.md`: a symlink to `index.md` (`ln -s index.md README.md`).
- `.locale-peer-id`: 32 lowercase hex characters and a newline, byte-identical
  in every locale (`c9ede771d08b64d5a93892ec1615b3a9`). Never hand-edit.

The H2 sections keep the same order in every locale: the website's six
landing cards are chosen by H2 position (see [website.md](website.md)).

## Locales

| Directory | Picker value | Language | Notes |
|---|---|---|---|
| `ar-001` | `ar_001` | العربية | copy of `ar-eg` |
| `ar-dz` | `ar_DZ` | العربية (الجزائر) | copy of `ar-eg`; `noindex` |
| `ar-eg` | `ar_EG` | العربية (مصر) | translation source for Arabic; Modern Standard Arabic, formal register, right-to-left; `noindex` |
| `bg-001` | `bg_001` | Български | copy of `bg-bg` |
| `bg-bg` | `bg_BG` | Български (България) | translation source for Bulgarian; Cyrillic, formal address (Вие), decimal comma; `noindex` |
| `bn-001` | `bn_001` | বাংলা | copy of `bn-bd` |
| `bn-bd` | `bn_BD` | বাংলা (বাংলাদেশ) | translation source for Bengali; formal আপনি register; `noindex` |
| `bn-in` | `bn_IN` | বাংলা (ভারত) | copy of `bn-bd`; `noindex` |
| `cs-001` | `cs_001` | Čeština | copy of `cs-cz` |
| `cs-cz` | `cs_CZ` | Čeština (Česko) | translation source for Czech; Latin script, formal address (Vy), decimal comma; `noindex` |
| `cy-001` | `cy_001` | Cymraeg | copy of `cy-gb` |
| `cy-ar` | `cy_AR` | Cymraeg (Ariannin) | copy of `cy-gb`; `noindex` |
| `cy-gb` | `cy_GB` | Cymraeg (Y Deyrnas Unedig) | translation source for Welsh; `noindex` |
| `da-001` | `da_001` | Dansk | translation source for Danish; formal address (De), decimal comma |
| `da-dk` | `da_DK` | Dansk (Danmark) | copy of `da-001`; `noindex` |
| `de-001` | `de_001` | Deutsch | copy of `de-de` |
| `de-at` | `de_AT` | Deutsch (Österreich) | copy of `de-de`; `noindex` |
| `de-de` | `de_DE` | Deutsch (Deutschland) | translation source for German; formal address (Sie); `noindex` |
| `el-001` | `el_001` | Ελληνικά | copy of `el-gr` |
| `el-cy` | `el_CY` | Ελληνικά (Κύπρος) | copy of `el-gr`; `noindex` |
| `el-gr` | `el_GR` | Ελληνικά (Ελλάδα) | translation source for Greek; Greek script, formal address (εσείς), decimal comma; `noindex` |
| `en-001` | `en` | English | source of truth (mirror of root `README.md`) |
| `en-gb` | `en_GB` | English (Great Britain) | British spelling; `noindex` |
| `en-ie` | `en_IE` | English (Ireland) | copy of `en-gb`; British spelling; `noindex` |
| `en-us` | `en_US` | English (United States) | American spelling; `noindex` |
| `es-001` | `es_001` | Español | copy of `es-mx` |
| `es-es` | `es_ES` | Español (España) | `es-mx` adapted to Spain: vocabulary (fallo, recuento, cesta, fiabilidad), decimal comma, 24-hour times; `noindex` |
| `es-mx` | `es_MX` | Español (México) | translation source for Spanish; `noindex` |
| `et-001` | `et_001` | Eesti | copy of `et-ee` |
| `et-ee` | `et_EE` | Eesti (Eesti) | translation source for Estonian; formal address (teie), decimal comma, „“ quotes; `noindex` |
| `eu-001` | `eu_001` | Euskara | copy of `eu-es` |
| `eu-es` | `eu_ES` | Euskara (Espainia) | translation source for Basque; standard address (zu), decimal comma, «» quotes, prefix percent (%80); `noindex` |
| `fa-001` | `fa_001` | فارسی | translation source for Persian; right-to-left; formal address (شما); Persian punctuation (، ؛ ؟ «»); Western digits so numbers match the formulas |
| `fi-001` | `fi_001` | Suomi | copy of `fi-fi` |
| `fi-fi` | `fi_FI` | Suomi (Suomi) | translation source for Finnish; formal address (te, plural forms), decimal comma, ” ” quotes; `noindex` |
| `fr-001` | `fr_001` | Français | copy of `fr-fr` |
| `fr-be` | `fr_BE` | Français (Belgique) | copy of `fr-fr`; `noindex` |
| `fr-ca` | `fr_CA` | Français (Canada) | `fr-fr` adapted to Quebec: billet for ticket, no space before ; ? !, 24-hour times written 2 h 00; `noindex` |
| `fr-fr` | `fr_FR` | Français (France) | translation source for French; formal vous register, French spacing before : ; ? !; `noindex` |
| `fr-lu` | `fr_LU` | Français (Luxembourg) | copy of `fr-fr`; `noindex` |
| `ga-001` | `ga_001` | Gaeilge | copy of `ga-ie` |
| `ga-ie` | `ga_IE` | Gaeilge (Éire) | translation source for Irish; formal address (sibh, plural forms); `noindex` |
| `gd-001` | `gd_001` | Gàidhlig | copy of `gd-gb` |
| `gd-gb` | `gd_GB` | Gàidhlig (Breatainn Mhòr) | translation source for Scottish Gaelic; formal address (sibh, plural imperatives); `noindex` |
| `gu-001` | `gu_001` | ગુજરાતી | translation source for Gujarati; formal address (આપ); Western digits so numbers match the formulas |
| `ha-001` | `ha_001` | Hausa | translation source for Hausa; formal address (ku, plural forms); Boko (Latin) script |
| `he-001` | `he_001` | עברית | translation source for Hebrew; formal address (plural אתם forms); right-to-left |
| `hi-001` | `hi_001` | हिन्दी | copy of `hi-in` |
| `hi-in` | `hi_IN` | हिन्दी (भारत) | translation source for Hindi; formal register; `noindex` |
| `hi-np` | `hi_NP` | हिन्दी (नेपाल) | copy of `hi-in`; `noindex` |
| `hr-001` | `hr_001` | Hrvatski | copy of `hr-hr` |
| `hr-hr` | `hr_HR` | Hrvatski (Hrvatska) | translation source for Croatian; formal address (Vi); `noindex` |
| `hu-001` | `hu_001` | Magyar | copy of `hu-hu` |
| `hu-hu` | `hu_HU` | Magyar (Magyarország) | translation source for Hungarian; formal address (Ön); `noindex` |
| `id-001` | `id_001` | Bahasa Indonesia | copy of `id-id` |
| `id-id` | `id_ID` | Bahasa Indonesia (Indonesia) | translation source for Indonesian; formal Anda register; `noindex` |
| `id-my` | `id_MY` | Bahasa Indonesia (Malaysia) | copy of `id-id`; `noindex` |
| `is-001` | `is_001` | Íslenska | copy of `is-is` |
| `is-is` | `is_IS` | Íslenska (Ísland) | translation source for Icelandic; formal address (þér, plural imperatives), decimal comma, „ “ quotes; `noindex` |
| `it-001` | `it_001` | Italiano | copy of `it-it` |
| `it-it` | `it_IT` | Italiano (Italia) | translation source for Italian; formal address (Lei), decimal comma; `noindex` |
| `ja-001` | `ja_001` | 日本語 | copy of `ja-jp` |
| `ja-jp` | `ja_JP` | 日本語（日本） | translation source for Japanese; formal です・ます register; `noindex` |
| `jv-001` | `jv_001` | Basa Jawa | translation source for Javanese; formal krama register (panjenengan, mangga), decimal comma, „ “ quotes |
| `km-001` | `km_001` | ខ្មែរ | copy of `km-kh` |
| `km-kh` | `km_KH` | ខ្មែរ (កម្ពុជា) | translation source for Khmer; formal address (លោកអ្នក, សូម), decimal comma, “ ” quotes, ។ and ៖ punctuation; `noindex` |
| `kn-001` | `kn_001` | ಕನ್ನಡ | translation source for Kannada; formal address (ನೀವು, ದಯವಿಟ್ಟು), decimal point, “ ” quotes |
| `ko-001` | `ko_001` | 한국어 | copy of `ko-kr` |
| `ko-kr` | `ko_KR` | 한국어(대한민국) | translation source for Korean; formal 합니다체 register; `noindex` |
| `kw-001` | `kw_001` | Kernewek | copy of `kw-gb` |
| `kw-gb` | `kw_GB` | Kernewek (Breten Veur) | translation source for Cornish (Standard Written Form); formal address (hwi, -ewgh imperatives, mar pleg), decimal point, “ ” quotes; `noindex` |
| `lb-001` | `lb_001` | Lëtzebuergesch | copy of `lb-lu` |
| `lb-lu` | `lb_LU` | Lëtzebuergesch (Lëtzebuerg) | translation source for Luxembourgish (2019 orthography, n-rule); formal address (Dir, Är, w.e.g.), decimal comma, „ “ quotes; `noindex` |
| `lo-001` | `lo_001` | ລາວ | copy of `lo-la` |
| `lo-la` | `lo_LA` | ລາວ (ປະເທດລາວ) | translation source for Lao; formal address (ທ່ານ, ກະລຸນາ), decimal point, “ ” quotes; `noindex` |
| `lt-001` | `lt_001` | Lietuvių | copy of `lt-lt` |
| `lt-lt` | `lt_LT` | Lietuvių (Lietuva) | translation source for Lithuanian; formal address (Jūs, -kite imperatives, prašome), decimal comma, „ “ quotes; `noindex` |
| `lv-001` | `lv_001` | Latviešu | copy of `lv-lv` |
| `lv-lv` | `lv_LV` | Latviešu (Latvija) | translation source for Latvian; formal address (Jūs, -iet imperatives, lūdzu), decimal comma, „ “ quotes; `noindex` |
| `mr-001` | `mr_001` | मराठी | translation source for Marathi; formal address (आपण, कृपया), decimal point, “ ” quotes |
| `ms-001` | `ms_001` | Bahasa Melayu | translation source for Malay; formal address (anda, sila), decimal point, “ ” quotes |
| `mt-001` | `mt_001` | Malti | copy of `mt-mt` |
| `mt-mt` | `mt_MT` | Malti (Malta) | translation source for Maltese; formal address (jekk jogħġbok), decimal point, “ ” quotes; `noindex` |
| `nb-001` | `nb_001` | Norsk bokmål | copy of `nb-no` |
| `nb-no` | `nb_NO` | Norsk bokmål (Norge) | translation source for Norwegian Bokmål; formal address (De, Deres, vennligst), decimal comma, `10 %`, « » quotes; `noindex` |
| `nl-001` | `nl_001` | Nederlands | copy of `nl-nl` |
| `nl-be` | `nl_BE` | Nederlands (België) | copy of `nl-nl`; `noindex` |
| `nl-nl` | `nl_NL` | Nederlands (Nederland) | translation source for Dutch; formal address (u); `noindex` |
| `pa-001` | `pa_001` | ਪੰਜਾਬੀ | translation source for Punjabi (Gurmukhi); formal address (ਤੁਸੀਂ, ਕਿਰਪਾ ਕਰਕੇ), decimal point, “ ” quotes |
| `pcm-001` | `pcm_001` | Naijá | translation source for Nigerian Pidgin; polite address (please, you), decimal point, " " quotes |
| `pl-001` | `pl_001` | Polski | copy of `pl-pl` |
| `pl-pl` | `pl_PL` | Polski (Polska) | translation source for Polish; formal address (prosimy, proszę, impersonal forms), decimal comma, `10%`, „ ” quotes; `noindex` |
| `pt-001` | `pt_001` | Português | copy of `pt-br` |
| `pt-br` | `pt_BR` | Português (Brasil) | translation source for Portuguese; formal address (imperative and impersonal forms, no tu); `noindex` |
| `pt-pt` | `pt_PT` | Português (Portugal) | copy of `pt-br` with European Portuguese spelling and vocabulary; `noindex` |
| `ro-001` | `ro_001` | Română | copy of `ro-ro` |
| `ro-ro` | `ro_RO` | Română (România) | translation source for Romanian; formal address (dumneavoastră, vă rugăm), decimal comma, `10%`, „ ” quotes, 24-hour times; `noindex` |
| `ru-001` | `ru_001` | Русский | copy of `ru-ru` |
| `ru-by` | `ru_BY` | Русский (Беларусь) | copy of `ru-ru`; `noindex` |
| `ru-ru` | `ru_RU` | Русский (Россия) | translation source for Russian; formal вы register, «» quotes; `noindex` |
| `sco-001` | `sco_001` | Scots | copy of `sco-gb` |
| `sco-gb` | `sco_GB` | Scots (Scotland) | translation source for Scots; formal address (please, you), decimal point, `10%`; `noindex` |
| `sk-001` | `sk_001` | Slovenčina | copy of `sk-sk` |
| `sk-sk` | `sk_SK` | Slovenčina (Slovensko) | translation source for Slovak; formal address (vykanie, prosím), decimal comma, `10 %`, „ “ quotes, 24-hour times; `noindex` |
| `sl-001` | `sl_001` | Slovenščina | copy of `sl-si` |
| `sl-si` | `sl_SI` | Slovenščina (Slovenija) | translation source for Slovenian; formal address (vikanje, prosimo), decimal comma, `10 %`, „ “ quotes, 24-hour times; `noindex` |
| `sv-001` | `sv_001` | Svenska | copy of `sv-se` |
| `sv-se` | `sv_SE` | Svenska (Sverige) | translation source for Swedish; formal address (ni); `noindex` |
| `sw-001` | `sw_001` | Kiswahili | copy of `sw-tz` |
| `sw-tz` | `sw_TZ` | Kiswahili (Tanzania) | translation source for Swahili; respectful plural address (tazameni, punguzeni); `noindex` |
| `ta-001` | `ta_001` | தமிழ் | translation source for Tamil; formal address (நீங்கள், -ங்கள் imperatives, தயவுசெய்து), decimal point, “ ” quotes |
| `te-001` | `te_001` | తెలుగు | translation source for Telugu; formal address (మీరు, -ండి imperatives, దయచేసి), decimal point, “ ” quotes |
| `th-001` | `th_001` | ไทย | copy of `th-th` |
| `th-th` | `th_TH` | ไทย (ประเทศไทย) | translation source for Thai; formal address (ท่าน, โปรด), decimal point, “ ” quotes, 24-hour times with น.; `noindex` |
| `tl-001` | `tl_001` | Tagalog | translation source for Tagalog; formal address (kayo, ninyo, po, paki-), decimal point, “ ” quotes |
| `tr-001` | `tr_001` | Türkçe | copy of `tr-tr` |
| `tr-tr` | `tr_TR` | Türkçe (Türkiye) | translation source for Turkish; formal address (siz), decimal comma, percent sign first (%80); `noindex` |
| `uk-001` | `uk_001` | Українська | translation source for Ukrainian; formal address (ви), decimal comma, «» quotes, 24-hour times |
| `ur-001` | `ur_001` | اردو | translation source for Urdu; right-to-left; formal address (آپ) |
| `vi-001` | `vi_001` | Tiếng Việt | copy of `vi-vn` |
| `vi-vn` | `vi_VN` | Tiếng Việt (Việt Nam) | translation source for Vietnamese; formal address (quý vị); `noindex` |
| `wuu-001` | `wuu_001` | 吴语 | translation source for Wu Chinese; Simplified characters, Shanghai-style written Wu; no formal/informal pronoun choice (侬) |
| `yue-001` | `yue_001` | 粵語 | translation source for Cantonese; Traditional characters, Hong Kong-style written Cantonese; formal address (您) |
| `zh-001` | `zh_001` | 中文 | copy of `zh-cn` |
| `zh-cn` | `zh_CN` | 中文（中国） | Simplified Chinese translation source; formal address (您); `noindex` |
| `zh-tw` | `zh_TW` | 中文（台灣） | Traditional Chinese, adapted from `zh-cn` with Taiwan vocabulary, 「」 quotes, and formal address (您) |

Copies are `noindex` and left out of `sitemap.xml`, so search engines index
one page per language (`NOINDEX` in `queue-theory.github.io/src/lib/locales.js`).

## Translation workflow

1. Translate `locales/en-001/index.md` into the locale's `index.md`, one locale
   at a time (not with parallel subagents).
2. Keep product names, code, formulas, symbols, URLs, and proper nouns
   untranslated. External link titles may stay in their original language.
3. Regenerate the contents list anchors from the translated headings.
4. Add the picker value to `LOCALES` and, for a new language, the hero strings
   in `queue-theory.github.io/src/lib/data/hero.js`.
5. Run `make content check build verify`.

Dialect guidance for `en-gb` and `en-us` follows the shared rules in
`ai-agents-tips/rules/locales-for-global-sharing-with-svelte`.
