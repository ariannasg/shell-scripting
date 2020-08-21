#!/bin/sh
. ./common.lib
echo *
echo $STD_MSG
rename .txt .md
echo *


### Console Output:
# common.lib factorial.sh function.sh function2.sh scope.sh test1.txt test2.txt
# About to rename some files...
# common.lib factorial.sh function.sh function2.sh scope.sh test1.md test2.md
