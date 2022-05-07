# This is a makefile for GNU make.

# 1. Executable file

execut = test_netcdf95

# 2. Compiler-dependent part

FC = gfortran
FFLAGS = -ffree-form -I/usr/include -I..
LDLIBS = -L.. -lnetcdf95 -lnetcdff

# 3. Rules

.PHONY: all clean
all: ${execut}

clean:
	-rm ${execut}
