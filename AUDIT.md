# Rapport d'audit — [nom de l'app] v[X.Y.Z]

Date : [AAAA-MM-JJ] · Commit audité : `[hash]`

## Résumé

[X] problèmes trouvés, [X] corrigés, [X] acceptés avec justification. Aucun problème critique ou élevé ouvert.

| Gravité | Trouvés | Corrigés | Acceptés |
| --- | --- | --- | --- |
| Critique | | | |
| Élevée | | | |
| Moyenne | | | |
| Faible | | | |

## Méthode

1. **Audit par IA en posture d'attaquant** : nouvelle session Claude Code (ou sous-agent), qui n'a pas écrit le code, avec le prompt de référence ci-dessous.
2. **Outils automatiques** : Semgrep, CodeQL, gitleaks, audit des dépendances (`npm audit` ou `pip-audit`), lancés par le workflow `security.yml`.
3. **Audit fonctionnel** : cas limites, erreurs, accessibilité.
4. **Revue humaine** : relecture des diffs et des points signalés.
5. **Test hors ligne** : l'app est lancée sur une machine dont le réseau est coupé.

### Prompt d'audit de référence

```text
Tu es un auditeur de sécurité en posture d'attaquant. Tu n'as pas écrit ce code
et tu n'as aucune raison de le défendre.

Contexte : application 100 % locale, sans serveur, décrite dans docs/CADRAGE.md
et CLAUDE.md. Ses utilisateurs ne sont pas techniciens.

Audite tout le dépôt selon l'OWASP Top 10 et ces points propres à une app locale :
- toute communication réseau, même indirecte (CDN, polices, télémétrie, mises à jour) ;
- validation des entrées : saisies, fichiers importés, CSV, chemins, URL ;
- injections : XSS, injection de commande, de requête, de formule dans les exports CSV ;
- stockage local : données sensibles en clair, permissions des fichiers, effacement réel ;
- secrets ou données réelles dans le code, les tests ou l'historique Git ;
- dépendances : inutiles, abandonnées, vulnérables, licences incompatibles ;
- permissions demandées (système, Android, extension) : chacune est-elle justifiée ?
- chaîne de build et workflows : un attaquant peut-il modifier ce qui est publié ?

Pour chaque problème : identifiant, gravité (critique, élevée, moyenne, faible),
catégorie OWASP, fichier et ligne, scénario d'attaque concret, correction proposée.
Ne corrige rien toi-même. Termine par ce que tu n'as pas pu vérifier.
```

## Problèmes trouvés

| ID | Gravité | Catégorie | Où | Description | Trouvé par | Statut | Correction |
| --- | --- | --- | --- | --- | --- | --- | --- |
| A-01 | [ ] | [ex. A03 Injection] | `[fichier:ligne]` | [ ] | [IA / Semgrep / CodeQL / gitleaks / humain] | [Corrigé / Accepté] | `[commit]` |

## Ce que seul l'humain a vu

- [ ]

## Résultats des outils automatiques

| Outil | Version | Résultat |
| --- | --- | --- |
| Semgrep | | [X alertes, détail] |
| CodeQL | | |
| gitleaks | | |
| Audit des dépendances | | |

## Test hors ligne

- Machine : [OS, version] · Réseau : coupé (Wi-Fi et câble)
- Résultat : [toutes les fonctionnalités marchent | exceptions]

## Limites de cet audit

Cet audit réduit les risques, il ne les supprime pas. [Ce qui n'a pas été testé.]
