  ! -*- mode: f90; -*-
  
  ! Body of specific procedures of generic interface "nf95_get_var",
  ! with scalar argument "values".
  
  call check_start_count(procedure_name, ncid, varid, start, rank_values = 0)
  ncerr_not_opt = nf90_get_var(ncid, varid, values, start)

  if (present(ncerr)) then
     ncerr = ncerr_not_opt
  else
     call handle_err(procedure_name, ncerr_not_opt, ncid, varid)
  end if

  if (ncerr_not_opt == NF90_NOERR .and. present(new_missing)) then
     call nf95_get_missing(ncid, varid, missing)
     if (values == missing) values = new_missing
  end if
