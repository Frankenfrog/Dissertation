#!/bin/sh

figs=(obsMass_summed_pull obsTime_summed_pull_logy Acceptancespline_nolog obsTimeErr_True_pull_logy Acceptancespline_nolog_MC_KKpi Acceptancespline_nolog_MC_Kpipi)

for fig in ${figs[@]}; do
  pdflatex --jobname=pdf/$fig all_figures.tex
  pdf2ps pdf/$fig.pdf $fig.ps
  ps2eps $fig.ps
  mv $fig.eps eps/$fig.eps
  rm $fig.ps
  convert -density 300 -flatten pdf/$fig.pdf png/$fig.png
done