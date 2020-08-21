#!/bin/sh
echo "MYVAR is: $MYVAR"
MYVAR="hi there"
echo "MYVAR is: $MYVAR"


### Console Output:
# MYVAR is: 
# MYVAR is: hi there

# $ MYVAR=hello
# $ ./myvar2.sh
# MYVAR is:
# MYVAR is: hi there


# When calling myvar2.sh from your interactive shell, a new shell is spawned to run the script. This is partly because of the #!/bin/sh line at the start of the script.
# We need to export the variable for it to be inherited by another program:
# $ export MYVAR
# $ ./myvar2.sh
# MYVAR is: hello
# MYVAR is: hi there

# In order to receive environment changes back from the script, we must source the script - this effectively runs the script within our own interactive shell, instead of spawning another shell to run it.
# We can source a script via the "." (dot) command:
# $ echo $MYVAR
# hello
# $ MYVAR=hello
# $ echo $MYVAR
# hello
# $ . ./myvar2.sh
# MYVAR is: hello
# MYVAR is: hi there
# $ echo $MYVAR
# hi there
