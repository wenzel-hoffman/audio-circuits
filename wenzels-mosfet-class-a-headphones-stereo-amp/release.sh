#! /usr/bin/env bash
# Author: Wenzel Hoffman
# SPDX-License-Identifier: MIT

set -o errexit || exit; set -o errtrace; set -o nounset; set -o pipefail

# Guarding dependencies
>/dev/null type gs # Ghostscript dependency to be able to convert PDF to PNG
>/dev/null type magick
>/dev/null type kicad-cli
>/dev/null type mkdir
>/dev/null type date

SCRIPT_DIR=$(dirname -- "${BASH_SOURCE[0]}")

if (( $# != 1 )) || [[ ! $1 =~ r[0-9]+ ]]; then
  >&2 echo 'Usage:'
  >&2 printf "  %s REVISION\n" "${0%Q}"
  >&2 printf "  %s r1\n" "${0%Q}"
  exit 1
fi

REVISION=$1
DATE=$(date +%Y-%m)
MONTH_TEXT=$(date -d "${DATE#*-}/1" +%B)

RELEASE_DIR="release-$DATE-$REVISION"
PDF_FILE="$RELEASE_DIR/wenzels-mosfet-class-a-headphones-stereo-amp-$REVISION.pdf"
PDF_FILE_NAME=$(basename -- "$PDF_FILE")

RENDER_PDF_CMD=(
  kicad-cli sch export pdf
  --output "$PDF_FILE"
  wenzels-mosfet-class-a-headphones-stereo-amp.kicad_sch
)

set -o xtrace

mkdir --parents -- "$RELEASE_DIR"
"${RENDER_PDF_CMD[@]}"
"$SCRIPT_DIR"/../dev-scripts/render-kicad-schematic-pdf-to-png.sh "$PDF_FILE"

if [[ ! -e "$RELEASE_DIR/README.md" ]]; then
  echo -n "# Wenzel’s MOSFET Class-A Headphones Stereo Amp

  Revision ${REVISION#r} ($MONTH_TEXT ${DATE%-*}).

  - [PDF schematic render]($PDF_FILE_NAME)
  - [PNG schematic render](${PDF_FILE_NAME%.pdf}.png)

  ![Schematic](${PDF_FILE_NAME%.pdf}.png)

  ## Difference (changelog) from previous release (revision $(( ${REVISION#r} - 1 )))

  TBD…
  " > "$RELEASE_DIR/README.md"
fi
