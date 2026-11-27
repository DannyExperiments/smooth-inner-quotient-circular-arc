# A smooth inner-function quotient parametrizing any proper circular arc

[![Repository verification](https://github.com/DannyExperiments/smooth-inner-quotient-circular-arc/actions/workflows/verify.yml/badge.svg?branch=main)](https://github.com/DannyExperiments/smooth-inner-quotient-circular-arc/actions/workflows/verify.yml) · [![Replay verification](https://github.com/DannyExperiments/smooth-inner-quotient-circular-arc/actions/workflows/replay.yml/badge.svg?branch=main)](https://github.com/DannyExperiments/smooth-inner-quotient-circular-arc/actions/workflows/replay.yml) · [![PDF build](https://github.com/DannyExperiments/smooth-inner-quotient-circular-arc/actions/workflows/pdf.yml/badge.svg?branch=main)](https://github.com/DannyExperiments/smooth-inner-quotient-circular-arc/actions/workflows/pdf.yml)
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.24588793.svg)](https://doi.org/10.5281/zenodo.24588793)

Fricain, Grivaux and Ostermann’s Question 8.19 has an affirmative answer. The boundary quotient of two inner functions admits a smooth injective parametrization on the full closed angular interval, with nonvanishing derivative at both endpoints. Any nondegenerate proper closed arc can be obtained in either orientation.

[Read the complete manuscript](paper/manuscript.pdf) · [Proof in Markdown](proof/PROBLEM_AND_PROOF.md) · [Download offline 3D illustration](https://raw.githubusercontent.com/DannyExperiments/smooth-inner-quotient-circular-arc/v1.0.0/visualization/construction-explorer.zip) · [Reproduction instructions](REPRODUCIBILITY.md)

![Rotating construction](visualization/construction.gif)

## Proof

A smooth average of squared sinc kernels gives an increasing entire primitive on the real axis with a 1/x correction at each infinity. The Cayley transform turns this correction into a nonzero endpoint derivative. An exponential multiplier makes two factors bounded and their matching boundary moduli yield an exact inner quotient.

## Prior work and scope

Douglas–Rudin proved uniform approximation by quotients of inner functions. Here the quotient represents the prescribed boundary data exactly. The smooth density gives a rapidly decreasing remainder and controls all endpoint derivatives. Endpoint values are one-sided at the Cayley cut. The result establishes the quotient construction and does not determine the hypercyclicity of a Toeplitz operator. See the [literature audit](audits/public_safe_reports/LITERATURE_AUDIT.md).

## Checks

The replay checks the rational Möbius identities and samples the smooth positive kernel and predicted endpoint slope. The endpoint regularity and bounded-type representation follow from the analytic proof. The artifacts include a standard-library Python replay. The analytical proof is informal in the proof-assistant sense. The [independent mathematical audit](audits/public_safe_reports/MATHEMATICAL_AUDIT.md) passed the theorem. This manuscript has not been peer reviewed.

## Citation

The [citation file](CITATION.cff) gives the project citation identity and version. See [AI disclosure](AI_DISCLOSURE.md) for technical roles.
