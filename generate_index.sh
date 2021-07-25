#!/bin/bash

INDEX_FILENAME=index.md
touch $INDEX_FILENAME
echo "" > $INDEX_FILENAME

files="./recipes/*"
for filepath in $files; do
    echo "- [${filepath##*/}](${filepath})" >> $INDEX_FILENAME
done

