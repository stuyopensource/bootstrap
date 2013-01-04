#!/bin/bash

#get and unzip new master
git pull upstream master

#compile with new bootstrap
make -B bootstrap
