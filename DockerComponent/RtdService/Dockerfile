FROM centos

LABEL Author="rangh"

RUN mkdir -p /var/app

WORKDIR /var/app

ADD librdkafka.so.1 /lib/librdkafka.so.1
ADD rtdservice /var/app/rtdservice
ADD bootstrap.sh /var/app/bootstrap.sh
RUN chmod 777 /var/app/rtdservice
RUN chmod 777 /var/app/bootstrap.sh
ENTRYPOINT ["/var/app/bootstrap.sh"]
