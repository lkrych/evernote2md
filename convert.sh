#!/bin/bash
dirname=$1

for f in $(ls $dirname); do
  path="$dirname/$f"
  echo "converting -> $path"
  filename="$dirname/${f%.*}"
  echo "saving to $filename"
  ./evernote2md $path $filename
done
