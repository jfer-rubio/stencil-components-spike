#!/bin/sh

find src/components -type f -name '*.tsx' |
while read filename
do
  eval "./node_modules/jsdoc-to-markdown/bin/cli.js --no-cache --files $filename --configure jsdoc2md.json > $filename.md"
done
