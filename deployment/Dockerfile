# https://hub.docker.com/repository/docker/eriktrapman/kubtest-php

# docker build --tag eriktrapman/kubtest-php:0.0.1 .
# docker push eriktrapman/kubtest-php:0.0.1
# docker run --name=kubtest -p 8080:80 eriktrapman/kubtest-php
FROM php:7.4-fpm-alpine

RUN mkdir -p /var/www/app/
WORKDIR /var/www/app

RUN apk add --no-cache git
# TODO call build with param to be able to do the checkout with specific tag
RUN git clone https://github.com/ErikTrapman/kubtest.git /var/www/app
RUN ls -al /var/www/app
RUN rm -rf /var/cache/apk/*

# Usage:
# docker build -t docker-php-example .
# docker run -d -p 8080:80 docker-php-example
# open http://192.168.99.100:8080/

# FROM php
#RUN echo "<?php echo 'Hello World';" > /tmp/index.php
#CMD ["php", "-S", "0.0.0.0:80", "-t", "/tmp"]
