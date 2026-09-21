# Wenzel’s Microphone JFET Preamplifier

A simple microphone preamplifier using NE5532 op-amps for
balanced-to-single-ended input conversion and balanced output driving, with two
K170 JFET gain stages in between. Two additional K170 source followers buffer
the adjustable low-pass and high-pass filters.

The two JFET gain stages provide plenty of gain and can intentionally be
overdriven for nonlinear coloration, soft clipping, and compression of signal
peaks.

## Features

- 48V phantom power via a separate 48VDC input, with phantom power switch
- Balanced microphone input
- Input polarity switch
- Switchable -15dB pre-drive pad
- GAIN and VOLUME controls
- Two K170 JFET gain stages with substantial available gain
- Adjustable buffered 6dB/octave low-pass and high-pass filters
- 3 independently buffered balanced outputs
- ≈100Ω output impedance per leg
- Individual output ground-lift switches

## Voltage requirements

- +24VDC for the main preamplifier circuit
- +48VDC separate supply for optional phantom power

## Filters ranges

- Low-pass: ≈48 kHz → ≈530 Hz
- High-pass: ≈24 Hz → ≈235 Hz

There is also intentional low-frequency roll-off around 15–20 Hz between several
stages, helping remove very-low-frequency rumble and unnecessary subsonic
energy.

## Latest revision schematic

![r1 2026-09 schematic](release-2026-09-r1/wenzels-mic-fet-preamp-r1.png)

## Releases (newest revisions are on the top)

- [r1 2026-09](release-2026-09-r1)
