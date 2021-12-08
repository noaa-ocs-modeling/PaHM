module nf95_put_att_m

  implicit none

  interface nf95_put_att
     module procedure nf95_put_att_text, nf95_put_att_one_FourByteInt, &
          nf95_put_att_one_FourByteReal
  end interface

  private
  public nf95_put_att

contains

  subroutine nf95_put_att_text(ncid, varid, name, values, ncerr)

    use netcdf, only: nf90_put_att
    use handle_err_m, only: handle_err

    integer, intent(in) :: ncid, varid
    character(len = *), intent(in) :: name
    character(len = *), intent(in) :: values
    integer, intent(out), optional:: ncerr

    ! Variable local to the procedure:
    integer ncerr_not_opt

    !-------------------

    ncerr_not_opt = nf90_put_att(ncid, varid, name, values)
    if (present(ncerr)) then
       ncerr = ncerr_not_opt
    else
       call handle_err("nf95_put_att_text " // trim(name), ncerr_not_opt, &
            ncid, varid)
    end if

  end subroutine nf95_put_att_text

  !************************************

  subroutine nf95_put_att_one_FourByteInt(ncid, varid, name, values, ncerr)

    use netcdf, only: nf90_put_att
    use handle_err_m, only: handle_err
    use typesizes, only: FourByteInt

    integer, intent(in) :: ncid, varid
    character(len = *), intent(in) :: name
    integer(kind = FourByteInt), intent(in) :: values
    integer, intent(out), optional:: ncerr

    ! Variable local to the procedure:
    integer ncerr_not_opt

    !-------------------

    ncerr_not_opt = nf90_put_att(ncid, varid, name, values)
    if (present(ncerr)) then
       ncerr = ncerr_not_opt
    else
       call handle_err("nf95_put_att_one_FourByteInt " // trim(name), &
            ncerr_not_opt, ncid, varid)
    end if

  end subroutine nf95_put_att_one_FourByteInt

  !************************************

  subroutine nf95_put_att_one_FourByteReal(ncid, varid, name, values, ncerr)

    use netcdf, only: nf90_put_att
    use handle_err_m, only: handle_err
    use typesizes, only: FourByteReal

    integer, intent(in) :: ncid, varid
    character(len = *), intent(in) :: name
    real(kind = FourByteReal), intent(in) :: values
    integer, intent(out), optional:: ncerr

    ! Variable local to the procedure:
    integer ncerr_not_opt

    !-------------------

    ncerr_not_opt = nf90_put_att(ncid, varid, name, values)
    if (present(ncerr)) then
       ncerr = ncerr_not_opt
    else
       call handle_err("nf95_put_att_one_FourByteReal " // trim(name), &
            ncerr_not_opt, ncid, varid)
    end if

  end subroutine nf95_put_att_one_FourByteReal

end module nf95_put_att_m
