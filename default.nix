# Author: Wenzel Hoffman
# SPDX-License-Identifier: MIT

# By default it will
{ pkgs ? import (if pinned-nixpkgs then nixpkgs-pin else <nixpkgs>) {}
, nixpkgs-pin ? import nix/nixpkgs.pin.nix
, pinned-nixpkgs ? false

# Set to `true` automatically when used by nix-shell
, inNixShell ? false
}:

let
  render-kicad-schematic-pdf-to-png =
    pkgs.callPackage nix/dev-scripts/render-kicad-schematic-pdf-to-png.nix {};

  shell =
    pkgs.mkShell {
      buildInputs = [
        pkgs.kicad

        # Image format conversion
        pkgs.imagemagick # “convert" for image processing from command-line
        pkgs.ghostscript # converting .pdf into .png using ImageMagick

        # Dev scripts
        # Added to `PATH` for your convenience.
        # You can just call `render-kicad-schematic-pdf-to-png` regardless
        # what directory you are in at the moment.
        render-kicad-schematic-pdf-to-png
      ];
    };
in

(if inNixShell then shell else {}) // {
  inherit shell;
}
