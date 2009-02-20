:: prepare the .zip package to be sent to the arXiv website
del lmcs-arxiv.zip

:: generate the .bbl file
if not exist arxiv-aux  md arxiv-aux
latex -aux-directory=arxiv-aux lmcs-safelambda.tex
bibtex arxiv-aux\lmcs-safelambda
latex -aux-directory=arxiv-aux lmcs-safelambda.tex
latex -aux-directory=arxiv-aux lmcs-safelambda.tex
copy arxiv-aux\lmcs-safelambda.bbl .

:: build the zip file 
:: note: the file lmcs-safelambda-arxiv.tex replaces lmcs-safelambda.tex and lmcs-safelambda.pre
7z -tzip a lmcs-arxiv.zip lmcs-safelambda.tex corresp_overview.texi further.texi safe_gamesem.texi safe_complexity.texi safe_expressivity.texi safelambda.texi lmcs.cls *.sty pstring.pro *.bib *.bbl

:: clean up
del lmcs-safelambda.bbl
del /q /s /f arxiv-aux
rd arxiv-aux
