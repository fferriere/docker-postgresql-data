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

docker run -d \
  --name $NAME \
  $IMAGE
