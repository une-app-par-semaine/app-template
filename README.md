# [Nom de l'app]

> [Une phrase : ce qu'elle fait, pour qui.]

**App n°[N] de la série [« Une app par semaine »](https://github.com/une-app-par-semaine)** · 100 % locale · Auditée · Licence MIT

[Capture d'écran ou GIF de démo — données fictives]

## À quoi ça sert

[Le problème, en deux ou trois lignes simples. Ce que l'app change.]

## 100 % locale

- Aucun serveur, aucun compte, aucune publicité, aucune télémétrie.
- Vos données restent sur votre appareil : [où exactement, ex. stockage du navigateur, dossier de l'app].
- L'app fonctionne sans connexion Internet. Chaque version est testée sur une machine déconnectée.

## Installer

1. Ouvrez la page [Releases](../../releases/latest).
2. Téléchargez [le fichier pour votre système] et `SHA256SUMS.txt`.
3. Vérifiez le téléchargement (voir ci-dessous).
4. [Étapes d'installation, une par ligne.]

[Si l'exécutable n'est pas signé : expliquer l'alerte Windows SmartScreen ou macOS Gatekeeper, et comment la passer en connaissance de cause.]

### Vérifier le téléchargement

Linux / macOS :

```bash
sha256sum -c SHA256SUMS.txt --ignore-missing
```

Windows (PowerShell) :

```powershell
Get-FileHash .\[fichier] -Algorithm SHA256
```

L'empreinte affichée doit être identique à celle de `SHA256SUMS.txt`. Chaque fichier est aussi accompagné d'une attestation de provenance GitHub : `gh attestation verify [fichier] --owner une-app-par-semaine`.

## Utiliser

[Le parcours principal en 3 à 5 étapes.]

## Vos données

| Donnée | Où | Combien de temps | Comment l'effacer |
| --- | --- | --- | --- |
| [ ] | [ ] | [ ] | [ ] |

## Permissions demandées

| Permission | Pourquoi |
| --- | --- |
| [ex. aucune] | |

## Sécurité

- Rapport d'audit : [`AUDIT.md`](AUDIT.md) — ce qui a été trouvé et corrigé.
- Signaler une faille : voir [`SECURITY.md`](SECURITY.md).

## Comment elle a été construite

Codée avec Claude et Claude Code, en [X] heures. Cadrage dans [`docs/CADRAGE.md`](docs/CADRAGE.md), prompts clés dans [`PROMPTS.md`](PROMPTS.md), charte et maquettes dans [`design/`](design/).

[Idée proposée par @auteur, merci !]

## Développer

```bash
[installer]
[lancer]
./scripts/test.sh
```

Les règles du projet pour l'IA sont dans [`CLAUDE.md`](CLAUDE.md).

## Licence

[MIT](LICENSE) © 2026 Dimitri Lefebvre
