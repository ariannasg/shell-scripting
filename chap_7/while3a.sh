#!/bin/sh
while read f
do
  case $f in
	hello)		echo English	;;
	howdy)		echo American	;;
	gday)		echo Australian	;;
	bonjour)	echo French	;;
	"guten tag")	echo German	;;
	*)		echo Unknown Language: $f
		;;
   esac
done < myfile


### Console Output:
# English
# American
# Unknown Language: hola
# Australian
# Unknown Language: bom dia
# French
# German
# Unknown Language: howdy hello gday
