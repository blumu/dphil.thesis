@if [%1%]==[abstract] goto abstract
@if [%1%]==[print] goto print
@if [%1%]==[bodleian] goto bodleian
@if [%1%]==[online] goto online
@if [%1%]==[reviewer] goto reviewer
@if [%1%]==[examiner] goto examiner
@if [%1%]==[all] goto all
@if [%1%]==[help] (goto help) else goto badargument

exit /b

:badargument
@echo Unrecognized option!
@echo.

:help
@echo Thesis preparation tool.
@echo.
@echo Syntax:
@echo   build [abstract^|print^|bodleian^|online^|reviewer^|examiner^|all]
@echo.
@GOTO :EOF

:all
CALL :abstract
CALL :print
CALL :bodleian
CALL :online
CALL :reviewer
CALL :examiner
@GOTO :EOF


:abstract
pdflatex -aux-directory=TeXAux abstract_submission.tex
@GOTO :EOF

:print
CALL :build_pdf Print
@GOTO :EOF

:bodleian
CALL :build_pdf Bodleian
@GOTO :EOF

:online
CALL :build_pdf OnlineArchive
@GOTO :EOF

:reviewer
CALL :build_pdf Reviewer
@GOTO :EOF

:examiner
CALL :build_pdf Examiner
@GOTO :EOF



:: Subroutine producing the PDF file from the TeX source
:build_pdf
set MODE=%1
rd /q /s TempAux
md TempAux
latex -aux-directory=TempAux "\def\%MODE%{}\input{thesis.tex}"
bibtex TempAux\thesis
makeindex -s myown.ist TempAux\thesis
::makeindex -s myown.ist -o TempAux\thesis.and TempAux\thesis.adx
::makeindex -s myown.ist -o TempAux\thesis.nnd TempAux\thesis.ndx
latex -aux-directory=TempAux "\def\%MODE%{}\input{thesis.tex}"
latex -aux-directory=TempAux "\def\%MODE%{}\input{thesis.tex}"
latex -aux-directory=TempAux "\def\%MODE%{}\input{thesis.tex}"
dvips -z -t a4 thesis.dvi -o thesis-%MODE%.ps
ps2pdf thesis-%MODE%.ps thesis-%MODE%.pdf
IF ERRORLEVEL 1 then pause
rd /q /s TempAux
@GOTO :EOF



::::::::::
::
:: deprecated compilation methods
::

:pdftex
pdftex -ini "&latex" -aux-directory=TempAux "\def\Bodleian{}\input{thesis.tex}"
exit /b

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

:::::::::::::::::::::::
