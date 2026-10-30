#!/bin/bash
# À coller dans claude.ai/code : réglages de l'environnement > Setup script.
# Se termine toujours par exit 0 : un échec ici ne doit pas empêcher la session de démarrer.
mkdir -p ~/.claude/skills

# Config personnelle : skills et CLAUDE.md
git clone --depth 1 https://github.com/Caraito/claude-config.git /tmp/claude-config \
  && cp -r /tmp/claude-config/skills /tmp/claude-config/CLAUDE.md ~/.claude/

# gstack sans son navigateur : son ./setup complet a besoin de Chromium, hors de la liste réseau par défaut
git clone --depth 1 https://github.com/garrytan/gstack.git ~/.claude/skills/gstack \
  && for d in ~/.claude/skills/gstack/*/; do
       if [ -f "${d}SKILL.md" ]; then ln -sfn "${d%/}" ~/.claude/skills/"$(basename "$d")"; fi
     done

# graphify : installé depuis PyPI
pip install -q graphifyy && graphify install --platform claude

exit 0
