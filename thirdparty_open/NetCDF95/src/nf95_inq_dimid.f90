module nf95_inq_dimid_m

  implicit none

contains

  subroutine nf95_inq_dimid(ncid, name, dimid, ncerr)

    use handle_err_m, only: handle_err
    use netcdf, only: nf90_inq_dimid

    integer,             intent(in) :: ncid
    character (len = *), intent(in) :: name
    integer,             intent(out) :: dimid
    integer, intent(out), optional:: ncerr

    ! Variable local to the procedure:
    integer ncerr_not_opt

    !-------------------

    ncerr_not_opt = nf90_inq_dimid(ncid, name, dimid)
    if (present(ncerr)) then
       ncerr = ncerr_not_opt
    else
       call handle_err("nf95_inq_dimid " // name, ncerr_not_opt, ncid)
    end if

  end subroutine nf95_inq_dimid

end module nf95_inq_dimid_m
