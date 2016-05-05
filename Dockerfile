FROM mitcdh/composer-base
MAINTAINER Mitchell Hewes <me@mitcdh.com>

RUN apk --update add \
    php-sqlite3 \
    php-dom \
    php-pdo \
    php-pdo_sqlite \
    php-gd && \
    rm -rf /var/cache/apk/*

RUN git clone -b master https://github.com/seblucas/cops.git /www

COPY config_local.php /www/config_local.php

RUN mkdir /books
VOLUME /books

EXPOSE 80

CMD ["/scripts/run.sh"]

