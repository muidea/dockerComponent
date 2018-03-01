#!bin/sh

EXTRA_ARGS=$EXTRA_ARGS
if [ $LISTENERS ]; then
    EXTRA_ARGS=$EXTRA_ARGS' -Address '$LISTENERS
fi

if [ $BROKER_LIST ]; then
    EXTRA_ARGS=$EXTRA_ARGS' --override -Broker '$BROKER_LIST
fi

echo "Starting RtdService..."

exec ldconfig

exec /var/app/rtdservice $EXTRA_ARGS "$@"