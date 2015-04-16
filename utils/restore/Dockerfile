FROM breakyboy/ghost-utils
MAINTAINER Andres Rojas <andres@conpat.io>
ENV REFRESHED_AT 2015-04-16

VOLUME /backup

COPY restore.sh restore
RUN chmod +x restore

CMD ["./restore"]
