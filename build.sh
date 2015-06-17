#!/bin/bash

THIS_PATH=$(dirname $(realpath $0))

IMAGE='fferriere/postgresql-data'
if [ -n "$FFERRIERE_PG_DATA_IMAGE" ]; then
    IMAGE="$FFERRRIERE_PG_DATE_IMAGE"
fi

docker build -t $IMAGE $@ $THIS_PATH/.
 
