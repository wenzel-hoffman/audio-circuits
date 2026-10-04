# Wenzel’s Cuckold Fuzz

This is my take on the “Carcoza” fuzz pedal.

Compared to “Carcoza” it has several stability improvements:

- Very aggressive RC filtering for V+
- Individual V+ filtering branches for all gain stages
- 1k base stoppers for all gain stages
- Some extra RF filtering at output for some of the stages
- Added small 10Ω Q2 emitter degeneration

Also:

- Input buffer replaced to J113 JFET with conventional ≈1M input impedance
- “PRE”/“BEFORE" input signal attenuator uses log taper instaed of linear one
- Q2 collector changed from 9k1 to 10k

## Latest revision schematic

![r1 2026-10 schematic](release-2026-10-r1/wenzels-cuckold-fuzz-r1.png)

## Releases (newest revisions are on the top)

- [r1 2026-10](release-2026-10-r1)
