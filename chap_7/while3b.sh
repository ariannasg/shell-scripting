#!/bin/sh
while f=`line`
do
  .. process f ..
done < myfile


### Console Output:
# ./while3b.sh: line 2: line: command not found

# On many Unix systems, this can print the same as while3a.sh
# $ i=THIS_IS_A_BUG
# $ export i
# $ ./while3b.sh something
# Unknown Language: THIS_IS_A_BUG
# $
# https://groups.google.com/g/comp.unix.shell/c/Tp5JElzydBo/m/n7f8gmrn1S0J?pli=1
