# Repository

Repository `queue-theory/queue-theory` on GitHub, branch `main`.

## Layout

```
README.md                  canonical English guide (mirrored to locales/en-001/index.md)
spec/                      this specification
locales/<code>/            one directory per locale (see locales.md)
queue-theory.github.io/    website, published via git subtree (see website.md)
Makefile                   common tasks: content, check, build, verify, publish
```

`README.md` and `locales/en-001/index.md` have identical content. Edit
`README.md`, then run `make content`, which copies it to `en-001` before
regenerating the site content. `make audit` fails if the two differ.

## Commits

Commits are SSH-signed. Titles are present-tense imperative phrases.
Claude-assisted commits carry a `Co-Authored-By:` trailer.

## Delivery: commit, push, publish

1. **Verify**: `make check` (locale audit, unit tests, svelte-check), then
   `make build verify`. For layout or style changes also `make a11y`.
2. **Commit** the files that belong to the task, staged by path.
3. **Push**: `git push origin main`.
4. **Publish** the website when anything under `queue-theory.github.io/`
   changed: `make publish` (see [website.md](website.md#publishing)).
5. **Report** the commit, the push result, and the publish result. Do not claim
   the site redeployed unless it was checked.

Never force-push, rewrite history, or skip signing or hooks unless asked.
