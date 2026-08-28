# Wenzel’s Expression Wah

This is a wah-wah guitar pedal but one that doesn’t require a rocking pedal
construction. Instead if accepts 2-channel expression pedal (2x TRS cables) with
expected 10k impedance (e.g. Boss EV-30). Since most expression pedals are
typically featuring a linear potentiometer this pedal has a feature to emulate a
logarithmic-ish curve (or reverse-logarithmic). Also it does not use any
inductors, it’s a simple op-amp based design.

This design is originally based on the schematic of PedalPCB “Parasite Wah”
(but it’s heavily modified):

- https://docs.pedalpcb.com/project/ParasiteWah.pdf
- https://www.musikding.de/Parasite-Wah-kit

My schematic compared to the original “Parasite Wah”:

- Works with 18V–36V source voltage range (original is for 9V)
- Uses TL084 opamp (2x TL072 chips can be used instead of TL084) instead of
  MC1458 in the original
- Has very aggressive multi-stage RC filtering for the DC voltage source
  (which also drops the voltage a little to keep the TL084 more in the
  comfortable zone when 36V is supplied, around 32V for 36V, and around 15V for
  18V, which is also load-dependent)
- Features ≈1M input impedance JFET K170 unity-gain buffer in front
  (original sets input impedance only 47kΩ, which is not great for passive
  pickups guitar straight in)
- Features input and output full-range setting switches
  (allowing you to preserve the original hi-pass cut-off configuration in
  additional to full-range signal, original goes very aggressively on cutting
  lows both at input and at output; original input is ≈338.8Hz cut-off and
  output is ≈159.2Hz, the switches give you input and output cut-off at around
  ≈30Hz which for guitar signal is essentially considered full-range)
- The main feature of this pedal is 2x expression pedal ports (for a 2-channel
  expression pedal with a B10k pot such as Boss EV-30) instead of
  dual A10k potentiometer
- Expression potentiometer curve altering switch to give you log-ish (or
  reverse-logarithmic) feel since the pedal is intended to work with linear
  potentiometers while original design uses logarithmic
- Extra resistors around the expression pedal wiring to handle the long cables
  stably
- Adds GAIN and VOLUME pots, providing significantly more input gain than the
  original while allowing to attenuate the GAIN to set it lower than the
  original (10x gain minimum and 35x gain maximum while original is fixed at
  around 14x gain) so this pedal can also work as a proper boost
- Extra RF filtering network for more stability
- BIAS knob allowing you to set the VREF bias a little above mid-rails at
  maximum and very low at minimum basically mis-biasing the circuit that gives
  you a bit of fuzzy distortion in addition to the WAH-WAH effect.

**TODO:** Use A25k for the BIAS knob instead of B25k to allow more usable
mis-bias range at lower settings.

## Expression pedal options

I personally use Boss EV-30, it works just fine, giving you plenty of sweep
range, goes extra deep at lowest position.

![Boss EV-30 expression pedal photo](release-2026-08-r1/photos/boss-ev30-expression-pedal.jpg)

![Boss EV-30 expression pedal ports photo](release-2026-08-r1/photos/boss-ev30-expression-pedal-ports.jpg)

## Powering notes

I set the minimum voltage requirement to 18V because at 9V the voltage drop
after the RC filters would be quite dramatic. But the pedal should still perform
fine at 9V, thought the headroom would be too little. I didn’t test it, but you
might actually like it, and some of the distortion included, depends on how you
are going to use it.

## Characteristics

- Input impedance is ≈1MΩ.
- Output impedance is ≈200Ω.

## Power requirements

- 18V–36V DC (100mA is plenty)

## Latest revision schematic

![Schematic](release-2026-08-r1/wenzels-expression-wah-r1.png)

## Releases (newest revisions are on the top)

- [r1 2026-08](release-2026-08-r1)
