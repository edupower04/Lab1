#!/bin/sh
if [ $2 = "+" ]
then
	hap=`expr $1 + $3`
	echo $hap
fi
if [ $2 = "-" ]
then
	cha=`expr $1 - $3`
	echo $cha
fi
exit 0
