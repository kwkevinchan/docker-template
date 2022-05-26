FROM node:17

COPY ./hello-world/ /var/www/app

RUN yarn install
RUN npm install -g @vue/cli

EXPOSE 8080

WORKDIR /var/www/app

ENTRYPOINT yarn serve