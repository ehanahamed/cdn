#!/bin/bash

# cdn (cdn.ehan.dev)
# Copyright (c) 2022-2023 Ehan Ahamed and contributors
# Licensed under the Universal Permissive License v1.0
# https://src.ehan.dev/cdn/LICENSE.txt

# dwnldfromlist.sh - Download each file from list of paths

url = $1
list = $2

while read -r line; do
# execute for each line of input file
# with $line as current line's contents
  if [ ${line:0:1} != \# ]; then
  # if line does not begin with hashtag (#)
    mkdir -p ${line%/*}
    curl -o $line "$url/$line"
  fi
done < $list
