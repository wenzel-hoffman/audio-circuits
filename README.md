# Wenzel’s Audio Circuits

A collection of schematic designs and modified versions of existing circuits
for audio applications, such as guitar pedals, preamplifiers, power amplifiers,
and other audio electronics.

## Projects

- Guitar pedals
  - [Wenzel’s Real Fuzz Muff Mod](wenzels-real-fuzz-muff-mod)
- Power amplifiers
  - [Headphones amp (modified “JAT Stereo Headphone Amp v1.0”)](modded-jat-stereo-headphones-amp)

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
