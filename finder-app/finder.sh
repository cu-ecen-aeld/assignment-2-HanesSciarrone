#!/bin/sh

if [ -z "$1" ]
then
    echo "Script expect the file directory."
    exit 1
elif [ -z "$2" ]
then
    echo "Script expect the name file."
    exit 1
fi

filesdir=$1
searchstr=$2

if [ ! -d $filesdir ]
then
    echo "Directory doesn't exist."
    exit 1
fi

X=$(ls ${filesdir} | wc -l)
Y=$(cd ${filesdir} && grep -r "${searchstr}" * | wc -l)
echo "The number of files are ${X} and the number of matching lines are ${Y}"
