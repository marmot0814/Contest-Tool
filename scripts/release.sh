mkdir release

for f in */tex/main.pdf;
do
  cid=$(dirname $(dirname $f))
  mv $f release/$cid\_$(basename $f)
done

for f in */*.zip;
do
  cid=$(dirname $f)
  mv $f release/$cid\_$(basename $f)
done
