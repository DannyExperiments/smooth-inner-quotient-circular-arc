# Angular parametrization of the circular arc

The argument function π + 2 arctan(t) is strictly increasing with derivative 2/(1+t²). For every positive A and prescribed length strictly between zero and 2π, the proof gives a positive scale realizing that length with positive endpoint angular speed. Lean also proves that exponentiating this phase gives the exact Möbius quotient (t−i)/(t+i).

The real kernel estimates, smooth extension at the Cayley cut and common-outer-factor representation by inner functions are in the manuscript.

[Lean proof](Certificate.lean) · [Paper](../../paper/manuscript.pdf)

Run `python3 formal/closing/verify.py` from the repository root with the pinned Lean toolchain and mathlib dependencies available. The workflow sets up those versions, compiles the proof, and checks the names and axioms of the public declarations printed by the file.
