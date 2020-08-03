#!/bin/sh  
while true  
do  
    date >> ping-so-out
    ping -c 128 -q stackoverflow.com >> ping-so-out
    sleep 600  
done

