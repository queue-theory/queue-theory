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
| `cy-001` | `cy_001` | Cymraeg | copy of `cy-gb` |
| `cy-ar` | `cy_AR` | Cymraeg (Ariannin) | copy of `cy-gb`; `noindex` |
| `cy-gb` | `cy_GB` | Cymraeg (Y Deyrnas Unedig) | translation source for Welsh; `noindex` |
| `en-001` | `en` | English | source of truth (mirror of root `README.md`) |
| `en-gb` | `en_GB` | English (Great Britain) | British spelling; `noindex` |
| `en-us` | `en_US` | English (United States) | American spelling; `noindex` |
| `es-001` | `es_001` | Español | copy of `es-mx` |
| `es-es` | `es_ES` | Español (España) | `es-mx` adapted to Spain: vocabulary (fallo, recuento, cesta, fiabilidad), decimal comma, 24-hour times; `noindex` |
| `es-mx` | `es_MX` | Español (México) | translation source for Spanish; `noindex` |
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
