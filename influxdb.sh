#/bin/sh
# INFLUXDB_ADMIN_ENABLED=true
# INFLUXDB_GRAPHITE_ENABLED=true
# 8086 HTTP API port
# 8083 Administrator interface port, if it is enabled
# 2003 Graphite support, if it is enabled

docker run --name influxdb --privileged -p 8086:8086 -p 8083:8083 -p 2003:2003 -e INFLUXDB_ADMIN_ENABLED=true -e INFLUXDB_GRAPHITE_ENABLED=true -v /home/rangh/Documents/WorkSpace/influxdb:/var/lib/influxdb -d influxdb

