#!/bin/sh
echo -en "Please guess the magic number: "
read X
echo $X | grep "[^0-9]" > /dev/null 2>&1  #  grep [0-9] finds lines of text which contain digits (0-9) and possibly other characters,
                                          #  so the caret (^) in grep [^0-9] finds only those lines which don't consist only of numbers.
                                          # The >/dev/null 2>&1 directs any output or errors to the special "null" device,
                                          #instead of going to the user's screen.
if [ "$?" -eq "0" ]; then
  # If the grep found something other than 0-9
  # then it's not an integer.
  echo "Sorry, wanted a number"
else
  # The grep found only 0-9, so it's an integer. 
  # We can safely do a test on it.
  if [ "$X" -eq "7" ]; then
      echo "You entered the magic number!"
  else
      echo "Sorry, that's not the magic number."
  fi
fi


### Console Output:
# $ ./magic_number.sh 
# -en Please guess the magic number: 
# hi
# Sorry, wanted a number
# $ ./magic_number.sh
# -en Please guess the magic number: 
# 8
# Sorry, that's not the magic number.
# $ ./magic_number.sh
# -en Please guess the magic number: 
# 7
# You entered the magic number!
# $ ./magic_number.sh
# -en Please guess the magic number: 
# 6 7 9 0 
# Sorry, wanted a number
