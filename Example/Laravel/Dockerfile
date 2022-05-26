FROM php:8.1.5-fpm-buster

RUN apt update && \
    apt install -y \
    libssl-dev \
    git

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
    php composer-setup.php && \
    php -r "unlink('composer-setup.php');" && \
    mv composer.phar /usr/local/bin/composer

RUN pecl install mongodb redis && \
    docker-php-ext-enable mongodb redis

RUN echo "extension=mongodb.so" >> /usr/local/etc/php/php.ini

WORKDIR /var/www/app

COPY ./docker-entrypoint.sh /sbin/docker-entrypoint.sh
RUN chmod 700 /sbin/docker-entrypoint.sh

COPY ./src/composer.json /var/www/app/composer.json
COPY ./src/composer.lock /var/www/app/composer.lock

RUN composer i

COPY ./src /var/www/app

ENTRYPOINT /sbin/docker-entrypoint.sh
