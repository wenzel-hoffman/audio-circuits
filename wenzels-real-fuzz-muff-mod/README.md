# Wenzel’s Real Fuzz Muff Mod

My own Real Fuzz mod for classic Muff circuit.

Read notes on the schematic for details.

The schematic is designed around 18VDC supply. The pedal will work with 9V but
CLEAN blend-in signal may clip at strong transients. And the distortion
character will be different. I find 18V to be the sweet-spot. If you are going
to use germanium NPN transistors for the T-stages make sure they can handle 18V.
Soviet MP37B (“МП37Б”) can (unlike MP37 though, pay attention to the “B”
letter).

**Important note:** it’s important that T1, T2, T3, and T4 are low-hFE (40–60 is
a good reference range). With higher hFE the pedal can get far too gainy, over
the top. I tried 2n3904-s but could not even touch the gain knob, a little more
than minimal and it goes straight into oscillation. Even with 40 hFE Ts you
would get more than enough gain. I selected 2n2369a Korean NPN transistors,
their hFE range from 40 to 120. I recommend you to buy many and select 40–60 hFE
with a transistor tester. Note that there are not that many silicon NPN options
with such low hFE.

## Latest revision schematic

![r5 2026-09 schematic](release-2026-09-r5/real-fuzz-muff-mod-r5.png)

## Releases (newest revisions are on the top)

- [r5 2026-09](release-2026-09-r4)
- [r4 2026-09](release-2026-09-r4)
- [r3 2026-08](release-2026-08-r3)
- [r2 2026-03](release-2026-03-r2)
- [r1 2025-10](release-2025-10-r1)
