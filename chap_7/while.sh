#!/bin/sh
INPUT_STRING=hello
while [ "$INPUT_STRING" != "bye" ]
do
  echo "Please type something in (bye to quit)"
  read INPUT_STRING
  echo "You typed: $INPUT_STRING"
done


### Console Output:
# Please type something in (bye to quit)
# hi
# You typed: hi
# Please type something in (bye to quit)
# there!
# You typed: there!
# Please type something in (bye to quit)
# bye
# You typed: bye
