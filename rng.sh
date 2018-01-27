#!/bin/bash
while true
do
    randomNumber=$(($RANDOM % 1000 + 1))
	echo "$randomNumber"
    echo -e "import redis\n r = redis.StrictRedis(host=$REDIS_HOST, port=$REDIS_PORT, db=0)\n r.rpush(\"rng::list\", $randomNumber)" | python
	sleep 1
done