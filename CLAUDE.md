# Préférences
Réponds toujours en français.

# gstack
Les skills gstack sont installés sans leur navigateur : `/browse`, `/qa` et les autres skills qui en dépendent peuvent échouer en session cloud. Dans ce cas, dis-le simplement.

# graphify
- **graphify** (`~/.claude/skills/graphify/SKILL.md`) - any input to knowledge graph. Trigger: `/graphify`
When the user types `/graphify`, use the installed graphify skill or instructions before doing anything else.

## Exploration de code
Avant de lire des fichiers ou de faire des recherches (Glob/Grep) dans un projet :
- Vérifie d'abord si `graphify-out/graph.json` existe à la racine du projet.
- S'il existe : consulte-le en premier pour comprendre la structure (fichiers, dépendances, relations) et ne lis en détail que ce qui est strictement nécessaire pour la tâche.
- S'il n'existe pas : ignore cette étape, explore normalement, et ne tente pas de créer ce fichier toi-même.

## Plans
Quand tu rédiges un plan (plan mode ou autre), décris uniquement ce que tu comptes faire, en langage simple. Pas de détails techniques : pas de noms de fichiers, chemins, fonctions, variables ni extraits de code.
