for f in */*/*.zip;
do
  rt=$(pwd)

  echo $f
  dir=$(dirname $f)
  fln=$(basename $f)

  cd $dir
  rm -rf tmp
  mkdir tmp
  mv $fln tmp
  cd tmp && unzip $fln && cd ..
  mv tmp/$fln .

  # solutions
  cp tmp/solutions/* submissions
  rm submissions/*.desc

  # tests
  mkdir -p data/sample
  mkdir -p data/secret

  rm -rf data/secret/*
  rm -rf data/sample/*

  for tn in tmp/tests/*.a;
  do
    tf=$(basename $tn)
    mv $tn data/secret/${tf/a/ans}
  done

  for tn in tmp/tests/*;
  do
    tf=$(basename $tn)
    mv $tn data/secret/$tf.in
  done

  rm -rf tmp

  cd $rt
done
