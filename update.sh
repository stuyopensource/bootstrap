#!/bin/bash

#get and unzip new master
git fetch upstream
git merge upstream/master
git checkout upstream/master README.md

#prepend README.md
cp README.md README_TWITTER.md
./prepend_readme.sh

#compile with new bootstrap
make -B bootstrap
