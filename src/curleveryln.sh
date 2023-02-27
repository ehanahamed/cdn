#!/bin/bash

while read -r line; do
  if [${line:0:1} = \#]; then
    echo 'this line was a comment'
  else
    echo $line
  fi
  #mkdir -p ${line%/*}
  #curl -o $line "https://raw.ehan.dev/$line"
done < $1
