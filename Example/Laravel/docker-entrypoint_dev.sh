#!/bin/sh
set -e

chown www-data.www-data -R /var/www/app/storage /var/www/app/bootstrap/cache

composer install

php-fpm
