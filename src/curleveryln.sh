#!/bin/bash

while [ read -r line ]; do
  if [ ${line:0:1} != \# ]; then
    mkdir -p ${line%/*}
    curl -o $line "https://raw.ehan.dev/$line"
  fi
done < $1
