# Wenzel’s F Pedal Platform Preamp guitar pedal

Revision r2 (September 2026).

- [PDF schematic render](wenzels-f-pedal-platform-preamp-r2.pdf)
- [PNG schematic render](wenzels-f-pedal-platform-preamp-r2.png)

![Schematic](wenzels-f-pedal-platform-preamp-r2.png)

## Difference (changelog) from previous release (revision r1)

1. Add series 100Ω in front of U1B and U2B input
2. Replace final RF caps C30 and C31 from 1nF to 47nF for much more aggressive
   RF filtering at pedal output

### Fixing errors

1. Replaced BOOST pot from C50k to A50k (C50k was a wrong taper for this pot)
2. Remove power supply configuration for U3C (there is no U3 opamp on the
   schematic)
