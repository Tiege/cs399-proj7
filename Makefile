#
#  Compile web-site assets
#
#  Largely this means concatenating and 'minifying' some javascript and css 
#  assets to reduce browser load time (fewer http requests). 
#

# Configuration options
#
# On most platforms: 
#PYVENV = pyvenv-3.4
# On ix (with bug in ubuntu)
PYVENV = pyvenv-3.4 --without-pip


#
# Simple Makefile for first Flask project
#

##
## Except for installation, all commands should be run with 
## the virtual environment active
##

# Configuration 
#
PYVENV = /usr/bin/env pyvenv-3.4  # This is the version in ix.cs.uoregon.edu

##
## Install in a new environment:
##     We need to rebuild the Python environment to match
##     
install:
	# pyvenv-3.4 env ### BUGGY on ix
	echo "pyvenv without PIP to work around ubuntu bug"
	$(PYVENV) --without-pip env
	echo ""
	(.  env/bin/activate; curl https://bootstrap.pypa.io/get-pip.py | python)
	(.  env/bin/activate; pip install -r requirements.txt)

dist:
	pip freeze >requirements.txt

