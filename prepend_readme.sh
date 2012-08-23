#!/bin/bash

#prepend README.md
cat README_PREPENDIX.md | cat - README.md > tmp && mv tmp README.md
