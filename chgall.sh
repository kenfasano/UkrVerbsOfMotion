#!/bin/zsh
if [ "$#" -ne 2 ]; then
  echo "Error: This script requires exactly two arguments."
  exit 1
fi
echo "$1"
echo "$2"
sed -i '' "s/$1/$2/g" *.html
