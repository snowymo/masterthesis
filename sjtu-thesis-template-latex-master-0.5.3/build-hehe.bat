del D:\Programs\CTEX\UserData\fonts\tfm\public\rsfs
xelatex -no-pdf --interaction=nonstopmode diss-ori
bibtex diss-ori
xelatex -no-pdf --interaction=nonstopmode diss-ori
xelatex --interaction=nonstopmode diss-ori
diss-ori.pdf