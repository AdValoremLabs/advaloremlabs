# Ad Valorem Labs – Repo Starter Kit

Contents:
- `base.gitignore` — universal ignore rules for your projects
- `.gitattributes` — Git LFS patterns for large binaries (PNG/JPG/MP4/STL/GCODE)
- `hooks/pre-commit.sample` — blocks secrets and >50 MiB files
- `repo-init.sh` — copies templates and appends stack-specific ignores

## Quick Start
1. Unzip next to a new repo.
2. Run one of:
   - `./repo-init.sh --stack node --name "Web Shop"`
   - `./repo-init.sh --stack python --name "HA Tools"`
   - `./repo-init.sh --stack platformio --name "ESP32 Sensor"`
   - `./repo-init.sh --stack obsidian --name "D&D Vault"`
   - `./repo-init.sh --stack jekyll --name "Docs Site"`
3. Optionally enable the pre-commit hook:
   ```bash
   cp hooks/pre-commit.sample .git/hooks/pre-commit
   chmod +x .git/hooks/pre-commit
   ```

## Notes
- If you need Git LFS: `git lfs install` before first commit.
- Keep real secrets in `.env` and commit a sanitized `.env.example`.
