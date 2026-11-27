# Reproducibility

Run from the source directory.

```sh
python3 scripts/verify_repository.py
python3 verification/src/replay.py
```

The replay checks the rational Möbius identities and samples the smooth positive kernel and predicted endpoint slope. The endpoint regularity and bounded-type representation follow from the analytic proof.

See [paper build](paper/BUILD.md) for LaTeX reconstruction. Open [the illustration](visualization/index.html) in a browser. It uses no external libraries.
