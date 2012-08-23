#!/bin/bash

#get and unzip new master
git pull upstream master

#prepend README.md
./prepend_readme.sh

#compile with new bootstrap
make -B bootstrap
