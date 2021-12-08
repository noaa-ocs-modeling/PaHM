---
date: '2010-11-04'
title: 'Dimensions'
---

Dimensions
===

This page describles procedures handling NetCDF dimensions.

See the [introduction page](../introduction.md) for an
explanation of the mnemonics \"basic change\", \"interface change\",
\"functionality change\", \"additional procedure\".

`nf95_def_dim`
---

(interface change)

      subroutine nf95_def_dim(ncid, name, nclen, dimid, ncerr)
        integer,             intent( in) :: ncid
        character (len = *), intent( in) :: name
        integer,             intent( in) :: nclen
        integer,             intent(out) :: dimid
        integer, intent(out), optional :: ncerr

The argument for the length of the dimension is called `nclen` in
`nf95_def_dim`, instead of `len` in `nf90_def_dim`. `len` is not a good
choice for a variable name because it is the name of a Fortran intrinsic
procedure.

`nf95_inq_dimid`
---

(basic change)

      subroutine nf95_inq_dimid(ncid, name, dimid, ncerr)
        integer,             intent(in) :: ncid
        character (len = *), intent(in) :: name
        integer,             intent(out) :: dimid
        integer, intent(out), optional:: ncerr

`nf95_inquire_dimension`
---

(interface change)

      subroutine nf95_inquire_dimension(ncid, dimid, name, nclen, ncerr)
        integer,                       intent( in) :: ncid, dimid
        character (len = *), optional, intent(out) :: name
        integer,             optional, intent(out) :: nclen
        integer, intent(out), optional:: ncerr

The argument for the length of the dimension is called `nclen` in
`nf95_inquire_dimension`, instead of `len` in `nf90_inquire_dimension`.
`len` is not a good choice for a variable name because it is the name of
a Fortran intrinsic procedure.
