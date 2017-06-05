FROM alpine:latest

MAINTAINER Luiz A. Amelotti <luiz@amelotti.com>

RUN apk update && \
  apk add --no-cache nikto && \
  rm -f /tmp/* /etc/apk/cache/*

RUN nikto.pl -update 

ENTRYPOINT ["nikto.pl"]

CMD [ "-Help"]
