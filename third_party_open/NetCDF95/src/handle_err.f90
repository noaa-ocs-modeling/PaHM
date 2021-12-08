module handle_err_m

  implicit none

contains

  subroutine handle_err(message, ncerr, ncid, varid)

    use netcdf, only: nf90_strerror, nf90_noerr, nf90_close

    character(len=*), intent(in):: message
    ! (should include name of calling procedure)

    integer, intent(in):: ncerr

    integer, intent(in), optional :: ncid
    ! (Provide this argument if you want "handle_err" to try to close
    ! the file.)

    integer, intent(in), optional :: varid

    ! Variable local to the procedure:
    integer ncerr_close

    !-------------------

    if (ncerr /= nf90_noerr) then
       print *, message, ":"
       if (present(varid)) print *, "varid = ", varid
       print *, trim(nf90_strerror(ncerr))
       if (present(ncid)) then
          ! Try to close, to leave the file in a consistent state:
          ncerr_close = nf90_close(ncid)
          ! (do not call "nf95_close", we do not want to recurse)
          if (ncerr_close /= nf90_noerr) then
             print *, "nf90_close:"
             print *, trim(nf90_strerror(ncerr_close))
          end if
       end if
       stop 1
    end if

  end subroutine handle_err

end module handle_err_m
