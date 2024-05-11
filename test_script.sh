#! /bin/bash

counter=0
file_name='ls -v $USER-* 2>/dev/null | tail -n 1'

if [ -n "$file_name" ] 
then
  counter=$(echo "$file_name" | cut -d "_" -f2- | grep -oE '[0-9]+'
  ((counter++))
fi

#debugging outputs
echo "last file: $last_file"
echo "counter: $counter"

for ((i = counter; i < counter + 25; i++))
do
  touch "'$USER-$i"
  echo "Created file $USER-$i."
done
