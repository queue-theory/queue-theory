# Common tasks for the queue-theory repository. See spec/repository.md.
SITE := queue-theory.github.io
SITE_REPO := git@github.com:queue-theory/queue-theory.github.io.git
PEER_ID := c9ede771d08b64d5a93892ec1615b3a9

.PHONY: all install content audit test check build verify a11y publish dev

all: content check build verify

install:
	cd $(SITE) && pnpm install

# Mirror the root README into en-001, then regenerate the site's content.
content:
	cp README.md locales/en-001/index.md
	cd $(SITE) && pnpm run content

# Every locale has index.md, a README.md symlink to it, and the shared peer id.
audit:
	@cmp -s README.md locales/en-001/index.md || { echo "README.md and locales/en-001/index.md differ: run make content"; exit 1; }
	@for d in locales/*/; do \
		test -f $$d/index.md || { echo "missing $$d/index.md"; exit 1; }; \
		test "$$(readlink $$d/README.md)" = index.md || { echo "$$d/README.md is not a symlink to index.md"; exit 1; }; \
		test "$$(cat $$d/.locale-peer-id)" = $(PEER_ID) || { echo "bad $$d/.locale-peer-id"; exit 1; }; \
	done; echo "locales ok"

test:
	cd $(SITE) && pnpm test

check: audit test
	cd $(SITE) && pnpm run check

build:
	cd $(SITE) && pnpm run build

verify:
	cd $(SITE) && pnpm run verify

a11y:
	cd $(SITE) && PW_CHANNEL=chrome pnpm run a11y

dev:
	cd $(SITE) && pnpm run dev

# Publish the site directory to its own repository; GitHub Actions deploys it.
publish:
	git subtree push --prefix=$(SITE) $(SITE_REPO) main
