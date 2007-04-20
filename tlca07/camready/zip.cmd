copy tlca07.tex blumong.tex
texify blumong.tex
dvips blumong.dvi
ps2pdf blumong.ps
del blumong.zip
D:\7-Zip\7z.exe -tzip a blumong blumong.pdf blumong.dvi blumong.tex