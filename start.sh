#!/bin/bash

if [ -z "$(ls -A /usr/src/app)" ]; then
   vapid new /usr/src/app/new
   cp -R new/* ./
   rm -R new
fi

if [ ! -e "/usr/src/app/.env" ]; then
    echo "Your .env file is missing. Please install your site via dashboard or ensure that SECRET_KEY variable is available."
fi

cd /usr/src/app
vapid start