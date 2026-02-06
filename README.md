# Wenzel’s Audio Circuits

A collection of schematic designs and modified versions of existing circuits
for audio applications, such as guitar pedals, preamplifiers, power amplifiers,
and other audio electronics.

## Projects

- Guitar pedals
  * Distortion/Fuzz
    + [Wenzel’s Real Fuzz Muff Mod](wenzels-real-fuzz-muff-mod)
  * Utility
    + **WIP** [Wenzel’s Transparent Balancing Opamp Boost](wenzels-transparent-balancing-opamp-boost)

- Guitar preamplifiers
  - **WIP** [Wenzel’s High-Gain “SOLO” MOSFET Guitar Preamp](guitar-preamps/wenzels-high-gain-solo-mosfet-guitar-preamp)

- Power amplifiers
  - [Wenzel’s Powered Guitar Cabinets](wenzels-powered-guitar-cabinets)
  - **WIP** [Wenzel’s Simple MOSFET Class-A Power Amp](wenzels-simple-mosfet-class-a-power-amp)
  - [Wenzel’s MOSFET Class-A Headphones Stereo Amp](wenzels-mosfet-class-a-headphones-stereo-amp)
  - [Wenzel’s Headphones Stereo Amp](wenzels-headphones-stereo-amp)

---

## Development

The schematics are made using [KiCad EDA](https://www.kicad.org/),
free & open-source software.

An example how to open a project from a command-line:

``` sh
kicad wenzels-headphones-stereo-amp/headphones-amp-dual-supply.kicad_pro
```

Then you can find the schematic files in the file tree on the left.

### Nix

There is a [Nix](https://nixos.org/guides/how-nix-works/) configuration for the
project that supplies dependencies (KiCad in particular). So you can just run
from the project root:

``` sh
nix-shell
kicad
```

It will use your system [nixpkgs](https://github.com/NixOS/nixpkgs) pin.
If you want to make sure you use the same KiCad version as me then use
`pinned-nixpkgs` boolean attribute:

``` sh
nix-shell --arg pinned-nixpkgs true
kicad
```

It will read the pin from [nix/nixpkgs.pin.nix](nix/nixpkgs.pin.nix).

N.B. KiCad, together with it’s components library, is big and heavy, before you
enter the nix-shell for the first time, before KiCad is cached on your local
machine it will take quite a bit of time and disk space to get it ready.

There are other dependencies supplied too, such as
[ImageMagick](https://imagemagick.org/) for example for converting PDF
schematic renders to PNG format.

### Dev scripts

There are some useful scripts that help with working with the project:

- Convert schematic PDF to PNG format:
  [dev-scripts/render-kicad-schematic-pdf-to-png.sh](dev-scripts/render-kicad-schematic-pdf-to-png.sh)

---

## License

All **hardware design files** in this repository — including KiCad project
files (`.kicad_pro`, `.kicad_sch`, `.kicad_pcb`), symbols, footprints, 3D
models, and any **PDF & PNG renders of the schematics or boards** — are
licensed under the:

> **CERN Open Hardware Licence Version 2 – Strongly Reciprocal (CERN-OHL-S-2.0)**
> [SPDX: CERN-OHL-S-2.0](https://spdx.org/licenses/CERN-OHL-S-2.0.html)

Unless a subdirectory explicitly specifies another licence, all KiCad projects
under this repository fall under this licence.

### What this means

- You are free to **use, study, modify, make, and sell** hardware based on
  these designs.

- If you **modify** or **extend** the design, or create derivative works, you
  must:

  1. **Share your modified source files** (schematics, layouts, etc.) under the
     same licence.
  2. **Preserve attribution and licence notices**.

- If you **manufacture or distribute** a physical product derived from these
  designs, you must also make the corresponding design sources available under
  the same licence.

In short:

> **CERN-OHL-S for hardware is what the GNU GPL is for software** — it ensures
> that derivatives and improvements remain open-source and freely available to
> others.

For the full licence text, see:
[https://spdx.org/licenses/CERN-OHL-S-2.0.html](https://spdx.org/licenses/CERN-OHL-S-2.0.html)

---

### Software, scripts, and configuration files

Non-hardware support files — such as build scripts, shell utilities, or Nix
configuration files — are licensed separately under the permissive **MIT
License**, unless otherwise noted within their directories or file headers.

See individual files or subdirectories for their specific licence headers.

---

### Summary of licence scope

| Type of file / directory                                             | Default licence    | Notes                                      |
| ---                                                                  | ---                | ---                                        |
| `.kicad_pro`, `.kicad_sch`, `.kicad_pcb`, `.kicad_mod`, `.kicad_sym` | CERN-OHL-S-2.0     | Core open-hardware design sources          |
| `.step`, `.wrl`, `.3mf`, `.stl`                                      | CERN-OHL-S-2.0     | 3D models used in hardware design          |
| `.pdf`, `.png` (renders of schematics or boards)                     | CERN-OHL-S-2.0     | Visual renderings of open-hardware designs |
| `flake.nix`, `.nix`, `.sh` (utility scripts)                         | MIT                | Supporting software/configuration only     |
| Any other folder with its own `LICENSE`                              | As stated there    | Overrides the repository default           |

---

### Combined repositories

This repository collects multiple hardware projects in subdirectories.
Unless explicitly stated otherwise (e.g. with a different `LICENSE` file in a
specific project folder), **all hardware projects are licensed under
CERN-OHL-S-2.0**.

Software or configuration files accompanying those projects use the **MIT
License**.

---

**SPDX identifiers for clarity:**
- Hardware source files: `SPDX-License-Identifier: CERN-OHL-S-2.0`
- Scripts/config files: `SPDX-License-Identifier: MIT`
