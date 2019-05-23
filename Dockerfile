FROM node:10-alpine

MAINTAINER "Johannes Hoffmann"

RUN apk update && apk add --virtual build-dependencies build-base make python
RUN npm install -g @vapid/cli@0.8.3 --unsafe-perm
RUN apk del build-dependencies && \
        rm -rf /var/cache/apk/*

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
RUN npm install

ADD ./start.sh /start.sh
CMD [ "sh", "/start.sh" ]