FROM node:17 as build

WORKDIR /var/www/app

COPY ./hello-world/ /var/www/app

RUN yarn install

RUN yarn build

FROM nginx:1.21.6

COPY ./nginx.conf /etc/nginx/conf.d/default.conf
COPY --from=build /var/www/app/dist /var/www/app/dist
