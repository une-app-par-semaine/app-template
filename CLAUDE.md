# CLAUDE.md — règles du projet

Ce fichier est lu par Claude Code à chaque session. Il fixe le contexte et les règles non négociables. Le compléter avant la première génération de code.

## Contexte

- **Application** : [nom] — [une phrase : ce qu'elle fait, pour qui]
- **Cahier des charges** : voir `docs/CADRAGE.md` (fait foi sur le périmètre)
- **Plateforme cible** : [PWA hors ligne | desktop (Tauri/Electron) | Android | CLI | extension navigateur]
- **Stack** : [langage, framework, version] — dépendances minimales, répandues et maintenues
- **Design** : voir `design/CHARTE.md` et `design/maquettes/` (validés avant le code)

## Commandes

- Installer : `[commande]`
- Lancer en développement : `[commande]`
- Tests : `[commande]`
- Build : `./scripts/build.sh` (doit produire les fichiers à publier dans `dist/`)

## Règles non négociables

### 100 % local
- Aucun appel réseau nécessaire au fonctionnement : pas d'API distante, pas de CDN, pas de police ou script chargé depuis Internet, pas de télémétrie, pas d'analytics.
- Toutes les ressources (polices, icônes, modèles) sont embarquées dans le dépôt ou le build.
- Un LLM éventuel est un modèle open-weight dont la licence autorise la redistribution ; son empreinte SHA-256 est vérifiée au chargement ; taille et prérequis matériels sont indiqués dans le README.
- Si une fonctionnalité semble exiger un serveur : t'arrêter et me le signaler, ne pas contourner.

### Sécurité
- Aucun secret dans le code ni dans l'historique Git (clé, token, mot de passe). Aucun n'est d'ailleurs nécessaire pour une app 100 % locale.
- Toute entrée est validée : saisies, fichiers importés, CSV, chemins, URL.
- Pas de `eval`, pas d'exécution de commande construite à partir d'une entrée, pas de `innerHTML` avec des données non échappées.
- Requêtes paramétrées pour toute base locale (SQLite, IndexedDB).
- Données personnelles : collecter le minimum, stocker localement, chiffrer au repos si elles sont sensibles, permettre l'export et la suppression.
- Principe du moindre privilège : permissions système, d'extension ou Android réduites au strict nécessaire, chacune justifiée dans le README.
- Avant d'ajouter une dépendance : me la proposer avec sa raison, sa licence et sa date de dernière mise à jour.

### Données
- Uniquement des données fictives dans le code, les tests, les captures et les démos. Jamais de vraies données d'utilisateurs.

### Façon de travailler
- Une fonctionnalité à la fois, un commit par étape, message de commit clair.
- Pour une tâche lourde : proposer un plan avant d'écrire le code, et attendre ma validation.
- Écrire le test d'abord, le lancer, le voir échouer, puis coder jusqu'au vert.
- Ne pas modifier `.github/workflows/`, `LICENSE`, `SECURITY.md` ni ce fichier sans me le demander.
- Si une instruction est ambiguë ou contredit ce fichier : poser la question plutôt que deviner.
- Je relis chaque diff. Écrire un code que je peux comprendre et expliquer.

## Journal

Après chaque étape importante, ajouter une entrée dans `PROMPTS.md` : le prompt clé, ce qui a été fait, ce que j'ai dû corriger.
