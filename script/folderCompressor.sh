#! /bin/sh

for f in */domjudge-problem.ini;
do
  [ -e "$f" ] || continue
  dir=$(dirname $f)
  cd $dir && zip -r ../$dir.zip . && cd -
done
