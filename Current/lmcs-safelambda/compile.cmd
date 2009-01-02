latex -aux-directory=TeXAux lmcs-safelambda.tex
bibtex TeXAux\lmcs-safelambda
latex -aux-directory=TeXAux lmcs-safelambda.tex
latex -aux-directory=TeXAux lmcs-safelambda.tex
dvips -z -t a4 lmcs-safelambda.dvi
ps2pdf lmcs-safelambda.ps