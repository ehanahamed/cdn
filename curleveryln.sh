#!/bin/bash

while IFS= read -r line; do
  mkdir -p ${line%/*}
  curl $line "https://cdn.ehan.dev/$line"
done < $1
