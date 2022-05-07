module nf95_gw_var_m

  use nf95_get_var_m, only: NF95_GET_VAR
  use nf95_inquire_variable_m, only: nf95_inquire_variable
  use nf95_inquire_dimension_m, only: nf95_inquire_dimension

  implicit none

  interface nf95_gw_var
     ! "nf95_gw_var" stands for "NetCDF 1995 get whole variable".
     ! These procedures read a whole NetCDF variable (coordinate or
     ! primary) into an array.
     ! The difference between the procedures is the rank and type of
     ! argument "values".
     ! The procedures do not check the type of the NetCDF variable.

     module procedure nf95_gw_var_real_1d, nf95_gw_var_real_2d, &
          nf95_gw_var_real_3d, nf95_gw_var_real_4d, nf95_gw_var_real_5d, &
          nf95_gw_var_dble_1d, nf95_gw_var_dble_2d, nf95_gw_var_dble_3d, &
          nf95_gw_var_dble_4d, nf95_gw_var_int_1d, nf95_gw_var_int_2d, &
          nf95_gw_var_int_3d
  end interface

  private
  public nf95_gw_var

contains

  subroutine nf95_gw_var_real_1d(ncid, varid, values)

    ! Real type, the array has rank 1.

    integer, intent(in):: ncid
    integer, intent(in):: varid
    real, allocatable, intent(out):: values(:)

    ! Variables local to the procedure:
    integer nclen
    integer, allocatable:: dimids(:)

    !---------------------

    call nf95_inquire_variable(ncid, varid, dimids=dimids)

    if (size(dimids) /= 1) then
       print *, "nf95_gw_var_real_1d:"
       print *, "varid = ", varid
       print *, "rank of NetCDF variable is ", size(dimids), ", not 1"
       stop 1
    end if

    call nf95_inquire_dimension(ncid, dimids(1), nclen=nclen)

    allocate(values(nclen))
    if (nclen /= 0) call NF95_GET_VAR(ncid, varid, values)

  end subroutine nf95_gw_var_real_1d

  !************************************

  subroutine nf95_gw_var_real_2d(ncid, varid, values)

    ! Real type, the array has rank 2.

    integer, intent(in):: ncid
    integer, intent(in):: varid
    real, allocatable, intent(out):: values(:, :)

    ! Variables local to the procedure:
    integer nclen1, nclen2
    integer, allocatable:: dimids(:)

    !---------------------

    call nf95_inquire_variable(ncid, varid, dimids=dimids)

    if (size(dimids) /= 2) then
       print *, "nf95_gw_var_real_2d:"
       print *, "varid = ", varid
       print *, "rank of NetCDF variable is ", size(dimids), ", not 2"
       stop 1
    end if

    call nf95_inquire_dimension(ncid, dimids(1), nclen=nclen1)
    call nf95_inquire_dimension(ncid, dimids(2), nclen=nclen2)

    allocate(values(nclen1, nclen2))
    if (nclen1 /= 0 .and. nclen2 /= 0) call NF95_GET_VAR(ncid, varid, values)

  end subroutine nf95_gw_var_real_2d

  !************************************

  subroutine nf95_gw_var_real_3d(ncid, varid, values)

    ! Real type, the array has rank 3.

    integer, intent(in):: ncid
    integer, intent(in):: varid
    real, allocatable, intent(out):: values(:, :, :)

    ! Variables local to the procedure:
    integer nclen1, nclen2, nclen3
    integer, allocatable:: dimids(:)

    !---------------------

    call nf95_inquire_variable(ncid, varid, dimids=dimids)

    if (size(dimids) /= 3) then
       print *, "nf95_gw_var_real_3d:"
       print *, "varid = ", varid
       print *, "rank of NetCDF variable is ", size(dimids), ", not 3"
       stop 1
    end if

    call nf95_inquire_dimension(ncid, dimids(1), nclen=nclen1)
    call nf95_inquire_dimension(ncid, dimids(2), nclen=nclen2)
    call nf95_inquire_dimension(ncid, dimids(3), nclen=nclen3)

    allocate(values(nclen1, nclen2, nclen3))
    if (nclen1 /= 0 .and. nclen2 /= 0 .and. nclen3 /= 0) &
         call NF95_GET_VAR(ncid, varid, values)

  end subroutine nf95_gw_var_real_3d

  !************************************

  subroutine nf95_gw_var_real_4d(ncid, varid, values)

    ! Real type, the array has rank 4.

    integer, intent(in):: ncid
    integer, intent(in):: varid
    real, allocatable, intent(out):: values(:, :, :, :)

    ! Variables local to the procedure:
    integer len_dim(4), i
    integer, allocatable:: dimids(:)

    !---------------------

    call nf95_inquire_variable(ncid, varid, dimids=dimids)

    if (size(dimids) /= 4) then
       print *, "nf95_gw_var_real_4d:"
       print *, "varid = ", varid
       print *, "rank of NetCDF variable is ", size(dimids), ", not 4"
       stop 1
    end if

    do i = 1, 4
       call nf95_inquire_dimension(ncid, dimids(i), nclen=len_dim(i))
    end do

    allocate(values(len_dim(1), len_dim(2), len_dim(3), len_dim(4)))
    if (all(len_dim /= 0)) call NF95_GET_VAR(ncid, varid, values)

  end subroutine nf95_gw_var_real_4d

  !************************************

  subroutine nf95_gw_var_real_5d(ncid, varid, values)

    ! Real type, the array has rank 5.

    integer, intent(in):: ncid
    integer, intent(in):: varid
    real, allocatable, intent(out):: values(:, :, :, :, :)

    ! Variables local to the procedure:
    integer len_dim(5), i
    integer, allocatable:: dimids(:)

    !---------------------

    call nf95_inquire_variable(ncid, varid, dimids=dimids)

    if (size(dimids) /= 5) then
       print *, "nf95_gw_var_real_5d:"
       print *, "varid = ", varid
       print *, "rank of NetCDF variable is ", size(dimids), ", not 5"
       stop 1
    end if

    do i = 1, 5
       call nf95_inquire_dimension(ncid, dimids(i), nclen=len_dim(i))
    end do

    allocate(values(len_dim(1), len_dim(2), len_dim(3), len_dim(4), len_dim(5)))
    if (all(len_dim /= 0)) call NF95_GET_VAR(ncid, varid, values)

  end subroutine nf95_gw_var_real_5d

  !************************************

  subroutine nf95_gw_var_dble_1d(ncid, varid, values)

    ! Double precision, the array has rank 1.

    integer, intent(in):: ncid
    integer, intent(in):: varid
    double precision, allocatable, intent(out):: values(:)

    ! Variables local to the procedure:
    integer nclen
    integer, allocatable:: dimids(:)

    !---------------------

    call nf95_inquire_variable(ncid, varid, dimids=dimids)

    if (size(dimids) /= 1) then
       print *, "nf95_gw_var_dble_1d:"
       print *, "varid = ", varid
       print *, "rank of NetCDF variable is ", size(dimids), ", not 1"
        stop 1
    end if

    call nf95_inquire_dimension(ncid, dimids(1), nclen=nclen)

    allocate(values(nclen))
    if (nclen /= 0) call NF95_GET_VAR(ncid, varid, values)

  end subroutine nf95_gw_var_dble_1d

  !************************************

  subroutine nf95_gw_var_dble_2d(ncid, varid, values)

    ! Double precision, the array has rank 2.

    integer, intent(in):: ncid
    integer, intent(in):: varid
    double precision, allocatable, intent(out):: values(:, :)

    ! Variables local to the procedure:
    integer nclen1, nclen2
    integer, allocatable:: dimids(:)

    !---------------------

    call nf95_inquire_variable(ncid, varid, dimids=dimids)

    if (size(dimids) /= 2) then
       print *, "nf95_gw_var_dble_2d:"
       print *, "varid = ", varid
       print *, "rank of NetCDF variable is ", size(dimids), ", not 2"
       stop 1
    end if

    call nf95_inquire_dimension(ncid, dimids(1), nclen=nclen1)
    call nf95_inquire_dimension(ncid, dimids(2), nclen=nclen2)

    allocate(values(nclen1, nclen2))
    if (nclen1 /= 0 .and. nclen2 /= 0) call NF95_GET_VAR(ncid, varid, values)

  end subroutine nf95_gw_var_dble_2d

  !************************************

  subroutine nf95_gw_var_dble_3d(ncid, varid, values)

    ! Double precision, the array has rank 3.

    integer, intent(in):: ncid
    integer, intent(in):: varid
    double precision, allocatable, intent(out):: values(:, :, :)

    ! Variables local to the procedure:
    integer nclen1, nclen2, nclen3
    integer, allocatable:: dimids(:)

    !---------------------

    call nf95_inquire_variable(ncid, varid, dimids=dimids)

    if (size(dimids) /= 3) then
       print *, "nf95_gw_var_dble_3d:"
       print *, "varid = ", varid
       print *, "rank of NetCDF variable is ", size(dimids), ", not 3"
       stop 1
    end if

    call nf95_inquire_dimension(ncid, dimids(1), nclen=nclen1)
    call nf95_inquire_dimension(ncid, dimids(2), nclen=nclen2)
    call nf95_inquire_dimension(ncid, dimids(3), nclen=nclen3)

    allocate(values(nclen1, nclen2, nclen3))
    if (nclen1 /= 0 .and. nclen2 /= 0 .and. nclen3 /= 0) &
         call NF95_GET_VAR(ncid, varid, values)

  end subroutine nf95_gw_var_dble_3d

  !************************************

  subroutine nf95_gw_var_dble_4d(ncid, varid, values)

    ! Double precision, the array has rank 4.

    integer, intent(in):: ncid
    integer, intent(in):: varid
    double precision, allocatable, intent(out):: values(:, :, :, :)

    ! Variables local to the procedure:
    integer len_dim(4), i
    integer, allocatable:: dimids(:)

    !---------------------

    call nf95_inquire_variable(ncid, varid, dimids=dimids)

    if (size(dimids) /= 4) then
       print *, "nf95_gw_var_dble_4d:"
       print *, "varid = ", varid
       print *, "rank of NetCDF variable is ", size(dimids), ", not 4"
       stop 1
    end if

    do i = 1, 4
       call nf95_inquire_dimension(ncid, dimids(i), nclen=len_dim(i))
    end do

    allocate(values(len_dim(1), len_dim(2), len_dim(3), len_dim(4)))
    if (all(len_dim /= 0)) call NF95_GET_VAR(ncid, varid, values)

  end subroutine nf95_gw_var_dble_4d

  !************************************

  subroutine nf95_gw_var_int_1d(ncid, varid, values)

    ! Integer type, the array has rank 1.

    integer, intent(in):: ncid
    integer, intent(in):: varid
    integer, allocatable, intent(out):: values(:)

    ! Variables local to the procedure:
    integer nclen
    integer, allocatable:: dimids(:)

    !---------------------

    call nf95_inquire_variable(ncid, varid, dimids=dimids)

    if (size(dimids) /= 1) then
       print *, "nf95_gw_var_int_1d:"
       print *, "varid = ", varid
       print *, "rank of NetCDF variable is ", size(dimids), ", not 1"
       stop 1
    end if

    call nf95_inquire_dimension(ncid, dimids(1), nclen=nclen)

    allocate(values(nclen))
    if (nclen /= 0) call NF95_GET_VAR(ncid, varid, values)

  end subroutine nf95_gw_var_int_1d

  !************************************

  subroutine nf95_gw_var_int_2d(ncid, varid, values)

    ! Integer type, the array has rank 2.

    integer, intent(in):: ncid
    integer, intent(in):: varid
    integer, allocatable, intent(out):: values(:, :)

    ! Variables local to the procedure:
    integer nclen1, nclen2
    integer, allocatable:: dimids(:)

    !---------------------

    call nf95_inquire_variable(ncid, varid, dimids=dimids)

    if (size(dimids) /= 2) then
       print *, "nf95_gw_var_int_2d:"
       print *, "varid = ", varid
       print *, "rank of NetCDF variable is ", size(dimids), ", not 2"
       stop 1
    end if

    call nf95_inquire_dimension(ncid, dimids(1), nclen=nclen1)
    call nf95_inquire_dimension(ncid, dimids(2), nclen=nclen2)

    allocate(values(nclen1, nclen2))
    if (nclen1 /= 0 .and. nclen2 /= 0) call NF95_GET_VAR(ncid, varid, values)

  end subroutine nf95_gw_var_int_2d

  !************************************

  subroutine nf95_gw_var_int_3d(ncid, varid, values)

    ! Integer type, the array has rank 3.

    integer, intent(in):: ncid
    integer, intent(in):: varid
    integer, allocatable, intent(out):: values(:, :, :)

    ! Variables local to the procedure:
    integer nclen1, nclen2, nclen3
    integer, allocatable:: dimids(:)

    !---------------------

    call nf95_inquire_variable(ncid, varid, dimids=dimids)

    if (size(dimids) /= 3) then
       print *, "nf95_gw_var_int_3d:"
       print *, "varid = ", varid
       print *, "rank of NetCDF variable is ", size(dimids), ", not 3"
       stop 1
    end if

    call nf95_inquire_dimension(ncid, dimids(1), nclen=nclen1)
    call nf95_inquire_dimension(ncid, dimids(2), nclen=nclen2)
    call nf95_inquire_dimension(ncid, dimids(3), nclen=nclen3)

    allocate(values(nclen1, nclen2, nclen3))
    if (nclen1 /= 0 .and. nclen2 /= 0 .and. nclen3 /= 0) &
         call NF95_GET_VAR(ncid, varid, values)

  end subroutine nf95_gw_var_int_3d

end module nf95_gw_var_m
