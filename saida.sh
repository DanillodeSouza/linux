#!/bin/bash
test -e /home/danillobarreto/fuu.txt
if [ $? -eq 0 ]
then
	echo "O arquivo '/home/danillobarreto/fuu.txt' existe"
else
 	echo "O arquivo '/home/danillobarreto/fuu.txt' não existe"
fi
