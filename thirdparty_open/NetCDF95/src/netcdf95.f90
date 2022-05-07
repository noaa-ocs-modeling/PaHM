module netcdf95

  ! Author: Lionel GUEZ

  use find_coord_m
  use handle_err_m
  use nf95_close_m
  use nf95_copy_att_m
  use nf95_create_m
  use nf95_def_dim_m
  use nf95_def_var_m
  use nf95_enddef_m
  use nf95_get_att_m
  use nf95_get_missing_m
  use nf95_get_var_m
  use nf95_gw_var_m
  use nf95_inq_dimid_m
  use nf95_inq_varid_m
  use nf95_inquire_attribute_m
  use nf95_inquire_dimension_m
  use nf95_inquire_m
  use nf95_inquire_variable_m
  use nf95_open_m
  use nf95_put_att_m
  use nf95_put_var_m
  use nf95_redef_m
  use nf95_sync_m

end module netcdf95
