#!/bin/bash

PROJECT_NAME="HouseComms"

MONGO_PORT=27018

ACTION=$1

if [[ -z "$ACTION" ]]; then
    echo "Uso: $0 {start|stop|status|restart}"
    exit 1
fi

manage_mongo_project -n $PROJECT_NAME -p $MONGO_PORT $ACTION
