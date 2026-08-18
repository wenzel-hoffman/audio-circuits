# Wenzel’s Tubinizer

ECC83/12ax7 Line Colorizer.

**WARNING! High-Voltage!** If you don’t know what you’re doing I strongly
recommend to stay away from building the project yourself. High voltage
can be lethal unless handled properly while following all safety precautions!

Stereo, balanced inputs, balanced outputs. Unbalancing and balancing is provided
by the TL072 op-amps. There is single full-range tube gain stage in between,
moderate gain.

I designed this device for my pedalboard needs. I wanted the tube feel and
coloration after all the signal processing, after all the EQ and stuff. And
especially when all the signal in front is solid-state, just to get some of the
tube taste & feel for it. So this unit is intended just to spice the signal a
little but stay relatively transparent.

- Input impedance (the unit expects Low-Z input signal, the input impedance
  mismatch is a compromise to keep unbalancing ratios even, for better noise
  rejection):

  * ≈47k for tip (positive)
  * ≈94k for ring (negative)

- Output impedance is: ≈470Ω (both for each balanced positive and negative).

  It is set a bit high in order to prevent U2B and/or U3B from heavy loading
  when ring/negative is shorted to ground in case an unbalanced cable is
  plugged in.

- 3x TL072 op-amps
  * 1x for unbalancing the L & R inputs and buffering the signal before the gain pot
  * 2x for buffering tube output after the volume pot and balancing L & R outputs

- 1x ECC83/12ax7 tube

- 1x +12VDC PSU module to power the high-voltage booster
  (technically unnecessary since you can feed it from +15V but in my case
  ±15 PSU module was going into overload protection when connected to HV booster
  so I had to use extra PSU module to have enough power for it)

- 1x step-up high-voltage module for tube plates
- 1x step-down module for tube heaters

- 1x ±15V PSU module to power the opamps (30VDC total, big headroom)
  and tube heaters step-down module (+15VDC to ≈+12.6VDC)

N.B. Note that you should aim to match all 47k within 0.1% tolerance for each
channel for best balanced signal noise rejection.

## Power requirements

Power source: AC ≈230V/50Hz from the wall, switchable IEC plug.

### Voltages

- AC ≈230V/50Hz input from the wall.
- DC ≈12.6V for the tube heaters.
- DC ≈300V for the tube plates.
- DC ≈±15V for the TL072 op-amps.

## Latest revision schematic

![r1 2026-08 schematic](release-2026-08-r1/wenzels-tubinizer-r1.png)

## Releases (newest revisions are on the top)

- [r1 2026-08](release-2026-08-r1)
