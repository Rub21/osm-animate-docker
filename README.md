# OSM-animate docker container

From: [osm-animate](https://github.com/ericfischer/osm-animate)


## Run

```
$ docker build -t osmani .
$ docker run -e URL="http://download.geofabrik.de/south-america/peru-latest.osm.bz2" -e NAME="Peru" -e ZOOM="6" -it  osmani /bin/bash

 ```

 ## output

 ![suriname](https://user-images.githubusercontent.com/1152236/39142397-30e4d706-46f0-11e8-8092-672cc849c7aa.gif)