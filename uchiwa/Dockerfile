FROM ubuntu:14.04

RUN apt-get update -qq && apt-get install -qqy curl

ENV UCHIWA_VERSION 0.14.2-1
RUN cd /opt \
    && curl -sSL http://dl.bintray.com/palourde/uchiwa/uchiwa_0.14.2-1_amd64.deb -o uchiwa.deb \
    && dpkg -i uchiwa.deb \
    && rm -f uchiwa.deb

ADD uchiwa.json /etc/sensu/uchiwa.json

# ENTRYPOINT ["/opt/uchiwa/bin/uchiwa", "-c", "/etc/sensu/uchiwa.json", "-d", "/etc/sensu/dashboard.d"]
ENTRYPOINT ["/opt/uchiwa/bin/uchiwa", "-c", "/etc/sensu/uchiwa.json"]
