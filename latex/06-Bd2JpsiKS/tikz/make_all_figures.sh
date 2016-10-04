#!/bin/sh

figs=(Acceptancespline_zoomed_hlt1 Acceptancespline_zoomed_hlt2 MassPulls_summed)

for fig in ${figs[@]}; do
  pdflatex --jobname=pdf/$fig all_figures.tex
  # pdf2ps pdf/$fig.pdf $fig.ps
  # ps2eps $fig.ps
  # mv $fig.eps eps/$fig.eps
  # rm $fig.ps
  # convert -density 300 -flatten pdf/$fig.pdf png/$fig.png
done
