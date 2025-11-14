#! /usr/bin/env bash
# Author: Wenzel Hoffman
# SPDX-License-Identifier: MIT

set -o errexit || exit; set -o errtrace; set -o nounset; set -o pipefail

# Guarding dependencies
>/dev/null type gs # Ghostscript dependency to be able to convert PDF to PNG
>/dev/null type magick
>/dev/null type xmlstarlet # Parsing exported XML
>/dev/null type kicad-cli
>/dev/null type find
>/dev/null type date
>/dev/null type basename
>/dev/null type dirname

SCRIPT_DIR=$(dirname -- "${BASH_SOURCE[0]}")

if (( $# != 1 )) || [[ ! $1 =~ r[0-9]+ ]]; then
  >&2 echo 'Usage:'
  >&2 printf "  %s REVISION\n" "${0%Q}"
  >&2 printf "  %s r1\n" "${0%Q}"
  exit 1
fi

REVISION=$1
REVISION_NUM=${REVISION#r}
REVISION_NUM=${REVISION_NUM%%-*}

>&2 printf "REVISION_NUM='%s'\n" "$REVISION_NUM"

if (( REVISION_NUM > 1 )); then
  PREV_REVISION_NUM=$(( REVISION_NUM - 1 ))
  >&2 printf "PREV_REVISION_NUM='%s'\n" "$PREV_REVISION_NUM"
else
  PREV_REVISION_NUM=
  >&2 echo 'PREV_REVISION_NUM=(no previous release)'
fi

DATE=$(date +%Y-%m)
YEAR=${DATE%-*}
MONTH_TEXT=$(date -d "${DATE#*-}/1" +%B)

>&2 printf "DATE='%s'\n" "$DATE"
>&2 printf "YEAR='%s'\n" "$YEAR"
>&2 printf "MONTH_TEXT='%s'\n" "$MONTH_TEXT"

PROJECT_NAME=$(<README.md)
PROJECT_NAME=${PROJECT_NAME%%$'\n'*}
PROJECT_NAME=${PROJECT_NAME#'# '}

PROJECT_FILE_NAME=${PROJECT_NAME,,}
PROJECT_FILE_NAME=${PROJECT_FILE_NAME//’/}
PROJECT_FILE_NAME=${PROJECT_FILE_NAME// /-}

>&2 printf "PROJECT_NAME='%s'\n" "${PROJECT_NAME}"
>&2 printf "PROJECT_FILE_NAME='%s'\n" "$PROJECT_FILE_NAME"

RELEASE_DIR="release-$DATE-$REVISION"
README_FILE=$RELEASE_DIR/README.md

>&2 printf "RELEASE_DIR='%s'\n" "$RELEASE_DIR"
>&2 printf "README_FILE='%s'\n" "$README_FILE"

KICAD_PROJECT_FILES=$(find . -maxdepth 1 -name '*.kicad_pro' -printf '%f\n')
readarray -t KICAD_PROJECT_FILES_ARR <<<"$KICAD_PROJECT_FILES"

release_readme_content="# $PROJECT_NAME

Revision $REVISION ($MONTH_TEXT $YEAR).

"

for kicad_project_file in "${KICAD_PROJECT_FILES_ARR[@]}"; do
  >&2 printf '\n*** %s\n\n' "$kicad_project_file"
  schematic_file_path_name=$(basename -- "$kicad_project_file" .kicad_pro)
  schematic_file=${schematic_file_path_name}.kicad_sch

  schematic_xml=$(
    kicad-cli sch export python-bom -o /dev/stderr "$schematic_file" 2>&1 >/dev/null
  )
  schematic_title=$(
    <<<"$schematic_xml" xmlstarlet sel -t -v '/export/design/sheet/title_block/title' -n
  )
  schematic_version=$(
    <<<"$schematic_xml" xmlstarlet sel -t -v '/export/design/sheet/title_block/rev' -n
  )

  >&2 printf "schematic_file='%s'\n" "$schematic_file"
  >&2 printf "schematic_title='%s'\n" "$schematic_title"
  >&2 printf "schematic_version='%s'\n" "$schematic_version"

  schematic_render_pdf_file_name=${schematic_file_path_name}-${schematic_version}.pdf
  schematic_render_pdf_file=$RELEASE_DIR/$schematic_render_pdf_file_name
  schematic_render_png_file_name=${schematic_file_path_name}-${schematic_version}.png
  schematic_render_png_file=$RELEASE_DIR/$schematic_render_png_file_name

  >&2 printf "schematic_render_pdf_file_name='%s'\n" "$schematic_render_pdf_file_name"
  >&2 printf "schematic_render_pdf_file='%s'\n" "$schematic_render_pdf_file"
  >&2 printf "schematic_render_png_file_name='%s'\n" "$schematic_render_png_file_name"
  >&2 printf "schematic_render_png_file='%s'\n" "$schematic_render_png_file"

  (
    set -o xtrace
    kicad-cli sch export pdf --output "$schematic_render_pdf_file" "$schematic_file" >&2
    "$SCRIPT_DIR"/render-kicad-schematic-pdf-to-png.sh "$schematic_render_pdf_file"
  )

  if (( ${#KICAD_PROJECT_FILES_ARR[@]} > 1 )); then
    release_readme_content="${release_readme_content}## ${schematic_title}

"
  fi

  release_readme_content="${release_readme_content}- [PDF schematic render]($schematic_render_pdf_file_name)
- [PNG schematic render]($schematic_render_png_file_name)

![Schematic]($schematic_render_png_file_name)

"
done

if [[ -n $PREV_REVISION_NUM ]]; then
  title="Difference (changelog) from previous release (revision r$PREV_REVISION_NUM)"
  release_readme_content="${release_readme_content}## $title

TBD…
"
fi

if [[ ! -e $README_FILE ]]; then
  (
    set -o xtrace
    printf %s "$release_readme_content" >"$README_FILE"
  )
fi

>&2 printf '\n===\n\n'
>&2 echo '[OK]'
