FROM ghost:0.6.2
MAINTAINER Andres Rojas <andres@conpat.io>
ENV REFRESHED_AT 2015-05-04

COPY config/config.js /var/lib/ghost/config.js
