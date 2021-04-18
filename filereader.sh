#!/bin/bash

select valasz in "File: " "End"
do
	if [ $REPLY = '1' ]
	then
		read -p "Filename: " filename

		if ! [ -f $filename ]
		then
			echo "Not a file!"
			exit 2
		fi

		exec 7<"$filename"

		while read -u 7 line
		do
			echo $line
		done

		exec 7<&-
	fi

	if [ $REPLY = "2" ]
	then
		echo "Thanks"
		exit 0
	else
		echo "What?!"
		exit 3
	fi
done