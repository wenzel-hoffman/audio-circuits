# Author: Wenzel Hoffman
# SPDX-License-Identifier: MIT

let
  # Branch: nixos-25.11
  # Date: 2026-02-01T19:41:40Z-01-26T11:59:14Z
  commit = "41e216c0ca66c83b12ab7a98cc326b5db01db646";
  sha256 = "sha256:084zixgy2k5rscg3m65fmmw6k9za9g8wpbp63b0y9h787n1fdci3";
  url = "https://github.com/NixOS/nixpkgs/archive/${commit}.tar.gz";
in

fetchTarball { inherit url sha256; }
