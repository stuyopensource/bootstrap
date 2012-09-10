#!/bin/sh

#
# if this gets too hectic, see http://brizzled.clapper.org/blog/2012/03/05/using-twitter-bootstrap-with-jekyll/
# 

rm -rf master bootstrap
wget https://github.com/dvizzini/bootstrap/zipball/master
unzip -q master
mv dvizzini-bootstrap-*/bootstrap .
rm -rf dvizzini-bootstrap-*
