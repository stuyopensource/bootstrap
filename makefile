BOOTSTRAP_LESS = ./less/bootstrap.less
BOOTSTRAP_RESPONSIVE_LESS = ./less/responsive.less
BOOTSTRAP_STUY_LESS = ./stuy.less
DATE=$(shell date +%I:%M%p)
CHECK=\033[32m✔\033[39m

bootstrap:
	mkdir -p bootstrap/img
	mkdir -p bootstrap/css
	mkdir -p bootstrap/js
	mkdir -p bootstrap/ttf
	cp img/* bootstrap/img/
	recess --compile ${BOOTSTRAP_LESS} > bootstrap/css/bootstrap.css
	recess --compress ${BOOTSTRAP_LESS} > bootstrap/css/bootstrap.min.css
	recess --compile ${BOOTSTRAP_RESPONSIVE_LESS} > bootstrap/css/bootstrap-responsive.css
	recess --compress ${BOOTSTRAP_RESPONSIVE_LESS} > bootstrap/css/bootstrap-responsive.min.css
	recess --compile ${BOOTSTRAP_STUY_LESS} > bootstrap/css/bootstrap-stuy.css
	recess --compress ${BOOTSTRAP_STUY_LESS} > bootstrap/css/bootstrap-stuy.min.css	#cat js/bootstrap-transition.js js/bootstrap-alert.js js/bootstrap-button.js js/bootstrap-carousel.js js/bootstrap-collapse.js js/bootstrap-dropdown.js js/bootstrap-modal.js js/bootstrap-tooltip.js js/bootstrap-popover.js js/bootstrap-scrollspy.js js/bootstrap-tab.js js/bootstrap-typeahead.js > bootstrap/js/bootstrap.js
	#uglifyjs -nc bootstrap/js/bootstrap.js > bootstrap/js/bootstrap.min.tmp.js
	#echo "/*!\n* Bootstrap.js by @fat & @mdo\n* Copyright 2012 Twitter, Inc.\n* http://www.apache.org/licenses/LICENSE-2.0.txt\n*/" > bootstrap/js/copyright.js
	#cat bootstrap/js/copyright.js bootstrap/js/bootstrap.min.tmp.js > bootstrap/js/bootstrap.min.js
	#rm bootstrap/js/copyright.js bootstrap/js/bootstrap.min.tmp.js

bootstrap-stuy:
	recess --compile ${BOOTSTRAP_STUY_LESS} > bootstrap/css/bootstrap-stuy.css
	recess --compress ${BOOTSTRAP_STUY_LESS} > bootstrap/css/bootstrap-stuy.min.css
