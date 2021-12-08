module nf95_open_m

  implicit none

contains

  subroutine nf95_open(path, mode, ncid, chunksize, ncerr)

    use handle_err_m, only: handle_err
    use netcdf, only: nf90_open

    character(len=*), intent(in):: path
    integer, intent(in):: mode
    integer, intent(out):: ncid
    integer, intent(inout), optional:: chunksize
    integer, intent(out), optional:: ncerr

    ! Variable local to the procedure:
    integer ncerr_not_opt

    !-------------------

    ncerr_not_opt = nf90_open(path, mode, ncid, chunksize)
    if (present(ncerr)) then
       ncerr = ncerr_not_opt
    else
       call handle_err("nf95_open " // path, ncerr_not_opt)
    end if

  end subroutine nf95_open

end module nf95_open_m
