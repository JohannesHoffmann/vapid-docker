FROM node:10-jessie

MAINTAINER "Johannes Hoffmann"

RUN apt-get update && apt-get upgrade -y && apt-get install -y build-essential make python
RUN npm install -g @vapid/cli@0.7.6 --unsafe-perm

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

RUN npm install

ADD ./start.sh /start.sh
CMD [ "sh", "/start.sh" ]
