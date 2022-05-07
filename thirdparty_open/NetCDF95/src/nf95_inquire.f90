module nf95_inquire_m

  implicit none

contains


  subroutine nf95_inquire(ncid, nDimensions, nVariables, nAttributes, &
       unlimitedDimId, formatNum, ncerr)
    
    use handle_err_m, only: handle_err
    use netcdf, only: nf90_inquire

    integer,           intent( in) :: ncid
    integer, optional, intent(out) :: nDimensions, nVariables, nAttributes
    integer, optional, intent(out) :: unlimitedDimId, formatNum
    integer, intent(out), optional:: ncerr

    ! Variable local to the procedure:
    integer ncerr_not_opt

    !-------------------

    ncerr_not_opt = nf90_inquire(ncid, nDimensions, nVariables, nAttributes, &
         unlimitedDimId, formatNum)
    if (present(ncerr)) then
       ncerr = ncerr_not_opt
    else
       call handle_err("nf95_inquire", ncerr_not_opt, ncid)
    end if

  end subroutine nf95_inquire

end module nf95_inquire_m
