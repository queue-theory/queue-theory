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
| `fr-001` | `fr_001` | Français | copy of `fr-fr` |
| `fr-ca` | `fr_CA` | Français (Canada) | `fr-fr` adapted to Quebec: billet for ticket, no space before ; ? !, 24-hour times written 2 h 00; `noindex` |
| `fr-fr` | `fr_FR` | Français (France) | translation source for French; formal vous register, French spacing before : ; ? !; `noindex` |
| `hi-001` | `hi_001` | हिन्दी | copy of `hi-in` |
| `hi-in` | `hi_IN` | हिन्दी (भारत) | translation source for Hindi; formal register; `noindex` |
| `hi-np` | `hi_NP` | हिन्दी (नेपाल) | copy of `hi-in`; `noindex` |
| `id-001` | `id_001` | Bahasa Indonesia | copy of `id-id` |
| `id-id` | `id_ID` | Bahasa Indonesia (Indonesia) | translation source for Indonesian; formal Anda register; `noindex` |
| `id-my` | `id_MY` | Bahasa Indonesia (Malaysia) | copy of `id-id`; `noindex` |
| `it-001` | `it_001` | Italiano | copy of `it-it` |
| `it-it` | `it_IT` | Italiano (Italia) | translation source for Italian; formal address (Lei), decimal comma; `noindex` |
| `ja-001` | `ja_001` | 日本語 | copy of `ja-jp` |
| `ja-jp` | `ja_JP` | 日本語（日本） | translation source for Japanese; formal です・ます register; `noindex` |
| `ko-001` | `ko_001` | 한국어 | copy of `ko-kr` |
| `ko-kr` | `ko_KR` | 한국어(대한민국) | translation source for Korean; formal 합니다체 register; `noindex` |
| `nl-001` | `nl_001` | Nederlands | copy of `nl-nl` |
| `nl-nl` | `nl_NL` | Nederlands (Nederland) | translation source for Dutch; formal address (u); `noindex` |
| `pt-001` | `pt_001` | Português | copy of `pt-br` |
| `pt-br` | `pt_BR` | Português (Brasil) | translation source for Portuguese; formal address (imperative and impersonal forms, no tu); `noindex` |
| `pt-pt` | `pt_PT` | Português (Portugal) | copy of `pt-br` with European Portuguese spelling and vocabulary; `noindex` |
| `ru-001` | `ru_001` | Русский | copy of `ru-ru` |
| `ru-by` | `ru_BY` | Русский (Беларусь) | copy of `ru-ru`; `noindex` |
| `ru-ru` | `ru_RU` | Русский (Россия) | translation source for Russian; formal вы register, «» quotes; `noindex` |
| `sv-001` | `sv_001` | Svenska | copy of `sv-se` |
| `sv-se` | `sv_SE` | Svenska (Sverige) | translation source for Swedish; formal address (ni); `noindex` |
| `sw-001` | `sw_001` | Kiswahili | copy of `sw-tz` |
| `sw-tz` | `sw_TZ` | Kiswahili (Tanzania) | translation source for Swahili; respectful plural address (tazameni, punguzeni); `noindex` |
| `tr-001` | `tr_001` | Türkçe | copy of `tr-tr` |
| `tr-tr` | `tr_TR` | Türkçe (Türkiye) | translation source for Turkish; formal address (siz), decimal comma, percent sign first (%80); `noindex` |
| `ur-001` | `ur_001` | اردو | translation source for Urdu; right-to-left; formal address (آپ) |
| `vi-001` | `vi_001` | Tiếng Việt | copy of `vi-vn` |
| `vi-vn` | `vi_VN` | Tiếng Việt (Việt Nam) | translation source for Vietnamese; formal address (quý vị); `noindex` |
| `zh-001` | `zh_001` | 中文 | copy of `zh-cn` |
| `zh-cn` | `zh_CN` | 中文（中国） | Simplified Chinese translation source; `noindex` |
| `zh-tw` | `zh_TW` | 中文（台灣） | Traditional Chinese, adapted from `zh-cn` with Taiwan vocabulary and 「」 quotes |

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
