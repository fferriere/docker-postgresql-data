#!/bin/bash

NAME='fferriere-postgresql-data'
if [ -n "$FFERRIERE_PG_DATA_NAME" ]; then
    NAME="$FFERRIERE_PG_DATA_NAME"
fi

IMAGE='fferriere/postgresql-data'
if [ -n "$FFERRIERE_PG_DATA_IMAGE" ]; then
    IMAGE="$FFERRIERE_PG_DATA_IMAGE"
fi

NB_ROWS=$(docker ps -a | grep -w "$NAME" | grep Exited | wc -l)
if [ "$NB_ROWS" -gt 0 ]; then
    exit 0
fi

DOCKER_VOLUMES=''
if [ -n "$FFERRIERE_PG_DATA_RUN_PATH" ]; then
    DOCKER_VOLUMES="$DOCKER_VOLUMES -v $FFERRIERE_PG_DATA_RUN_PATH:/var/run/postgresql"
fi
if [ -n "$FFERRIERE_PG_DATA_LIB_PATH" ]; then
    DOCKER_VOLUMES="$DOCKER_VOLUMES -v $FFERRIERE_PG_DATA_LIB_PATH:/var/lib/postgresql"
fi
if [ -n "$FFERRIERE_PG_DATA_LOG_PATH" ]; then
    DOCKER_VOLUMES="$DOCKER_VOLUMES -v $FFERRIERE_PG_DATA_LOG_PATH:/var/log/postgresql"
fi
if [ -n "$FFERRIERE_PG_DATA_ETC_PATH" ]; then
    DOCKER_VOLUMES="$DOCKER_VOLUMES -v $FFERRIERE_PG_DATA_ETC_PATH:/etc/postgresql"
fi

docker run -d \
  --name $NAME $DOCKER_VOLUMES \
  $IMAGE
