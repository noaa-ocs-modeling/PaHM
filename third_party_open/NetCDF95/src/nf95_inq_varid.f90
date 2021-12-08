module nf95_inq_varid_m

  implicit none

contains

  subroutine nf95_inq_varid(ncid, name, varid, ncerr)

    use handle_err_m, only: handle_err
    use netcdf, only: nf90_inq_varid

    integer,             intent(in) :: ncid
    character(len=*), intent(in):: name
    integer,             intent(out) :: varid
    integer, intent(out), optional:: ncerr

    ! Variable local to the procedure:
    integer ncerr_not_opt

    !-------------------

    ncerr_not_opt = nf90_inq_varid(ncid, name, varid)
    if (present(ncerr)) then
       ncerr = ncerr_not_opt
    else
       call handle_err("nf95_inq_varid, name = " // name, ncerr_not_opt, ncid)
    end if

  end subroutine nf95_inq_varid

end module nf95_inq_varid_m
