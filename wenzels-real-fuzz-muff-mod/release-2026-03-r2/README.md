# Wenzel’s Real Fuzz Muff Mod

Revision r2 (March 2026).

Maximized gain, switchable optional LED clipping diodes, logarithmic VOLTS pots.

- [PDF schematic render](real-fuzz-muff-mod-r2.pdf)
- [PNG schematic render](real-fuzz-muff-mod-r2.png)

![Schematic](real-fuzz-muff-mod-r2.png)

## Difference (changelog) from previous release (revision r1)

- Add 10uF emitter bypass capacitors for gain stages to get more gain so that
  transistors clipping is reached more easily.

- Change VOLTS knobs from linear to logarithmic so that the most effective area
  has more physical range for precise adjustment.

- Add optional (switch-off-able) asymmetric LED clipping diodes.
  The diodes can be switched-on/off for each of 2 clipping stages individually.
  Note that LEDs have a very high forward voltage compared to original 1n4148.

- `D5` DC polarity protection diode was changed from 1n4007 to 1n5819.

- Unnecessary `R28` and `R32` are removed from the voltage buffers.
