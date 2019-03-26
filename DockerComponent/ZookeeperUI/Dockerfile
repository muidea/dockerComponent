FROM java:openjdk-8-jre

LABEL Author="rangh"

WORKDIR /var/app

ADD zkui-*.jar /var/app/zkui.jar
ADD config.cfg /var/app/config.cfg
ADD bootstrap.sh /var/app/bootstrap.sh
RUN chmod 777 /var/app/bootstrap.sh
ENTRYPOINT ["/var/app/bootstrap.sh"]

EXPOSE 9090