#!/usr/bin/env bash

# Find all directories except the excluded one
dirs=$(find . -maxdepth 1 -type d ! -name "$1" ! -name ".")

# Loop through each directory and copy the file
for dir in $dirs; do
	echo $dir
    cp $1/lib/template/ $dir/lib/ -r
done
