wget https://download.geofabrik.de/south-america/suriname-latest.osm.bz2
bzcat suriname-latest.osm.bz2 | ./osm-animate/snap > suriname.snap
cat suriname.snap | ./datamaps/encode -z12 -m32 -o suriname.dm
./perform suriname