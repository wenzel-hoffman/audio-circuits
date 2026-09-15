# Wenzel’s F Pedal Platform Preamp guitar pedal

TL072 opamps-based guitar preamp pedal intended to work as a pedal platform. It
does not overdrive, it’s only shaping the tone. Just replicating vintage passive
tone stack.

39k resistor (R19 and R22) kind of simulates output impedance of a tube gain
stage in front which was in the original tube preamp.

It’s all headroom, it’s better if your clean signal has some kind of compression
for peaks, maybe an overdrive pedal with just a touch of clipping, or a
compressor pedal. You are supposed make your overdrive/saturation in front
with a pedal of your choice (try a typical Rat kind of pedal for example), and
this pedal just shapes your tone to be ready to be sent into a power amp (solid
state or tube).

This is a stereo/2-channel pedal. You would need only 2 TL072 chips or single
TL084.

It turned out to be a very great addition to my pedalboard, it just does it
right for me as a front for my custom solid state power amplifiers. I should’ve
done this project long time ago. You can use a Rat kind of pedal in front and
connect straight to your audio interface with some guitar cabinet IR, and it
sounds and feels great, fun to play!

This pedal has no pre-gain, so the tone stack and VOLUME knob only eats some of
the volume you send into the pedal. Then you use BOOST for make-up gain. But if
you feel like you need pre-gain you can just copy negative feedback
configuration from the final boost stage (U1B or U2B) for the first op-amp
unity-gain input (U1A or U2A).

## About switches

No switches are really necessary, leave only 47nF mid cap, remove HICUT switch,
and keep the bright cap always in the circuit, if you don’t want bright cap you
can just turn the VOLUME all the way up and bright cap will have no effect, will
be essentially bypassed. So with VOLUME knob you set how much impact bright cap
has, less volume = more bright cap. You can just adjust your output volume with
the BOOST knob.

## Characteristics

- Input impedance is ≈1MΩ.
- Output impedance is ≈47Ω.

## Power requirements

- 2x isolated 18V power supplies (±18V configuration, current is negligible)

  * Note that you can’t daisy-chain them since on of them references negative/-
    to ground while the other references positive/+ to ground.
    You can daisy-chain only with pedals that reference the same polarity lead
    to ground. Like if you have 2 of these devices, or similar power
    configuration, you can daisy-chain negative rail source with other negative
    rail source input of other pedal, and same for positive.
    Mind though that daisy-chaining provides extra ground paths and there is a
    potential for ground-loop noise issues.

  * After the RC filters voltage drop for single TL084 you’ll end up with around
    ±15V which is more comfortable/safer conventional supply for TL072 kind of
    chips.

## Latest revision schematic

![Schematic](release-2026-09-r2/wenzels-f-pedal-platform-preamp-r2.png)

## Releases (newest revisions are on the top)

- [r2 2026-08](release-2026-09-r2)
- [r1 2026-08](release-2026-09-r1)
