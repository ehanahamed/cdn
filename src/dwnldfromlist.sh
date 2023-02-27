#!/bin/bash
# cdn.ehan.dev
# 
# dwnldfromlist.sh - Download each file from list of paths

while read -r line; do
# execute for each line of input file
# with $line as current line's contents
  if [ ${line:0:1} != \# ]; then
  # if line does not begin with hashtag (#)
    mkdir -p ${line%/*}
    curl -o $line "https://raw.ehan.dev/$line"
  fi
done < $1
