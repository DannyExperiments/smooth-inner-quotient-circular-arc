# Claims and evidence

| Item | Evidence |
| --- | --- |
| Main theorem | [Complete analytic proof](paper/manuscript.tex) |
| Original statement | [Primary edition](https://arxiv.org/pdf/2502.03303v3#page=64) |
| Selected independent calculations | [Python replay](verification/src/replay.py) |
| Literature collision check | [Dated scan](audits/public_safe_reports/LITERATURE_AUDIT.md) |

**Partial formalization.** The argument function π + 2 arctan(t) is strictly increasing with derivative 2/(1+t²). For every positive A and prescribed length strictly between zero and 2π, the proof gives a positive scale realizing that length with positive endpoint angular speed. Lean also proves that exponentiating this phase gives the exact Möbius quotient (t−i)/(t+i). The real kernel estimates, smooth extension at the Cayley cut and common-outer-factor representation by inner functions are in the manuscript. [Lean source](formal/closing/Certificate.lean)
