#!/bin/sh

EXTRA_ARGS=$EXTRA_ARGS
if [ $LISTENERS ]; then
    EXTRA_ARGS=$EXTRA_ARGS' -Address '$LISTENERS
fi

if [ $BROKER_LIST ]; then
    EXTRA_ARGS=$EXTRA_ARGS' -Broker '$BROKER_LIST
fi

echo "Starting RtdService..."

ldconfig

/var/app/rtdservice $EXTRA_ARGS "$@"