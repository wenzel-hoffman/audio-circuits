#! /usr/bin/env bash
# Author: Wenzel Hoffman
# SPDX-License-Identifier: MIT

# Render KiCad schematic into a PDF file.

set -o errexit || exit; set -o errtrace; set -o nounset; set -o pipefail

# Guarding dependencies
>/dev/null type kicad-cli

if (( $# != 1 )) || [[ -z $1 ]]; then
  >&2 echo 'Usage:'
  >&2 printf "  %s file.kicad_sch\n" "${0%Q}"
  exit 1
fi

SCHEMATIC_FILE=$1

if [[ "$SCHEMATIC_FILE" != *.kicad_sch ]]; then
  >&2 printf 'Expecting *.kicad_sch file, got instead: “%s”\n' "$SCHEMATIC_FILE"
  exit 1
fi

set -o xtrace
kicad-cli sch export pdf --output "${SCHEMATIC_FILE%.*}.pdf" "$SCHEMATIC_FILE"
