#!/bin/sh

echo "
## $1
" > delete_me.txt
lerna-changelog | sed '1,3d' >> delete_me.txt
sed -e -i '/## Unreleased/r delete_me.txt' CHANGELOG.md
rm delete_me.txt
