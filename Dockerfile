# https://hub.docker.com/repository/docker/eriktrapman/kubtest-php

# Usage:
# docker build -t docker-php-example .
# docker run -d -p 8080:80 docker-php-example
# docker run -p 8080:80 docker-php-example
# docker run -p 8080:80 -v ${PWD}:/var/www/app docker-php-example
# open http://localhost:8080/
FROM php:7.4-fpm-alpine

RUN docker-php-source extract && \
  apk add --update --no-cache autoconf g++ make && \
  pecl install redis && \
  docker-php-ext-enable redis
  #&& \  docker-php-ext-install pdo_mysql

RUN rm -rf /var/cache/apk/*

RUN mkdir -p /var/www/app/
WORKDIR /var/www/app

#EXPOSE 8080
#CMD ["/usr/local/bin/php", "-S", "0.0.0.0:80", "-t", "/var/www/app"]

# FROM php
RUN echo "<?php phpinfo();" > /var/www/app/index.php
#CMD ["php", "-S", "0.0.0.0:80", "-t", "/tmp"]
