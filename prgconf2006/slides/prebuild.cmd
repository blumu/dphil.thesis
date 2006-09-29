@echo off
rem 1a Insert the following lines at the end of preamble.tex:
rem         \def\preambleread{}
rem         \ifx\precompilation\undefined
rem         \else
rem         \dump
rem         \endinput
rem         \fi

rem 1b Insert the following lines at the beginning of your .tex file
rem         %&slides-prg06
rem         \ifx\preambleread\undefined
rem         \input preamble.tex
rem         \fi


:prebuild
rem 2 Build the precompilation format file "slides-prg06.fmt" using the following command:
pdftex -dont-parse-first-line -ini "&latex"  "\def\precompilation{} \input{slides-prg06.tex}"
goto fin


:incremenatlbuild
rem 3 To compile the final tex file into a .dvi
pdftex --parse-first-line slides-prg06.tex
rem or
rem pdftex "&slides-prg06" slides-prg06.tex
goto fin

:completebuild
rem Option B
rem To compile the latex file without precompilation:
latex -dont-parse-first-line slides-prg06.tex
goto fin


:fin
