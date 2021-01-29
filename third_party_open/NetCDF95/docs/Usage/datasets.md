---
date: '2019-11-27'
title: 'Datasets & co'
---

Datasets & co
===

This page describles procedures handling a whole dataset, or handling
a combination of NetCDF variables and dimensions.

See the [introduction page](../introduction.md) for an
explanation of the mnemonics \"basic change\", \"interface change\",
\"functionality change\", \"additional procedure\".

`nf95_close`
---

(basic change)

      subroutine nf95_close(ncid, ncerr)
        integer, intent( in) :: ncid
        integer, intent(out), optional :: ncerr

`nf95_create`
---

(basic change)

      subroutine nf95_create(path, cmode, ncid, initialsize, chunksize, ncerr)
        character (len = *), intent(in   ) :: path
        integer,             intent(in   ) :: cmode
        integer,             intent(  out) :: ncid
        integer, optional,   intent(in   ) :: initialsize
        integer, optional,   intent(inout) :: chunksize
        integer, intent(out), optional :: ncerr

`nf95_enddef`
---

(basic change)

      subroutine nf95_enddef(ncid, h_minfree, v_align, v_minfree, r_align, ncerr)
        integer,           intent( in) :: ncid
        integer, optional, intent( in) :: h_minfree, v_align, v_minfree, r_align
        integer, intent(out), optional :: ncerr

`nf95_open`
---

(basic change)

      subroutine nf95_open(path, mode, ncid, chunksize, ncerr)
        character(len=*), intent(in):: path
        integer, intent(in):: mode
        integer, intent(out):: ncid
        integer, intent(inout), optional:: chunksize
        integer, intent(out), optional:: ncerr

`nf95_redef`
---

(basic change)

      subroutine nf95_redef(ncid, ncerr)
        integer, intent( in) :: ncid
        integer, intent(out), optional :: ncerr

`nf95_inquire`
---

(basic change)

      subroutine nf95_inquire(ncid, nDimensions, nVariables, nAttributes, &
           unlimitedDimId, formatNum, ncerr)

        integer,           intent( in) :: ncid
        integer, optional, intent(out) :: nDimensions, nVariables, nAttributes
        integer, optional, intent(out) :: unlimitedDimId, formatNum
        integer, intent(out), optional:: ncerr

`find_coord`
---

(additional procedure)

      subroutine find_coord(ncid, name, dimid, varid, std_name)
      
        integer, intent(in):: ncid

        character(len=*), intent(out), optional:: name ! blanks if not found
        ! The actual character argument should normally have the length
        ! "NF90_MAX_NAME".

        integer, intent(out), optional:: dimid ! 0 if not found
        integer, intent(out), optional:: varid ! 0 if not found

        character(len=*), intent(in):: std_name
        ! standard name : "plev", "latitude", "longitude" or "time"

This procedure returns the name, dimension id or variable id of the
NetCDF coordinate with standard name `std_name`, if such a coordinate
exists. The standard name is only used to know what to search, it is not
used for the search itself. The search itself is done via a string match
on the attribute \"units\". So the NetCDF variable one looks for does
not need to have the attribute `std_name`.
