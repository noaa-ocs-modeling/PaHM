module nf95_get_att_m

  use handle_err_m, only: handle_err
  use netcdf, only: nf90_get_att, nf90_noerr
  use nf95_inquire_attribute_m, only: nf95_inquire_attribute

  implicit none

  interface nf95_get_att
     module procedure nf95_get_att_text, nf95_get_att_one_FourByteInt, &
          nf95_get_att_one_FourByteReal, nf95_get_att_one_eightByteReal

     ! The difference between the specific procedures is the type of
     ! argument "values".
  end interface nf95_get_att

  private
  public nf95_get_att

contains

  subroutine nf95_get_att_text(ncid, varid, name, values, ncerr)

    integer, intent(in):: ncid, varid
    character(len = *), intent(in):: name
    character(len = *), intent(out):: values
    integer, intent(out), optional:: ncerr

    ! Variables local to the procedure:
    integer ncerr_not_opt
    integer att_len

    !-------------------

    ! Check that the length of "values" is large enough:
    call nf95_inquire_attribute(ncid, varid, name, nclen=att_len, &
         ncerr=ncerr_not_opt)
    if (ncerr_not_opt == nf90_noerr) then
       if (len(values) < att_len) then
          print *, "nf95_get_att_text"
          print *, "varid = ", varid
          print *, "attribute name: ", name
          print *, 'length of "values" is not large enough'
          print *, "len(values) = ", len(values)
          print *, "number of characters in attribute: ", att_len
          stop 1
       end if
    end if

    values = "" ! useless in NetCDF version 3.6.2 or better
    ncerr_not_opt = nf90_get_att(ncid, varid, name, values)
    if (present(ncerr)) then
       ncerr = ncerr_not_opt
    else
       call handle_err("nf95_get_att_text " // trim(name), ncerr_not_opt, &
            ncid, varid)
    end if

    if (att_len >= 1 .and. ncerr_not_opt == nf90_noerr) then
       ! Remove null terminator, if any:
       if (iachar(values(att_len:att_len)) == 0) values(att_len:att_len) = " "
    end if

  end subroutine nf95_get_att_text

  !***********************

  subroutine nf95_get_att_one_FourByteInt(ncid, varid, name, values, ncerr)

    use typesizes, only: FourByteInt

    integer, intent(in):: ncid, varid
    character(len = *), intent(in):: name
    integer (kind = FourByteInt), intent(out):: values
    integer, intent(out), optional:: ncerr

    ! Variables local to the procedure:
    integer ncerr_not_opt
    integer att_len

    !-------------------

    ! Check that the attribute contains a single value:
    call nf95_inquire_attribute(ncid, varid, name, nclen=att_len, &
         ncerr=ncerr_not_opt)
    if (ncerr_not_opt == nf90_noerr) then
       if (att_len /= 1) then
          print *, "nf95_get_att_one_FourByteInt"
          print *, "varid = ", varid
          print *, "attribute name: ", name
          print *, 'the attribute does not contain a single value'
          print *, "number of values in attribute: ", att_len
          stop 1
       end if
    end if

    ncerr_not_opt = nf90_get_att(ncid, varid, name, values)
    if (present(ncerr)) then
       ncerr = ncerr_not_opt
    else
       call handle_err("nf95_get_att_one_FourByteInt " // trim(name), &
            ncerr_not_opt, ncid, varid)
    end if

  end subroutine nf95_get_att_one_FourByteInt

  !***********************

  subroutine nf95_get_att_one_FourByteReal(ncid, varid, name, values, ncerr)

    use typesizes, only: FourByteReal

    integer, intent(in):: ncid, varid
    character(len = *), intent(in):: name
    real (kind = FourByteReal), intent(out):: values
    integer, intent(out), optional:: ncerr

    ! Variables local to the procedure:
    integer ncerr_not_opt
    integer att_len

    !-------------------

    ! Check that the attribute contains a single value:
    call nf95_inquire_attribute(ncid, varid, name, nclen=att_len, &
         ncerr=ncerr_not_opt)
    if (ncerr_not_opt == nf90_noerr) then
       if (att_len /= 1) then
          print *, "nf95_get_att_one_Fourbytereal"
          print *, "varid = ", varid
          print *, "attribute name: ", name
          print *, 'the attribute does not contain a single value'
          print *, "number of values in attribute: ", att_len
          stop 1
       end if
    end if

    ncerr_not_opt = nf90_get_att(ncid, varid, name, values)
    if (present(ncerr)) then
       ncerr = ncerr_not_opt
    else
       call handle_err("nf95_get_att_one_Fourbytereal " // trim(name), &
            ncerr_not_opt, ncid, varid)
    end if

  end subroutine nf95_get_att_one_Fourbytereal

  !***********************

  subroutine nf95_get_att_one_EightByteReal(ncid, varid, name, values, ncerr)

    use typesizes, only: EightByteReal

    integer, intent(in):: ncid, varid
    character(len = *), intent(in):: name
    real (kind = EightByteReal), intent(out):: values
    integer, intent(out), optional:: ncerr

    ! Variables local to the procedure:
    integer ncerr_not_opt
    integer att_len

    !-------------------

    ! Check that the attribute contains a single value:
    call nf95_inquire_attribute(ncid, varid, name, nclen=att_len, &
         ncerr=ncerr_not_opt)
    if (ncerr_not_opt == nf90_noerr) then
       if (att_len /= 1) then
          print *, "nf95_get_att_one_Eightbytereal"
          print *, "varid = ", varid
          print *, "attribute name: ", name
          print *, 'the attribute does not contain a single value'
          print *, "number of values in attribute: ", att_len
          stop 1
       end if
    end if

    ncerr_not_opt = nf90_get_att(ncid, varid, name, values)
    if (present(ncerr)) then
       ncerr = ncerr_not_opt
    else
       call handle_err("nf95_get_att_one_Eightbytereal " // trim(name), &
            ncerr_not_opt, ncid, varid)
    end if

  end subroutine nf95_get_att_one_Eightbytereal

end module nf95_get_att_m
