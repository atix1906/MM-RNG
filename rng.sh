#!/bin/bash
while true
do
    randomNumber=$(($RANDOM % 1000 + 1))
	echo "$randomNumber"
	sleep 1
done