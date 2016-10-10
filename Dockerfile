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

RUN git clone -b master https://github.com/seblucas/cops.git /www

COPY files/* /www/

RUN if -n "$BASICAUTH"; then echo "$BASICAUTH" >> /www/Caddyfile; fi

VOLUME /books
WORKDIR /www

EXPOSE 2015
USER web-srv
CMD ["/usr/bin/caddy"]

