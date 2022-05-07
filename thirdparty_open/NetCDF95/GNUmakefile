# This is a makefile for GNU make.
# This makefile builds the library NetCDF95.

# 1. Source files

sources := $(shell cat file_list)

# 2. Objects and library

objects := $(sources:.f90=.o)
lib = libnetcdf95.a
ARFLAGS = rvU

# 3. Compiler-dependent part

netcdf_include_dir = /usr/include
FC = gfortran
FFLAGS = -O2 -I${netcdf_include_dir}

# 4. Rules

%.o: %.f90
	$(COMPILE.f) $(OUTPUT_OPTION) $<

.PHONY: all clean depend
all: ${lib}
${lib}: ${lib}(${objects})

depend depend.mk:
	makedepf90 -free -Wmissing -Wconfused -nosrc -u netcdf -u typesizes ${sources} >depend.mk

clean:
	rm -f ${lib} ${objects}

include depend.mk
