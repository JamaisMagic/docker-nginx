#!/usr/bin/bash

git pull origin master:master && \
if [ "$1" == "build" ]; then
    docker-compose -f ./docker-compose.yml -f ./docker-compose.override.yml build
elif [ "$1" == "up" ]; then
    docker-compose -f ./docker-compose.yml -f ./docker-compose.override.yml up -d --build
elif [ "$1" == "recreate" ]; then
    docker-compose -f ./docker-compose.yml -f ./docker-compose.override.yml up -d --build --force-recreate
elif [ "$1" == "restart" ]; then
    docker-compose -f ./docker-compose.yml -f ./docker-compose.override.yml restart
elif [ "$1" == "stop" ]; then
    docker-compose -f ./docker-compose.yml -f ./docker-compose.override.yml stop
elif [ "$1" == "t" ]; then
    docker-compose -f ./docker-compose.yml -f ./docker-compose.override.yml exec nginx -t
elif [ "$1" == "reload" ]; then
    docker-compose -f ./docker-compose.yml -f ./docker-compose.override.yml exec nginx -s reload
else
    echo "Unexpected parameter: $1"
fi
