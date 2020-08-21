#!/bin/sh
# A simple script with a function...

# In this case, the function add_a_user is read in and checked for syntax, but not executed until it is explicitly called
add_a_user()
{
  USER=$1
  PASSWORD=$2
  shift; shift;
  # Having shifted twice, the rest is now comments ...
  COMMENTS=$@
  echo "Adding user $USER ..."
  echo useradd -c "$COMMENTS" $USER
  echo passwd $USER $PASSWORD
  echo "Added user $USER ($COMMENTS) with pass $PASSWORD"
}

###
# Main body of script starts here
###
echo "Start of script..."
add_a_user bob letmein Bob Holness the presenter
add_a_user fred badpassword Fred Durst the singer
add_a_user bilko worsepassword Sgt. Bilko the role model
echo "End of script..."

# Note that for this example the useradd and passwd commands have been prefixed with echo - this is a useful debugging technique to check that the right commands would be executed. It also means that you can run the script without being root or adding dodgy user accounts to your system!

### Console Output:
# Start of script...
# Adding user bob ...
# useradd -c Bob Holness the presenter bob
# passwd bob letmein
# Added user bob (Bob Holness the presenter) with pass letmein
# Adding user fred ...
# useradd -c Fred Durst the singer fred
# passwd fred badpassword
# Added user fred (Fred Durst the singer) with pass badpassword
# Adding user bilko ...
# useradd -c Sgt. Bilko the role model bilko
# passwd bilko worsepassword
# Added user bilko (Sgt. Bilko the role model) with pass worsepassword
# End of script...
