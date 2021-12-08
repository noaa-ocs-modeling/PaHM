module nf95_sync_m

  implicit none

contains

  subroutine nf95_sync(ncid, ncerr)

    use handle_err_m, only: handle_err
    use netcdf, only: nf90_sync

    integer, intent( in) :: ncid
    integer, intent(out), optional :: ncerr

    ! Variable local to the procedure:
    integer ncerr_not_opt

    !-------------------

    ncerr_not_opt = nf90_sync(ncid)
    if (present(ncerr)) then
       ncerr = ncerr_not_opt
    else
       call handle_err("nf95_sync", ncerr_not_opt, ncid)
    end if

  end subroutine nf95_sync

end module nf95_sync_m
