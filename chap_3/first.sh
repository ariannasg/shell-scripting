#!/bin/sh
# This is a comment!
echo Hello World           # Here echo is being called with two arguments - it doesn't care any more than cp does about the gaps in between them 
echo "Hello      World"    # Here echo is being called with just ONE argument - the string "Hello    World". It prints this out exactly.


### Console Output:
# Hello World
# Hello      World
