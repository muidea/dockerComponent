#!/bin/sh

EXTRA_ARGS=$EXTRA_ARGS
if [ $BROKER_LIST ]; then
    EXTRA_ARGS=$EXTRA_ARGS' -Broker '$BROKER_LIST
fi

if [ $TOPIC_NAME ]; then
    EXTRA_ARGS=$EXTRA_ARGS' -Topic '$TOPIC_NAME
fi

echo "Starting HisService..."

ldconfig

/var/app/hisservice $EXTRA_ARGS "$@"