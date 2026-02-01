# Author: Wenzel Hoffman
# SPDX-License-Identifier: MIT

let
  # Branch: nixos-25.11
  # Date: 2026-01-26T11:59:14Z
  commit = "1cd347bf3355fce6c64ab37d3967b4a2cb4b878c";
  sha256 = "sha256:195pkrjal51mr7v6psjvx1ap3vcnyvp076kzngjfg4cgvskplg1j";
  url = "https://github.com/NixOS/nixpkgs/archive/${commit}.tar.gz";
in

fetchTarball { inherit url sha256; }
