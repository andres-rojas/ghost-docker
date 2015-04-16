FROM breakyboy/ghost
MAINTAINER Andres Rojas <andres@conpat.io>
ENV REFRESHED_AT 2015-04-15

RUN apt-get -qq update \
 && apt-get -qqy install xz-utils

VOLUME /backup

COPY restore.sh restore
RUN chmod +x restore

CMD ["./restore"]
