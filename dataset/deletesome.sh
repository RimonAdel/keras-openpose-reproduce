#!/usr/bin/env bash

echo "begin"
for file in *.jpg
do
    name=$(echo "$file" | cut -f 1 -d '.')
    name=$(echo "$name" | tr -dc '0-9')
    name = name + 0


    if [ $(($name)) -ge 2014000000050000 ]
    then  
        echo "remove $file"
        rm $file
    fi
done
echo "done"
