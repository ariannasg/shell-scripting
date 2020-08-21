#!/bin/sh
echo "What is your name?"
read USER_NAME
echo "Hello $USER_NAME"
echo "I will create you a file called ${USER_NAME}_file"  # We use {} to define the var, otherwise shell will interpret it as the variable named USER_NAME_file
touch "${USER_NAME}_file"


### Console Output:
# What is your name?
# ari
# Hello ari
# I will create you a file called ari_file

# Also note the quotes around "${USER_NAME}_file" - if the user entered "Steve Parker" (note the space) then without the quotes, the arguments passed to touch would be Steve and Parker_file - that is, we'd effectively be saying touch Steve Parker_file, which is two files to be touched, not one. The quotes avoid this. 
