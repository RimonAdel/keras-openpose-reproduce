#!/usr/bin/env bash

echo "begin"
cd "val2014"
for file in *.jpg
do
    name=$(echo "$file" | cut -f 1 -d '.')
    name=$(echo "$name" | tr -dc '0-9')
    name = $name + 0
    echo "remove $file"

    if [ $(($name)) -ge 2014000000020000 ]
    then  
        echo "remove $file"
        rm $file
    fi
done
echo "done"
