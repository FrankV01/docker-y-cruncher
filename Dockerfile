FROM gcc:8.3

ARG fn="y-cruncher%20v0.8.2.9524-static.tar.xz"

WORKDIR "/y-cruncher"

#RUN mkdir ./y-cruncher
#RUN chmod 777 ./y-cruncher
#RUN cd /y-cruncher

#RUN wget http://www.numberworld.org/y-cruncher/y-cruncher%20v0.8.2.9524-static.tar.xz
RUN [ ! -f $fn ] 
RUN wget -O "y-cruncher.tar.xz" "http://www.numberworld.org/y-cruncher/$fn"
RUN tar -xf "y-cruncher.tar.xz" -P .

# how to run from docker
# docker run --rm -it mathing /bin/bash

# docker build -t mathing .
#docker push