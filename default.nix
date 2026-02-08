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
  render-kicad-schematic-pdf =
    pkgs.callPackage nix/dev-scripts/render-kicad-schematic-pdf.nix {};

  render-kicad-schematic-pdf-to-png =
    pkgs.callPackage nix/dev-scripts/render-kicad-schematic-pdf-to-png.nix {};

  release-revision =
    pkgs.callPackage nix/dev-scripts/release-revision.nix {
      inherit render-kicad-schematic-pdf-to-png;
    };

  run-diylc = pkgs.callPackage nix/dev-scripts/run-diylc.nix {};

  shell =
    pkgs.mkShell {
      buildInputs = [
        # KiCad
        pkgs.kicad

        # DIY Layout Creator
        pkgs.diylc
        # Runner script with proper Swing configuration for my XMonad
        run-diylc

        # “unshare”
        pkgs.util-linux

        # Image format conversion
        pkgs.imagemagick # “convert" for image processing from command-line
        pkgs.ghostscript # converting .pdf into .png using ImageMagick

        # Parsing exported XML from KiCad schematic files
        pkgs.xmlstarlet

        # Dev scripts
        # Added to `PATH` for your convenience.
        # You can just call, for example `render-kicad-schematic-pdf`,
        # regardless of what directory you are in at the moment.
        render-kicad-schematic-pdf
        render-kicad-schematic-pdf-to-png
        release-revision
      ];
    };
in

(if inNixShell then shell else {}) // {
  inherit shell;
}
