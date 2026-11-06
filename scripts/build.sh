#!/usr/bin/env bash
# Construit les fichiers à publier dans dist/.
# À remplacer selon la stack (ex. npm run build && zip, tauri build, ./gradlew assembleRelease).
set -euo pipefail

echo "::error::scripts/build.sh n'est pas encore défini pour cette app." >&2
exit 1
