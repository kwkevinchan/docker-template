FROM node:17

COPY ./hellow-world/ /var/www/app

RUN yarn install

EXPOSE 8080

ENTRYPOINT yarn serve