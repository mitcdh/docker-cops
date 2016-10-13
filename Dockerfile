FROM mitcdh/caddy-php
MAINTAINER Mitchell Hewes <me@mitcdh.com>

COPY files/Caddyfile /scripts/
COPY files/config_local.php /www/

VOLUME /books

EXPOSE 2015


