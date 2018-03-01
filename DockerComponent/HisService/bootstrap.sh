#!bin/sh
EXTRA_ARGS=$EXTRA_ARGS
if [ $LISTENERS ]; then
    EXTRA_ARGS=$EXTRA_ARGS' -Address '$LISTENERS
fi

if [ $BROKER_LIST ]; then
    EXTRA_ARGS=$EXTRA_ARGS' --override -Broker '$BROKER_LIST
fi

echo "Starting HisService..."

ldconfig

/var/app/hisservice $EXTRA_ARGS "$@"