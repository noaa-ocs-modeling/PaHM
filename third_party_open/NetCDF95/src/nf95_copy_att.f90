module nf95_copy_att_m

  implicit none

contains


  subroutine nf95_copy_att(ncid_in, varid_in, name, ncid_out, varid_out, ncerr)

    use handle_err_m, only: handle_err
    use netcdf, only: nf90_copy_att

    integer, intent( in):: ncid_in,  varid_in
    character(len=*), intent( in):: name
    integer, intent( in):: ncid_out, varid_out
    integer, intent(out), optional:: ncerr

    ! Variable local to the procedure:
    integer ncerr_not_opt

    !-------------------

    ncerr_not_opt = nf90_copy_att(ncid_in, varid_in, name, ncid_out, varid_out)
    if (present(ncerr)) then
       ncerr = ncerr_not_opt
    else
       call handle_err("nf95_copy_att " // name, ncerr_not_opt, ncid_out)
    end if

  end subroutine nf95_copy_att

end module nf95_copy_att_m
