#!/bin/sh

adduser()
{
  USER=$1
  PASSWORD=$2
  shift ; shift
  COMMENTS=$@
  useradd -c "${COMMENTS}" $USER
  if [ "$?" -ne "0" ]; then
    echo "Useradd failed"
    return 1
  fi
  passwd $USER $PASSWORD
  if [ "$?" -ne "0" ]; then
    echo "Setting password failed"
    return 2
  fi
  echo "Added user $USER ($COMMENTS) with pass $PASSWORD"
}

## Main script starts here
adduser bob letmein Bob Holness from Blockbusters
ADDUSER_RETURN_CODE=$?
if [ "$ADDUSER_RETURN_CODE" -eq "1" ]; then
  echo "Something went wrong with useradd"
elif [ "$ADDUSER_RETURN_CODE" -eq "2" ]; then 
   echo "Something went wrong with passwd"
else
  echo "Bob Holness added to the system."
fi

#Note that for a long time, this tutorial checked "$?" both times, rather than setting ADDUSER_RETURN_CODE=$?, and then looking at the value of ADDUSER_RETURN_CODE each time. This was a bug (thanks to Elyza for pointing it out). You have to save $?, because as soon as you run another command, such as if, its value will be replaced. That is why we save the adduser return value in the $ADDUSER_RETURN_CODE variable, before acting on its content. $ADDUSER_RETURN_CODE is certain to remain the same; $? will change with every command that is executed.


### Console Output:
# ./return.sh: line 9: useradd: command not found
# Useradd failed
# Something went wrong with useradd
