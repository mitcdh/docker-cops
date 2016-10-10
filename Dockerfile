FROM mitcdh/caddy-php
MAINTAINER Mitchell Hewes <me@mitcdh.com>

RUN apk --update add \
    php5-pdo \
    php5-pdo_sqlite \
    php5-gd && \
    rm -rf /var/cache/apk/*

# add user and group
RUN addgroup -S www-data && \
 adduser -S -G www-data -g "Web Server" -h "/www" web-srv

USER web-srv

RUN git clone -b master https://github.com/seblucas/cops.git /www

COPY config_local.php /www/config_local.php
COPY Caddyfile /www/Caddyfile

VOLUME /books
WORKDIR /www

EXPOSE 2015
CMD ["/usr/bin/caddy"]

