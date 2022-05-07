check_start_count.o : nf95_inquire_variable.o nf95_close.o 
find_coord.o : nf95_inquire_variable.o nf95_inquire.o nf95_inquire_dimension.o nf95_inq_varid.o nf95_get_att.o 
netcdf95.o : nf95_sync.o nf95_redef.o nf95_put_var.o nf95_put_att.o nf95_open.o nf95_inquire_variable.o nf95_inquire.o nf95_inquire_dimension.o nf95_inquire_attribute.o nf95_inq_varid.o nf95_inq_dimid.o nf95_gw_var.o nf95_get_var.o nf95_get_missing.o nf95_get_att.o nf95_enddef.o nf95_def_var.o nf95_def_dim.o nf95_create.o nf95_copy_att.o nf95_close.o handle_err.o find_coord.o 
nf95_close.o : handle_err.o 
nf95_copy_att.o : handle_err.o 
nf95_create.o : handle_err.o 
nf95_def_dim.o : handle_err.o 
nf95_def_var.o : handle_err.o 
nf95_enddef.o : handle_err.o 
nf95_get_att.o : nf95_inquire_attribute.o handle_err.o 
nf95_get_missing.o : nf95_get_att.o 
nf95_get_var.o : nf95_get_var_array.h nf95_get_var_scalar.h nf95_get_missing.o check_start_count.o handle_err.o 
nf95_gw_var.o : nf95_inquire_dimension.o nf95_inquire_variable.o nf95_get_var.o 
nf95_inq_dimid.o : handle_err.o 
nf95_inquire_attribute.o : handle_err.o 
nf95_inquire_dimension.o : handle_err.o 
nf95_inquire.o : handle_err.o 
nf95_inquire_variable.o : handle_err.o 
nf95_inq_varid.o : handle_err.o 
nf95_open.o : handle_err.o 
nf95_put_att.o : handle_err.o 
nf95_put_var.o : check_start_count.o handle_err.o 
nf95_redef.o : handle_err.o 
nf95_sync.o : handle_err.o 
