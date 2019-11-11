ARG PHP_VERSION
FROM php:${PHP_VERSION}-cli-alpine AS base

COPY --from=forumone/f1-ext-install:latest \
  /f1-ext-install \
  /usr/bin/f1-ext-install

RUN set -ex \
  && f1-ext-install \
    builtin:gd \
    builtin:opcache \
    builtin:pdo_mysql \
    builtin:zip \
  && apk add --no-cache \
    mysql-client \
    openssh \
    rsync \
  && { \
    echo 'memory_limit=-1'; \
  } > /usr/local/etc/php/php-cli.ini

ENV PATH=${PATH}:/var/www/html/vendor/bin
WORKDIR /var/www/html
