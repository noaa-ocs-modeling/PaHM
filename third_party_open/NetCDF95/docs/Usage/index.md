---
date: '2012-01-20'
title: Linking with NetCDF95
---

Linking with NetCDF95
===

If your program uses NetCDF95, it will require `netcdf95.mod` (and
possibly other `.mod` files produced by compilation of NetCDF95) at
compile time and `libnetcdf95.a` at link time. For most compilers, the
options you will need to add are:

    -I$netcdf95_inc_dir

at compile time and:

    -L$netcdf95_lib_dir -lnetcdf95

at link time, where `$netcdf95_inc_dir` is the name of the directory
where you put `.mod` files produced by compilation of NetCDF95 and
`$netcdf95_lib_dir` is the name of the directory where you put
`libnetcdf95.a`. For most compilers, you will need to place the option
`-lnetcdf95` before the options `-lnetcdff -lnetcdf` for the NetCDF
library. Note that NetCDF95 uses the Fortran 90 NetCDF interface, so you
must keep the options you would use for direct access to the Fortran 90
NetCDF interface.
