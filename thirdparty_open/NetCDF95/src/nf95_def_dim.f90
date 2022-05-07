module nf95_def_dim_m

  implicit none

contains

  subroutine nf95_def_dim(ncid, name, nclen, dimid, ncerr)

    use handle_err_m, only: handle_err
    use netcdf, only: nf90_def_dim

    integer,             intent( in) :: ncid
    character (len = *), intent( in) :: name
    integer,             intent( in) :: nclen
    integer,             intent(out) :: dimid
    integer, intent(out), optional :: ncerr

    ! Variable local to the procedure:
    integer ncerr_not_opt

    !-------------------

    ncerr_not_opt = nf90_def_dim(ncid, name, nclen, dimid)
    if (present(ncerr)) then
       ncerr = ncerr_not_opt
    else
       call handle_err("nf95_def_dim " // name, ncerr_not_opt, ncid)
    end if

  end subroutine nf95_def_dim

end module nf95_def_dim_m
