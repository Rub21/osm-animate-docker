FROM ubuntu:14.04
RUN apt-get update -y
RUN apt-get install -y build-essential gifsicle pngquant libpng-dev libexpat1-dev git wget nano ImageMagick
WORKDIR app
RUN git clone https://github.com/ericfischer/osm-animate.git && cd osm-animate && make && cd ..
RUN git clone https://github.com/ericfischer/datamaps.git && cd datamaps/ && make 
ADD app.sh app.sh
ADD perform perform
CMD ["bash", "app.sh"]
