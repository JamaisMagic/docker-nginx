#!/usr/bin/bash


if [ "$1" == "build" ]; then
    docker-compose -f ./docker-compose.yml build
elif [ "$1" == "up" ]; then
    docker-compose -f ./docker-compose.yml up -d --build
elif [ "$1" == "recreate" ]; then
    docker-compose -f ./docker-compose.yml up -d --build --force-recreate
elif [ "$1" == "restart" ]; then
    docker-compose -f ./docker-compose.yml restart
elif [ "$1" == "stop" ]; then
    docker-compose -f ./docker-compose.yml stop
elif [ "$1" == "t" ]; then
    docker-compose -f ./docker-compose.yml exec nginx -t
elif [ "$1" == "reload" ]; then
    docker-compose -f ./docker-compose.yml exec nginx -s reload
else
    echo "Unexpected parameter: $1"
fi

docker rmi $(docker images -f "dangling=true" -q)
