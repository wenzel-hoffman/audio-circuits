# Wenzel’s MOSFET Class-A Headphones Stereo Amp

Relatively simple build, not intended to have HiFi characteristics (damping
factor is low). Intended for studio play/recording monitoring. But you might
like how it sounds, it’s sounds powerful and “open”, sweet, with big bass.
The amp has lots of gain and output power (good for high-impedance cans).

I’m personally satisfied with this design, I initially tried to make something
simple for studio monitoring purposes but I enjoy how pleasing it sounds, how
powerful it is without being noisy (even just on a breadbord, without any
shielding), and that it has deep and extended powerful bass response.

I designed and tested it around 24V, so that the amp has plenty of headroom for
loud signals. But it should totally work fine with 12V too.

Note that popping sound is expected when powering the device on.
The schematic does not offer any power on popping supression for the sake of
keeping it simple enough.

## Build notes

The RC filter on the DC input, as drawn on the schematic, is important, this
kind of amp is bad at power supply noise rejection, but with this bulky filter
it’s pretty quiet (low perceivable noise) despite having lots of gain on tap.

Make sure you install the MOSFETs either onto a heatsink or just on a wall of an
aluminium enclosure. They will get warm, not very hot, so aluminium enclosure
wall can be enough as a heat-sink. Make sure the MOSFETs backs do not short with
the heatsink, use mica, and some platic bolts isolators for power transistors.
It is also possible to use some kind of clamp to push the transistor against the
wall while touching only the frontal plastic part (mica it still required).

## Latest revision schematic

![Schematic](release-2025-11-r1/wenzels-mosfet-class-a-headphones-stereo-amp-r1.png)

## Releases (newest revisions are on the top)

- [r1 2025-11](release-2025-11-r1)
