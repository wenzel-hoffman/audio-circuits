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

- Add LEDs to indicate that the power is on.

- Add single supply version of the schematic (18V .. 30V).
  * Replace V- with GND for the push-pull pair.
  * Create buffered (via added TL071) mid-rails Vbias reference.
  * Reference NE5532 to Vbias.

- Add a GAIN knob that increases feedback attenuation resistance.
  It increases feedback when turned counter-clockwise thus reducing
  the amplifier overall gain and also improving output impedance/damping factor
  a touch.

  When listening at low volumes you might turn the INPUT VOLUME knob really low,
  but amp’s noise floor stays the same, it just becomes more audible relative to
  the amplified signal. But reducing gain will also lower noise floor.

  - Also reduced R4 and R13 from 1kΩ to 680Ω which gives a little more gain at
    maximum GAIN knob value.
