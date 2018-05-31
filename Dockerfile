FROM resin/rpi-raspbian

LABEL maintainer="Vinh VO <voldedore@gmail.com>"

ENV VERSION 0.1.0

RUN apt-get update                                                        && \
    apt-get install -y --no-install-recommends software-properties-common && \
    add-apt-repository ppa:team-xbmc/ppa                                  && \
    apt-get -y purge ca-certificates openssl software-properties-common   && \
    apt-get -y --purge autoremove                                         && \
    rm -rf /var/lib/apt/lists/*

RUN packages="                                              \
    kodi-pvr-argustv                                        \
    kodi-pvr-dvblink                                        \
    kodi-pvr-dvbviewer                                      \
    kodi-pvr-hdhomerun                                      \
    kodi-pvr-hts                                            \
    kodi-pvr-iptvsimple                                     \
    kodi-pvr-mythtv                                         \
    kodi-pvr-nextpvr                                        \
    kodi-pvr-njoy                                           \
    kodi-pvr-octonet                                        \
    kodi-pvr-pctv                                           \
    kodi-pvr-vbox                                           \
    kodi-pvr-vdr-vnsi                                       \
    pulseaudio"                                          && \
    apt-get update && apt-get install kodi kodi-eventclients-xbmc-send $packages
