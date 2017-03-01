FROM zzrot/alpine-caddy
MAINTAINER shea.phillips@cloudcompass.ca

WORKDIR /var/www/html

ADD package.json /var/www/html

RUN apk add --update nodejs && npm install

ADD Caddyfile /etc/Caddyfile

ADD . /var/www/html

EXPOSE 2015
