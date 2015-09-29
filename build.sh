#!/bin/bash

THIS_PATH=$(dirname $(realpath $0))

IMAGE='fferriere/postgresql-data'
if [ -n "$FFERRIERE_PG_DATA_IMAGE" ]; then
    IMAGE="$FFERRRIERE_PG_DATE_IMAGE"
fi

if [ -n "$FFERRIERE_PG_DATA_ETC_PATH" ] &&
    [ -d "$FFERRIERE_PG_DATA_ETC_PATH" ] &&
    [ -w "$FFERRIERE_PG_DATA_ETC_PATH" ]; then
    cp $THIS_PATH/files/etc/postgresql/* $FFERRIERE_PG_DATA_ETC_PATH
fi

docker build -t $IMAGE $@ $THIS_PATH/.
