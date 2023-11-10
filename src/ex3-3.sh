#!/bin/sh
if [ $(echo "10000 * $1 / ( $2 * $2 ) < 18.5" | bc) -eq 1 ]
then
	echo "저체중입니다."
elif [ $(echo "10000 * $1 / ( $2 * $2 ) < 23" | bc) -eq 1 ]
then
	echo "정상체중입니다."
else
	echo "과체중입니다."
fi
exit 0
