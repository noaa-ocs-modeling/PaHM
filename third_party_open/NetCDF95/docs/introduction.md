---
date: '2019-11-27'
title: Introduction
---

Introduction
===

Two general characteristics of the [Fortran 90 NetCDF
interface](https://www.unidata.ucar.edu/software/netcdf/docs-fortran/f90_The-NetCDF-Fortran-90-Interface-Guide.html)
have motivated us to create a different Fortran interface to NetCDF:

-   Procedures of the Fortran 90 interface are functions with side
    effects. First, they have `intent(out)` arguments. Furthermore,
    there is obviously data transfer inside the procedures. Any data
    transfer inside a function is considered as a side effect. In this
    respect, the Fortran 90 interface mimics the C interface. But
    Fortran has a different programming style than C and frowns upon
    side-effects in functions. See for example Metcalf and Reid (Fortran
    90/95 Explained, 1999, §§ 5.10 and 6.10).
-   The caller of a Fortran 90 interface procedure has to handle the
    error status. The procedures would be friendlier if they behaved
    like the Fortran input/output statements. That is, the error status
    should be an optional output argument. Consider, for example, the
    Fortran formatted `read` statement:

        read([unit=]u, [fmt=]fmt [,iostat=ios] [, err=error-label] &
           [,end=end-label]) [list]

    If the `err`, `end` and `iostat` keywords are not provided, and
    there is a problem in the execution of the `read` statement, then
    execution of the program stops (with an informative error message
    from the compiler). Similarly, we think NetCDF procedures should
    have an optional argument for error status. If the optional argument
    is absent and there is an error, then the NetCDF procedure should
    produce an error message and stop the program. Again, here, the
    Fortran 90 interface looks like it has been made to mimic the C
    interface, and this is not optimal in Fortran.

The NetCDF95 library provides a NetCDF interface that answers these two
concerns.

Beside the change in the two general characteristics above, there are a
few other details in some Fortran 90 interface procedures that we change
in the corresponding NetCDF95 procedures (cf. [description of each
NetCDF95 procedure](Usage/index.md)). We think those
changes make the interface easier to use and/or more secure.

We give a [description of the interface of each NetCDF95
procedure](Usage/index.md). We label each NetCDF95
procedure with one of the following four (mutually exclusive) mnemonics:

basic change
: Means that there is a corresponding procedure in the Fortran 90
interface and only the following three changes have been made:

-   change of the name of the procedure, `nf95_` instead of `nf90_`;
-   subroutine instead of function;
-   additional optional argument `ncerr` for error status.

Thus, for example:

    function nf90_inq_varid(ncid, name, varid)
             integer, intent(in) :: ncid
             character (len = *), intent( in) :: name
             integer, intent(out) :: varid
             integer :: nf90_inq_varid

becomes:

    subroutine nf95_inq_varid(ncid, name, varid, ncerr)
             integer, intent(in) :: ncid
             character (len = *), intent( in) :: name
             integer, intent(out) :: varid
             integer, intent(out), optional:: ncerr

interface change
: Means that there is a corresponding procedure in the Fortran 90
interface, and the interface of the procedure has been changed beyond
the "basic" change described above, but there is no change in
functionality.

Procedures with interface change:
[nf95_def_dim](Usage/dimensions.md),
[nf95_inquire_dimension](Usage/dimensions.md),
[nf95_def_var](Usage/variables.md) and
[nf95_def_var_scalar](Usage/variables.md),
[nf95_inquire_attribute](Usage/attributes.md)

functionality change
: Means that there is a corresponding procedure in the Fortran 90
interface, the interface of the procedure has been changed and the
functionality has also been improved.

Procedures with functionality change:
[nf95_get_var](Usage/variables.md),
[nf95_inquire_variable](Usage/variables.md),
[nf95_put_var](Usage/variables.md),
[nf95_get_att](Usage/attributes.md)

additional procedure
: Means there is no corresponding procedure in the Fortran 90 interface.

Additional procedures: [handle_err](Usage/datasets.md),
[nf95_gw_var](Usage/variables.md),
[find_coord](Usage/datasets.md),
[nf95_get_missing](Usage/attributes.md)
