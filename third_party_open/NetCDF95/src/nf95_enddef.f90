module nf95_enddef_m

  implicit none

contains

  subroutine nf95_enddef(ncid, h_minfree, v_align, v_minfree, r_align, ncerr)

    use handle_err_m, only: handle_err
    use netcdf, only: nf90_enddef

    integer,           intent( in) :: ncid
    integer, optional, intent( in) :: h_minfree, v_align, v_minfree, r_align
    integer, intent(out), optional :: ncerr

    ! Variable local to the procedure:
    integer ncerr_not_opt

    !-------------------

    ncerr_not_opt = nf90_enddef(ncid, h_minfree, v_align, v_minfree, r_align)
    if (present(ncerr)) then
       ncerr = ncerr_not_opt
    else
       call handle_err("nf95_enddef", ncerr_not_opt, ncid)
    end if

  end subroutine nf95_enddef

end module nf95_enddef_m
