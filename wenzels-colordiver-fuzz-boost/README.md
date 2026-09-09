# Wenzel’s ColorDiver Fuzz/Boost

It’s my own take on one of my favourite guitar pedal circuits — Colorsound
Overdriver (or for example Tru-Fi ColorDriver).

The design includes the original circuit but with a bunch of tweaks around it:

- It runs from 36VDC supply but there is a VOLTS knob that adjusts the voltage
  for the original circuit from ≈3V to ≈36V, allowing you to have both 9V and
  18V variants including below and above that just by adjusting the knob.

- There is aggressive multi-stage RC filtering for the DC input for clean DC
  source which also drops some volts from that 36V supply.

- C10k is used for the GAIN knob instead of B10k which gives more linear gain
  adjustment feel, more usable range, unlike the original circuit, which has
  most gain change at the tiny end of the knob.

- Features a VOLUME pot which is not part of the original vintage schematic.

- Adds unity-gain-ish phase-flipping stage to restore the phase polarity
  relative to the input (original circuit is inverting, which was inconvenient
  for my stereo pedalboard setup). And a couple unity-gain buffers before and
  after it. Those are unaffected by the VOLTS knob, giving you maximum headroom
  they can offer so they don’t participate in the clipping (original circuit can
  output significant voltages).

- Extra RF filtering for more stability.

## Latest revision schematic

![r2 2026-08 schematic](release-2026-09-r2/wenzels-colordiver-fuzz-boost-r2.png)

## Releases (newest revisions are on the top)

- [r2 2026-09](release-2026-09-r2)
- [r1 2026-08](release-2026-08-r1)
