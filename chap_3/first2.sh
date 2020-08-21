#!/bin/sh
# This is a comment!
echo "Hello      World"       # This is a comment, too!
echo "Hello World"
echo "Hello * World"
echo Hello * World
echo Hello      World
echo "Hello" World
echo Hello "     " World
echo "Hello "*" World"
echo `hello` world
echo 'hello' world


### Console Output:
# Hello      World
# Hello World
# Hello * World
# Hello LICENSE.md README.md first.sh first.sh~ first2.sh first2.sh~ World
# Hello World
# Hello World
# Hello       World
# Hello * World
# ./first2.sh: line 11: hello: command not found
# world
# hello world
