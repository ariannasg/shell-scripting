#!/bin/sh
X=0
while [ -n "$X" ]   # Without those quotes, there is nothing to test when $X is empty
do
  echo "Enter some text (RETURN to quit)"
  read X
  echo "You said: $X"
done


### Console Output:
# Enter some text (RETURN to quit)
# hola
# You said: hola
# Enter some text (RETURN to quit)
# 
# You said: 
