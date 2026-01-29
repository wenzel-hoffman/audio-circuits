# Wenzel’s Powered Guitar Cabinets

My guitar cabinets with installed tweaked power amplifiers into them.

---

## Powered Guitar Cabinet 2601

TODO Coming soon…

---

## Powered Guitar Cabinet 2510

A pair of stereo Class AB boards configured as bridge-mode installed into a
_Blackstar HT-112 OC MK III Box_ cabinet.

The idea is to take conventional Class AB solid-state amplifiers designed for
general audio use, like home stereo, and tweak it post-factum without circuit
modifications (to avoid messing with amp stability and other stuff I’m not too
confident with) to make it perform/have characteristics more similar to a guitar
tube amplifier. Particularly to have very low damping factor value (so that the
speaker is very loose, and it “sings” with resonances even after amplifier stops
playing), creating more “open” and “tree-dimensional” sound, and as a
side-effect it actually sounds louder, as the speaker is less controlled by the
amp. In addition to that there is a use of output transformers for “feel” and
coloration (OT transformer is one of the crucial parts of a guitar tube power
amplifier).

Target damping factor is 1 or less. For example according to Ravi Rajani’s
measurements: https://youtu.be/TPz-oY0NBTY?t=266

1. Fender Deluxe Reverb Reissue DF=0.3/8Ω (Zout = 24)
2. Fender Vibroverb Reissue DF=1/8Ω (Zout = 8)

I expect the load presented to the amp output to always be 8Ω. Apart from “feel”
and coloration the custom [tector.it](https://tector.it/en_GB) impedance
transformers help with that allowing to transform 16Ω load into 8Ω. Or just 1:1
8Ω to 8Ω.

In order to achieve that target damping factor value I artificially increase
output impedance of the amplifier by adding ballast 100W power resistors.
Note though that those resistor become part of the load, so for DF=1 8Ω
resistance will dissipate half of the energy as heat, and only the other half is
delivered to the speaker. So mind that this system is very inefficient. The
resistors must be installed onto a heatsink. But the amount heat was never a
problem for me in my setup, the heatsink gets warm when blasting loud for some
time, but never too hot. So no active cooling required.

One problem with that technique is that you loose a lot of output power
delivered to the speaker and also lots of volume relative to the input signal
(amp gain). Since half of it is just dissipated as heat from the ballast
resistors. In order to get enough power out of this system I came up with the
bridge-mode configuration. So I take a pre-made stereo board, with 2 amplifier
channels, take balanced signal, sending positive to one amp, and negative to the
other (NOTE THAT IN THIS CONFIGURATION YOUR INPUT SIGNAL MUST BE TRULY
BALANCED!) and connecting one to half of the DF ballast, then to one side of the
speaker, and the other half of the DF ballast and the other speaker terminal is
connected to the other amplifier. So both amplifier channels work as one single
amplifier, but with doubled power. When one pushes the other pulls and
vise-versa. Each “sees” only half of the load (4Ω of the ballast and 4Ω of the
speaker, DF relation stays the same). And if you just take an inverting
unity-gain op-amp buffer (which I have on my pedalboard) and buffer the same
signal twice, you’ll get anti-phase balanced pair with same volume, and in this
bridge-mode amplifier you will restore (double) the final output volume/amp
gain, compensating the ballast resistors drop. So you would have the same gain
as it would be just one amplifier and no ballast resistors.

I also use series output capacitors, which are totally optional, since the amps
are biased around 0V, it’s just AC. And because it’s just AC you need to make
your polarized electrolytic caps unpolarized by connecting a pair back-to-back,
either positive-to-positive, or negative-to-negative (does not matter which).
Mind the capacitance drop when connecting caps in series. Use cut-off frequency
calculator to make sure you preserve enough bass. These capacitors play 2
roles, one is coloration, adding a bit of non-linearity, a bit of
phase-shifting, making the solid state amp feel a bit less immediate, a bit
saggy. And also rolling off some ultra low frequencies. You can shape your low
end with those, and it’s actually important when using an OT transformer that
has only 50Hz corner frequency, as anything below would just saturate it. But in
my case I cut a lot with an equalizer outside of this powered cabinet anyway.

So in short:

1. Balanced input signal positive and negative portions are split between 2
   identical power amplifiers

2. Power amplifiers outputs go into ballast artificial DF reduction resistors
   (increasing output impedance)

3. Then into a bunch of series capacitors

4. Then each lead is connected to the transformer primary
   (basically to tip and sleeve of an output jack)

5. Then each lead of transformer secondary is connected to opposite speaker lead

Notes:

- Remember that you need to balance your input signal one way or another before
  plugging it in into the amplifier

- And also mind that this is just a power amplifier, not a complete guitar
  amplifier, you are expected to use a guitar preamplifier and tone shape it
  before the power amp

- In my case I use _Behringer FBQ3102HD Ultragraph Pro_ 31-band graphic EQ in
  order to clean up the low mids and _MXR 10 Band Equalizer Silver_ to
  aggresively tone-shape the preamp signal to achieve the desired sound

So the power amplifier setup is only part of the story.

My setup is featuring stereo amplification. So because each channel is
bridge-mode I have 4 amplifiers in total, where each 2 work as single
bridge-mode pair. Also I intentionally added differences between them:

1. They are different amplifier designs in general, both Class AB but one is
   IC-based board using a pair of TDA7294 chips with MOSFET output stage, and
   the other is discrete design using BJT NPN/PNP output pairs.

2. Capacitors have different values, and different total capacitance, the second
   channel has more aggressive low end roll-off.

There is a lot more difference in the chain. I take 2 different signals starting
from my guitar, one channel is bridge pickup and the other is neck, one channel
is delayed, slightly different pedals setup, preamps, eq, etc. All those small
differences accumulate into non-linearities of the stereo difference that
creates wider soundscape and helps to avoid static comb-filters.

I also added a couple of optional cab merging ports to the cabinet
that allow to merge loads in parallel or in series.

### Power calculation

Let’s take the TDA7294 amplifier as a reference. Both have similar power
characteristics with the given ±40V supply voltage. TDA7294 is advertised as
100W amplifier but 100W is just for peaks. Continuous RMS power is around 70W
into 8Ω (specified for ±35V @ 0.5% distortion, it’s current limited, so ±40
would probably not make huge difference here). Total load together with the DF
ballast is 16Ω (8Ω DF ballast + 8Ω speaker). But in bridge-mode each amp “sees”
only half, which is 8Ω, so each amp produces 70W in bridge mode, 140W total. But
DF ballast consumes half of the power, 70W of those 140W. Thus you end up with
your original 70W delivered to the speaker. But it’s actually perceived louder
because of very low damping factor.

So in my configuration it’s approximately 70W + 70W stereo pair.
I didn’t try my rig with the loudest drummer ever but it feels plenty enough.

### Powering and cooling

DF ballast resistors are easy, they only need passive cooling in my experience.
Just put 4x of 100W 4Ω resistors on a heatsink that is not to small.

For powering the amplifiers I use switching-mode 500W power supply. Class AB is
70% efficient at best, 50-60% is more realistic, also half of the output power
is dissipated on the DF ballast resistors. So you need enough juice from the
power supply which this power supply board can handle while staying lightweight
compared to a huge heavy transformer of comparable power handling.
You can find such board on Ebay for example by query like this one:
_“500W HIFI Audio LLC Soft Switching PSU Board ± 40V For Power Amplifier PSU board”_
The board is pretty efficient, but once with 2 amplifiers playing loud for an
hour or so it switched off in protection mode due to overheat. So I added active
cooling, just a fan blowing onto the heatsink.

The amplifiers produce significant amount of heat, passive heatsink would bee
too huge to keep them from overheating at proper volumes, so active cooling is
required. In my configuration I was just looking how to attach them to the wall
of the cabinet. So I joined 2 heatsinks of both amps together, and tighten them
towards each other with bolts and nuts. It’s very inefficient with heat
dissipation, but a couple of cooling fans are handling this well enough. One
blows on the side into the holes of that joint and the other blows from the top.
Works fine for me. Except the fans can be too loud at max power when you stop
playing. But those are cheap Chinese loud fans. Installing some low-noise fans
could significantly reduce parasitic noise.

The fans are rated 12V. They are powered by some cheap regulated adjustable
power supply that allows to go from 3V to 12V. So you if you are not playing to
loud you can drop the voltage so the fans producing less noise. I personally
rarely use them at full power, just finding a compromise of enough cooling and
not too much noise.

### Pre-made boards

You can find pre-made boards by these search queries for example on Ebay:

1. Power supply board:
   _“500W HIFI Audio LLC Soft Switching PSU Board ± 40V For Power Amplifier PSU board”_

2. Power supply block for the cooling fans:
   _“Adjustable Power Supply Adapter AC To DC 3V 9V 12V 24V Universal Adapter EU/US Plug with Display Screen Voltage Regulated”_

4. TDA7294 amplifier boards:
   _“Dual Channel TDA7294 Audio HIFI Power Amplifier Board DIY Parts Kit PCB 200W New”_

3. Discrete BJT amplifier boards:
   _“2pcs MX50 SE KTB817 KTD1047 15-100W Dual Class AB Amplifier Board Assembled AMP”_

### Latest revision schematic

![2510 cabinet schematic](release-2510-cabinet-2026-01-r1/wenzels-powered-guitar-cabinet-2510-r1.png)

### Releases (newest revisions are on the top)

- [2510 cabinet r1 2026-01](release-2510-cabinet-2026-01-r1)
