FROM ubuntu:14.04

RUN apt-get update -qq && apt-get install -qqy wget

RUN wget -q http://repositories.sensuapp.org/apt/pubkey.gpg -O- | apt-key add -
RUN echo "deb     http://repositories.sensuapp.org/apt sensu main" | sudo tee /etc/apt/sources.list.d/sensu.list

RUN apt-get update -qq && apt-get install -qqy sensu

RUN rm -rf /etc/sensu/conf.d
VOLUME /etc/sensu/conf.d

ADD files/ /

ENTRYPOINT ["/docker-entrypoint.sh"]