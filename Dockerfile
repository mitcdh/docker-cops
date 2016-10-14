FROM mitcdh/caddy-php:php7
MAINTAINER Mitchell Hewes <me@mitcdh.com>

COPY files/Caddyfile /caddy-bootstrap/
COPY files/config_local.php /www/

VOLUME /books

EXPOSE 2015


