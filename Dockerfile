#FROM gcc:9-bullseye
FROM alpine

ARG fn="y-cruncher%20v0.8.2.9524-static.tar.xz"

WORKDIR "/y-cruncher"
RUN [ ! -f $fn ] 
RUN wget -O "y-cruncher.tar.xz" "http://www.numberworld.org/y-cruncher/$fn"
RUN tar -xf "y-cruncher.tar.xz" --strip-components 1

# BUILD:    docker build -t y-cruncher .
# RUN:      docker run --rm -it y-cruncher
CMD [ "./y-cruncher" ]