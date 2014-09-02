#
# Redis server rdb save before backup
#

SHELL=/bin/bash

25 0     * * *     root  sleep $(($RANDOM\%600+1)) ;/etc/init.d/redis-server bgsave >>/var/log/redis/cron.log  2>&1

