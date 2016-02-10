FROM ubuntu:14.04

RUN apt-get update -qq && apt-get install -qqy curl

ENV UCHIWA_VERSION 0.14.2-1
RUN cd /opt \
    && curl -sSL http://dl.bintray.com/palourde/uchiwa/uchiwa_$UCHIWA_VERSION_amd64.deb -o uchiwa.deb \
    && dpkg -i uchiwa.deb \
    && rm -f uchiwa.deb