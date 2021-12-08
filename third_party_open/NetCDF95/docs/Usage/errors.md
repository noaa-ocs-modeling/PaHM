---
title: Handling of errors
---

Handling of errors
===

If you call a NetCDF95 procedure without the optional `ncerr`
argument,and some error occurs, then the NetCDF95 procedure will :

-   write to standard output all the information it has, including the
    string produced by `nf90_strerror`;
-   try to close the NetCDF file;
-   stop the program, with an exit status of 1.

For example, if some error occurs within a call to `nf95_inq_varid`,
`nf95_inq_varid` will write to standard output:

    nf95_inq_varid, name = < name of the variable you inquired about >:
    < string produced by nf90_strerror >

`handle_err`
---

(additional procedure)

      subroutine handle_err(message, ncerr, ncid, varid)
        character(len=*), intent(in):: message
        integer, intent(in):: ncerr
        integer, intent(in), optional :: ncid
        integer, intent(in), optional :: varid

This is a public procedure which is also used internally in NetCDF95. If
there is an error (as indicated by the argument `ncerr`) then
`handle_err` prints a message and stops the program. `handle_err` may be
useful after calling procedures of the Fortran 90 interface that have
not been implemented in NetCDF95.

You should include the name of the calling procedure in the `message`
argument. Provide the `ncid` argument if you want `handle_err` to try to
close the file. Provide `varid` if you want `handle_err` to print it.
