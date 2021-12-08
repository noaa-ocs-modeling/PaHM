module nf95_inquire_variable_m

  implicit none

contains

  subroutine nf95_inquire_variable(ncid, varid, name, xtype, ndims, dimids, &
       nAtts, ncerr)

    ! In "nf90_inquire_variable", "dimids" is an assumed-size array.
    ! This is not optimal.
    ! We are in the classical case of an array the size of which is
    ! unknown in the calling procedure, before the call.
    ! Here we use a better solution: an allocatable argument array.
    ! This procedure allocates and defines "dimids" if it is present.

    use handle_err_m, only: handle_err
    use netcdf, only: nf90_inquire_variable, nf90_max_var_dims

    integer, intent(in):: ncid, varid
    character(len = *), optional, intent(out):: name
    integer, optional, intent(out) :: xtype, ndims
    integer, optional, allocatable, intent(out) :: dimids(:)
    integer, optional, intent(out) :: nAtts
    integer, intent(out), optional :: ncerr

    ! Variable local to the procedure:
    integer ncerr_not_opt
    integer dimids_local(nf90_max_var_dims)
    integer ndims_not_opt

    !-------------------

    if (present(dimids)) then
       ncerr_not_opt = nf90_inquire_variable(ncid, varid, name, xtype, &
            ndims_not_opt, dimids_local, nAtts)
       dimids = dimids_local(:ndims_not_opt) ! also works if ndims_not_opt == 0
       if (present(ndims)) ndims = ndims_not_opt
    else
       ncerr_not_opt = nf90_inquire_variable(ncid, varid, name, xtype, ndims, &
            nAtts=nAtts)
    end if

    if (present(ncerr)) then
       ncerr = ncerr_not_opt
    else
       call handle_err("nf95_inquire_variable", ncerr_not_opt, ncid, varid)
    end if

  end subroutine nf95_inquire_variable

end module nf95_inquire_variable_m
