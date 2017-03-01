FROM zzrot/alpine-caddy
MAINTAINER shea.phillips@cloudcompass.ca

ADD . /var/www/html

WORKDIR /var/www/html

RUN apk add --update nodejs && npm install

ADD Caddyfile /etc/Caddyfile

EXPOSE 2015
