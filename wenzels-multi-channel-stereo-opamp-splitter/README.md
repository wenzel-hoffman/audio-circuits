# Wenzel’s Multi-Channel Stereo Op-Amp Splitter

A simple TL* op-amp-based 6-channel stereo splitter I designed for my pedalboard
needs. Per left or right channel there is 1 input and 6 buffered outputs.

It features relatively high-impedance inputs (470k).

For each stereo side it gives up to 6 buffered outputs while allowing to boost
output signal up to around 24dB. Lots and lots of headroom (36V total
rail-to-rail supply).

## Characteristics

- For the input the impedance is ≈470k. You can easily change it by replacing
  R6 and R15 to for example 1M to get a conventional guitar straight-in load.

- For the outputs the output impedance is ≈100Ω.

## Power requirements

- 2x isolated 18V power supplies (±18V configuration, current is 50mA per rail
  is absolute maximum, typical is around 25mA).

  * Note that you can’t daisy-chain them since on of them references negative/-
    to ground while the other references positive/+ to ground.
    You can daisy-chain only with pedals that reference the same polarity lead
    to ground. Like if you have 2 of these devices, or similar power
    configuration, you can daisy-chain negative rail source with other negative
    rail source input of other pedal, and same for positive.
    Mind though that daisy-chaining provides extra ground paths and there is a
    potential for ground-loop noise issues.

## Latest revision schematic

![Schematic](release-2026-06-r1/wenzels-multi-channel-stereo-opamp-splitter-r1.png)

You can transform this into a great simple mono high-headroom flat boost with
only 2 buffered outputs by using only 1 (instead of 4) TL084 chip
(note that you can leave only 1 output, remove J5, C8, and R5 but keep the U1C
properly terminated, as on schematic, or just remove only J5 jack port leaving
everything else as-is):

![Schematic](release-2026-06-r1/wenzels-multi-channel-stereo-opamp-splitter-mono-boost-r1.png)

Or you can utilize the 2 of the output op-amps to get a single balanced output
signal in case you want that (you can also add a ground-lift switch for the
output as well as phase-flip switch on top of that if you know how to do it):

![Schematic](release-2026-06-r1/wenzels-multi-channel-stereo-opamp-splitter-mono-boost-balanced-output-r1.png)

## Releases (newest revisions are on the top)

- [r1 2026-06](release-2026-06-r1)
