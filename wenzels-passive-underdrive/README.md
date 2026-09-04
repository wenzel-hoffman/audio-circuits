# Wenzel’s Passive Underdrive

Just a simple A25k stereo stomp-box. Just attenuates the volume of the signal
when engaged.

Note that it relies on a _controlled environment_. It expects input signal to be
buffered/low impedance. Do not connect guitar with passive pickups straight in,
it will “suck the tone”.

Also note that even when it’s off parts of it are always present in the circuit.
It presents at least 25k path to ground and 200Ω series resistance. In theory it
should make switching less noisy and allows to switch both channels with a
single switch.

WARNING! The DC is needed only for the LED engagement indicator, and on the
schematic it is not grounded. I intended this DC to be daisy-chained from
another pedal, which would ground it. This way there is no potential for a
ground loop. If you are going to use a separate isolated DC output connect
negative to ground to avoid potential noise issues.

## Latest revision schematic

![r1 2026-09 schematic](release-2026-09-r1/wenzels-passive-underdrive-r1.png)

## Releases (newest revisions are on the top)

- [r1 2026-09](release-2026-09-r1)
