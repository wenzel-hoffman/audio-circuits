# Author: Wenzel Hoffman
# SPDX-License-Identifier: MIT

# Nix wrapper for the `render-kicad-schematic-pdf-to-png.sh` dev-script.

{ lib
, writeTextFile
, bash
, ghostscript # For PDF → PNG conversion using ImageMagick
, imagemagick
}:
let
  executables = {
    bash = bash;
    gs = ghostscript;
    magick = imagemagick;
  };

  esc = lib.escapeShellArg;
  bin = pkg: exe: "${pkg}/bin/${exe}";
  e = builtins.mapAttrs (n: v: esc (bin v n)) executables;
  executableFileCheck = x: "[[ -f ${x} || -r ${x} || -x ${x} ]]";

  script =
    builtins.readFile
      ../../dev-scripts/render-kicad-schematic-pdf-to-png.sh;
in
writeTextFile rec {
  name = "render-kicad-schematic-pdf-to-png";
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
