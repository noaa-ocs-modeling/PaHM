module check_start_count_m

  implicit none

  private check_one_arg

contains

  subroutine check_start_count(name_calling, ncid, varid, start, count_nc, &
       rank_values)

    ! This procedure checks that:

    ! - the size of start and count_nc equals the rank of the NetCDF variable;

    ! - if count_nc is absent, the rank of values is lower than or
    ! equal to the rank of the NetCDF variable.

    use nf95_close_m, only: nf95_close
    use nf95_inquire_variable_m, only: nf95_inquire_variable
    use netcdf, only: nf90_noerr

    character(len=*), intent(in):: name_calling ! name of calling procedure
    integer, intent(in):: ncid, varid
    integer, optional, intent(in):: start(:), count_nc(:)
    integer, intent(in):: rank_values ! rank of argument "values"

    ! Variables local to the procedure:
    integer ncerr_not_opt, ndims

    !-------------------

    call nf95_inquire_variable(ncid, varid, ndims=ndims, ncerr=ncerr_not_opt)
    if (ncerr_not_opt == nf90_noerr) then
       call check_one_arg(name_calling, "start", ncid, varid, ndims, start)
       call check_one_arg(name_calling, "count_nc", ncid, varid, ndims, &
            count_nc)
       if (.not. present(count_nc) .and. rank_values > ndims) then
          print *, name_calling, ":"
          print *, "varid = ", varid
          print *, "Argument count_nc is absent and rank of argument values " &
               // "is greater than rank of NetCDF variable"
          print *, "rank of argument values: ", rank_values
          print *, "rank of NetCDF variable: ", ndims
          call nf95_close(ncid)
          stop 1
       end if
    end if

  end subroutine check_start_count

  !**************************************************************

  subroutine check_one_arg(name_calling, arg_name, ncid, varid, ndims, &
       checked_arg)

    use nf95_close_m, only: nf95_close

    character(len=*), intent(in):: name_calling ! name of calling procedure
    character(len=*), intent(in):: arg_name ! name of checked argument
    integer, intent(in):: ncid, varid, ndims
    integer, optional, intent(in):: checked_arg(:) ! start or count_nc

    !-------------------

    if (present(checked_arg)) then
       if (size(checked_arg) /= ndims) then
          print *, name_calling, ":"
          print *, "varid = ", varid
          print *, 'size of ' // arg_name // ' does not match rank of ' &
               // 'NetCDF variable'
          print *, 'size of ' // arg_name // " = ", size(checked_arg)
          print *, "rank of NetCDF variable: ", ndims
          call nf95_close(ncid)
          stop 1
       end if
    end if

  end subroutine check_one_arg

end module check_start_count_m
