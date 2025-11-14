# Author: Wenzel Hoffman
# SPDX-License-Identifier: MIT

# Nix wrapper for the `release-revision.sh` dev-script.

{ lib
, writeTextFile
, bash
, ghostscript # For PDF → PNG conversion using ImageMagick
, imagemagick
, xmlstarlet # Parsing exported XML
, kicad
, coreutils
, findutils

# See `render-kicad-schematic-pdf-to-png.nix`
, render-kicad-schematic-pdf-to-png
}:
let
  executables = {
    bash = bash;
    gs = ghostscript;
    magick = imagemagick;
    xmlstarlet = xmlstarlet;
    kicad-cli = kicad;
    find = findutils;
    date = coreutils;
    basename = coreutils;
    dirname = coreutils;
    render-kicad-schematic-pdf-to-png = render-kicad-schematic-pdf-to-png;
  };

  esc = lib.escapeShellArg;
  bin = pkg: exe: "${pkg}/bin/${exe}";
  e = builtins.mapAttrs (n: v: esc (bin v n)) executables;
  executableFileCheck = x: "[[ -f ${x} || -r ${x} || -x ${x} ]]";

  script =
    lib.pipe ../../dev-scripts/release-revision.sh [
      builtins.readFile
      (
        builtins.replaceStrings
          [''"$SCRIPT_DIR"/render-kicad-schematic-pdf-to-png.sh'']
          [e.render-kicad-schematic-pdf-to-png]
      )
    ];
in
writeTextFile rec {
  name = "release-revision";
  executable = true;
  destination = "/bin/${name}";
  checkPhase = ''(
    set -o nounset
    ${builtins.concatStringsSep "\n" (map (x: ''
      if ! ${executableFileCheck x}; then
        (set -o xtrace && ${executableFileCheck x})
      fi
    '') (builtins.attrValues e))}
  )'';
  text = ''
    #! ${let n = "bash"; in bin executables.${n} n}
    set -o errexit || exit

    export PATH=${
      esc (lib.makeBinPath (builtins.attrValues executables))
    }''${PATH:+:}''${PATH}

    ${script}
  '';
}
