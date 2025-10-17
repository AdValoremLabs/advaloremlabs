# Ad Valorem Labs Repo Audit

This package includes per-repo `.gitignore` files and notes.
## advaloremlabs

*Stacks:* universal, docs_light, scripts

Recommendations:
- Type: Org meta / scripts + docs.
- Actions:
- - Track shell scripts and docs; keep any secrets out of the repo.
- - If you add automation that builds artifacts, add an `/dist/` or `/build/` and ignore it here.

## advaloremlabs.github.io

*Stacks:* universal, jekyll

Recommendations:
- Type: GitHub Pages (Jekyll).
- Actions:
- - Keep `_config.yml`, `_includes/`, `_layouts/`, and `index.md` tracked.
- - Ignore `_site/` build output (already covered).
- - Optional: Add `.gitattributes` for LFS if asset images grow large.
- Commands:
- - To build locally: `bundle exec jekyll serve` (if using Ruby locally).

## home-assistant

*Stacks:* universal, docs_light

Recommendations:
- Type: Product docs/listings repo.
- Actions:
- - Track `README.md`, `docs/` (markdown + quickstart.html).
- - Keep listing HTML files tracked; consider moving shared snippets into `docs/` and generating listings.
- - Consider `/assets/` folder for images; if images >1–5 MB, consider Git LFS.
- Optional: publish docs via Pages by adding a simple Jekyll or MkDocs config later.

## proxmox

*Stacks:* universal, docs_light

Recommendations:
- Type: Product docs/listings repo.
- Actions:
- - Track `README.md`, `docs/` (markdown + quickstart.html).
- - Keep listing HTML files tracked; consider moving shared snippets into `docs/` and generating listings.
- - Consider `/assets/` folder for images; if images >1–5 MB, consider Git LFS.
- Optional: publish docs via Pages by adding a simple Jekyll or MkDocs config later.

## retropie

*Stacks:* universal, docs_light

Recommendations:
- Type: Product docs/listings repo.
- Actions:
- - Track `README.md`, `docs/` (markdown + quickstart.html).
- - Keep listing HTML files tracked; consider moving shared snippets into `docs/` and generating listings.
- - Consider `/assets/` folder for images; if images >1–5 MB, consider Git LFS.
- Optional: publish docs via Pages by adding a simple Jekyll or MkDocs config later.
