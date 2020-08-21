#!/bin/sh

factorial()
{
  if [ "$1" -gt "1" ]; then
    i=`expr $1 - 1`
    j=`factorial $i`
    k=`expr $1 \* $j`
    echo $k
  else
    echo 1
  fi
}


while :
do
  echo "Enter a number:"
  read x
  factorial $x
done


### Console Output:
# Enter a number:
# 3
# 6
# Enter a number:
# 2
# 2
# Enter a number:
# 1
# 1
# Enter a number:
# 7
# 5040
# Enter a number:
# ^C
