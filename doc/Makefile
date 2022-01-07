###########################################################################
### Author:  Panagiotis Velissariou <panagiotis.velissariou@noaa.gov>
###
### Version - 1.0 Tue 04 Jan 2022
###########################################################################

.PHONY: mathjax js images doxygen

export DOXYGEN_OUTPUT_DIRECTORY := ../pahmdoc
export DOXYGEN_SOURCE_DIRECTORY := ../src
export DOXYGEN_PAHM_VERSION := 1.0.0
export DOXYGEN_IMAGE_PATH := $(DOXYGEN_OUTPUT_DIRECTORY)/html
export DOXYGEN_STRIP_PATH := $(shell cd $(PWD)/..; pwd)

#####
# If the MATHJAX_RELPATH variable is empty then Doxygen uses the default value
# that points to the MathJax Content Delivery Network so there is no need
# for installing MathJax locally (this is not recommended though).
# PaHM includes a local copy of MATHJAX and to activate it supply
# a value for the location of MATHJAX by uncommenting the first line below.
# IMPORTANT: MATHJAX_RELPATH is always relative to the html directory.
#####
#export DOXYGEN_MATHJAX_RELPATH := ./mathjax
export DOXYGEN_MATHJAX_RELPATH :=

define MkDir
	+@[ -d $1 ] || mkdir -p $1
endef

#all: mathjax js images doxygen
ifeq ($(DOXYGEN_MATHJAX_RELPATH),)
  all: doxygen
else
  all: mathjax doxygen

  mathjax:
	$(call MkDir,$(DOXYGEN_IMAGE_PATH))
	tar jxf mathjax.tar.bz2 -C $(DOXYGEN_IMAGE_PATH)
endif

#js:
#	$(call MkDir,$(DOXYGEN_IMAGE_PATH))
#	cp -r ../../js $(DOXYGEN_IMAGE_PATH)

#images:
#	$(call MkDir,$(DOXYGEN_IMAGE_PATH))
#	cp images/* $(DOXYGEN_IMAGE_PATH)/

doxygen:
	$(call MkDir,$(DOXYGEN_OUTPUT_DIRECTORY))
#	./makehtmlfooter.sh > htmlfooter.html
	doxygen

clean:
	rm -rf $(DOXYGEN_OUTPUT_DIRECTORY)
