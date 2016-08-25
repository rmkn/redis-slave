FROM redis:latest
MAINTAINER rmkn

COPY slave.sh /usr/local/bin/

CMD [ "redis-server", "/opt/redis/conf/redis.conf" ]

ENTRYPOINT ["slave.sh"]
