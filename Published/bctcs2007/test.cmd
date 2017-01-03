initex --initialize -ini "&pdflatex" "\input bctcs07-slides.pre \dump\endinput "

initex -interaction=nonstopmode --src-specials "&bctcs07-slides" "\let \TEXDAEMONinput\input\def\input#1{\let\input\TEXDAEMONinput} \TEXDAEMONinput bctcs07-slides.tex "


pdflatex -interaction=nonstopmode --src-specials -ini "&pdflatex" "\input bctcs07-slides.pre \dump\endinput "

--interaction=nonstopmode --halt-on-error


pdflatex -interaction=nonstopmode --src-specials --initialize "\input bctcs07-slides.pre \dump\endinput "

pdfetex -interaction=nonstopmode --src-specials "&bctcs07-slides" "\let \TEXDAEMONinput\input\def\input#1{\let\input\TEXDAEMONinput} \TEXDAEMONinput bctcs07-slides.tex "



pdfetex --initialize \input preamb.ini


