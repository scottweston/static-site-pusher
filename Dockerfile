FROM debian:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN set -x \
  && apt-get update -qy \
  && apt-get install -y rsync awscli make imagemagick \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

