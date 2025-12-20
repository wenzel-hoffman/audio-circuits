# Author: Wenzel Hoffman
# SPDX-License-Identifier: MIT

let
  # Branch: nixos-25.11
  # Date: 1 December 2025
  commit = "8bb5646e0bed5dbd3ab08c7a7cc15b75ab4e1d0f";
  sha256 = "sha256:19ljxfhs2i85rqrkawdz7wn16gx006s2hni51qlzk5z1b022x9aa";
in

fetchTarball {
  url = "https://github.com/NixOS/nixpkgs/archive/${commit}.tar.gz";
  inherit sha256;
}
