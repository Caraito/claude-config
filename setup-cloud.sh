#!/bin/bash
# Lancé par le Setup script de l'environnement cloud (voir README).
# Chaque bloc peut échouer sans bloquer les suivants, et exit 0 laisse toujours la session démarrer.
mkdir -p ~/.claude/skills

# Config personnelle : skills et CLAUDE.md
git clone --depth 1 https://github.com/Caraito/claude-config.git /tmp/claude-config \
  && cp -r /tmp/claude-config/skills /tmp/claude-config/CLAUDE.md ~/.claude/

# gstack sans son navigateur : son ./setup complet a besoin de Chromium, hors de la liste réseau par défaut
git clone --depth 1 https://github.com/garrytan/gstack.git ~/.claude/skills/gstack \
  && for d in ~/.claude/skills/gstack/*/; do
       if [ -f "${d}SKILL.md" ]; then ln -sfn "${d%/}" ~/.claude/skills/"$(basename "$d")"; fi
     done

# graphify : PyPI
pip install -q graphifyy && graphify install --platform claude

# frontend-design : Anthropic
FD=https://raw.githubusercontent.com/anthropics/claude-plugins-official/main/plugins/frontend-design/skills/frontend-design
curl -fsSL --create-dirs -o ~/.claude/skills/frontend-design/SKILL.md "$FD/SKILL.md" \
  && curl -fsSL -o ~/.claude/skills/frontend-design/LICENSE.txt "$FD/LICENSE.txt"

# security-audit : Cloudflare
git clone --depth 1 https://github.com/cloudflare/security-audit-skill.git /tmp/security-audit-skill \
  && cp -r /tmp/security-audit-skill/skills/security-audit ~/.claude/skills/

# Commandes et agents : claude-boris, figé sur un commit car c'est un dépôt personnel peu suivi
git clone https://github.com/llcoolblaze/claude-boris.git /tmp/claude-boris \
  && git -C /tmp/claude-boris checkout -q 67633b87d6aca47eea6b21d59fcfe31eba9fa95c \
  && cp -r /tmp/claude-boris/.claude/commands /tmp/claude-boris/.claude/agents ~/.claude/

# REA : npm, version figée. Installe aussi son skill et son serveur MCP
npm install -g rea-agents@6.8.0 && rea setup --client claude_code --yes

exit 0
