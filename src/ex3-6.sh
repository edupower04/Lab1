#!/bin/sh
if [ -d "$(pwd)/$1" ]
then
	echo "폴더가 이미 존재합니다."
else
	mkdir "$(pwd)/$1"
	
	echo "file0.txt file1.txt file2.txt file3.txt file4.txt files.tar"

	
	echo "" > file0.txt

	
	echo "" > file1.txt

	
	echo "" > file2.txt

	
	echo "" > file3.txt

	
	echo "" > file4.txt

    tar -cvf files.tar file0.txt file1.txt file2.txt file3.txt file4.txt

	mv file0.txt "$(pwd)/$1"
	mv file1.txt "$(pwd)/$1"
    mv file2.txt "$(pwd)/$1"
    mv file3.txt "$(pwd)/$1"
    mv file4.txt "$(pwd)/$1"

	mkdir "$(pwd)/$1/$1"
	mv files.tar "$(pwd)/$1/$1"

	cd "$(pwd)/$1/$1"
	tar -xvf files.tar
fi
exit 0
