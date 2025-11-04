# Author: Wenzel Hoffman
# SPDX-License-Identifier: MIT

let
  # Branch: nixos-25.05
  # Date: 1 November 2025
  commit = "3de8f8d73e35724bf9abef41f1bdbedda1e14a31";
  sha256 = "sha256:1akf8bq8i1flj33sdwl95lkng4wgwlzh9yxylk2drq8fksg5i291";
in

fetchTarball {
  url = "https://github.com/NixOS/nixpkgs/archive/${commit}.tar.gz";
  inherit sha256;
}
