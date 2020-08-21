#!/bin/sh
while [ "$#" -gt "0" ] # This script keeps on using shift until $# is down to zero, at which point the list is empty.
do
  echo "\$1 is $1"
  shift
done


### Console Output:
# $ ./var4.sh 1 2 3 4 5 6 7 8 9 10 11
# $1 is 1
# $1 is 2
# $1 is 3
# $1 is 4
# $1 is 5
# $1 is 6
# $1 is 7
# $1 is 8
# $1 is 9
# $1 is 10
# $1 is 11
