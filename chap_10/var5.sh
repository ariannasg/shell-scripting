#!/bin/sh
old_IFS="$IFS"
IFS=:
echo "Please input some data separated by colons ..."
read x y z
IFS=$old_IFS
echo "x is $x y is $y z is $z"


### Console Output:
# $ ./ifs.sh
# Please input some data separated by colons ...
# hi:world:bye
# x is hi y is world z is bye
# $ ./ifs.sh
# Please input some data separated by colons ...
# hello:how are you:today:my:friend
# x is hello y is how are you z is today:my:friend
