#!/bin/sh

dir="week1"
filenames=$(ls $dir)

# Iterate over the list of filenames and call another script for each one
for filename in $filenames; do
    # Call another script, passing the filename as an argument
    python3 USR_validity.py $dir/$filename
done