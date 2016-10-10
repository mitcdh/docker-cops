FROM mitcdh/caddy-php
MAINTAINER Mitchell Hewes <me@mitcdh.com>

RUN apk --update add \
    php5-pdo \
    php5-pdo_sqlite \
    php5-gd && \
    rm -rf /var/cache/apk/*

COPY files/* /www/

VOLUME /books

EXPOSE 2015


