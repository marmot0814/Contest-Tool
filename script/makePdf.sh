docker-compose exec -T pdfMaker bash -c "cd tex && texliveonfly main.tex --compiler=xelatex ; latexmk -pdfxe main.tex"
rm -f tex/main.[^tp]* missfont.log
