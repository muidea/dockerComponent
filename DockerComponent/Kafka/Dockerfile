FROM java:openjdk-8-jre

ARG kafka_version=1.0.0
ARG scala_version=2.12
ARG Version="kafka-1.0.0"

LABEL Author="rangh"

ENV KAFKA_VERSION=$kafka_version \
    SCALA_VERSION=$scala_version \
    KAFKA_HOME=/opt/kafka \
    PATH=${PATH}:${KAFKA_HOME}/bin

COPY kafka_${SCALA_VERSION}-${KAFKA_VERSION}.tgz /tmp/

RUN cd /tmp \
 && tar xfz /tmp/kafka_${SCALA_VERSION}-${KAFKA_VERSION}.tgz -C /opt \
 && rm /tmp/kafka_${SCALA_VERSION}-${KAFKA_VERSION}.tgz \
 && ln -s /opt/kafka_${SCALA_VERSION}-${KAFKA_VERSION} /opt/kafka 

COPY server.properties /opt/kafka_${SCALA_VERSION}-${KAFKA_VERSION}/config/

ADD start-kafka.sh /usr/bin/start-kafka.sh

VOLUME [ "/data" ]

EXPOSE 9092

# Use "exec" form so that it runs as PID 1 (useful for graceful shutdown)
CMD ["start-kafka.sh"]