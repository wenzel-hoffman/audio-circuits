# Wenzel’s ColorMystic Fuzz/Boost

This is a Frankenstein circuit, an experimental merge of two of my favourite
guitar pedals. I took vintage Colorsound Overdriver (actually my own take called
[“Wenzel’s ColorDiver”](../wenzels-colordiver-fuzz-boost)) and replaced the
active bass-treble tone stack with BMT one from Black Arts Toneworks Quantum
Mystic. On top of that added a Proco Rat-style tone/filter control called TAME,
just to add an ability to shave off some highs to tame HF harshness if needed.

Check out [“Wenzel’s ColorDiver”](../wenzels-colordiver-fuzz-boost), this
circuit, apart from the tone stack and the TAME knob, is just a fork.

## Note about the tone stack

Original Quantum Mystic uses B250k linear pot for the MIDS control. I find that
the sweet spot sits in the tiny range from the minimum position and a little
more than minimum. I used A250k logarithmic pot so that the sweet spot is easier
to set, has more moving room. But it’s not a tonal change.

Also note that original Quantum Mystic uses an inverting opamp configuration
with negative feedback for the active tone stack while this design uses a single
transistor topology with negative feedback (original Overdriver gain stage). So
there could be some impedances interactions that potentially can affect the tone
stack behavior.

## Latest revision schematic

![r3 2026-09 schematic](release-2026-09-r3/wenzels-colormystic-fuzz-boost-r3.png)

## Releases (newest revisions are on the top)

- [r3 2026-09](release-2026-09-r3)
- [r2 2026-09](release-2026-09-r2)
- [r1 2026-08](release-2026-08-r1)
