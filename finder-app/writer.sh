#!/bin/sh


if [ ! $# -eq 2 ]
then
    echo "Please enter the complete path with the name file and the text you want to write in a file"
    exit 1
fi

writefile=$1
writestr=$2

echo ${writestr} > ${writefile}

if [ ! $? -eq 0 ]
then
    echo "The file couldn't be created"
    exit 1
fi
