# claude-config

Configuration chargée dans les sessions cloud de Claude Code.

## Installation
Coller ceci dans les réglages de l'environnement, champ **Setup script**, sur claude.ai/code :

```bash
#!/bin/bash
curl -fsSL https://raw.githubusercontent.com/Caraito/claude-config/main/setup-cloud.sh | bash
exit 0
```

Une modification de `setup-cloud.sh` s'applique environ tous les 7 jours, à l'expiration du cache. Pour l'appliquer tout de suite, modifier le **Setup script**, même d'une ligne de commentaire.

## Contenu
- `skills/` : caveman et les skills ponytail (licence MIT, voir `skills/ponytail/LICENSE`)
- `CLAUDE.md`
- Téléchargés par le script depuis leurs sources d'origine : gstack, graphify, frontend-design, security-audit, claude-boris et REA

## Règle
Ce dépôt ne doit contenir ni secret, ni clé, ni donnée personnelle. Les clés vont dans les réglages de l'environnement cloud.
