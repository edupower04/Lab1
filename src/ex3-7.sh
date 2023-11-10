#!/bin/sh
if [ -d "$(pwd)/$1" ]
then
	echo "이미 폴더가 존재합니다."
else
	mkdir "$(pwd)/$1"
	cd "$(pwd)/$1"
	echo "" > file0.txt
	echo "" > file1.txt
	echo "" > file2.txt
	echo "" > file3.txt
	echo "" > file4.txt
	mkdir "$(pwd)/file0"
	mkdir "$(pwd)/file1"
	mkdir "$(pwd)/file2"
	mkdir "$(pwd)/file3"
	mkdir "$(pwd)/file4"
	ln -s "$(pwd)"/file0.txt "$(pwd)/file0"/file0.txt
	ln -s "$(pwd)"/file0.txt "$(pwd)/file1"/file0.txt
	ln -s "$(pwd)"/file0.txt "$(pwd)/file2"/file0.txt
	ln -s "$(pwd)"/file0.txt "$(pwd)/file3"/file0.txt
	ln -s "$(pwd)"/file0.txt "$(pwd)/file4"/file0.txt
fi
exit 0
