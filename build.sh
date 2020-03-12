#!/bin/bash
set -o nounset
set -o errexit

SCRIPT_DIR="$( cd "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
MD_FILES="$(find content -iname '*.md' | paste -sd ' ')"
npx menu-maker -f -i ${SCRIPT_DIR}/images/menu.jpg README.md ${MD_FILES}
