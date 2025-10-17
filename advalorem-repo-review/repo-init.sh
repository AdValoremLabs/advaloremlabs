#!/usr/bin/env bash
# Ad Valorem Labs repo initializer
# Usage: ./repo-init.sh [--stack node|python|platformio|obsidian|jekyll] [--name "Project Name"]
set -euo pipefail

STACK=""
NAME=""
while [[ $# -gt 0 ]]; do
  case "$1" in
    --stack) STACK="${2:-}"; shift 2;;
    --name) NAME="${2:-}"; shift 2;;
    *) echo "Unknown arg: $1"; exit 1;;
  esac
done

# Copy base templates
cp -n base.gitignore .gitignore || true
cp -n .gitattributes .gitattributes || true

# Append stack-specific ignores
append_ignore() {
  cat >> .gitignore <<'EOF'

# ---- Stack-specific ignores ----
EOF
  case "$1" in
    node)
      cat >> .gitignore <<'EOF'
# Node/Next.js
.next/
out/
dist/
build/
.eslintcache
EOF
      ;;
    python)
      cat >> .gitignore <<'EOF'
# Python extras
.venv/
venv/
__pycache__/
.pytest_cache/
.mypy_cache/
build/
dist/
*.egg-info/
EOF
      ;;
    platformio)
      cat >> .gitignore <<'EOF'
# PlatformIO / Arduino
.piolibdeps/
.pio/
.pioenvs/
.piodebug/
*.map
*.elf
*.bin
*.hex
EOF
      ;;
    obsidian)
      cat >> .gitignore <<'EOF'
# Obsidian
.obsidian/cache
.obsidian/workspace*
.trash/
EOF
      ;;
    jekyll)
      cat >> .gitignore <<'EOF'
# Jekyll
_site/
.sass-cache/
.jekyll-cache/
.jekyll-metadata
Gemfile.lock
EOF
      ;;
  esac
}

if [[ -n "${STACK}" ]]; then
  append_ignore "${STACK}"
fi

# README scaffold
if [[ ! -f README.md ]]; then
cat > README.md <<EOF
# ${NAME:-New Project}

> Short description here.

## Getting Started
1. \`git init\` (if not already initialized)
2. Copy \`.gitignore\` / \`.gitattributes\` from this starter kit
3. (Optional) Install pre-commit hook:
   \`cp hooks/pre-commit.sample .git/hooks/pre-commit && chmod +x .git/hooks/pre-commit\`

## Environment
- Create \`.env\` locally (ignored), and commit \`.env.example\` with placeholder keys.

## License
MIT (or your choice)
EOF
fi

echo "✅ Repo initialized. Customize .gitignore as needed."
