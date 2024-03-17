#! /bin/sh

for f in */domjudge-problem.ini;
do
  [ -e "$f" ] || continue
  dir=$(dirname $f)
  zip -r $dir.zip $dir -x $dir/tex\*
done
