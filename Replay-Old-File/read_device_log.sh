#!/bin/bash
RANGE=10
SCRIPTPATH=$( cd $(dirname $0) ; pwd -P )
while true
do
  while read line
  do
    number=$RANDOM;
    let "number %= $RANGE";
    sleep $number;
    echo "$line";
    logger "$line";
  done < $SCRIPTPATH/device.log
done
