if(CMAKE_Fortran_COMPILER_ID MATCHES GNU)
  # Options for a Fortran 2003 program, compiler version 7
  
  # Fortran language options:
  string(APPEND CMAKE_Fortran_FLAGS " -std=f2003")

  # Error and warning options:
  string(APPEND CMAKE_Fortran_FLAGS
    " -fmax-errors=1 -pedantic -Wall -Wcharacter-truncation -Wunused-parameter"
    " -Wno-conversion -Wimplicit-interface -Wimplicit-procedure"
    " -Wno-integer-division")
  ## -Wrealloc-lhs-all
  
  # Debugging options:
  set(CMAKE_Fortran_FLAGS_DEBUG
    "-fbacktrace -g -ffpe-trap=invalid,zero,overflow")

  # Code generation options:
  string(APPEND CMAKE_Fortran_FLAGS_DEBUG
    " -fcheck=bounds,do,mem,pointer,recursion -finit-derived -finit-real=snan "
    "-O0")

  # Optimization options:
  set(CMAKE_Fortran_FLAGS_RELEASE -O3)

  # Hardware model options:
  string(APPEND CMAKE_Fortran_FLAGS_RELEASE " -mcmodel=medium")
elseif(CMAKE_Fortran_COMPILER_ID MATCHES Intel)
  # Language:

  string(APPEND CMAKE_Fortran_FLAGS
    " -noaltparam -stand f03 -standard-semantics -assume nostd_mod_proc_name")
  # -standard-semantics by itself implies -assume std_mod_proc_name, and
  # then compiling with the NetCDF Fortran library or the FortranGIS
  # library might not work.
  
  string(APPEND CMAKE_Fortran_FLAGS_DEBUG
    " -check bounds,format,output_conversion,pointers,stack,uninit")
  # "-check all" includes "arg_temp_created", which is annoying so we
  # detail "check bounds", etc.

  # Data:
  string(APPEND CMAKE_Fortran_FLAGS " -auto -mcmodel=medium")
  string(APPEND CMAKE_Fortran_FLAGS_DEBUG " -init=arrays,minus_huge,snan")
  
  # Compiler diagnostics:
  string(APPEND CMAKE_Fortran_FLAGS
    " -warn declarations,general,stderrors,truncated_source,uncalled,unused,usage"
    " -traceback -diag-error-limit 1")
  # -traceback has no impact on run-time execution speeds.
  
  # Optimization:
  string(APPEND CMAKE_Fortran_FLAGS_DEBUG " -O0")
  
  # Floating point:
  string(APPEND CMAKE_Fortran_FLAGS_DEBUG " -fp-stack-check -fpe-all=0")
  
  # Debug:
  string(APPEND CMAKE_Fortran_FLAGS_DEBUG
    " -debug full -debug-parameters all -ftrapuv")
elseif(CMAKE_Fortran_COMPILER_ID MATCHES NAG)
  string(APPEND CMAKE_Fortran_FLAGS " -f2003")

  string(APPEND CMAKE_Fortran_FLAGS_DEBUG " -C=all -g90 -gline -nan -strict95")
  #  -C=undefined is not binary compatible with Fortran code compiled
  #  without that option, and is not compatible with calling C code
  #  via a BIND(C) interface.
endif()
