pdftex --job-name=TRUC -aux-directory=TexAux --src-specials "&thesis-latex" "\edef\TheAtCode{\the\catcode`\@} \catcode`\@=11 \newwrite\dependfile \immediate\openout\dependfile = thesis.dep \ifx\TEXDAEMON@ORG@InputIfFileExists\@undefined\let\TEXDAEMON@ORG@InputIfFileExists\InputIfFileExists\fi \long\def\TEXDAEMON@InputIfFileExists#1#2#3{\ifx\TUTU\@undefined\def\TUTU{1}\else\immediate\write\dependfile{#1}\TEXDAEMON@ORG@InputIfFileExists{#1}{#2}{#3}\fi}\let\InputIfFileExists\TEXDAEMON@InputIfFileExists \catcode`\@=\TheAtCode\relax \input thesis.tex \immediate\closeout\dependfile"


::\let\PDFSYNCInputIfFileExists@ff\InputIfFileExists%
::\long\def\PDFSYNCInputIfFileExists@n##1##2##3{%
::\message{****************INPUT FILE ##1***************}
::\immediate\write\PDFSYNC@ut{(##1}%
::\PDFSYNCInputIfFileExists@ff{##1}{##2}{##3}%
::\immediate\write\PDFSYNC@ut{)}}%

::\let\InputIfFileExists\PDFSYNCInputIfFileExists@n%


::pdftex --job-name=TRUC -aux-directory=TexAux --src-specials "&thesis-latex" "\edef\TheAtCode{\the\catcode`\@} \catcode`\@=11 \newwrite\dependfile \immediate\openout\dependfile = thesis.dep \ifx\TEXDAEMON@ORG@include\@undefined\let\TEXDAEMON@ORG@include\include\fi \ifx\TEXDAEMON@ORG@input\@undefined\let\TEXDAEMON@ORG@input\input\fi \def\include#1{\immediate\write\dependfile{#1}\TEXDAEMON@ORG@include{#1}} \def\TEXDAEMON@DumpDep@input#1{ \write\dependfile{#1}\TEXDAEMON@ORG@input #1 } \def\TEXDAEMON@HookIgnoreFirst@input#1{ \let\input\TEXDAEMON@DumpDep@input } \def\TEXDAEMONinput#1{\TEXDAEMON@ORG@input #1 } \def\input#1{\TEXDAEMON@HookIgnoreFirst@input{#1}}  \TEXDAEMON@ORG@input thesis.tex  \catcode`\@=\TheAtCode\relax \immediate\closeout\dependfile" 