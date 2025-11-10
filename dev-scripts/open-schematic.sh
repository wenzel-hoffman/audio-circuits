#! /usr/bin/env bash
# Author: Wenzel Hoffman
# SPDX-License-Identifier: MIT

# Open KiCad schematic found in current working directory.
#
# If there are more than one `*.kicad_sch` schematic file there will be a scheamtic
# file selection dialog shown first.

set -o errexit || exit; set -o errtrace; set -o nounset; set -o pipefail

# Guarding dependencies
>/dev/null type eeschema
>/dev/null type ls

SCHEMATIC_FILES=$(ls ./*.kicad_sch)
readarray -t SCHEMATIC_FILES_ARR <<< "$SCHEMATIC_FILES"

if (( ${#SCHEMATIC_FILES_ARR[@]} > 1 )); then
  echo 'There are more than 1 schematic file, pick one:'
  select selected_file in "${SCHEMATIC_FILES_ARR[@]}"; do
    for file in "${SCHEMATIC_FILES_ARR[@]}"; do
      if [[ $file == "$selected_file" ]]; then
        (
          set -o xtrace
          </dev/null &>/dev/null eeschema -- "$selected_file" & disown
        )
        exit 0
      fi
    done
    >&2 echo 'Not a valid selection! Try again.'
  done
elif (( ${#SCHEMATIC_FILES_ARR[@]} == 1 )); then
  (
    set -o xtrace
    </dev/null &>/dev/null eeschema -- "${SCHEMATIC_FILES_ARR[0]}" & disown
  )
else
  # Should not really happen, `ls` would fail to expand glob earlier.
  >&2 echo '[ERROR] No schematic files were found!'
  exit 1
fi
