set name="diss-hehe"

@echo off
del /F %name%.pdf

if exist %name%.pdf (goto err)

xelatex %name%.tex
bibtex %name%
xelatex %name%.tex
bibtex %name%
xelatex %name%.tex
dvipdfmx %NAME%
rem dvips -Ppdf -G0 -tletter %name%.dvi
rem ps2pdf %name%.ps %name%.pdf

del /F *.aux *.blg *.dvi *.ent *.log *.bak *.sav %name%.ps
goto end

:err
@echo Error: PDF file is in use!
pause

:end
@echo "OK!"
pause