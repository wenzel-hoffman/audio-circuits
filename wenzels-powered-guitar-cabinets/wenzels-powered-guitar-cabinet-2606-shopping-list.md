# Powered Guitar Cabinet 2606 shopping list

## Power supply

- Switching mode power supply rated >=600W ±56V.

  For example search on Ebay:
  “600W LLC Switch Power Supply Module Dual Power Supply for Power Amplifier”.

- 2x 2Ω/100W power resistors.
- 2x 2200uF/100V capacitors.

In my builds I would use single set of this for all amplifiers.

## Input transformers

For each of the bridged amplifier you need one
[OEP A262A2E 1:2 line transformer](https://fi.rsdelivers.com/product/oep/a262a2e/oep-100-mw/2106419)

For for quad amping you would need 4 of these transformers.

## Single amp

Note that the amp is intended to be used in bridge-mode, so for one “full amp”
you would need to double these.

- Transistors
  * 1x [IRFP240 N-channel MOSFET](https://www.mouser.fi/c/?q=IRFP240PBF)
  * 1x [IRFP9240 P-channel MOSFET](https://www.mouser.fi/c/?q=IRFP9240PBF)
  * 2x [MJE340 NPN](https://www.mouser.fi/c/?q=MJE340)
- Diodes
  * 4x [1N4744A zener diode](https://www.mouser.fi/c/?q=1N4744A)
  * 1x [1N4148 diode](https://www.mouser.fi/c/?q=1N4148)
- Capacitors
  * 1kV ceramics (250–500V is enough margin, 1kV are just easier to find)
    + 2x 100p/1kV ceramic
  * 250V
    + 1x 1uF/250V film
  * 100V
    + 2x 2200uF/100V electrolytic
    + 1x 220u/100V electrolytic
    + 1x 3.3uF/100V film
    + 1x 100n/100V ceramic
    + 1x 330p/100V ceramic
- Resistors
  * ¼W
    + 2x 470Ω
    + 2x 1k
    + 1x 4k7
    + 2x 47k
    + 1x 330k
  * 0.5W
    + 1x 1k
    + 2x 47k
  * 1W
    + 1x 4k7
    + 1x 18k
  * 2W
    + 1x 22k
  * 5W
    + 1x 10Ω
  * 50W
    + 2x 1Ω
  * 100W
    + 1x 2Ω
- Potentiometers
  * 1x 5kΩ trimmer
  * 1x A1m

## Bridge-mode amp

Full amp. 2 copies of the “Single amp”.
So the amount of components just doubles.

Note that there is single double A1m potentiometer
(for controlling negative feedback for both amps of the bridge pair
at the same time).

- Transistors
  * 2x [IRFP240 N-channel MOSFET](https://www.mouser.fi/c/?q=IRFP240PBF)
  * 2x [IRFP9240 P-channel MOSFET](https://www.mouser.fi/c/?q=IRFP9240PBF)
  * 4x [MJE340 NPN](https://www.mouser.fi/c/?q=MJE340)
- Diodes
  * 8x [1N4744A zener diode](https://www.mouser.fi/c/?q=1N4744A)
  * 2x [1N4148 diode](https://www.mouser.fi/c/?q=1N4148)
- Capacitors
  * 1kV ceramics (250–500V is enough margin, 1kV are just easier to find)
    + 4x 100p/1kV ceramic
  * 250V
    + 2x 1uF/250V film
  * 100V
    + 4x 2200uF/100V electrolytic
    + 2x 220u/100V electrolytic
    + 2x 3.3uF/100V film
    + 2x 100n/100V ceramic
    + 2x 330p/100V ceramic
- Resistors
  * ¼W
    + 4x 470Ω
    + 4x 1k
    + 2x 4k7
    + 4x 47k
    + 2x 330k
  * 0.5W
    + 2x 1k
    + 4x 47k
  * 1W
    + 2x 4k7
    + 2x 18k
  * 2W
    + 2x 22k
  * 5W
    + 2x 10Ω
  * 50W
    + 4x 1Ω
  * 100W
    + 2x 2Ω
- Potentiometers
  * 2x 5kΩ trimmer
  * 1x A1m dual potentiometer

## Quad set

Stereo DRY-WET, 4 bridge-mode amplifiers total.
8 individual amplifiers total.
2 channels DRY, 2 channels WET.

- Transistors
  * 8x [IRFP240 N-channel MOSFET](https://www.mouser.fi/c/?q=IRFP240PBF)
  * 8x [IRFP9240 P-channel MOSFET](https://www.mouser.fi/c/?q=IRFP9240PBF)
  * 16x [MJE340 NPN](https://www.mouser.fi/c/?q=MJE340)
- Diodes
  * 32x [1N4744A zener diode](https://www.mouser.fi/c/?q=1N4744A)
  * 8x [1N4148 diode](https://www.mouser.fi/c/?q=1N4148)
- Capacitors
  * 1kV ceramics (250–500V is enough margin, 1kV are just easier to find)
    + 16x 100p/1kV ceramic
  * 250V
    + 8x 1uF/250V film
  * 100V
    + 16x 2200uF/100V electrolytic
    + 8x 220u/100V electrolytic
    + 8x 3.3uF/100V film
    + 8x 100n/100V ceramic
    + 8x 330p/100V ceramic
- Resistors
  * ¼W
    + 16x 470Ω
    + 16x 1k
    + 8x 4k7
    + 16x 47k
    + 8x 330k
  * 0.5W
    + 8x 1k
    + 16x 47k
  * 1W
    + 8x 4k7
    + 8x 18k
  * 2W
    + 8x 22k
  * 5W
    + 8x 10Ω
  * 50W
    + 16x 1Ω
  * 100W
    + 8x 2Ω
- Potentiometers
  * 8x 5kΩ trimmer
  * 4x A1m dual potentiometer

## Set of 6

I wanted to build extra 2 amplifiers for another project.
So this is a shopping list for all 6 of them.

- Transistors
  * 12x [IRFP240 N-channel MOSFET](https://www.mouser.fi/c/?q=IRFP240PBF)
  * 12x [IRFP9240 P-channel MOSFET](https://www.mouser.fi/c/?q=IRFP9240PBF)
  * 24x [MJE340 NPN](https://www.mouser.fi/c/?q=MJE340)
- Diodes
  * 48x [1N4744A zener diode](https://www.mouser.fi/c/?q=1N4744A)
  * 12x [1N4148 diode](https://www.mouser.fi/c/?q=1N4148)
- Capacitors
  * 1kV ceramics (250–500V is enough margin, 1kV are just easier to find)
    + 24x 100p/1kV ceramic
  * 250V
    + 12x 1uF/250V film
  * 100V
    + 24x 2200uF/100V electrolytic
    + 12x 220u/100V electrolytic
    + 12x 3.3uF/100V film
    + 12x 100n/100V film
    + 12x 330p/100V ceramic
- Resistors
  * ¼W
    + 24x 470Ω
    + 24x 1k
    + 12x 4k7
    + 24x 47k
    + 12x 330k
  * 0.5W
    + 12x 1k
    + 24x 47k
  * 1W
    + 12x 4k7
    + 12x 18k
  * 2W
    + 12x 22k
  * 5W
    + 12x 10Ω
  * 50W
    + 24x 1Ω
  * 100W
    + 12x 2Ω
- Potentiometers
  * 12x 5kΩ trimmer
  * 6x A1m dual potentiometer
