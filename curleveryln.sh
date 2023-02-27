#!/bin/bash

while read -r line; do
  mkdir -p ${line%/*}
  curl -o $line "https://raw.ehan.dev/$line"
done < $1
