# Build the manuscript

Use TeX Live with pdfLaTeX and BibTeX. In a fresh copy of the paper directory run:

```sh
pdflatex -halt-on-error manuscript.tex
bibtex manuscript
pdflatex -halt-on-error manuscript.tex
pdflatex -halt-on-error manuscript.tex
```

Or use Tectonic with an existing compatible bundle to process the bibliography in the same build. Check the final log for undefined references and overfull boxes.
