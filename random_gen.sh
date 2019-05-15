#!/bin/bash

#array=( $(echo "1 2 3 4 5 6 7 8 9 10" | sed -r 's/(.[^;]*;)/ \1 /g' | tr " " "\n" | shuf | tr -d " " ) ) #another way to shuffle the number in an array

array=(1 2 3 4 5 6 7 8 9 10)
array=($(shuf -e "${array[@]}"))

for item in "${array[@]}"; do
        echo "$item"
done
