for f in */tex/main.tex;
do
  echo $f;
  dir=$(dirname $f)
  docker-compose exec -T pdfMaker bash -c "cd ${dir} && texliveonfly main.tex --compiler=xelatex ; latexmk -pdfxe main.tex"
  rm -f $dir/main.[^tp]* $dir/missfont.log
done

