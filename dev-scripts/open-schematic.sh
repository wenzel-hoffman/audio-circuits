#! /usr/bin/env bash
# Author: Wenzel Hoffman
# SPDX-License-Identifier: MIT

# Open KiCad schematic or DIYLC project found in current working directory.
#
# If there are more than one `*.kicad_sch`/`*.diy` file there will be a file
# selection dialog shown first.

set -o errexit || exit; set -o errtrace; set -o nounset; set -o pipefail

# Guarding dependencies
>/dev/null type eeschema
>/dev/null type diylc
>/dev/null type ls

SCRIPT_DIR=$(dirname -- "${BASH_SOURCE[0]}")

SCHEMATIC_FILES=$(ls ./*.{kicad_sch,diy})
readarray -t SCHEMATIC_FILES_ARR <<< "$SCHEMATIC_FILES"

open-file() (
  set -o errexit || exit; set -o errtrace; set -o nounset; set -o pipefail
  (( $# == 1 )) && [[ -n $1 ]]
  local FILE=$1

  # DIY Layout Creator project file
  if [[ $FILE == *.diy ]]; then

    if ! run_diylc=$(type -P run-diylc); then
      run_diylc=$SCRIPT_DIR/run-diylc.sh
    fi

    set -o xtrace
    </dev/null &>/dev/null "$run_diylc" "$selected_file" & disown

  # KiCad schematic file
  elif [[ $FILE == *.kicad_sch ]]; then
    set -o xtrace
    </dev/null &>/dev/null eeschema -- "$selected_file" & disown

  else
    >&2 printf "Unrecognized file format: %s\n" "$FILE"
    return 1
  fi
)

if (( ${#SCHEMATIC_FILES_ARR[@]} > 1 )); then
  echo 'There are more than 1 schematic file, pick one:'
  select selected_file in "${SCHEMATIC_FILES_ARR[@]}"; do
    for file in "${SCHEMATIC_FILES_ARR[@]}"; do
      if [[ $file == "$selected_file" ]]; then
        open-file "$selected_file"
        exit 0
      fi
    done
    >&2 echo 'Not a valid selection! Try again.'
  done
elif (( ${#SCHEMATIC_FILES_ARR[@]} == 1 )); then
  (
    set -o xtrace
    open-file "${SCHEMATIC_FILES_ARR[0]}"
  )
else
  # Should not really happen, `ls` would fail to expand glob earlier.
  >&2 echo '[ERROR] No schematic files were found!'
  exit 1
fi
