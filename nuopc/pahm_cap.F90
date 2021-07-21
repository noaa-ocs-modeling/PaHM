!>
!! @mainpage PAHM NUOPC Cap to exchange atm data with ocean models
!! @author Panagiotis Velissariou (panagiotis.velissariou@noaa.gov)
!! @author Saeed Moghimi (saeed.moghimi@noaa.gov)
!! @date 06/24/2021
!------------------------------------------------------

module pahm_cap

  !-----------------------------------------------------------------------------
  ! PAHM Component.
  !-----------------------------------------------------------------------------
  use mpi
  use ESMF
  use NUOPC
  use NUOPC_Model, &
    model_routine_SS      => SetServices,    &
    model_label_SetClock  => label_SetClock, &
    model_label_Advance   => label_Advance,  &
    model_label_CheckImport => label_CheckImport, &    
    model_label_Finalize  => label_Finalize

  use pahm_mod, only: meshdata
  use pahm_mod, only: create_parallel_esmf_mesh_from_meshdata
  use pahm_mod, only: UWND, VWND, PRES
  use pahm_mod, only: pahm_from_file, ReadConfig

  !read from netcdf file
  use pahm_mod, only: init_pahm_nc, read_pahm_nc 
  use pahm_mod, only: construct_meshdata_from_netcdf
  
  implicit none
  private
  
  public SetServices
  
  type fld_list_type
      character(len=64) :: stdname
      character(len=64) :: shortname
      character(len=64) :: unit
      logical           :: assoc    ! is the farrayPtr associated with internal data
      real(ESMF_KIND_R8), dimension(:), pointer :: farrayPtr
  end type fld_list_type

  integer,parameter :: fldsMax = 100
  integer :: fldsToWav_num = 0
  type (fld_list_type) :: fldsToWav(fldsMax)
  integer :: fldsFrATM_num = 0
  type (fld_list_type) :: fldsFrATM(fldsMax)

  type(meshdata),save  :: mdataInw, mdataOutw
  integer,save         :: iwind_test = 0 
  character(len=2048):: info
  integer :: dbrc     ! temporary debug rc value


  !-----------------------------------------------------------------------------
  contains
  !-----------------------------------------------------------------------------
  !> NUOPC SetService method is the only public entry point.
  !! SetServices registers all of the user-provided subroutines
  !! in the module with the NUOPC layer.
  !!
  !! @param model an ESMF_GridComp object
  !! @param rc return code
  subroutine SetServices(model, rc)
    type(ESMF_GridComp)  :: model
    integer, intent(out) :: rc

    ! Local Variables
    type(ESMF_VM)                :: vm
    character(len=*),parameter   :: subname='(PAHM:SetServices)'

    rc = ESMF_SUCCESS
    
    ! read config file
    CALL ReadConfig()
stop
    ! the NUOPC model component will register the generic methods
    call NUOPC_CompDerive(model, model_routine_SS, rc=rc)
    if (ESMF_LogFoundError(rcToCheck=rc, msg=ESMF_LOGERR_PASSTHRU, &
      line=__LINE__, &
      file=__FILE__)) &
      return  ! bail out
    
    ! set entry point for methods that require specific implementation
    call NUOPC_CompSetEntryPoint(model, ESMF_METHOD_INITIALIZE, &
      phaseLabelList=(/"IPDv00p1"/), userRoutine=InitializeP1, rc=rc)
    if (ESMF_LogFoundError(rcToCheck=rc, msg=ESMF_LOGERR_PASSTHRU, &
      line=__LINE__, &
      file=__FILE__)) &
      return  ! bail out
    call NUOPC_CompSetEntryPoint(model, ESMF_METHOD_INITIALIZE, &
      phaseLabelList=(/"IPDv00p2"/), userRoutine=InitializeP2, rc=rc)
    if (ESMF_LogFoundError(rcToCheck=rc, msg=ESMF_LOGERR_PASSTHRU, &
      line=__LINE__, &
      file=__FILE__)) &
      return  ! bail out

    call NUOPC_CompSpecialize(model, specLabel=model_label_Advance, &
      specRoutine=ModelAdvance, rc=rc)
    if (ESMF_LogFoundError(rcToCheck=rc, msg=ESMF_LOGERR_PASSTHRU, &
      line=__LINE__, &
      file=__FILE__)) &
      return  ! bail out

    call NUOPC_CompSpecialize(model, specLabel=model_label_Finalize, &
      specRoutine=PAHM_model_finalize, rc=rc)
    if (ESMF_LogFoundError(rcToCheck=rc, msg=ESMF_LOGERR_PASSTHRU, &
      line=__LINE__, &
      file=__FILE__)) &
      return  ! bail out

    if (pahm_from_file) then
      call init_pahm_nc()
      write(info,*) subname,' --- Read pahm info from file --- '
      call ESMF_LogWrite(info, ESMF_LOGMSG_INFO, rc=rc)
      print *, 'We are using NetCDF'
    else
      print *, 'We will be using PaHM to generate winds'
    end if

    write(info,*) subname,' --- pahm SetServices completed --- '
    call ESMF_LogWrite(info, ESMF_LOGMSG_INFO, rc=rc)
  end subroutine
  
  !-----------------------------------------------------------------------------
    !> First initialize subroutine called by NUOPC.  The purpose
    !! is to set which version of the Initialize Phase Definition (IPD)
    !! to use.
    !!
    !! For this PAHM cap, we are using IPDv01.
    !!
    !! @param model an ESMF_GridComp object
    !! @param importState an ESMF_State object for import fields
    !! @param exportState an ESMF_State object for export fields
    !! @param clock an ESMF_Clock object
    !! @param rc return code

   subroutine InitializeP1(model, importState, exportState, clock, rc)
    type(ESMF_GridComp)  :: model
    type(ESMF_State)     :: importState, exportState
    type(ESMF_Clock)     :: clock
    integer, intent(out) :: rc

    ! Local Variables
    integer              :: num,i
    character(len=*),parameter  :: subname='(PAHM:AdvertiseFields)'

    rc = ESMF_SUCCESS


    call PAHM_FieldsSetup()
!

      do num = 1,fldsToWav_num
          !print *,  "fldsToWav_num  ", fldsToWav_num
          !print *,  "fldsToWav(num)%shortname  ", fldsToWav(num)%shortname
          !print *,  "fldsToWav(num)%stdname  ", fldsToWav(num)%stdname

          write(info,*) subname,  "fldsToWav(num)%shortname  ", fldsToWav(num)%shortname
          call ESMF_LogWrite(info, ESMF_LOGMSG_INFO, rc=dbrc)
     end do

      call PAHM_AdvertiseFields(importState, fldsToWav_num, fldsToWav, rc)
      if (ESMF_LogFoundError(rcToCheck=rc, msg=ESMF_LOGERR_PASSTHRU, &
        line=__LINE__, &
        file=__FILE__)) &
        return  ! bail out

!----------------------------------------------------------------
    do num = 1,fldsFrATM_num
        !print *,  "fldsFrATM_num  ", fldsFrATM_num
        !print *,  "fldsFrATM(num)%shortname  ", fldsFrATM(num)%shortname
        !print *,  "fldsFrATM(num)%stdname  ", fldsFrATM(num)%stdname
        write(info,*) subname,"fldsFrATM(num)%stdname  ", fldsFrATM(num)%stdname
        call ESMF_LogWrite(info, ESMF_LOGMSG_INFO, rc=dbrc)

    end do
!
    call PAHM_AdvertiseFields(exportState, fldsFrATM_num, fldsFrATM, rc)
    if (ESMF_LogFoundError(rcToCheck=rc, msg=ESMF_LOGERR_PASSTHRU, &
      line=__LINE__, &
      file=__FILE__)) &
      return  ! bail out

        write(info,*) subname,' --- initialization phase 1 completed --- '
        !print *,      subname,' --- initialization phase 1 completed --- '
        call ESMF_LogWrite(info, ESMF_LOGMSG_INFO, rc=dbrc)
!
  end subroutine


    !> Advertises a set of fields in an ESMF_State object by calling
    !! NUOPC_Advertise in a loop.
    !!
    !! @param state the ESMF_State object in which to advertise the fields
    !! @param nfields number of fields
    !! @param field_defs an array of fld_list_type listing the fields to advertise
    !! @param rc return code
    subroutine PAHM_AdvertiseFields(state, nfields, field_defs, rc)
        type(ESMF_State), intent(inout)             :: state
        integer,intent(in)                          :: nfields
        type(fld_list_type), intent(inout)          :: field_defs(:)
        integer, intent(inout)                      :: rc

        integer                                     :: i
        character(len=*),parameter  :: subname='(PAHM:PAHM_AdvertiseFields)'

        rc = ESMF_SUCCESS

        do i = 1, nfields
          !print *, 'Advertise: '//trim(field_defs(i)%stdname)//'---'//trim(field_defs(i)%shortname)
          call ESMF_LogWrite('Advertise: '//trim(field_defs(i)%stdname), ESMF_LOGMSG_INFO, rc=rc)
          if (ESMF_LogFoundError(rcToCheck=rc, msg=ESMF_LOGERR_PASSTHRU, &
            line=__LINE__, &
            file=__FILE__)) &
            return  ! bail out

          call NUOPC_Advertise(state, &
            standardName=field_defs(i)%stdname, &
            name=field_defs(i)%shortname, &
            rc=rc)
          if (ESMF_LogFoundError(rcToCheck=rc, msg=ESMF_LOGERR_PASSTHRU, &
            line=__LINE__, &
            file=__FILE__)) &
            return  ! bail out
        enddo
        !print *,      subname,' --- IN   --- '

    end subroutine PAHM_AdvertiseFields




   subroutine PAHM_FieldsSetup
    integer                     :: rc
    character(len=*),parameter  :: subname='(PAHM:PAHM_FieldsSetup)'


    !--------- import fields to PAHM  -------------
    
    !--------- export fields from PAHM -------------
    call fld_list_add(num=fldsFrATM_num, fldlist=fldsFrATM, stdname="air_pressure_at_sea_level" , shortname= "pmsl" )
    call fld_list_add(num=fldsFrATM_num, fldlist=fldsFrATM, stdname="inst_zonal_wind_height10m" , shortname= "izwh10m" )
    call fld_list_add(num=fldsFrATM_num, fldlist=fldsFrATM, stdname="inst_merid_wind_height10m" , shortname= "imwh10m" )
    !
    write(info,*) subname,' --- Passed--- '
    !print *,      subname,' --- Passed --- '
    call ESMF_LogWrite(info, ESMF_LOGMSG_INFO, rc=rc)     
    end subroutine PAHM_FieldsSetup


    !---------------------------------------------------------------------------------

    subroutine fld_list_add(num, fldlist, stdname, data, shortname, unit)
        ! ----------------------------------------------
        ! Set up a list of field information
        ! ----------------------------------------------
        integer,             intent(inout)  :: num
        type(fld_list_type), intent(inout)  :: fldlist(:)
        character(len=*),    intent(in)     :: stdname
        real(ESMF_KIND_R8), dimension(:), optional, target :: data
        character(len=*),    intent(in),optional :: shortname
        character(len=*),    intent(in),optional :: unit

        ! local variables
        integer :: rc
        character(len=*), parameter :: subname='(PAHM:fld_list_add)'

        ! fill in the new entry

        num = num + 1
        if (num > fldsMax) then
          call ESMF_LogWrite(trim(subname)//": ERROR num gt fldsMax "//trim(stdname), &
            ESMF_LOGMSG_ERROR, line=__LINE__, file=__FILE__, rc=rc)
          return
        endif

        fldlist(num)%stdname        = trim(stdname)
        if (present(shortname)) then
           fldlist(num)%shortname   = trim(shortname)
        else
           fldlist(num)%shortname   = trim(stdname)
        endif

        if (present(data)) then
          fldlist(num)%assoc        = .true.
          fldlist(num)%farrayPtr    => data
        else
          fldlist(num)%assoc        = .false.
        endif

        if (present(unit)) then
           fldlist(num)%unit        = unit
        endif


        write(info,*) subname,' --- Passed--- '
        !print *,      subname,' --- Passed --- '
    end subroutine fld_list_add



  
  !-----------------------------------------------------------------------------
    !> Called by NUOPC to realize import and export fields.

    !! The fields to import and export are stored in the fldsToWav and fldsFrATM
    !! arrays, respectively.  Each field entry includes the standard name,
    !! information about whether the field's grid will be provided by the cap,
    !! and optionally a pointer to the field's data array.  Currently, all fields
    !! are defined on the same mesh defined by the cap.
    !! The fields are created by calling PAHM::pahm_XXXXXXXXXXXXXXXXXXX.
    !!
    !! @param model an ESMF_GridComp object
    !! @param importState an ESMF_State object for import fields
    !! @param exportState an ESMF_State object for export fields
    !! @param clock an ESMF_Clock object
    !! @param rc return code
!
  subroutine InitializeP2(model, importState, exportState, clock, rc)
    type(ESMF_GridComp)  :: model
    type(ESMF_State)     :: importState, exportState
    type(ESMF_Clock)     :: clock, driverClock
    integer, intent(out) :: rc
    
    ! local variables    
    type(ESMF_TimeInterval) :: PAHMTimeStep
    type(ESMF_Field)        :: field
    !Saeed added
    type(meshdata)               :: mdataw
    type(ESMF_Mesh)              :: ModelMesh,meshIn,meshOut
    type(ESMF_VM)                :: vm
    type(ESMF_Time)              :: startTime
    integer                      :: localPet, petCount
    character(len=*),parameter   :: subname='(PAHM:RealizeFieldsProvidingGrid)'

    rc = ESMF_SUCCESS

    !print *,"PAHM ..1.............................................. >> "
    !> \details Get current ESMF VM.
    call ESMF_VMGetCurrent(vm, rc=rc)
    if (ESMF_LogFoundError(rcToCheck=rc, msg=ESMF_LOGERR_PASSTHRU, &
      line=__LINE__, &
      file=__FILE__)) &
      return  ! bail out

    !print *,"PAHM ..2.............................................. >> "
    ! Get query local pet information for handeling global node information
    call ESMF_VMGet(vm, localPet=localPet, petCount=petCount, rc=rc)
    ! call ESMF_VMPrint(vm, rc=rc)

    !print *,localPet,"< LOCAL pet, PAHM ..3.............................................. >> "
    !! Assign VM to mesh data type.
    mdataw%vm = vm

    call construct_meshdata_from_netcdf(mdataw)
    
    call create_parallel_esmf_mesh_from_meshdata(mdataw,ModelMesh )
    !

    call ESMF_MeshWrite(ModelMesh, filename="pahm_mesh.nc", rc=rc)
    if (ESMF_LogFoundError(rcToCheck=rc, msg=ESMF_LOGERR_PASSTHRU, &
      line=__LINE__, &
      file=__FILE__)) &
      return  ! bail out


    meshIn  = ModelMesh ! for now out same as in
    meshOut = meshIn

    mdataInw  = mdataw
    mdataOutw = mdataw

    !print *,"..................................................... >> "
    !print *,"NumNd", mdataw%NumNd
    !print *,"NumOwnedNd", mdataw%NumOwnedNd
    !print *,"NumEl", mdataw%NumEl
    !print *,"NumND_per_El", mdataw%NumND_per_El
    !print *,"NumOwnedNd mdataOutw", mdataOutw%NumOwnedNd



    call PAHM_RealizeFields(importState, meshIn , mdataw, fldsToWav_num, fldsToWav, "PAHM import", rc)
    if (ESMF_LogFoundError(rcToCheck=rc, msg=ESMF_LOGERR_PASSTHRU, &
        line=__LINE__, &
        file=__FILE__)) &
        return  ! bail out
!
    call PAHM_RealizeFields(exportState, meshOut, mdataw, fldsFrATM_num, fldsFrATM, "PAHM export", rc)
    if (ESMF_LogFoundError(rcToCheck=rc, msg=ESMF_LOGERR_PASSTHRU, &
        line=__LINE__, &
        file=__FILE__)) &
        return  ! bail out

      !Init PAHM
!    ! query Component for the driverClock
!    call NUOPC_ModelGet(model, driverClock=driverClock, rc=rc)
!    if (ESMF_LogFoundError(rcToCheck=rc, msg=ESMF_LOGERR_PASSTHRU, &
!      line=__LINE__, &
!      file=__FILE__)) &
!      return  ! bail out
    
    ! get the start time and current time out of the clock
!    call ESMF_ClockGet(driverClock, startTime=startTime, rc=rc)
!    if (ESMF_LogFoundError(rcToCheck=rc, msg=ESMF_LOGERR_PASSTHRU, &
!      line=__LINE__, &
!      file=__FILE__)) &
!      return  ! bail out

!    call read_pahm_nc(startTime)

    write(info,*) subname,' --- initialization phase 2 completed --- '
    !print *,      subname,' --- initialization phase 2 completed --- '
    call ESMF_LogWrite(info, ESMF_LOGMSG_INFO, line=__LINE__, file=__FILE__, rc=dbrc)
  end subroutine


 !> Adds a set of fields to an ESMF_State object.  Each field is wrapped
  !! in an ESMF_Field object.  Memory is either allocated by ESMF or
  !! an existing PAHM pointer is referenced.
  !!
  !! @param state the ESMF_State object to add fields to
  !! @param grid the ESMF_Grid object on which to define the fields
  !! @param nfields number of fields
  !! @param field_defs array of fld_list_type indicating the fields to add
  !! @param tag used to output to the log
  !! @param rc return code
  subroutine PAHM_RealizeFields(state, mesh, mdata, nfields, field_defs, tag, rc)

    type(ESMF_State), intent(inout)             :: state
    type(ESMF_Mesh), intent(in)                 :: mesh
    type(meshdata)                              :: mdata
    integer, intent(in)                         :: nfields
    type(fld_list_type), intent(inout)          :: field_defs(:)
    character(len=*), intent(in)                :: tag
    integer, intent(inout)                      :: rc


    type(ESMF_Field)                            :: field
    integer                                     :: i
    character(len=*),parameter  :: subname='(PAHM:PAHM_RealizeFields)'

    rc = ESMF_SUCCESS

    do i = 1, nfields
        field = ESMF_FieldCreate(name=field_defs(i)%shortname, mesh=mesh, &
          typekind=ESMF_TYPEKIND_R8, rc=rc)
        if (ESMF_LogFoundError(rcToCheck=rc, msg=ESMF_LOGERR_PASSTHRU, &
          line=__LINE__, &
          file=__FILE__)) &
          return  ! bail out

        if (NUOPC_IsConnected(state, fieldName=field_defs(i)%shortname)) then

            call NUOPC_Realize(state, field=field, rc=rc)
            if (ESMF_LogFoundError(rcToCheck=rc, msg=ESMF_LOGERR_PASSTHRU, &
              line=__LINE__, &
              file=__FILE__)) &
              return  ! bail out

            call ESMF_LogWrite(subname // tag // " Field "// field_defs(i)%stdname // " is connected.", &
              ESMF_LOGMSG_INFO, &
              line=__LINE__, &
              file=__FILE__, &
              rc=dbrc)

            !print *,      subname,' --- Connected --- '

        else
            call ESMF_LogWrite(subname // tag // " Field "// field_defs(i)%stdname // " is not connected.", &
              ESMF_LOGMSG_INFO, &
              line=__LINE__, &
              file=__FILE__, &
              rc=dbrc)
            ! TODO: Initialize the value in the pointer to 0 after proper restart is setup
            !if(associated(field_defs(i)%farrayPtr) ) field_defs(i)%farrayPtr = 0.0
            ! remove a not connected Field from State
            call ESMF_StateRemove(state, (/field_defs(i)%shortname/), rc=rc)
            if (ESMF_LogFoundError(rcToCheck=rc, msg=ESMF_LOGERR_PASSTHRU, &
              line=__LINE__, &
              file=__FILE__)) &
              return  ! bail out
            !print *,      subname,' --- Not-Connected --- '
            !print *,      subname," Field ", field_defs(i)%stdname ,' --- Not-Connected --- '
        endif
    enddo

        write(info,*) subname,' --- OUT--- '
        !print *,      subname,' --- OUT --- '
        call ESMF_LogWrite(info, ESMF_LOGMSG_INFO, line=__LINE__, file=__FILE__, rc=rc)
  end subroutine PAHM_RealizeFields
  !-----------------------------------------------------------------------------


!  subroutine SetClock_mine(model, rc)
!    type(ESMF_GridComp)  :: model
!    integer, intent(out) :: rc
!
!    ! local variables
!    type(ESMF_Clock)              :: clock
!    type(ESMF_TimeInterval)       :: PAHMTimeStep
!
!    rc = ESMF_SUCCESS
!
!    ! query the Component for its clock, importState and exportState
!    call NUOPC_ModelGet(model, modelClock=clock, rc=rc)
!    if (ESMF_LogFoundError(rcToCheck=rc, msg=ESMF_LOGERR_PASSTHRU, &
!      line=__LINE__, &
!      file=__FILE__)) &
!      return  ! bail out
!
!
!    ! initialize internal clock
!    ! - on entry, the component clock is a copy of the parent clock
!    ! - the parent clock is on the slow timescale hwrf timesteps
!    ! - reset the component clock to have a timeStep that is for adc-pahm of the parent
!    !   -> timesteps
!    
!    !call ESMF_TimeIntervalSet(PAHMTimeStep, s=atm_int, sN=atm_num, sD=atm_den, rc=rc) ! 5 minute steps
!    !TODO: use nint !!?
!
!    call ESMF_TimeIntervalSet(PAHMTimeStep, s=atm_int, rc=rc) ! 5 minute steps
!    if (ESMF_LogFoundError(rcToCheck=rc, msg=ESMF_LOGERR_PASSTHRU, &
!       line=__LINE__, &
!      file=__FILE__)) &
!      return  ! bail out
!    call NUOPC_CompSetClock(model, clock, PAHMTimeStep, rc=rc)
!    if (ESMF_LogFoundError(rcToCheck=rc, msg=ESMF_LOGERR_PASSTHRU, &
!      line=__LINE__, &
!      file=__FILE__)) &
!      return  ! bail out
!
!    print *, "PAHM Timeinterval1 = "
!    call ESMF_TimeIntervalPrint(PAHMTimeStep, options="string", rc=rc)
!    if (ESMF_LogFoundError(rcToCheck=rc, msg=ESMF_LOGERR_PASSTHRU, &
!       line=__LINE__, &
!        file=__FILE__)) &
!        return  ! bail out    
!
!
!    ! initialize internal clock
!    ! - on entry, the component clock is a copy of the parent clock
!    ! - the parent clock is on the slow timescale hwrf timesteps
!    ! - reset the component clock to have a timeStep that is for adc-pahm of the parent
!    !   -> timesteps
!    
!    !call ESMF_TimeIntervalSet(PAHMTimeStep, s=     adc_cpl_int, sN=adc_cpl_num, sD=adc_cpl_den, rc=rc) ! 5 minute steps
!    !TODO: use nint !!?
!
!  end subroutine

  !-----------------------------------------------------------------------------
  ! From CICE model uses same clock as parent gridComp
!  subroutine SetClock(model, rc)
!    type(ESMF_GridComp)  :: model
!    integer, intent(out) :: rc
    
    ! local variables
!    type(ESMF_Clock)              :: clock
!    type(ESMF_TimeInterval)       :: PAHMTimeStep, timestep
!    character(len=*),parameter  :: subname='(pahm_cap:SetClock)'

!    rc = ESMF_SUCCESS
    
    ! query the Component for its clock, importState and exportState
!    call ESMF_GridCompGet(model, clock=clock, rc=rc)
!    if (ESMF_LogFoundError(rcToCheck=rc, msg=ESMF_LOGERR_PASSTHRU, &
!      line=__LINE__, &
!      file=__FILE__)) &
!      return  ! bail out
    !call ESMF_TimeIntervalSet(PAHMTimeStep, s=atm_int, sN=atm_num, sD=atm_den, rc=rc) ! 5 minute steps
    ! tcraig: dt is the cice thermodynamic timestep in seconds
!    call ESMF_TimeIntervalSet(timestep, s=atm_int, rc=rc)
!    if (ESMF_LogFoundError(rcToCheck=rc, msg=ESMF_LOGERR_PASSTHRU, &
!      line=__LINE__, &
!      file=__FILE__)) &
!      return  ! bail out

!    call ESMF_ClockSet(clock, timestep=timestep, rc=rc)
!    if (ESMF_LogFoundError(rcToCheck=rc, msg=ESMF_LOGERR_PASSTHRU, &
!      line=__LINE__, &
!      file=__FILE__)) &
!      return  ! bail out
      
    ! initialize internal clock
    ! here: parent Clock and stability timeStep determine actual model timeStep
!    call ESMF_TimeIntervalSet(PAHMTimeStep, s=atm_int, rc=rc) 
!    if (ESMF_LogFoundError(rcToCheck=rc, msg=ESMF_LOGERR_PASSTHRU, &
!      line=__LINE__, &
!      file=__FILE__)) &
!      return  ! bail out
!    call NUOPC_CompSetClock(model, clock, PAHMTimeStep, rc=rc)
!    if (ESMF_LogFoundError(rcToCheck=rc, msg=ESMF_LOGERR_PASSTHRU, &
!      line=__LINE__, &
!      file=__FILE__)) &
!      return  ! bail out
    
!  end subroutine
    !-----------------------------------------------------------------------------

      !> Called by NUOPC to advance the PAHM model a single timestep >>>>>
      !! <<<<<<<<<  TODO: check! this is not what we want!!!.
      !!
      !! This subroutine copies field data out of the cap import state and into the
      !! model internal arrays.  Then it calls PAHM_Run to make a NN timesteps.
      !! Finally, it copies the updated arrays into the cap export state.
      !!
      !! @param model an ESMF_GridComp object
      !! @param rc return code
      !-----------------------------------------------------------------------------
  subroutine ModelAdvance(model, rc)
    type(ESMF_GridComp)  :: model
    integer, intent(out) :: rc

    ! local variables
    type(ESMF_Clock)              :: clock
    type(ESMF_State)              :: importState, exportState
    type(ESMF_Time)               :: currTime
    type(ESMF_TimeInterval)       :: timeStep
    character(len=*),parameter    :: subname='(PAHM:ModelAdvance)'
    !tmp vector
    real(ESMF_KIND_R8), pointer   :: tmp(:)

    !imports


    ! exports
    real(ESMF_KIND_R8), pointer   :: dataPtr_uwnd(:)
    real(ESMF_KIND_R8), pointer   :: dataPtr_vwnd(:)
    real(ESMF_KIND_R8), pointer   :: dataPtr_pres(:)

    type(ESMF_StateItem_Flag)     :: itemType
    type(ESMF_Mesh)               :: mesh
    type(ESMF_Field)              :: lfield
    character(len=128)            :: fldname,timeStr
    integer                       :: i1
    ! local variables for Get methods
    integer :: YY, MM, DD, H, M, S

    rc = ESMF_SUCCESS
    ! query the Component for its clock, importState and exportState
    call NUOPC_ModelGet(model, modelClock=clock, importState=importState, &
      exportState=exportState, rc=rc)
    if (ESMF_LogFoundError(rcToCheck=rc, msg=ESMF_LOGERR_PASSTHRU, &
      line=__LINE__, &
      file=__FILE__)) &
      return  ! bail out

    ! HERE THE MODEL ADVANCES: currTime -> currTime + timeStep

    ! Because of the way that the internal Clock was set in SetClock(),
    ! its timeStep is likely smaller than the parent timeStep. As a consequence
    ! the time interval covered by a single parent timeStep will result in
    ! multiple calls to the ModelAdvance() routine. Every time the currTime
    ! will come in by one internal timeStep advanced. This goes until the
    ! stopTime of the internal Clock has been reached.

    call ESMF_ClockPrint(clock, options="currTime", &
      preString="------>Advancing PAHM from: ", rc=rc)
    if (ESMF_LogFoundError(rcToCheck=rc, msg=ESMF_LOGERR_PASSTHRU, &
      line=__LINE__, &
      file=__FILE__)) &
      return  ! bail out

    call ESMF_ClockGet(clock, currTime=currTime, timeStep=timeStep, rc=rc)
    if (ESMF_LogFoundError(rcToCheck=rc, msg=ESMF_LOGERR_PASSTHRU, &
      line=__LINE__, &
      file=__FILE__)) &
      return  ! bail out

    call ESMF_TimePrint(currTime + timeStep, &
      preString="------------------PAHM-------------> to: ", rc=rc)
    if (ESMF_LogFoundError(rcToCheck=rc, msg=ESMF_LOGERR_PASSTHRU, &
      line=__LINE__, &
      file=__FILE__)) &
      return  ! bail out

    call ESMF_TimeGet(currTime, yy=YY, mm=MM, dd=DD, h=H, m=M, s=S, rc=rc)
    if (ESMF_LogFoundError(rcToCheck=rc, msg=ESMF_LOGERR_PASSTHRU, &
        line=__LINE__, &
        file=__FILE__)) &
        return  ! bail out

    !print *      , "PAHM currTime = ", YY, "/", MM, "/", DD," ", H, ":", M, ":", S
    write(info, *) "PAHM currTime = ", YY, "/", MM, "/", DD," ", H, ":", M, ":", S
    call ESMF_LogWrite(info, ESMF_LOGMSG_INFO, line=__LINE__, file=__FILE__, rc=rc)
    
    call ESMF_TimeGet(currTime, timeStringISOFrac=timeStr , rc=rc)
    if (ESMF_LogFoundError(rcToCheck=rc, msg=ESMF_LOGERR_PASSTHRU, &
        line=__LINE__, &
        file=__FILE__)) &
        return  ! bail out

    !-----------------------------------------
    !   IMPORT
    !-----------------------------------------


    !-----------------------------------------
    !   EXPORT
    !-----------------------------------------
    !update uwnd, vwnd, pres from nearset time in pahm netcdf file
    !TODO: update file name!!!!
    call read_pahm_nc(currTime)

    !pack and send exported fields
    allocate (tmp(mdataOutw%NumOwnedNd))

    ! >>>>> PACK and send UWND
    !call State_getFldPtr(ST=exportState,fldname='izwh10m',fldptr=dataPtr_uwnd,rc=rc)
    call State_getFldPtr_(ST=exportState,fldname='izwh10m',fldptr=dataPtr_uwnd, &
      rc=rc,dump=.false.,timeStr=timeStr)

    if (ESMF_LogFoundError(rcToCheck=rc, msg=ESMF_LOGERR_PASSTHRU, &
      line=__LINE__, &
      file=__FILE__)) &
      return  ! bail out

      !print *, 'mdataOutw%NumOwnedNd > ',mdataOutw%NumOwnedNd, 'UWND > ', UWND(1:10,1)

    iwind_test = iwind_test + 1
    !fill only owned nodes for tmp vector
    do i1 = 1, mdataOutw%NumOwnedNd, 1
        tmp(i1) = UWND(mdataOutw%owned_to_present_nodes(i1),1)
        !tmp(i1) = iwind_test  * i1 / 100000.0
        !tmp(i1) = -3.0
    end do
    !assign to field
    dataPtr_uwnd = tmp
    !----------------------------------------
    ! >>>>> PACK and send VWND
    call State_getFldPtr_(ST=exportState,fldname='imwh10m',fldptr=dataPtr_vwnd, &
      rc=rc,dump=.false.,timeStr=timeStr)
    !call State_getFldPtr (ST=exportState,fldname='imwh10m',fldptr=dataPtr_vwnd,rc=rc)
    if (ESMF_LogFoundError(rcToCheck=rc, msg=ESMF_LOGERR_PASSTHRU, &
      line=__LINE__, &
      file=__FILE__)) &
      return  ! bail out

    !fill only owned nodes for tmp vector
    do i1 = 1, mdataOutw%NumOwnedNd, 1
        tmp(i1) = VWND(mdataOutw%owned_to_present_nodes(i1),1)
        !tmp(i1) = 15.0
    end do
    !assign to field
    dataPtr_vwnd = tmp
    !----------------------------------------
    ! >>>>> PACK and send PRES
    call State_getFldPtr_(ST=exportState,fldname='pmsl',fldptr=dataPtr_pres,&
      rc=rc,dump=.false.,timeStr=timeStr)
    if (ESMF_LogFoundError(rcToCheck=rc, msg=ESMF_LOGERR_PASSTHRU, &
      line=__LINE__, &
      file=__FILE__)) &
      return  ! bail out

    !fill only owned nodes for tmp vector
    do i1 = 1, mdataOutw%NumOwnedNd, 1
        tmp(i1) = PRES(mdataOutw%owned_to_present_nodes(i1),1) 
        
        if ( abs(tmp(i1) ).gt. 1e11)  then
          STOP '  dataPtr_pmsl > mask1 > in PAHM ! '     
        end if
        !tmp(i1) = 1e4
    end do
    !assign to field
    dataPtr_pres = tmp
    !----------------------------------------


    !! TODO:  not a right thing to do. we need to fix the grid object mask <<<<<<
    !where(dataPtr_uwnd.gt.3e4) dataPtr_uwnd = 0.0
    !where(dataPtr_vwnd.gt.3e4) dataPtr_vwnd = 0.0

!
  end subroutine
!
  !-----------------------------------------------------------------------
!-----------------------------------------------------------
  !> Retrieve a pointer to a field's data array from inside an ESMF_State object.
  !!
  !! @param ST the ESMF_State object
  !! @param fldname name of the fields
  !! @param fldptr pointer to 1D array
  !! @param rc return code
  subroutine State_GetFldPtr_(ST, fldname, fldptr, rc, dump,timeStr)
    type(ESMF_State), intent(in) :: ST
    character(len=*), intent(in) :: fldname
    real(ESMF_KIND_R8), pointer, intent(in) :: fldptr(:)
    integer, intent(out), optional :: rc
    logical, intent(in), optional  :: dump
    character(len=128),intent(inout), optional :: timeStr
    ! local variables
    type(ESMF_Field) :: lfield
    integer :: lrc
    character(len=*),parameter :: subname='(pahm_cap:State_GetFldPtr)'

    call ESMF_StateGet(ST, itemName=trim(fldname), field=lfield, rc=lrc)
    if (ESMF_LogFoundError(rcToCheck=lrc, msg=ESMF_LOGERR_PASSTHRU, line=__LINE__, file=__FILE__)) return
    call ESMF_FieldGet(lfield, farrayPtr=fldptr, rc=lrc)
    if (ESMF_LogFoundError(rcToCheck=lrc, msg=ESMF_LOGERR_PASSTHRU, line=__LINE__, file=__FILE__)) return
    if (present(rc)) rc = lrc

    if (dump) then
       if (.not. present(timeStr)) timeStr="_"
        call ESMF_FieldWrite(lfield, &
        fileName='field_pahm_'//trim(fldname)//trim(timeStr)//'.nc', &
        rc=rc,overwrite=.true.)
        if (ESMF_LogFoundError(rcToCheck=rc, msg=ESMF_LOGERR_PASSTHRU, &
          line=__LINE__, &
          file=__FILE__)) &
          return  ! bail out
    endif
  end subroutine State_GetFldPtr_


  !> Retrieve a pointer to a field's data array from inside an ESMF_State object.
  !!
  !! @param ST the ESMF_State object
  !! @param fldname name of the fields
  !! @param fldptr pointer to 1D array
  !! @param rc return code
  subroutine State_GetFldPtr(ST, fldname, fldptr, rc)
    type(ESMF_State), intent(in) :: ST
    character(len=*), intent(in) :: fldname
    real(ESMF_KIND_R8), pointer, intent(in) :: fldptr(:)
    integer, intent(out), optional :: rc

    ! local variables
    type(ESMF_Field) :: lfield
    integer :: lrc
    character(len=*),parameter :: subname='(PAHM:State_GetFldPtr)'

    call ESMF_StateGet(ST, itemName=trim(fldname), field=lfield, rc=lrc)
    if (ESMF_LogFoundError(rcToCheck=lrc, msg=ESMF_LOGERR_PASSTHRU, line=__LINE__, file=__FILE__)) return
    call ESMF_FieldGet(lfield, farrayPtr=fldptr, rc=lrc)
    if (ESMF_LogFoundError(rcToCheck=lrc, msg=ESMF_LOGERR_PASSTHRU, line=__LINE__, file=__FILE__)) return
    if (present(rc)) rc = lrc
  end subroutine State_GetFldPtr



  subroutine CheckImport(model, rc)
    type(ESMF_GridComp)   :: model
    integer, intent(out)  :: rc
    
    ! This is the routine that enforces correct time stamps on import Fields
    
    ! local variables
    type(ESMF_Clock)        :: driverClock
    type(ESMF_Time)         :: startTime, currTime
    type(ESMF_State)        :: importState
    type(ESMF_Field)        :: field
    logical                 :: atCorrectTime

    rc = ESMF_SUCCESS
    return

    
!    ! query Component for the driverClock
!    call NUOPC_ModelGet(model, driverClock=driverClock, rc=rc)
!    if (ESMF_LogFoundError(rcToCheck=rc, msg=ESMF_LOGERR_PASSTHRU, &
!      line=__LINE__, &
!      file=__FILE__)) &
!      return  ! bail out
!    
!    ! get the start time and current time out of the clock
!    call ESMF_ClockGet(driverClock, startTime=startTime, &
!      currTime=currTime, rc=rc)
!    if (ESMF_LogFoundError(rcToCheck=rc, msg=ESMF_LOGERR_PASSTHRU, &
!      line=__LINE__, &
!      file=__FILE__)) &
!      return  ! bail out
    
   
  end subroutine


  !-----------------------------------------------------------------------
  !> Called by NUOPC at the end of the run to clean up.  The cap does
  !! this simply by calling PAHM_Final.
  !!
  !! @param gcomp the ESMF_GridComp object
  !! @param rc return code
    subroutine PAHM_model_finalize(gcomp, rc)

        ! input arguments
        type(ESMF_GridComp)  :: gcomp
        integer, intent(out) :: rc

        ! local variables
        type(ESMF_Clock)     :: clock
        type(ESMF_Time)                        :: currTime
        character(len=*),parameter  :: subname='(PAHM:pahm_model_finalize)'

        rc = ESMF_SUCCESS

        write(info,*) subname,' --- finalize called --- '
        call ESMF_LogWrite(info, ESMF_LOGMSG_INFO, rc=dbrc)

        call NUOPC_ModelGet(gcomp, modelClock=clock, rc=rc)
        if (ESMF_LogFoundError(rcToCheck=rc, msg=ESMF_LOGERR_PASSTHRU, &
            line=__LINE__, &
            file=__FILE__)) &
            return  ! bail out

        call ESMF_ClockGet(clock, currTime=currTime, rc=rc)
        if (ESMF_LogFoundError(rcToCheck=rc, msg=ESMF_LOGERR_PASSTHRU, &
            line=__LINE__, &
            file=__FILE__)) &
            return  ! bail out

        write(info,*) subname,' --- finalize completed --- '
        call ESMF_LogWrite(info, ESMF_LOGMSG_INFO, rc=dbrc)

    end subroutine PAHM_model_finalize

end module
