FROM node:10-jessie

MAINTAINER "Johannes Hoffmann"

RUN apt-get update && apt-get upgrade -y && apt-get install -y build-essential make python
RUN npm install -g @vapid/cli@0.4.0 --unsafe-perm && npm install

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

ADD ./start.sh /start.sh
CMD [ "sh", "/start.sh" ]