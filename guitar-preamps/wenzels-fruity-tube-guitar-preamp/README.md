# Wenzel’s Fruity Tube Guitar Preamp

A simple guitar tube guitar preamplifier inspired by
[OR15](https://www.musiker-board.de/attachments/or15-pdf.916640/).

**WARNING! High-Voltage!** If you don’t know what you’re doing I strongly
recommend to stay away from building the project yourself. High voltage
can be lethal unless handled properly while following all safety precautions!

**WARNING!** Current design implies that the high-voltage booster module is an
external unit with own enclosure, which receives 18V and sends 320V back. Those
320V high-voltage DC ports are **dangerous to touch!** So I would not recommend
to anyone to use current layout as-is. In the future I would rather take a
bigger enclosure where I could put the HV booster away from the rest of the
circuit to avoid any interference.

The design utilizes 2 of 12ax7/ECC2 tubes, 4 gain stages total. Then goes the
passive tone stack + volume control. After that there is a K170 JFET output
unity-gain buffer with a mute switch in front of it. There is also similar K170
JFET input buffer in front of the tubes to help with stability at extreme gain
settings.

A1m dual pots are not easiest to find. So unlike in OR15 design I used 2
separate A1m pots. In order to preserve original OR15 gain behavior you just set
them both to the same value. But this design provides more tonal options,
you can push more gain before or after.

## Power requirements

Power source: 18VDC, I would recommend >=1A. There are 2 of 12ax7/ECC83. Tube
heater for one 12ax7 consumes 150mA at 12.6V, two would be 300mA. But at cold
start during pre-heating they can consume even more. There is also a DC-DC
HV booster involved that is not 100% efficient, as well as DC-DC step-down for
the tube heaters. So 1A is a safe margin to handle all that easy.

### Voltage sources required

- 18V for the JFET input & output buffers.
- 12.6V for the tube heaters.
- 320V for the tube plates.

With the step-down and step-up modules you only need 18V input.
Then you get 12.6V and 320V out of those.

### In my build

- 18V source is fed to the input & output JFET buffers.

- Adjustable DC-DC step-down provides conventional 12.6V for the tube heaters.

- Adjustable DC-DC step-up high-voltage booster provides 320V to feed the tube
  plates.

## Latest revision schematic and layout

r3

![Schematic](release-2026-06-r3/wenzels-fruity-tube-guitar-preamp-r3-schematic.png)

**Disclaimer:** This layout is BAD. Just a first iteration prototype.

![Layout](release-2026-06-r3/wenzels-fruity-tube-guitar-preamp-r3-layout.png)

## Releases (newest revisions are on the top)

- [r3 2026-06](release-2026-06-r3)
- [r2 2026-05](release-2026-05-r2)
- [r1 2026-05](release-2026-05-r1)
