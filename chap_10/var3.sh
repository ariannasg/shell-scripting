#!/bin/sh
echo "I was called with $# parameters"
echo "My name is $0"
echo "My first parameter is $1"
echo "My second parameter is $2"
echo "All parameters are $@"


### Console Output:
# $ ./var3.sh 
# I was called with 0 parameters
# My name is ./var3.sh
# My first parameter is 
# My second parameter is 
# All parameters are 
# $ ./var3.sh hello world earth
# I was called with 3 parameters
# My name is ./var3.sh
# My first parameter is hello
# My second parameter is world
# All parameters are hello world earth
