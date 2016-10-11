FROM mitcdh/caddy-php
MAINTAINER Mitchell Hewes <me@mitcdh.com>

RUN apk --update add \
    php5-pdo \
    php5-pdo_sqlite \
    php5-gd && \
    rm -rf /var/cache/apk/*

COPY files/Caddyfile /scripts/
COPY files/config_local.php /www/

VOLUME /books

EXPOSE 2015


