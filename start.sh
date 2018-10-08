#!/bin/bash

if [ -z "$(ls -A /usr/src/app)" ]; then
   vapid new /usr/src/app/new
   cp -R new/* ./
   rm -R new
fi

cd /usr/src/app
vapid start