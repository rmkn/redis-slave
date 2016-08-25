#!/bin/sh

mkdir -p /opt/redis/conf/

cat << EOS > /opt/redis/conf/redis.conf
slaveof ${MASTER_HOST:-localhost} ${MASTER_PORT:-6379}
slave-read-only yes 
EOS

/usr/local/bin/docker-entrypoint.sh "$@"
