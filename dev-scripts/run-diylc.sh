#! /usr/bin/env bash
# Author: Wenzel Hoffman
# SPDX-License-Identifier: MIT

# Open DIY Layout Creator with XMonad fixes.

set -o errexit || exit; set -o errtrace; set -o nounset; set -o pipefail

# Guarding dependencies
>/dev/null type env
>/dev/null type unshare
>/dev/null type diylc

JAVA_OPTIONS=(
  # Nicer font rendering (instead of default Swing crappy one)
  -Dawt.useSystemAAFontSettings=on
  -Dswing.aatext=true
)

CMD=(
  env

  _JAVA_OPTIONS="${JAVA_OPTIONS[*]}"

  # Fix window resizing and context menu for XMonad
  _JAVA_AWT_WM_NONREPARENTING=1

  # Block access to the internet (disables new version availability checks)
  unshare -r -n

  diylc
)

set -o xtrace
exec "${CMD[@]}" "$@"
