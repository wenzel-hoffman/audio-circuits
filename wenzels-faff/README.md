# Wenzel’s Faff

Multi-stage transistor clipping fuzz guitar pedal with multiple features.

Gain stages and TONE control are loosely based on the Green Muff circuit.

## Features

- Input impedance ≈1MΩ
- Output impedance ≈100Ω
- Output phase polarity preserved relative to the input (non-inverting)
- Extensive DC and RF filtering (stability and noise suppression)
- GAIN, TONE (with TONE-stack-bypass switch), VOLUME knobs
- VOLTS1 and VOLTS2 buffered voltage attenuators for 2 of 4 final gain stages
- STARVE switches for VOLTS1 and VOLTS2 knobs to drop maximum voltage
  (more room for low-voltage adjustments)
- TAME (low-pass filter) and TIGHT (high-pass filter) knobs
- CLEAN knob for clean signal blend-in (unaffected by the VOLUME knob,
  with VOLUME down can even work as a clean +15dB boost, also CLEAN signal
  is unaffected by any of the EQ)
- 4x NPN gain stages (either germanium or low-hFE silicon)

## DC supply requirements

The pedal works with 9V and 18V. 18V is recommended. With 9V CLEAN signal
headroom will be limited, depending on how strong the input signal
peaks/transients are.

## Latest revision schematic

![r1 2026-09 schematic](release-2026-09-r1/wenzels-faff-r1.png)

## Releases (newest revisions are on the top)

- [r1 2026-09](release-2026-09-r1)
