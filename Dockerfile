FROM resin/rpi-raspbian

LABEL maintainer="Vinh VO <voldedore@gmail.com>"

ENV VERSION 0.1.0

RUN apt-get update && apt-get install kodi
