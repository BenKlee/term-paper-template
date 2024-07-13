@REM change to dir of this file
cd /d %~dp0/tex

@REM build
pdflatex seminararbeit.tex
biber seminararbeit
pdflatex seminararbeit.tex
pdflatex seminararbeit.tex
pdflatex seminararbeit.tex

@REM clean up auxilary files
latexmk -c
@REM remove files not removed by latexmk -c
rm *.bbl

@REM copy result to result directory
if not exist ..\result mkdir ..\result
copy seminararbeit.pdf ..\result