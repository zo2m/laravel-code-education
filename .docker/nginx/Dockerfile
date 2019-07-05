FROM nginx:1.17-alpine

RUN apk add --no-cache bash

RUN rm /etc/nginx/conf.d/default.conf

ENV DOCKERIZE_VERSION v0.6.1
RUN wget https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && tar -C /usr/local/bin -xzvf dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && rm dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz

WORKDIR /var/www


#RUN dockerize -template ./.docker/app/nginx.conf:./.docker/nginx/nginx.conf
#COPY nginx.conf /etc/nginx/conf.d