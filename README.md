# claude-config

Configuration chargée dans les sessions cloud de Claude Code.

## Installation
Coller `setup-cloud.sh` dans les réglages de l'environnement, champ **Setup script**, sur claude.ai/code. Le script se relance quand il est modifié, ou environ tous les 7 jours à l'expiration du cache.

## Contenu
- `skills/` : caveman et les skills ponytail (licence MIT, voir `skills/ponytail/LICENSE`)
- `CLAUDE.md`
- gstack et graphify sont téléchargés par le script depuis leurs sources d'origine

## Règle
Ce dépôt ne doit contenir ni secret, ni clé, ni donnée personnelle. Les clés vont dans les réglages de l'environnement cloud.
