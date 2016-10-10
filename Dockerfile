FROM mitcdh/caddy-php
MAINTAINER Mitchell Hewes <me@mitcdh.com>

RUN apk --update add \
    php5-pdo \
    php5-pdo_sqlite \
    php5-gd && \
    rm -rf /var/cache/apk/*

RUN git clone -b master https://github.com/seblucas/cops.git /www

COPY config_local.php /www/config_local.php
COPY Caddyfile /www/Caddyfile

VOLUME /books
WORKDIR /www

EXPOSE 2015
USER web-srv
CMD ["/usr/bin/caddy"]

