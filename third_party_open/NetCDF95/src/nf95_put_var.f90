module nf95_put_var_m

  use netcdf, only: nf90_put_var
  use handle_err_m, only: handle_err
  use check_start_count_m, only: check_start_count

  implicit none

  interface nf95_put_var
     module procedure nf95_put_var_FourByteReal, nf95_put_var_FourByteInt, &
          nf95_put_var_1D_FourByteReal, nf95_put_var_1D_FourByteInt, &
          nf95_put_var_1D_EightByteReal, nf95_put_var_2D_FourByteReal, &
          nf95_put_var_2D_FourByteInt, nf95_put_var_2D_EightByteReal, &
          nf95_put_var_3D_FourByteReal, nf95_put_var_3D_EightByteReal, &
          nf95_put_var_4D_FourByteReal, nf95_put_var_4D_EightByteReal
  end interface

  private
  public nf95_put_var

contains

  subroutine nf95_put_var_FourByteReal(ncid, varid, values, start, ncerr)

    use typesizes, only: FourByteReal

    integer, intent(in) :: ncid, varid
    real(kind = FourByteReal), intent(in) :: values
    integer, dimension(:), optional, intent(in) :: start
    integer, intent(out), optional:: ncerr

    ! Variable local to the procedure:
    integer ncerr_not_opt

    !-------------------

    call check_start_count("nf95_put_var_FourByteReal", ncid, varid, start, &
         rank_values=0)

    ncerr_not_opt = nf90_put_var(ncid, varid, values, start)
    if (present(ncerr)) then
       ncerr = ncerr_not_opt
    else
       call handle_err("nf95_put_var_FourByteReal", ncerr_not_opt, ncid, &
            varid)
    end if

  end subroutine nf95_put_var_FourByteReal

  !***********************

  subroutine nf95_put_var_FourByteInt(ncid, varid, values, start, ncerr)

    use typesizes, only: FourByteInt

    integer, intent(in) :: ncid, varid
    integer(kind = FourByteInt), intent(in) :: values
    integer, dimension(:), optional, intent(in) :: start
    integer, intent(out), optional:: ncerr

    ! Variable local to the procedure:
    integer ncerr_not_opt

    !-------------------

    call check_start_count("nf95_put_var_FourByteInt", ncid, varid, start, &
         rank_values=0)

    ncerr_not_opt = nf90_put_var(ncid, varid, values, start)
    if (present(ncerr)) then
       ncerr = ncerr_not_opt
    else
       call handle_err("nf95_put_var_FourByteInt", ncerr_not_opt, ncid, &
            varid)
    end if

  end subroutine nf95_put_var_FourByteInt

  !***********************

  subroutine nf95_put_var_1D_FourByteReal(ncid, varid, values, start, &
       count_nc, stride, map, ncerr)

    use typesizes, only: FourByteReal

    integer,                         intent(in) :: ncid, varid
    real(kind = FourByteReal), intent(in) :: values(:)
    integer, dimension(:), optional, intent(in) :: start, count_nc, stride, map
    integer, intent(out), optional:: ncerr

    ! Variable local to the procedure:
    integer ncerr_not_opt

    !-------------------

    call check_start_count("nf95_put_var_1D_FourByteReal", ncid, varid, &
         start, count_nc, rank_values=1)

    ncerr_not_opt = nf90_put_var(ncid, varid, values, start, count_nc, &
         stride, map)
    if (present(ncerr)) then
       ncerr = ncerr_not_opt
    else
       call handle_err("nf95_put_var_1D_FourByteReal", ncerr_not_opt, ncid, &
            varid)
    end if

  end subroutine nf95_put_var_1D_FourByteReal

  !***********************

  subroutine nf95_put_var_1D_FourByteInt(ncid, varid, values, start, &
       count_nc, stride, map, ncerr)

    use typesizes, only: FourByteInt

    integer,                         intent(in) :: ncid, varid
    integer(kind = FourByteInt), intent(in) :: values(:)
    integer, dimension(:), optional, intent(in) :: start, count_nc, stride, map
    integer, intent(out), optional:: ncerr

    ! Variable local to the procedure:
    integer ncerr_not_opt

    !-------------------

    call check_start_count("nf95_put_var_1D_FourByteInt", ncid, varid, start, &
         count_nc, rank_values=1)

    ncerr_not_opt = nf90_put_var(ncid, varid, values, start, count_nc, &
         stride, map)
    if (present(ncerr)) then
       ncerr = ncerr_not_opt
    else
       call handle_err("nf95_put_var_1D_FourByteInt", ncerr_not_opt, ncid, &
            varid)
    end if

  end subroutine nf95_put_var_1D_FourByteInt

  !***********************

  subroutine nf95_put_var_1D_EightByteReal(ncid, varid, values, start, &
       count_nc, stride, map, ncerr)

    use typesizes, only: eightByteReal

    integer,                         intent(in) :: ncid, varid
    real (kind = EightByteReal),     intent(in) :: values(:)
    integer, dimension(:), optional, intent(in):: start, count_nc, stride, map
    integer, intent(out), optional:: ncerr

    ! Variable local to the procedure:
    integer ncerr_not_opt

    !-------------------

    call check_start_count("nf95_put_var_1D_EightByteReal", ncid, varid, &
         start, count_nc, rank_values=1)

    ncerr_not_opt = nf90_put_var(ncid, varid, values, start, count_nc, &
         stride, map)
    if (present(ncerr)) then
       ncerr = ncerr_not_opt
    else
       call handle_err("nf95_put_var_1D_eightByteReal", ncerr_not_opt, ncid, &
            varid)
    end if

  end subroutine nf95_put_var_1D_EightByteReal

  !***********************

  subroutine nf95_put_var_2D_FourByteReal(ncid, varid, values, start, &
       count_nc, stride, map, ncerr)

    use typesizes, only: FourByteReal

    integer,                         intent(in) :: ncid, varid
    real (kind = FourByteReal), intent(in) :: values(:, :)
    integer, dimension(:), optional, intent(in) :: start, count_nc, stride, map
    integer, intent(out), optional:: ncerr

    ! Variable local to the procedure:
    integer ncerr_not_opt

    !-------------------

    call check_start_count("nf95_put_var_2D_FourByteReal", ncid, varid, &
         start, count_nc, rank_values=2)

    ncerr_not_opt = nf90_put_var(ncid, varid, values, start, count_nc, &
         stride, map)
    if (present(ncerr)) then
       ncerr = ncerr_not_opt
    else
       call handle_err("nf95_put_var_2D_FourByteReal", ncerr_not_opt, ncid, &
            varid)
    end if

  end subroutine nf95_put_var_2D_FourByteReal

  !***********************

  subroutine nf95_put_var_2D_FourByteint(ncid, varid, values, start, &
       count_nc, stride, map, ncerr)

    use typesizes, only: FourByteInt

    integer,                         intent(in) :: ncid, varid
    integer(kind = FourByteInt), intent(in) :: values(:, :)
    integer, dimension(:), optional, intent(in) :: start, count_nc, stride, map
    integer, intent(out), optional:: ncerr

    ! Variable local to the procedure:
    integer ncerr_not_opt

    !-------------------

    call check_start_count("nf95_put_var_2D_FourByteInt", ncid, varid, &
         start, count_nc, rank_values=2)

    ncerr_not_opt = nf90_put_var(ncid, varid, values, start, count_nc, &
         stride, map)
    if (present(ncerr)) then
       ncerr = ncerr_not_opt
    else
       call handle_err("nf95_put_var_2D_FourByteInt", ncerr_not_opt, ncid, &
            varid)
    end if

  end subroutine nf95_put_var_2D_FourByteint

  !***********************

  subroutine nf95_put_var_2D_EightByteReal(ncid, varid, values, start, &
       count_nc, stride, map, ncerr)

    use typesizes, only: EightByteReal

    integer,                         intent(in) :: ncid, varid
    real (kind = EightByteReal), intent(in) :: values(:, :)
    integer, dimension(:), optional, intent(in) :: start, count_nc, stride, map
    integer, intent(out), optional:: ncerr

    ! Variable local to the procedure:
    integer ncerr_not_opt

    !-------------------

    call check_start_count("nf95_put_var_2D_EightByteReal", ncid, varid, &
         start, count_nc, rank_values=2)

    ncerr_not_opt = nf90_put_var(ncid, varid, values, start, count_nc, &
         stride, map)
    if (present(ncerr)) then
       ncerr = ncerr_not_opt
    else
       call handle_err("nf95_put_var_2D_EightByteReal", ncerr_not_opt, ncid, &
            varid)
    end if

  end subroutine nf95_put_var_2D_EightByteReal

  !***********************

  subroutine nf95_put_var_3D_FourByteReal(ncid, varid, values, start, &
       count_nc, stride, map, ncerr)

    use typesizes, only: FourByteReal

    integer,                         intent(in) :: ncid, varid
    real (kind = FourByteReal), intent(in) :: values(:, :, :)
    integer, dimension(:), optional, intent(in) :: start, count_nc, stride, map
    integer, intent(out), optional:: ncerr

    ! Variable local to the procedure:
    integer ncerr_not_opt

    !-------------------

    call check_start_count("nf95_put_var_3D_FourByteReal", ncid, varid, &
         start, count_nc, rank_values=3)

    ncerr_not_opt = nf90_put_var(ncid, varid, values, start, count_nc, &
         stride, map)
    if (present(ncerr)) then
       ncerr = ncerr_not_opt
    else
       call handle_err("nf95_put_var_3D_FourByteReal", ncerr_not_opt, ncid, &
            varid)
    end if

  end subroutine nf95_put_var_3D_FourByteReal

  !***********************

  subroutine nf95_put_var_3D_EightByteReal(ncid, varid, values, start, &
       count_nc, stride, map, ncerr)

    use typesizes, only: eightByteReal

    integer,                         intent(in) :: ncid, varid
    real (kind = EightByteReal),     intent(in) :: values(:, :, :)
    integer, dimension(:), optional, intent(in) :: start, count_nc, stride, map
    integer, intent(out), optional:: ncerr

    ! Variable local to the procedure:
    integer ncerr_not_opt

    !-------------------

    call check_start_count("nf95_put_var_3D_EightByteReal", ncid, varid, &
         start, count_nc, rank_values=3)

    ncerr_not_opt = nf90_put_var(ncid, varid, values, start, count_nc, &
         stride, map)
    if (present(ncerr)) then
       ncerr = ncerr_not_opt
    else
       call handle_err("nf95_put_var_3D_eightByteReal", ncerr_not_opt, ncid, &
            varid)
    end if

  end subroutine nf95_put_var_3D_EightByteReal

  !***********************

  subroutine nf95_put_var_4D_FourByteReal(ncid, varid, values, start, &
       count_nc, stride, map, ncerr)

    use typesizes, only: FourByteReal

    integer,                         intent(in) :: ncid, varid
    real (kind = FourByteReal), intent(in) :: values(:, :, :, :)
    integer, dimension(:), optional, intent(in) :: start, count_nc, stride, map
    integer, intent(out), optional:: ncerr

    ! Variable local to the procedure:
    integer ncerr_not_opt

    !-------------------

    call check_start_count("nf95_put_var_4D_FourByteReal", ncid, varid, &
         start, count_nc, rank_values=4)

    ncerr_not_opt = nf90_put_var(ncid, varid, values, start, count_nc, &
         stride, map)
    if (present(ncerr)) then
       ncerr = ncerr_not_opt
    else
       call handle_err("nf95_put_var_4D_FourByteReal", ncerr_not_opt, ncid, &
            varid)
    end if

  end subroutine nf95_put_var_4D_FourByteReal

  !***********************

  subroutine nf95_put_var_4D_EightByteReal(ncid, varid, values, start, &
       count_nc, stride, map, ncerr)

    use typesizes, only: EightByteReal

    integer, intent(in):: ncid, varid
    real(kind = EightByteReal), intent(in):: values(:, :, :, :)
    integer, dimension(:), optional, intent(in):: start, count_nc, stride, map
    integer, intent(out), optional:: ncerr

    ! Variable local to the procedure:
    integer ncerr_not_opt

    !-------------------

    call check_start_count("nf95_put_var_4D_EightByteReal", ncid, varid, &
         start, count_nc, rank_values=4)

    ncerr_not_opt = nf90_put_var(ncid, varid, values, start, count_nc, &
         stride, map)
    if (present(ncerr)) then
       ncerr = ncerr_not_opt
    else
       call handle_err("nf95_put_var_4D_EightByteReal", ncerr_not_opt, ncid, &
            varid)
    end if

  end subroutine nf95_put_var_4D_EightByteReal

end module nf95_put_var_m
