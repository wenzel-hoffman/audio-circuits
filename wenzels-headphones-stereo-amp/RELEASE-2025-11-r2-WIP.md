# Wenzel’s Headphones Stereo Amp

WIP release notes.

## Revision 2 (November 2025)

Dual supply (±9V .. ±15V) and single supply (18V .. 30V) variants.

## Dual supply

- [PDF schematic render](TODO)
- [PNG schematic render](TODO)

![Schematic](TODO)

## Single supply

- [PDF schematic render](TODO)
- [PNG schematic render](TODO)

![Schematic](TODO)

## Difference (changelog) from previous release (revision 1)

- Reduce BD139/BD140 emitter output resistors 10Ω → 0.22Ω thus improving
  damping factor for the smaller loads (lower ohms headphones).

- Several tweaks for stability assurance & better RF and noise rejection:
  * Zobel network (10Ω + 100nF to ground) after BD139/BD140 emitters.
  * Series 1Ω output resistor.
  * 470pF across each headphones JACK outputs (T & R).
  * 68pF across feedback resistor.
  * Extra 10uF DC filtering next to opamp leads.

- Added LEDs to indicate that the power is on.

- Added single supply version of the schematic (18V .. 30V).
  * Replace V- with GND for the push-pull pair.
  * Create buffered (via added TL071) mid-rails Vbias reference.
  * Reference NE5532 to Vbias.
