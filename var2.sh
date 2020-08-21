#!/bin/sh
echo What is your name?
read MY_NAME                                # The read command automatically places quotes around its input, so that spaces are treated correctly
echo "Hello $MY_NAME - hope you're well."


### Console Output:
# What is your name?
# Ari
# Hello Ari - hope you're well.
