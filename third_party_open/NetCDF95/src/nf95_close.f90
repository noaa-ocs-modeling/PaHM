module nf95_close_m

  implicit none

contains

  subroutine nf95_close(ncid, ncerr)

    use handle_err_m, only: handle_err
    use netcdf, only: nf90_close

    integer, intent( in) :: ncid
    integer, intent(out), optional :: ncerr

    ! Variable local to the procedure:
    integer ncerr_not_opt

    !-------------------

    ncerr_not_opt = nf90_close(ncid)
    if (present(ncerr)) then
       ncerr = ncerr_not_opt
    else
       call handle_err("nf95_close", ncerr_not_opt)
    end if

  end subroutine nf95_close

end module nf95_close_m
