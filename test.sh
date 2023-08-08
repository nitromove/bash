#!/bin/bash

#Question1

if [ -z "$1" ]; then
    echo "Enter your file directory."
else
    dir="$1"
    echo "The path you entered is: $dir"
fi

if [ "$2" == "la" ] || [ "$2" == "ld" ]; then
    style="$2"

	echo "Listing contents of $dir in $style order:"
	ls "-$style" "$dir"
else
    echo "Invalid input for sorting style. Use 'la' for ascending or 'ld' for descending."
fi

#Question2
awk '/countries/ && /capital/ {print}' countries.txt

#Question3
mount_point = "/mnt/dataset"
mounted_points = $(mount)

if [[mounted_points = ~ $mount_point]]; then
	echo "The mounted points is: $du -sh /dataset"
else
	echo "The file system is not mounted"
fi