FROM nginx:1.15.4

COPY ./src/ /var/www/app
COPY ./nginx.conf /etc/nginx/conf.d/default.conf
