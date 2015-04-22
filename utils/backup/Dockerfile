FROM breakyboy/ghost-utils:0.6.0
MAINTAINER Andres Rojas <andres@conpat.io>
ENV REFRESHED_AT 2015-04-15

VOLUME /backup

COPY backup.sh backup
RUN chmod +x backup

CMD ["./backup"]
