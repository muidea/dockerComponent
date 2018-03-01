#!bin/sh
KAFKA_HOME=/opt/kafka

EXTRA_ARGS=$EXTRA_ARGS
if [ $BROKER_ID ]; then
    EXTRA_ARGS=$EXTRA_ARGS' --override broker.id='$BROKER_ID
fi

if [ $ZOO_SERVERS ]; then
    EXTRA_ARGS=$EXTRA_ARGS' --override zookeeper.connect='$ZOO_SERVERS
fi

if [ $LISTENERS ]; then
    EXTRA_ARGS=$EXTRA_ARGS' --override listeners='$LISTENERS
fi

if [ $ADV_LISTENERS ]; then
    EXTRA_ARGS=$EXTRA_ARGS' --override advertised.listeners='$ADV_LISTENERS
fi

$KAFKA_HOME/bin/kafka-server-start.sh $KAFKA_HOME/config/server.properties $EXTRA_ARGS "$@"
