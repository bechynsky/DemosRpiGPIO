#!/bin/bash
gpio mode 0 out

for (( ; ; ))
do
	gpio write 0 1
   	sleep 1
   	gpio write 0 0
	sleep 1
done
