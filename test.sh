#!/bin/bash

sass_folder="sass"
scss_folder="sample-scss"

for file in $scss_folder/*
do
    filename=$(basename "$file")

    extension="${file##*.}"

    pure=$(basename "${file%.*}")

    output=$sass_folder/$pure.sass

    echo "Converting: $file to $output"

    sass-convert $file $output

done

