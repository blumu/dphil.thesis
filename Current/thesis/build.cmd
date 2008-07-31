:default
del /q TeXAux\*.*
latex -aux-directory=TeXAux thesis.tex
bibtex TeXAux\thesis
makeindex -s myown.ist TeXAux\thesis
::makeindex -s myown.ist -o TeXAux\thesis.and TeXAux\thesis.adx
::makeindex -s myown.ist -o TeXAux\thesis.nnd TeXAux\thesis.ndx
latex -aux-directory=TeXAux thesis.tex
latex -aux-directory=TeXAux thesis.tex
dvips -z -t a4 thesis.dvi
ps2pdf thesis.ps
goto end


:pdflatex
del thesis.aux
texify -p %1.tex
exit /b

:latex
del %1.aux
texify %1.tex
dvips %1.dvi
ps2pdf %1.ps
del /q %1.dvi %1.ps
exit /b

:end