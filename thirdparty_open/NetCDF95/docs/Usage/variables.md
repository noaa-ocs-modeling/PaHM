---
date: '2020-1-15'
title: 'Variables'
---

Variables
===

This page describles procedures handling NetCDF variables.

See the [introduction page](../introduction.md) for an explanation of
the mnemonics "basic change", "interface change", "functionality
change", "additional procedure".

Reminder on allocatable arguments
---

Some NetCDF95 procedures below have a dummy argument with attributes
allocatable and `intent(out)`. Recall that in this case the associated
actual argument must also have the allocatable attribute. If it is
allocated before the call, it will automatically be deallocated and
reallocated in the NetCDF95 procedure.

`nf95_def_var` and `nf95_def_var_scalar`
---

(interface change)

      subroutine nf95_def_var_scalar(ncid, name, xtype, varid, ncerr)
        integer,               intent( in) :: ncid
        character (len = *),   intent( in) :: name
        integer,               intent( in) :: xtype
        integer,               intent(out) :: varid
        integer, intent(out), optional:: ncerr

      subroutine nf95_def_var(ncid, name, xtype, dimids, varid, ncerr)
        integer,               intent( in) :: ncid
        character (len = *),   intent( in) :: name
        integer,               intent( in) :: xtype
        integer[, dimension(:)], intent( in) :: dimids
        integer,               intent(out) :: varid
        integer, intent(out), optional:: ncerr

(`dimids` may be either a scalar or a rank 1 array.)

Because of the additional optional argument `ncerr`, the generic
procedure name `nf95_def_var` cannot include the case of a scalar
variable. So there is a specific public procedure `nf95_def_var_scalar`
for this case.

`nf95_get_var`
---

(functionality change)

      subroutine nf95_get_var(ncid, varid, values, start, &
           count_nc, stride, map, new_missing, ncerr)

        integer, intent(in) :: ncid, varid
        any type and any rank, intent(out):: values
        integer, dimension(:), optional, intent(in):: start, count_nc, stride, map
        same type as values, optional, intent(in):: new_missing
        integer, intent(out), optional:: ncerr

The argument for the number of indices selected along each dimension is
called `count_nc` in `nf95_get_var`, instead of `count` in
`nf90_get_var`. `count` is not a good choice for a variable name because
it is the name of a Fortran intrinsic procedure.

`nf95_get_var` checks that :

-   the size of arguments `start` and `count_nc` equals the rank of the
    NetCDF variable ;
-   if `count_nc` is absent, the rank of argument `values` is lower than
    or equal to the rank of the NetCDF variable.

There is an optional argument, `new_missing`, which is not in the
[Fortran 90 NetCDF
interface](https://www.unidata.ucar.edu/software/netcdf/docs-fortran/f90_The-NetCDF-Fortran-90-Interface-Guide.html). If
the argument `new_missing` is present then, in the returned `values`,
the missing value from the NetCDF variable is replaced by
`new_missing`.  This may be useful for example if, in your program,
you need the missing value to be `ieee_value(0., IEEE_QUIET_NAN)`
rather than `NF90_FILL_REAL`.

`nf95_gw_var`
---

(additional procedure)

      subroutine nf95_gw_var(ncid, varid, values)
        integer, intent(in):: ncid
        integer, intent(in):: varid
        any type and kind, any rank, allocatable, intent(out):: values

`nf95_gw_var` stands for "NetCDF 1995 get whole variable". This
procedure reads a whole NetCDF variable into an array. When you want all
the values of the NetCDF variable, this procedure is a shortcut to:
inquiring about the dimension IDs of the variable, inquiring about the
length of each dimension found, allocating the Fortran variable, reading
the values from the NetCDF variable.

The procedure checks that the rank of the argument `values` equals the
rank of the NetCDF variable. The procedure does not require nor check
that the type of `values` corresponds to the type of the NetCDF
variable: conversion will occur if necessary.

See [reminder on allocatable arguments](#reminder-on-allocatable-arguments).

`nf95_inq_varid`
---

(basic change)

      subroutine nf95_inq_varid(ncid, name, varid, ncerr)
        integer,             intent(in) :: ncid
        character (len = *), intent(in) :: name
        integer,             intent(out) :: varid
        integer, intent(out), optional:: ncerr

`nf95_inquire_variable`
---

(functionality change)

      subroutine nf95_inquire_variable(ncid, varid, name, xtype, ndims, dimids, &
           nAtts, ncerr)
        integer, intent(in):: ncid, varid
        character(len = *), optional, intent(out):: name
        integer, optional, intent(out) :: xtype, ndims
        integer, dimension(:), optional, allocatable, intent(out) :: dimids
        integer, optional, intent(out) :: nAtts
        integer, intent(out), optional :: ncerr

In the "new" `nf95_inquire_variable`, the argument `dimids` has the
allocatable attribute. The procedure `nf95_inquire_variable` allocates
and defines `dimids` if the argument is present. `dimids` is defined as
a zero-sized array if the NetCDF variable is a scalar with no dimension.

In the "old" `nf90_inquire_variable`, `dimids` was an assumed-size
array. This was Fortran 77 style, not optimal. You had to allocate
`dimids` in the calling procedure with a maximum possible number of
dimensions. You also needed to call `nf90_inquire_variable` with the
argument `ndims` present, to tell you which part of `dimids` was
defined.

See [reminder on allocatable arguments](#reminder-on-allocatable-arguments).

`nf95_put_var`
---

(functionality change)

      subroutine nf95_put_var(ncid, varid, values, start, &
           count_nc, stride, map, ncerr)
        integer,                         intent(in) :: ncid, varid
        any type and any kind, any rank, intent(in) :: values
        integer, dimension(:), optional, intent(in) :: start, count_nc, stride, map
        integer, intent(out), optional:: ncerr

The argument for the number of indices selected along each dimension is
called `count_nc` in `nf95_put_var`, instead of `count` in
`nf90_put_var`. `count` is not a good choice for a variable name because
it is the name of a Fortran intrinsic procedure.

`nf95_put_var` checks that :

-   the size of arguments `start` and `count_nc` equals the rank of the
    NetCDF variable ;
-   if `count_nc` is absent, the rank of argument `values` is lower than
    or equal to the rank of the NetCDF variable.
