FROM breakyboy/ghost-utils:0.5.10
MAINTAINER Andres Rojas <andres@conpat.io>
ENV REFRESHED_AT 2015-04-16

VOLUME /backup

COPY restore.sh restore
RUN chmod +x restore

CMD ["./restore"]
