bootstrap-meals
===============

bootstrap-meals is a small extention of Twitter's Bootstrap. All new material is in the following files:

* less-meals/
* img-meals/
* ttf-meals/
* makefile
* *.sh

All new code compiles to bootstrap/css/bootstrap-meals.css and bootstrap/css/bootstrap-meals.min.css.

Compiling
---------

If you would like to port changes to Twitter's latest version, run `./update.sh`, which runs the `make -B bootstrap` command in the (lowercase m) makefile.

If you would only like to check local changes, just run the `make bootstrap-update` command, which only updates the bootstrap-meals-specific files for faster compiling. 

TODO
----

* pare down files compiled
* test iPad retina
* adjust dependencies so one can just run `make bootstrap`
