#! /usr/bin/env bash
# Author: Wenzel Hoffman
# SPDX-License-Identifier: MIT

set -o errexit || exit; set -o errtrace; set -o nounset; set -o pipefail

SCRIPT_DIR=$(dirname -- "${BASH_SOURCE[0]}")
cd -- "$SCRIPT_DIR"

set -o xtrace

&>/dev/null eeschema wenzels-mosfet-class-a-headphones-stereo-amp.kicad_sch & disown
