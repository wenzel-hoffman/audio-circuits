# Wenzel’s HiFi Sub X-Over

LR2 12dB/octave subwoofer + mains split adjustable active cross-over (54—219Hz).

Linkwitz–Riley filter (LR2 second-order audio cross-over).

## Citation

This schematic is based on
https://github.com/tkilla64/eurorack/blob/deeafd41/misc/crossover-filter/xover-filter_sch_v2.pdf
but converted from single-supply to double-supply configuration. Also with some minor extra changes.
So praise https://github.com/tkilla64 for the original schematic.

## Features

- 2 inputs (left and right channels) with ≈22k input impedance
- 2 “mains” outputs (left and right channels) with ≈100Ω output impedance
- 2 “sub” outputs (left and right channels) with ≈100Ω output impedance
- Mono-sub switch that merges left and right channels into the left “sub” output
- Cross-over frequency knobs for left and right channels which can be converted
  into a single knob using a 4-channel B10k pot

All left channel ports (both input and output) work as stereo ports when right
channel input jack is not plugged in.

## Characteristics

**In ideal scenario:**

- At exactly cross-over frequency both outputs are -90° relative to the input
- Both mains and sub outputs are ideally 0° relative to each-other at each frequency (in-phase)
- Well below cross-over frequency sub outputs approach 0° relative to the input (in-phase relative to the input)
- Well above cross-over frequency mains outputs approach -180° relative to the input (out-of-phase relative to the input)

**Crossover Frequency (Hz):**

- Fmin = 1 / (2π * (10000Ω pot max value + 3300Ω) * 220nF in farads, 220E-9) = 54Hz
- Fmax = 1 / (2π * (0 pot min value + 3300Ω) * 220nF in farads, 220E-9) = 219Hz

## Latest revision schematic

![Schematic](release-2026-08-r1/wenzels-hifi-sub-xover-r1.png)

## Releases (newest revisions are on the top)

- [r1 2026-08](release-2026-08-r1)
