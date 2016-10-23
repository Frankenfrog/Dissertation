#!/bin/sh

figs=(ResolutionCalibration_1_DD ResolutionCalibration_2_DD
Acceptancespline_zoomed_hlt1 Acceptancespline_zoomed_hlt2
BackgroundAsymmetryByHand_DD_OS_data BackgroundAsymmetryByHand_DD_SSPion_data
BackgroundAsymmetryByHand_LL_OS_data BackgroundAsymmetryByHand_LL_SSPion_data
MassPulls_summed obsTimeErr_downstream_pull_logy
obsTimeErr_longtrack_pull_logy)

for fig in ${figs[@]}; do
  pdflatex --jobname=pdf/$fig all_figures.tex
  # pdf2ps pdf/$fig.pdf $fig.ps
  # ps2eps $fig.ps
  # mv $fig.eps eps/$fig.eps
  # rm $fig.ps
  # convert -density 300 -flatten pdf/$fig.pdf png/$fig.png
done
