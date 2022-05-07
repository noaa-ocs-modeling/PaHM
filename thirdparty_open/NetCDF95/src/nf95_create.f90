module nf95_create_m

  implicit none

contains

  subroutine nf95_create(path, cmode, ncid, initialsize, chunksize, ncerr)

    use handle_err_m, only: handle_err
    use netcdf, only: nf90_create

    character (len = *), intent(in   ) :: path
    integer,             intent(in   ) :: cmode
    integer,             intent(  out) :: ncid
    integer, optional,   intent(in   ) :: initialsize
    integer, optional,   intent(inout) :: chunksize
    integer, intent(out), optional :: ncerr

    ! Variable local to the procedure:
    integer ncerr_not_opt

    !-------------------

    ncerr_not_opt = nf90_create(path, cmode, ncid, initialsize, chunksize)
    if (present(ncerr)) then
       ncerr = ncerr_not_opt
    else
       call handle_err("nf95_create " // path, ncerr_not_opt)
    end if

  end subroutine nf95_create

end module nf95_create_m
