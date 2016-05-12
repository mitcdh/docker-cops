FROM mitcdh/hiawatha-php
MAINTAINER Mitchell Hewes <me@mitcdh.com>

RUN apk --update add \
	git \
    php5-pdo \
    php5-pdo_sqlite \
    php5-gd && \
    rm -rf /var/cache/apk/*

RUN git clone -b master https://github.com/seblucas/cops.git /www

COPY config_local.php /www/config_local.php

RUN mkdir /books
VOLUME /books

EXPOSE 80

CMD ["/scripts/run.sh"]

