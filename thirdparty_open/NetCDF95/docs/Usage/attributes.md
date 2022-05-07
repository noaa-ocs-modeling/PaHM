---
date: '2019-11-27'
title: Attributes
---

Attributes
===

This page describles procedures handling NetCDF attributes.

See the [introduction page](../introduction.md) for an explanation of
the mnemonics "basic change", "interface change", "functionality
change", "additional procedure".

`nf95_copy_att`
---

(basic change)

      subroutine nf95_copy_att(ncid_in, varid_in, name, ncid_out, varid_out, ncerr)
        integer, intent( in):: ncid_in,  varid_in
        character(len=*), intent( in):: name
        integer, intent( in):: ncid_out, varid_out
        integer, intent(out), optional:: ncerr

`nf95_get_att`
---

(functionality change)

      subroutine nf95_get_att(ncid, varid, name, values, ncerr)
        integer,                          intent( in) :: ncid, varid
        character(len = *),               intent( in) :: name
        character(len = *), integer or real(any kind), intent(out) :: values
        integer, intent(out), optional:: ncerr

`nf95_get_att` is more secure than `nf90_get_att`. For an argument
`values` of type `character`, `nf95_get_att` checks that the `values`
argument is long enough and removes the null terminator, if any. For a
numeric scalar `values` argument, `nf95_get_att` checks that the
attribute contains a single value.

`nf95_put_att`
---

(basic change)

      subroutine nf95_put_att(ncid, varid, name, values, ncerr)
        integer, intent(in) :: ncid, varid
        character(len = *), intent(in) :: name
        character(len = *) or integer(any kind) or real(any kind), intent(in) :: values
        integer, intent(out), optional:: ncerr

`nf95_inquire_attribute`
---

(interface change)

      subroutine nf95_inquire_attribute(ncid, varid, name, xtype, nclen, attnum, &
           ncerr)

        integer,             intent( in)           :: ncid, varid
        character (len = *), intent( in)           :: name
        integer,             intent(out), optional :: xtype, nclen, attnum
        integer, intent(out), optional:: ncerr

The argument for the number of values or characters of the attribute is
called `nclen` in `nf95_inquire_attribute`, instead of `len` in
`nf90_inquire_attribute`. `len` is not a good choice for a variable name
because it is the name of a Fortran intrinsic procedure.

`nf95_get_missing`
---

(additional procedure)

      subroutine nf95_get_missing(ncid, varid, missing)

        integer, intent(in)::  ncid, varid
        real or double precision, intent(out):: missing ! missing or fill value

Returns the `missing_value` attribute if present, else the `_FillValue`
if present, else `nf90_fill_real` or `nf90_fill_double`.
