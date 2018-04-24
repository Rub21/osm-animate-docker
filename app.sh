wget $URL
namefile=$(basename $URL)
bzcat $namefile | ./osm-animate/snap > $NAME
cat $NAME.snap | ./datamaps/encode -z$ZOOM -m32 -o $NAME.dm
./perform $NAME

# ./datamaps/render $NAME.dm/ 12 1420 1981 > foo.png