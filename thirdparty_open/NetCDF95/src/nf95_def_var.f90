module nf95_def_var_m

  ! The generic procedure name "nf90_def_var" applies to
  ! "nf90_def_var_Scalar" but we cannot apply the generic procedure name
  ! "nf95_def_var" to "nf95_def_var_scalar" because of the additional
  ! optional argument.
  ! "nf95_def_var_scalar" cannot be distinguished from "nf95_def_var_oneDim".

  implicit none

  interface nf95_def_var
    module procedure nf95_def_var_oneDim, nf95_def_var_ManyDims
  end interface

  private
  public nf95_def_var, nf95_def_var_scalar

contains

  subroutine nf95_def_var_scalar(ncid, name, xtype, varid, ncerr)

    use netcdf, only: nf90_def_var
    use handle_err_m, only: handle_err

    integer,               intent( in) :: ncid
    character (len = *),   intent( in) :: name
    integer,               intent( in) :: xtype
    integer,               intent(out) :: varid
    integer, intent(out), optional:: ncerr

    ! Variable local to the procedure:
    integer ncerr_not_opt

    !-------------------

    ncerr_not_opt = nf90_def_var(ncid, name, xtype, varid)
    if (present(ncerr)) then
       ncerr = ncerr_not_opt
    else
       call handle_err("nf95_def_var_scalar, name =  " // name, &
            ncerr_not_opt, ncid)
    end if

  end subroutine nf95_def_var_scalar

  !***********************

  subroutine nf95_def_var_oneDim(ncid, name, xtype, dimids, varid, ncerr)

    use netcdf, only: nf90_def_var
    use handle_err_m, only: handle_err

    integer,               intent( in) :: ncid
    character (len = *),   intent( in) :: name
    integer,               intent( in) :: xtype
    integer,               intent( in) :: dimids
    integer,               intent(out) :: varid
    integer, intent(out), optional:: ncerr

    ! Variable local to the procedure:
    integer ncerr_not_opt

    !-------------------

    ncerr_not_opt = nf90_def_var(ncid, name, xtype, dimids, varid)
    if (present(ncerr)) then
       ncerr = ncerr_not_opt
    else
       call handle_err("nf95_def_var_oneDim, name =  " // name, &
            ncerr_not_opt, ncid)
    end if

  end subroutine nf95_def_var_oneDim

  !***********************

  subroutine nf95_def_var_ManyDims(ncid, name, xtype, dimids, varid, ncerr)

    use netcdf, only: nf90_def_var
    use handle_err_m, only: handle_err

    integer,               intent( in) :: ncid
    character (len = *),   intent( in) :: name
    integer,               intent( in) :: xtype
    integer, dimension(:), intent( in) :: dimids
    integer,               intent(out) :: varid
    integer, intent(out), optional:: ncerr

    ! Variable local to the procedure:
    integer ncerr_not_opt

    !-------------------

    ncerr_not_opt = nf90_def_var(ncid, name, xtype, dimids, varid)
    if (present(ncerr)) then
       ncerr = ncerr_not_opt
    else
       call handle_err("nf95_def_var_ManyDims, name = " // name, &
            ncerr_not_opt, ncid)
    end if

  end subroutine nf95_def_var_ManyDims

end module nf95_def_var_m
