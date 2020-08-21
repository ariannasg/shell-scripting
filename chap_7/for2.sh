#!/bin/sh
for i in hello 1 * 2 goodbye ../* world
do
  echo "Looping ... i is set to $i"
done


### Console Output:
# Looping ... i is set to hello
# Looping ... i is set to 1
# Looping ... i is set to for.sh
# Looping ... i is set to for2.sh
# Looping ... i is set to 2
# Looping ... i is set to goodbye
# Looping ... i is set to ../LICENSE.md
# Looping ... i is set to ../README.md
# Looping ... i is set to ../ari_file
# Looping ... i is set to ../chap_3
# Looping ... i is set to ../chap_4
# Looping ... i is set to world# Looping ... i is set to hello
