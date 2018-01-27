#!/bin/bash
while true
do
    randomNumber=$(($RANDOM % 1000 + 1))
	echo "$randomNumber"
    echo -e "import redis\nr = redis.StrictRedis(host=\"$REDIS_HOST\", port=$REDIS_PORT, db=0)\nr.rpush(\"rng::list\", $randomNumber)" | python3
	sleep 1
done