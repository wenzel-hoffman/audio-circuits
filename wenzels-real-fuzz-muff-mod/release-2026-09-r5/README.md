# Wenzel’s Real Fuzz Muff Mod

Revision r5 (September 2026).

- [PDF schematic render](real-fuzz-muff-mod-r5.pdf)
- [PNG schematic render](real-fuzz-muff-mod-r5.png)

![Schematic](real-fuzz-muff-mod-r5.png)

## Difference (changelog) from previous release (revision r4)

This is a big change compared to r4. A lot was reworked.

1. Switched back to J113 for the VOLTS1 and VOLTS2 buffers

2. Added STARVE1 and STARVE2 switches for the VOLTS1 and VOLTS2 operation range
   shift (maximum voltage is halved, thus adjusting starving/gated voltages for
   T2 and T3 is easier)

3. Added TIGHT knob (which cuts off bass in this range: 49 Hz → 258 Hz)

4. Added CLEAN blend-in knob which injects CLEAN signal unaffected by any of the
   EQ stages at the pedal output (can be very useful for bass-guitar for
   example, or when driving other pedals or amp front end, just adding extra
   distortion grit to the signal, without turning everything into mush)

5. Added independent DC filters for T1 and T4 for more stability
   (T-stages are very gainy, they can run into feedback, T2 and T3 use
   independent buffered and filtered voltage sources already)

In order to make everything work with the CLEAN blend-in and preserve
phase-polarity relative to the input signal I had to use 3 op-amps. First there
is unity-gain non-inverting buffer with conventional ≈1M input impedance. Then
one unity-gain inverting stage (important at the end) which splits the signal
into one that goes into the Muff stages, TAME and TIGHT filters later, and into
the boost stage for the CLEAN signal. Then there is final inverting mixer that
blends clean and distorted signal together at unity gain. Because the phase is
inverted early this final inverted mixer restores the phase to original
polarity.

Because now opamps are involved I had to remove the PNP variant. It’s still
possible with a chip that would generate negative voltage for the PNPs, but it
would make the circuit more complicated and hard to fit in a typical pedal case.
