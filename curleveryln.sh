#!/bin/bash

while read -r line; do
  mkdir -p ${line%/*}
  curl $line "https://cdn.ehan.dev/$line"
done < $1
