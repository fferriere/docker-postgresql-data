#!/bin/bash

NAME='fferriere-postgresql-data'
if [ -n "$FFERRIERE_PG_DATA_NAME" ]; then
    NAME="$FERRIERE_PG_DATA_NAME"
fi

IMAGE='fferriere/postgresql-data'
if [ -n "$FFERRIERE_PG_DATA_IMAGE" ]; then
    IMAGE="$FFERRIERE_PG_DATA_IMAGE"
fi

docker run -d \
  --name $NAME \
  $IMAGE
