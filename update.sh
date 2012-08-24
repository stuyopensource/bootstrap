#!/bin/bash

#get and unzip new master
git pull upstream master

#prepend README.md
cp README.md README_TWITTER.md
./prepend_readme.sh

#compile with new bootstrap
make -B bootstrap
