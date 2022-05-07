module find_coord_m

  implicit none

contains

  subroutine find_coord(ncid, name, dimid, varid, std_name)

    ! This procedure returns the name, dimension id or variable id of
    ! the NetCDF coordinate with standard name "std_name", if such a
    ! coordinate exists. The standard name is only used to know what
    ! to search, it is not used for the search itself. The search
    ! itself is done via a string match on the attribute "units". So
    ! the NetCDF variable one looks for does not need to have the
    ! attribute "std_name".

    use netcdf, only: NF90_MAX_NAME, NF90_NOERR
    use nf95_get_att_m, only: nf95_get_att
    use nf95_inq_varid_m, only: nf95_inq_varid
    use nf95_inquire_dimension_m, only: nf95_inquire_dimension
    use nf95_inquire_m, only: nf95_inquire
    use nf95_inquire_variable_m, only: nf95_inquire_variable

    integer, intent(in):: ncid

    character(len=*), intent(out), optional:: name ! blanks if not found
    ! The actual character argument should normally have the length
    ! "NF90_MAX_NAME".

    integer, intent(out), optional:: dimid ! 0 if not found
    integer, intent(out), optional:: varid ! 0 if not found

    character(len=*), intent(in):: std_name
    ! standard name : "plev", "latitude", "longitude" or "time"

    ! Variables local to the procedure:

    character(len=13), allocatable:: units(:)
    logical exact ! "units" must be matched exactly

    integer ncerr, nDimensions, dimid_local, varid_local
    character(len=NF90_MAX_NAME) name_local
    integer, allocatable:: dimids(:)
    character(len=80) values
    logical found

    !----------------------------------------------

    select case (std_name)
    case("longitude")
       allocate(units(1))
       units(1)="degrees_east"
       exact=.true.
    case("latitude")
       allocate(units(1))
       units(1)="degrees_north"
       exact=.true.
    case("time")
       allocate(units(1))
       units(1)=" since"
       exact=.false.
    case("plev")
       allocate(units(4))
       units = ["Pa           ", "hPa          ", "millibar     ", &
            "mbar         "]
       exact = .true.
    case default
       print *, "find_coord: bad value of std_name"
       print *, "std_name = ", std_name
       stop 1
    end select

    call nf95_inquire(ncid, nDimensions)
    dimid_local = 0
    found = .false.

    ! Loop on dimensions:
    do while (.not. found .and. dimid_local < nDimensions)
       dimid_local = dimid_local + 1
       call nf95_inquire_dimension(ncid, dimid_local, name_local)
       call nf95_inq_varid(ncid, name_local, varid_local, ncerr)
       if (ncerr == NF90_NOERR) then
          call nf95_inquire_variable(ncid, varid_local, dimids=dimids)
          if (size(dimids) == 1) then
             if (dimids(1) == dimid_local) then
                ! We have found a coordinate
                call nf95_get_att(ncid, varid_local, "units", values, ncerr)
                if (ncerr == NF90_NOERR)then
                   if (exact) then
                      found = any(values == units)
                   else
                      found = index(values, trim(units(1))) /= 0
                   end if
                end if
             end if
          end if
       end if
    end do

    if (found) then
       if (present(name)) name = name_local
       if (present(dimid)) dimid = dimid_local
       if (present(varid)) varid = varid_local
    else
       if (present(name)) name = ""
       if (present(dimid)) dimid = 0
       if (present(varid)) varid = 0
    end if

  end subroutine find_coord

end module find_coord_m
