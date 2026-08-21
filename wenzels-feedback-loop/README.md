# Wenzel’s Feedback Loop

A transformer-isolated TL072 opamp buffer working as a parallel load for the
feedback source signal with added “pass-through” jack for forwarding the signal
downstream. Input impedance is high enough so that it does not load the main
signal significantly. Featuring a volume pot for feedback level. Then it mixes
the buffered signal and original input source.

I designed this for my pedalboard needs. This box is intended to take the end of
the signal of my WET-only chain and send part of it back to the beginning of the
chain for some noise fun. It uses transformers to break potential ground loops.

Commutation example in this WET-only chain case:

1. Feedback source ← Last WET-only pedal output
2. Pass-through ← Actual WET-only output (e.g. a cable to a power amp)
3. Source input ← WET-only input source (DRY signal)
4. Output ← First WET-only chain pedal input

Feedback polarity switch allows for crazy experiments with inverted feedback
signal.

## Characteristics

- Input impedance is ≈1M.
- Output impedance is ≈100Ω.

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

## Latest revision schematic

![Schematic](release-2026-08-r1/wenzels-feedback-loop-r1.png)

## Releases (newest revisions are on the top)

- [r1 2026-08](release-2026-08-r1)
