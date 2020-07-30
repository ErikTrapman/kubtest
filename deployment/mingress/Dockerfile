FROM php:7.4-fpm-alpine

# built as eriktrapman/phpinfo
RUN docker-php-source extract && \
  apk add --update --no-cache autoconf g++ make && \
  pecl install redis && \
  docker-php-ext-enable redis
  #&& \  docker-php-ext-install pdo_mysql

RUN rm -rf /var/cache/apk/*

RUN mkdir -p /var/www/app/
WORKDIR /var/www/app

# FROM php
RUN echo "<?php phpinfo();" > /var/www/app/index.php
