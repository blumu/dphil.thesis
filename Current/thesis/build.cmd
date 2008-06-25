latex -aux-directory=TeXAux thesis.tex
latex -aux-directory=TeXAux thesis.tex
bibtex TeXAux\thesis
makeindex -s myown.ist TeXAux\thesis
makeindex -s myown.ist -o TeXAux\thesis.and TeXAux\thesis.adx
makeindex -s myown.ist -o TeXAux\thesis.nnd TeXAux\thesis.ndx
latex -aux-directory=TeXAux thesis.tex
