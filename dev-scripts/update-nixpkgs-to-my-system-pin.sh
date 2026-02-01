#! /usr/bin/env bash
# Author: Wenzel Hoffman
# SPDX-License-Identifier: MIT

# Ping nixpkgs for this project to my NixOS system pin.
#
# It’s specific only to my own system configuration.

set -o errexit || exit; set -o errtrace; set -o nounset; set -o pipefail

# Guarding dependencies
>/dev/null type nix-prefetch-url

SCRIPT_DIR=$(dirname -- "${BASH_SOURCE[0]}")
cd -- "$SCRIPT_DIR/.." # cd to project root

COMMIT_DATE=$(</etc/nixos/channels/nixos/release-date)
COMMIT_HASH=$(</etc/nixos/channels/nixos/git-revision)

RELEASE_LINK=$(</etc/nixos/channels/nixos/release-link)
[[ $RELEASE_LINK =~ /nixos/([0-9]+\.[0-9]+)/ ]]
BRANCH=nixos-${BASH_REMATCH[1]}

PIN_PATH=nix/nixpkgs.pin.nix

PIN_TEMPLATE=$(<"$PIN_PATH")

[[ $PIN_TEMPLATE =~ url\ =\ \"([^\"]+)\"\; ]]
TARBALL_URL=${BASH_REMATCH[1]//'$''{commit}'/$COMMIT_HASH}

# set -o xtrace

echo "$TARBALL_URL"
echo "$BRANCH"
echo "$COMMIT_DATE"
echo "$COMMIT_HASH"

pin=$PIN_TEMPLATE

# Update branch comment
[[ $pin =~ '# Branch: nixos-'([0-9]+\.[0-9]+) ]]
pin=${pin//"${BASH_REMATCH[0]}"/"# Branch: $BRANCH"}

# Update date comment
[[ $pin =~ '# Date: '[0-9a-zA-Z\ ]* ]]
pin=${pin//"${BASH_REMATCH[0]}"/"# Date: $COMMIT_DATE"}

# Update commit value
[[ $pin =~ 'commit = "'[a-f0-9]*'";' ]]
pin=${pin//"${BASH_REMATCH[0]}"/$"commit = \"$COMMIT_HASH\";"}

# Update SHA256 checksum value
SHA256_CHECKSUM=$(set -o xtrace; nix-prefetch-url --unpack -- "$TARBALL_URL")
[[ $pin =~ 'sha256 = "'[^\"]*'";' ]]
pin=${pin//"${BASH_REMATCH[0]}"/$"sha256 = \"sha256:$SHA256_CHECKSUM\";"}

printf '%s\n' "$pin" >"$PIN_PATH"

echo '[OK]'
