Changes before version control
==============================

(See [Github page](https://github.com/lguez/NetCDF95) for more recent
changes.)

-   October 12th, 2017.
    -   NetCDF95 is now in Fortran 2003. Uses allocatable dummy
        arguments. The actual argument of `nf95_gw_var` corresponding to
        dummy argument `dimids` must now be allocatable and not pointer.
        The actual argument of `nf95_inquire_variable` corresponding to
        dummy argument `value` must now be allocatable and not pointer.
    -   `find_coord` accepts \"plev\" as standard name.
    -   Added specific procedure `nf95_get_var_2D_FourByteInt` to
        generic `nf95_get_var` and specific `nf95_gw_var_int_2d `to
        generic `nf95_gw_var`.
-   October 10th, 2014. Added `nf95_sync`. Added specific procedure in
    `nf95_put_var`. `nf95_get_var` and `nf95_put_var` now check that :
    the size of arguments `start` and `count_nc` equals the rank of the
    NetCDF variable ; if `count_nc` is absent, the rank of argument
    `values` is lower than or equal to the rank of the NetCDF variable.
-   February 13th, 2013, added specific procedures in `nf95_gw_var` and
    `nf95_put_att`.
-   March 22nd, 2012, added `nf95_inquire_attribute` and `nf95_inquire`.
    Fixed `nf95_get_att`: does not exit if argument `ncerr` is present
    and there is an error picked by `nf90_inquire_attribute`.
-   January 24th, 2012, added specific procedures in `nf95_get_var` and
    `nf95_gw_var`.
-   November 3rd, 2010, added `nf95_get_var`.
