# Wenzel’s Real Fuzz Muff Mod

Revision r4 (September 2026).

## Wenzel’s Real Fuzz mod for classic Muff circuit

- [PDF schematic render](real-fuzz-muff-mod-r4.pdf)
- [PNG schematic render](real-fuzz-muff-mod-r4.png)

![Schematic](real-fuzz-muff-mod-r4.png)

### PNP variant (positive ground)

- [PDF schematic render](real-fuzz-muff-mod-for-pnp-r4.pdf)
- [PNG schematic render](real-fuzz-muff-mod-for-pnp-r4.png)

![Schematic](real-fuzz-muff-mod-for-pnp-r4.png)

## Difference (changelog) from previous release (revision r3)

1. Changed supply voltage requirement from 18V–36V to 9V–18V
   (18V sounded better in my experience than 36V)
2. Remove D7 over-voltage spikes protection Zener diode
   (was only needed for 36V)
3. Change R25 and R28 from 100Ω to 47Ω (avoid too much sagging at 9V)
4. Change R29 and R33 from 220Ω to 47Ω (avoid too much sagging at 9V)
5. Change C20 and C30 from 100uF to 220uF (to compensate for R25 and R28 change)
6. Change C22/C31 and C23 from 47uF to 100uF (to compensate for R29 and R33
   change, also note that C22 became C31 by accident)
7. Add C32 and C38 47uF for Q1 and Q2 voltage buffers bias filtering
8. Remove C26 (it was not necessary)
9. Change R39 from 470k to 220k
10. Change R43 from 10k to 100k
    (no need to load Q4 that much just for the C28 pull-down)
11. Change C28 from 4.7uF to 1uF (1uF is enough)
12. Add C22 4.7p (it’s a different C22 than in r3 release) for better T4
    stability
13. Add R32 10Ω series for the Muff board V+ to provide some isolation, so that
    extension board does try to pull much from C14
14. Remove clipping diodes/MOSFETs feature completely
    (I find that in this mod the most interesting stuff happens without the
    diodes, anyone could easily add them back if needed, but without the feature
    it’s easier to build it, I don’t use it for myself anyway)
15. Add a PNP positive-ground variant copy of the schematic, suitable for
    germanium PNPs for Ts (for Qs 2n3906 PNPs are used instead of 2n3904 NPNs)
