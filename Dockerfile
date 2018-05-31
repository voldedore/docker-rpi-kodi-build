FROM resin/rpi-raspbian

LABEL maintainer="Vinh VO <voldedore@gmail.com>"

ENV VERSION 0.1.0

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
    kodi-pvr-vuplus=*~bionic                                \
    pulseaudio"                                          && \
    apt-get update && apt-get install kodi kodi-eventclients-xbmc-send $packages
