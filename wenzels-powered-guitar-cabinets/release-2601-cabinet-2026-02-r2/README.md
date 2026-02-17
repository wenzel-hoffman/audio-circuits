# Wenzel’s Powered Guitar Cabinet 2601

Revision r2 (February 2026).

- [PDF schematic render](wenzels-powered-guitar-cabinet-2601-r2.pdf)
- [PNG schematic render](wenzels-powered-guitar-cabinet-2601-r2.png)

![Schematic](wenzels-powered-guitar-cabinet-2601-r2.png)

## Difference (changelog) from previous release (revision r1)

This revision fixes a ground-loop issue (high-pitch switching noise from the
power supply coming from the speaker). The main fix for this is to add 10Ω
ground-lifting resistors for the channel inputs. I actually added 4 ON-OFF-ON
switches (for each channel individually) allowing to connect the ground, as
before, disconnect it completely, or connect the input ground to the amplifier
ground through 10Ω resistor. But I’m going to use the 10Ω lift mode only in my
setup, it’s the one that is working for me.

## Photos

### Input ground lifting switches

![Ground lifting panel assembled and closed](photos/ground-lifting-panel-assembled-and-closed.jpg)

![Soldered ground lifting panel photo](photos/soldered-ground-lifting-panel.jpg)

![Soldered ground lifting panel photo 2](photos/soldered-ground-lifting-panel-2.jpg)

![Ground lifting panel front](photos/inputs-ground-lifting-panel.jpg)

![Ground lifting panel back](photos/inputs-ground-lifting-back-of-the-panel.jpg)

![Input transformers inside the open enclosure](photos/input-transformers.jpg)

# Heatsinks optimizations

During this update I optimized the DF reduction resistors heatsinks by using
100W 5Ω resistors instead of combining the resistance of different values (I
didn’t have 5Ω available earlier). This resulted into reducing the amount of DF
heatsinks from 3 to only 2.

![The new 2 optimized DF reduction resistors heatsinks photo](photos/heatsinks-optimization.jpg)
