!------------------------------------------------------
!! @mainpage PaHM NUOPC Cap to exchange atm data with ocean/wave models
!! @author Panagiotis Velissariou (panagiotis.velissariou@noaa.gov)
!! @date 06/24/2021
!------------------------------------------------------

MODULE Pahm_Cap

  USE mpi
  USE ESMF
  USE NUOPC
  USE NUOPC_Model, &
    model_routine_SS        => SetServices,       &
    model_label_Advance     => label_Advance,     &
    model_label_CheckImport => label_CheckImport, &    
    model_label_Finalize    => label_Finalize

  USE PaHM_Global, ONLY: mdOutDT, wVelX, wVelY, wPress

  USE PaHM_Mod, ONLY: MeshData
  USE PaHM_Mod, only: PaHM_ExtractMeshData

  IMPLICIT NONE

  LOGICAL :: pahm_write_esmf_mesh = .FALSE.

  PRIVATE
  
  PUBLIC SetServices
  
  TYPE FldListType
    CHARACTER(LEN = 64) :: stdName
    CHARACTER(LEN = 64) :: shortName
    CHARACTER(LEN = 64) :: unit
    LOGICAL             :: assoc    ! is the farrayPtr associated with internal data
    LOGICAL             :: connected
    REAL(ESMF_KIND_R8), DIMENSION(:), POINTER :: farrayPtr
  END TYPE FldListType

  INTEGER, PARAMETER    :: fieldsMax = 20
  TYPE(FldListType)     :: fieldsToPaHM(fieldsMax), fieldsFromPaHM(fieldsMax)
  INTEGER               :: fieldsToPaHMCount = 0, fieldsFromPaHMCount = 0

  TYPE(MeshData), save  :: mdataIn, mdataOut
  CHARACTER(LEN = 2048) :: infoMsg
  INTEGER               :: dbrc     ! temporary debug rc value


  CONTAINS


  !----------------------------------------------------------------
  !  S U B R O U T I N E   S E T  S E R V I C E S
  !----------------------------------------------------------------
  !  author 
  !>
  !> NUOPC SetService method is the only public entry point.
  !! SetServices registers all of the user-provided subroutines
  !! in the module with the NUOPC layer.
  !!
  !! @param model an ESMF_GridComp object
  !! @param rc return code
  !----------------------------------------------------------------
  SUBROUTINE SetServices(model, rc)

    IMPLICIT NONE

    TYPE(ESMF_GridComp)  :: model
    INTEGER, INTENT(out) :: rc

    ! Local Variables
    CHARACTER(LEN = *), PARAMETER :: subName = '(PaHM_Cap:SetServices)'

    rc = ESMF_SUCCESS

    ! the NUOPC model component will register the generic methods
    CALL NUOPC_CompDerive(model, model_routine_SS, rc = rc)
    IF (ESMF_LogFoundError(rcToCheck = rc, msg = ESMF_LOGERR_PASSTHRU, &
      line = __LINE__, &
      file = __FILE__)) &
      RETURN  ! bail out
    
    ! set entry point for methods that require specific implementation
    CALL NUOPC_CompSetEntryPoint(model, ESMF_METHOD_INITIALIZE, &
      phaseLabelList = (/"IPDv00p1"/), userRoutine = InitializeP1, rc = rc)
    IF (ESMF_LogFoundError(rcToCheck = rc, msg = ESMF_LOGERR_PASSTHRU, &
      line = __LINE__, &
      file = __FILE__)) &
      RETURN  ! bail out
    CALL NUOPC_CompSetEntryPoint(model, ESMF_METHOD_INITIALIZE, &
      phaseLabelList = (/"IPDv00p2"/), userRoutine = InitializeP2, rc = rc)
    IF (ESMF_LogFoundError(rcToCheck = rc, msg = ESMF_LOGERR_PASSTHRU, &
      line = __LINE__, &
      file = __FILE__)) &
      RETURN  ! bail out

    ! attach specializing method(s)
    CALL NUOPC_CompSpecialize(model, specLabel = model_label_Advance, &
      specRoutine = ModelAdvance, rc = rc)
    IF (ESMF_LogFoundError(rcToCheck = rc, msg = ESMF_LOGERR_PASSTHRU, &
      line = __LINE__, &
      file = __FILE__)) &
      RETURN  ! bail out

    CALL NUOPC_CompSpecialize(model, specLabel = model_label_Finalize, &
      specRoutine = PaHM_model_finalize, rc = rc)
    IF (ESMF_LogFoundError(rcToCheck = rc, msg = ESMF_LOGERR_PASSTHRU, &
      line = __LINE__, &
      file = __FILE__)) &
      RETURN  ! bail out

    WRITE(infoMsg,*) subName,' --- pahm SetServices completed --- '
    CALL ESMF_LogWrite(infoMsg, ESMF_LOGMSG_INFO, rc = rc)

  END SUBROUTINE SetServices

!================================================================================

  !----------------------------------------------------------------
  !  S U B R O U T I N E   I N I T I A L I Z E  P 1
  !----------------------------------------------------------------
  !  author 
  !>
  !> First initialize subroutine called by NUOPC.  The purpose
  !! is to set which version of the Initialize Phase Definition (IPD)
  !! to use.
  !!
  !! For this PaHM cap, we are using IPDv01.
  !!
  !! @param model an ESMF_GridComp object
  !! @param importState an ESMF_State object for import fields
  !! @param exportState an ESMF_State object for export fields
  !! @param clock an ESMF_Clock object
  !! @param rc return code
  !----------------------------------------------------------------
   SUBROUTINE InitializeP1(model, importState, exportState, clock, rc)

    USE PaHM_DriverMod, ONLY: PaHM_Init

    IMPLICIT NONE

    TYPE(ESMF_GridComp)  :: model
    TYPE(ESMF_State)     :: importState, exportState
    TYPE(ESMF_Clock)     :: clock
    INTEGER, INTENT(out) :: rc

    ! Local Variables
    INTEGER                       :: num
    CHARACTER(LEN = *), PARAMETER :: subName = '(PaHM_Cap:AdvertiseFields)'

    rc = ESMF_SUCCESS

    CALL PaHM_Init()
    WRITE(infoMsg,*) subName,' --- Using PaHM to generate wind fields --- '
    CALL ESMF_LogWrite(infoMsg, ESMF_LOGMSG_INFO, rc = rc)
    print *, 'Using PaHM to generate wind fields'

    CALL PaHM_FieldsSetup()

    !------------------------------------------------------------
    ! Imported fields to PaHM
    DO num = 1, fieldsToPaHMCount
      WRITE(infoMsg,*) subName, "fieldsToPaHM(num)%shortName  ", fieldsToPaHM(num)%shortName
      CALL ESMF_LogWrite(infoMsg, ESMF_LOGMSG_INFO, rc = dbrc)
    END DO

    CALL PaHM_AdvertiseFields(importState, fieldsToPaHMCount, fieldsToPaHM, rc)
    IF (ESMF_LogFoundError(rcToCheck = rc, msg = ESMF_LOGERR_PASSTHRU, &
      line = __LINE__, &
      file = __FILE__)) &
      RETURN  ! bail out
    !------------------------------------------------------------

    !------------------------------------------------------------
    ! Exported fields from PaHM
    DO num = 1, fieldsFromPaHMCount
      WRITE(infoMsg,*) subName,"fieldsFromPaHM(num)%stdName  ", fieldsFromPaHM(num)%stdName
      !WRITE(infoMsg,*) subName,"fieldsFromPaHM(num)%shortName  ", fieldsFromPaHM(num)%shortName
      CALL ESMF_LogWrite(infoMsg, ESMF_LOGMSG_INFO, rc = dbrc)
    END DO

    CALL PaHM_AdvertiseFields(exportState, fieldsFromPaHMCount, fieldsFromPaHM, rc)
    IF (ESMF_LogFoundError(rcToCheck = rc, msg = ESMF_LOGERR_PASSTHRU, &
      line = __LINE__, &
      file = __FILE__)) &
      RETURN  ! bail out
    !------------------------------------------------------------

    WRITE(infoMsg,*) subName,' --- initialization phase 1 completed --- '
    CALL ESMF_LogWrite(infoMsg, ESMF_LOGMSG_INFO, rc = dbrc)

  END SUBROUTINE InitializeP1

!================================================================================

  !----------------------------------------------------------------
  !  S U B R O U T I N E   I N I T I A L I Z E  P 2
  !----------------------------------------------------------------
  !  author 
  !>
  !> Called by NUOPC to realize import and export fields.
  !! The fields to import and export are stored in the fieldsToPaHM and fieldsFromPaHM
  !! arrays, respectively.  Each field entry includes the standard name,
  !! information about whether the field's grid will be provided by the cap,
  !! and optionally a pointer to the field's data array.  Currently, all fields
  !! are defined on the same mesh defined by the cap.
  !! The fields are created by calling PaHM::pahm_XXXXXXXXXXXXXXXXXXX.
  !!
  !! @param model an ESMF_GridComp object
  !! @param importState an ESMF_State object for import fields
  !! @param exportState an ESMF_State object for export fields
  !! @param clock an ESMF_Clock object
  !! @param rc return code
  !----------------------------------------------------------------
  SUBROUTINE InitializeP2(model, importState, exportState, clock, rc)

    USE PaHM_Mod, ONLY : CreateESMFMeshFromMeshData, PaHM_ExtractMeshData

    IMPLICIT NONE

    TYPE(ESMF_GridComp)  :: model
    TYPE(ESMF_State)     :: importState, exportState
    TYPE(ESMF_Clock)     :: clock, driverClock
    INTEGER, INTENT(out) :: rc
    
    ! Local variables    
    TYPE(MeshData)              :: mdata
    TYPE(ESMF_Mesh)             :: modelMesh, meshIn, meshOut
    TYPE(ESMF_VM)               :: vm
    INTEGER                     :: localPet, petCount
    CHARACTER(LEN = *), PARAMETER :: subName = '(PaHM_Cap:RealizeFieldsProvidingGrid)'

    rc = ESMF_SUCCESS

    ! Get current ESMF VM.
    CALL ESMF_VMGetCurrent(vm, rc = rc)
    IF (ESMF_LogFoundError(rcToCheck = rc, msg = ESMF_LOGERR_PASSTHRU, &
      line = __LINE__, &
      file = __FILE__)) &
      RETURN  ! bail out

    ! Get query local pet information for handling global node information
    CALL ESMF_VMGet(vm, localPet = localPet, petCount = petCount, rc = rc)
    !PV out CALL ESMF_VMPrint(vm, rc = rc)

    ! Assign VM to mesh data type.
    mdata%vm = vm

    CALL PaHM_ExtractMeshData(mdata)

    CALL CreateESMFMeshFromMeshData(mdata, modelMesh)

    IF (pahm_write_esmf_mesh) THEN
      CALL ESMF_MeshWrite(modelMesh, filename = "pahm_mesh.nc", rc = rc)
      IF (ESMF_LogFoundError(rcToCheck = rc, msg = ESMF_LOGERR_PASSTHRU, &
        line = __LINE__, &
        file = __FILE__)) &
        RETURN  ! bail out
    END IF

    meshIn  = modelMesh ! for now out same as in
    meshOut = meshIn

    mdataIn  = mdata
    mdataOut = mdata


    !------------------------------------------------------------
    ! Imported fields to PaHM (none)
    CALL PaHM_RealizeFields(importState, meshIn , mdata, fieldsToPaHMCount, fieldsToPaHM, "PaHM import", rc)
    IF (ESMF_LogFoundError(rcToCheck = rc, msg = ESMF_LOGERR_PASSTHRU, &
        line = __LINE__, &
        file = __FILE__)) &
        RETURN  ! bail out


    !------------------------------------------------------------
    ! Exported fields from PaHM
    CALL PaHM_RealizeFields(exportState, meshOut, mdata, fieldsFromPaHMCount, fieldsFromPaHM, "PaHM export", rc)
    IF (ESMF_LogFoundError(rcToCheck = rc, msg = ESMF_LOGERR_PASSTHRU, &
        line = __LINE__, &
        file = __FILE__)) &
        RETURN  ! bail out


    WRITE(infoMsg,*) subName,' --- initialization phase 2 completed --- '
    CALL ESMF_LogWrite(infoMsg, ESMF_LOGMSG_INFO, &
         line = __LINE__, &
         file = __FILE__, &
         rc = dbrc)

  END SUBROUTINE InitializeP2

!================================================================================

  !----------------------------------------------------------------
  !  S U B R O U T I N E   M O D E L  A D V A N C E
  !----------------------------------------------------------------
  !  author 
  !>
  !> Called by NUOPC to advance the PaHM model a single timestep >>>>>
  !! <<<<<<<<<  TODO: check! this is not what we want!!!.
  !!
  !! This subroutine copies field data out of the cap import state and into the
  !! model internal arrays.  Then it calls PaHM_Run to make a NN timesteps.
  !! Finally, it copies the updated arrays into the cap export state.
  !!
  !! @param model an ESMF_GridComp object
  !! @param rc return code
  !----------------------------------------------------------------
  SUBROUTINE ModelAdvance(model, rc)

    USE PaHM_DriverMod, ONLY: PaHM_Run

    IMPLICIT NONE

    TYPE(ESMF_GridComp)  :: model
    INTEGER, INTENT(out) :: rc

    ! Local variables
    TYPE(ESMF_Clock)            :: clock
    TYPE(ESMF_State)            :: importState, exportState
    TYPE(ESMF_Time)             :: currTime
    TYPE(ESMF_TimeInterval)     :: timeStep
    CHARACTER(LEN = *), PARAMETER :: subName = '(PaHM_Cap:ModelAdvance)'

    !imports


    ! exports
    REAL(ESMF_KIND_R8), POINTER :: dataPtr_izwh10m(:)
    REAL(ESMF_KIND_R8), POINTER :: dataPtr_imwh10m(:)
    REAL(ESMF_KIND_R8), POINTER :: dataPtr_pmsl(:)

    TYPE(ESMF_StateItem_Flag)   :: itemType
    TYPE(ESMF_Mesh)             :: mesh
    TYPE(ESMF_Field)            :: lfield
    CHARACTER(LEN = 128)        :: fldName,timeStr
    INTEGER                     :: iCnt

    INTEGER                     :: cntCplStep
    REAL(ESMF_KIND_R8)          :: timeStepAbs

    ! Local variables
    INTEGER :: YY, MM, DD, H, M, S
    INTEGER :: ss, ssN, ssD

    rc = ESMF_SUCCESS

    ! query the Component for its clock, importState and exportState
    CALL NUOPC_ModelGet(model, modelClock = clock, importState = importState, &
      exportState = exportState, rc = rc)
    IF (ESMF_LogFoundError(rcToCheck = rc, msg = ESMF_LOGERR_PASSTHRU, &
        line = __LINE__,  &
        file = __FILE__)) &
      RETURN  ! bail out

    ! HERE THE MODEL ADVANCES: currTime -> currTime + timeStep

    ! Because of the way that the internal Clock was set in SetClock(),
    ! its timeStep is likely smaller than the parent timeStep. As a consequence
    ! the time interval covered by a single parent timeStep will result in
    ! multiple calls to the ModelAdvance() routine. Every time the currTime
    ! will come in by one internal timeStep advanced. This goes until the
    ! stopTime of the internal Clock has been reached.

    CALL ESMF_ClockPrint(clock, options = "currTime", &
      preString = "------>Advancing PaHM from: ", rc = rc)
    IF (ESMF_LogFoundError(rcToCheck = rc, msg = ESMF_LOGERR_PASSTHRU, &
        line = __LINE__,  &
        file = __FILE__)) &
      RETURN  ! bail out

    CALL ESMF_ClockGet(clock, currTime = currTime, timeStep = timeStep, rc = rc)
    IF (ESMF_LogFoundError(rcToCheck = rc, msg = ESMF_LOGERR_PASSTHRU, &
        line = __LINE__,  &
        file = __FILE__)) &
      RETURN  ! bail out

    CALL ESMF_TimePrint(currTime + timeStep, &
      preString = "------------------PaHM-------------> to: ", rc = rc)
    IF (ESMF_LogFoundError(rcToCheck = rc, msg = ESMF_LOGERR_PASSTHRU, &
        line = __LINE__,  &
        file = __FILE__)) &
      RETURN  ! bail out

    CALL ESMF_TimeGet(currTime, yy = YY, mm = MM, dd = DD, h = H, m = M, s = S, rc = rc)
    IF (ESMF_LogFoundError(rcToCheck = rc, msg = ESMF_LOGERR_PASSTHRU, &
        line = __LINE__,  &
        file = __FILE__)) &
      RETURN  ! bail out

    WRITE(infoMsg, *) "PaHM currTime = ", YY, "/", MM, "/", DD," ", H, ":", M, ":", S
    CALL ESMF_LogWrite(infoMsg, ESMF_LOGMSG_INFO, line = __LINE__, file = __FILE__, rc = rc)
    
    CALL ESMF_TimeGet(currTime, timeStringISOFrac = timeStr , rc = rc)
    IF (ESMF_LogFoundError(rcToCheck = rc, msg = ESMF_LOGERR_PASSTHRU, &
        line = __LINE__,  &
        file = __FILE__)) &
      RETURN  ! bail out

    CALL ESMF_TimeIntervalGet(timeStep, s = ss,sN = ssN,sD = ssD,rc = rc)
    IF (ESMF_LogFoundError(rcToCheck = rc, msg = ESMF_LOGERR_PASSTHRU, &
        line = __LINE__,  &
        file = __FILE__)) &
      RETURN  ! bail out

    ! Get the data arrays
    ! In PaHM outDT is the user time step and it can be one of Sec, Min, Hours, Days
    ! and mdOutDT is always in Sec (converted outDT)
    timeStepAbs = REAL(ss) + REAL(ssN / ssD)
    IF (MOD(timeStepAbs, mdOutDT) == 0) THEN
      cntCplStep = NINT(timeStepAbs / mdOutDT)
    ELSE
      cntCplStep = NINT(timeStepAbs / mdOutDT) + 1
    END IF

    CALL PaHM_Run(cntCplStep)


    !------------------------------------------------------------
    ! Imported fields to PaHM: nothing to be imported
    !------------------------------------------------------------


    !------------------------------------------------------------
    ! Exported fields from PaHM: pack and send exported fields
    !------------------------------------------------------------
    !--- (FIELD 1): PACK and send u-x wind component
    ALLOCATE(dataPtr_izwh10m(mdataOut%NumOwnedNd))

    CALL State_GetFldPtr(ST = exportState, fldName = 'izwh10m', fldPtr = dataPtr_izwh10m, &
                         rc = rc, dump = .FALSE., timeStr = timeStr)
    IF (ESMF_LogFoundError(rcToCheck = rc, msg = ESMF_LOGERR_PASSTHRU, &
        line = __LINE__,  &
        file = __FILE__)) &
      RETURN  ! bail out

    ! Fill only owned nodes for dataPtr_izwh10m vector
    DO iCnt = 1, mdataOut%NumOwnedNd, 1
      dataPtr_izwh10m(iCnt) = wVelX(mdataOut%owned_to_present_nodes(iCnt))
    END DO

    !--- (FIELD 2): PACK and send v-y wind component
    ALLOCATE(dataPtr_imwh10m(mdataOut%NumOwnedNd))

    CALL State_GetFldPtr(ST = exportState,fldName = 'imwh10m', fldPtr = dataPtr_imwh10m, &
                         rc = rc, dump = .FALSE., timeStr = timeStr)
    IF (ESMF_LogFoundError(rcToCheck = rc, msg = ESMF_LOGERR_PASSTHRU, &
        line = __LINE__,  &
        file = __FILE__)) &
      RETURN  ! bail out

    ! Fill only owned nodes for dataPtr_imwh10m vector
    DO iCnt = 1, mdataOut%NumOwnedNd, 1
      dataPtr_imwh10m(iCnt) = wVelY(mdataOut%owned_to_present_nodes(iCnt))
    END DO

    !--- (FIELD 3): PACK and send pmsl
    ALLOCATE(dataPtr_pmsl(mdataOut%NumOwnedNd))

    CALL State_GetFldPtr(ST = exportState, fldName = 'pmsl', fldPtr = dataPtr_pmsl, &
                         rc = rc,dump = .FALSE., timeStr = timeStr)
    IF (ESMF_LogFoundError(rcToCheck = rc, msg = ESMF_LOGERR_PASSTHRU, &
        line = __LINE__,  &
        file = __FILE__)) &
      RETURN  ! bail out

    ! Fill only owned nodes for dataPtr_pmsl vector
    DO iCnt = 1, mdataOut%NumOwnedNd, 1
      dataPtr_pmsl(iCnt) = wPress(mdataOut%owned_to_present_nodes(iCnt))

      IF (ABS(dataPtr_pmsl(iCnt)) > 1e11) THEN
        STOP '  dataPtr_pmsl > mask1 > in PaHM ! '     
      END IF
    END DO

  END SUBROUTINE ModelAdvance

!================================================================================

  !----------------------------------------------------------------
  !  S U B R O U T I N E   P A H M _ M O D E L _ F I N A L I Z E
  !----------------------------------------------------------------
  !  author 
  !>
  !> Called by NUOPC at the end of the run to clean up.  The cap does
  !! this simply by calling PaHM_Final.
  !!
  !! @param model the ESMF_GridComp object
  !! @param rc return code
  !----------------------------------------------------------------
  SUBROUTINE PaHM_model_finalize(model, rc)

    USE PaHM_DriverMod, ONLY: PaHM_Finalize

    IMPLICIT NONE

    ! input arguments
    TYPE(ESMF_GridComp)  :: model
    INTEGER, INTENT(OUT) :: rc

    ! Local variables
    TYPE(ESMF_Clock)               :: clock
    TYPE(ESMF_Time)                :: currTime
    CHARACTER(LEN = *), PARAMETER  :: subName = '(PaHM_Cap:pahm_model_finalize)'

    rc = ESMF_SUCCESS

    WRITE(infoMsg,*) subName,' --- finalize called --- '
    CALL ESMF_LogWrite(infoMsg, ESMF_LOGMSG_INFO, rc = dbrc)

    CALL NUOPC_ModelGet(model, modelClock = clock, rc = rc)
    IF (ESMF_LogFoundError(rcToCheck = rc, msg = ESMF_LOGERR_PASSTHRU, &
        line = __LINE__,  &
        file = __FILE__)) &
      RETURN  ! bail out

    CALL ESMF_ClockGet(clock, currTime = currTime, rc = rc)
    IF (ESMF_LogFoundError(rcToCheck = rc, msg = ESMF_LOGERR_PASSTHRU, &
        line = __LINE__,  &
        file = __FILE__)) &
      RETURN  ! bail out

    CALL PaHM_Finalize()
        
    WRITE(infoMsg,*) subName,' --- finalize completed --- '
    CALL ESMF_LogWrite(infoMsg, ESMF_LOGMSG_INFO, rc = dbrc)

  END SUBROUTINE PaHM_model_finalize

!================================================================================

  !----------------------------------------------------------------
  !  S U B R O U T I N E   P A H M _ A D V E R T I S E F I E L D S
  !----------------------------------------------------------------
  !  author 
  !>
  !> Advertises a set of fields in an ESMF_State object by calling
  !! NUOPC_Advertise in a loop.
  !!
  !! @param state the ESMF_State object in which to advertise the fields
  !! @param nfields number of fields
  !! @param field_defs an array of FldListType listing the fields to advertise
  !! @param rc return code
  !----------------------------------------------------------------
  SUBROUTINE PaHM_AdvertiseFields(state, nfields, field_defs, rc)

    IMPLICIT NONE

    TYPE(ESMF_State), INTENT(INOUT)  :: state
    INTEGER, INTENT(IN)              :: nfields
    TYPE(FldListType), INTENT(INOUT) :: field_defs(:)
    INTEGER, INTENT(INOUT)           :: rc

    INTEGER                          :: i
    CHARACTER(LEN = *), PARAMETER    :: subName = '(PaHM_Cap:PaHM_AdvertiseFields)'

    rc = ESMF_SUCCESS

    DO i = 1, nfields
      CALL ESMF_LogWrite('Advertise: '//trim(field_defs(i)%stdName), ESMF_LOGMSG_INFO, rc = rc)
      IF (ESMF_LogFoundError(rcToCheck = rc, msg = ESMF_LOGERR_PASSTHRU, &
          line = __LINE__,  &
          file = __FILE__)) &
        RETURN  ! bail out

      CALL NUOPC_Advertise(state, &
        standardName = field_defs(i)%stdName, &
        name = field_defs(i)%shortName, &
        rc = rc)
      IF (ESMF_LogFoundError(rcToCheck = rc, msg = ESMF_LOGERR_PASSTHRU, &
          line = __LINE__,  &
          file = __FILE__)) &
        RETURN  ! bail out
      !print *, 'Advertise: '//trim(field_defs(i)%stdName)//'---'//trim(field_defs(i)%shortName)
    END DO
    !print *,      subName,' --- IN   --- '

  END SUBROUTINE PaHM_AdvertiseFields

!================================================================================

  !----------------------------------------------------------------
  !  S U B R O U T I N E   P A H M _ F I E L D S S E T U P
  !----------------------------------------------------------------
  !  author 
  !>
  !> Subroutine to set up the required import/export fields.
  !----------------------------------------------------------------
  SUBROUTINE PaHM_FieldsSetup()

    IMPLICIT NONE

    INTEGER                       :: rc
    CHARACTER(LEN = *),PARAMETER  :: subName='(PaHM_Cap:PaHM_FieldsSetup)'

    !------------------------------------------------------------
    ! Import fields to PaHM
    ! Nothing to import. PaHM is one-way coupled
    !------------------------------------------------------------

    !------------------------------------------------------------
    ! Export fields from PaHM
    CALL fld_list_add(num = fieldsFromPaHMCount, fldlist = fieldsFromPaHM, &
                      stdName = "air_pressure_at_sea_level", shortName = "pmsl")
    CALL fld_list_add(num = fieldsFromPaHMCount, fldlist = fieldsFromPaHM, &
                      stdName = "inst_zonal_wind_height10m", shortName = "izwh10m")
    CALL fld_list_add(num = fieldsFromPaHMCount, fldlist = fieldsFromPaHM, &
                      stdName = "inst_merid_wind_height10m", shortName = "imwh10m")
    !------------------------------------------------------------

    WRITE(infoMsg,*) subName,' --- Passed--- '
    CALL ESMF_LogWrite(infoMsg, ESMF_LOGMSG_INFO, rc = rc)     

  END SUBROUTINE PaHM_FieldsSetup

!================================================================================

  !----------------------------------------------------------------
  !  S U B R O U T I N E   F L D _ L I S T _ A D D
  !----------------------------------------------------------------
  !  author 
  !>
  !> Subroutine to set up a list of field information.
  !----------------------------------------------------------------
  SUBROUTINE fld_list_add(num, fldlist, stdName, data, shortName, unit)

    IMPLICIT NONE

    INTEGER, INTENT(INOUT)                             :: num
    TYPE(FldListType), INTENT(INOUT)                   :: fldlist(:)
    CHARACTER(LEN = *), INTENT(IN)                     :: stdName
    REAL(ESMF_KIND_R8), DIMENSION(:), OPTIONAL, TARGET :: data
    CHARACTER(LEN = *), INTENT(IN),   OPTIONAL         :: shortName
    CHARACTER(LEN = *), INTENT(IN),   OPTIONAL         :: unit

    ! Local variables
    INTEGER :: rc
    CHARACTER(LEN = *), PARAMETER :: subName = '(PaHM_Cap:fld_list_add)'

    ! fill in the new entry
    num = num + 1
    IF (num > fieldsMax) THEN
      CALL ESMF_LogWrite(trim(subName)//": ERROR num gt fieldsMax "//trim(stdName), &
        ESMF_LOGMSG_ERROR, line = __LINE__, file = __FILE__, rc = rc)
      RETURN
    END IF

    fldlist(num)%stdName = trim(stdName)
    IF (PRESENT(shortName)) THEN
       fldlist(num)%shortName = trim(shortName)
    ELSE
       fldlist(num)%shortName = trim(stdName)
    END IF

    IF (PRESENT(data)) THEN
      fldlist(num)%assoc = .TRUE.
      fldlist(num)%farrayPtr => data
    ELSE
      fldlist(num)%assoc = .FALSE.
    END IF

    IF (PRESENT(unit)) THEN
       fldlist(num)%unit = unit
    END IF

    WRITE(infoMsg,*) subName,' --- Passed--- '

  END SUBROUTINE fld_list_add

!================================================================================

  !----------------------------------------------------------------
  !  S U B R O U T I N E   P A H M _ R E A L I Z E F I E L D S
  !----------------------------------------------------------------
  !  author 
  !>
  !> Adds a set of fields to an ESMF_State object.  Each field is wrapped
  !! in an ESMF_Field object.  Memory is either allocated by ESMF or
  !! an existing PaHM pointer is referenced.
  !!
  !! @param state the ESMF_State object to add fields to
  !! @param grid the ESMF_Grid object on which to define the fields
  !! @param nfields number of fields
  !! @param field_defs array of FldListType indicating the fields to add
  !! @param tag used to output to the log
  !! @param rc return code
  !----------------------------------------------------------------
  SUBROUTINE PaHM_RealizeFields(state, mesh, mdata, nfields, field_defs, tag, rc)

    IMPLICIT NONE

    TYPE(ESMF_State), INTENT(INOUT)  :: state
    TYPE(ESMF_Mesh), INTENT(IN)      :: mesh
    TYPE(MeshData)                   :: mdata
    INTEGER, INTENT(IN)              :: nfields
    TYPE(FldListType), INTENT(INOUT) :: field_defs(:)
    CHARACTER(LEN = *), INTENT(IN)   :: tag
    INTEGER, INTENT(INOUT)           :: rc

    TYPE(ESMF_Field)                 :: field
    INTEGER                          :: i
    CHARACTER(LEN = *), PARAMETER    :: subName = '(PaHM_Cap:PaHM_RealizeFields)'

    rc = ESMF_SUCCESS

    DO i = 1, nfields
      field = ESMF_FieldCreate(name = field_defs(i)%shortName, mesh = mesh, &
        typekind = ESMF_TYPEKIND_R8, rc = rc)
      IF (ESMF_LogFoundError(rcToCheck = rc, msg = ESMF_LOGERR_PASSTHRU, &
          line = __LINE__,  &
          file = __FILE__)) &
        RETURN  ! bail out

      IF (NUOPC_IsConnected(state, fieldName = field_defs(i)%shortName)) THEN
        CALL NUOPC_Realize(state, field = field, rc = rc)
        IF (ESMF_LogFoundError(rcToCheck = rc, msg = ESMF_LOGERR_PASSTHRU, &
            line = __LINE__,  &
            file = __FILE__)) &
          RETURN  ! bail out

        CALL ESMF_LogWrite(subName // tag // " Field "// field_defs(i)%stdName // " is connected.", &
                           ESMF_LOGMSG_INFO, &
                           line = __LINE__,  &
                           file = __FILE__,  &
                           rc = dbrc)

        field_defs(i)%connected = .TRUE.
      ELSE
        CALL ESMF_LogWrite(subName // tag // " Field "// field_defs(i)%stdName // " is not connected.", &
                           ESMF_LOGMSG_INFO, &
                           line = __LINE__,  &
                           file = __FILE__,  &
                           rc = dbrc)

        ! TODO: Initialize the value in the pointer to 0 after proper restart is setup
        !if(associated(field_defs(i)%farrayPtr) ) field_defs(i)%farrayPtr = 0.0
        ! remove a not connected Field from State
        CALL ESMF_StateRemove(state, (/field_defs(i)%shortName/), rc = rc)
        IF (ESMF_LogFoundError(rcToCheck = rc, msg = ESMF_LOGERR_PASSTHRU, &
            line = __LINE__,  &
            file = __FILE__)) &
          RETURN  ! bail out

        field_defs(i)%connected = .FALSE.
      END IF
    END DO

    WRITE(infoMsg,*) subName,' --- OUT--- '
    CALL ESMF_LogWrite(infoMsg, ESMF_LOGMSG_INFO, line = __LINE__, file = __FILE__, rc = rc)

  END SUBROUTINE PaHM_RealizeFields

!================================================================================

  !----------------------------------------------------------------
  !  S U B R O U T I N E   S T A T E _ G E T F L D P T R
  !----------------------------------------------------------------
  !  author 
  !>
  !> Retrieve a pointer to a field's data array from inside an ESMF_State object.
  !!
  !! @param ST the ESMF_State object
  !! @param fldName name of the fields
  !! @param fldPtr pointer to 1D array
  !! @param rc return code
  !----------------------------------------------------------------
  SUBROUTINE State_GetFldPtr(ST, fldName, fldPtr, rc, dump, timeStr)

    IMPLICIT NONE

    TYPE(ESMF_State), INTENT(IN)            :: ST
    CHARACTER(LEN = *), INTENT(IN)          :: fldName
    REAL(ESMF_KIND_R8), POINTER, INTENT(IN) :: fldPtr(:)
    INTEGER, INTENT(OUT), OPTIONAL          :: rc
    LOGICAL, INTENT(IN), OPTIONAL           :: dump
    CHARACTER(LEN = 128),INTENT(INOUT), OPTIONAL :: timeStr

    ! Local variables
    TYPE(ESMF_Field) :: lfield
    INTEGER          :: lrc
    CHARACTER(LEN = *), PARAMETER :: subName = '(PaHM_Cap:State_GetFldPtr)'

    CALL ESMF_StateGet(ST, itemName = trim(fldName), field = lfield, rc = lrc)
    IF (ESMF_LogFoundError(rcToCheck = lrc, msg = ESMF_LOGERR_PASSTHRU, line = __LINE__, file = __FILE__)) RETURN

    CALL ESMF_FieldGet(lfield, farrayPtr = fldPtr, rc = lrc)
    IF (ESMF_LogFoundError(rcToCheck = lrc, msg = ESMF_LOGERR_PASSTHRU, line = __LINE__, file = __FILE__)) RETURN
    IF (PRESENT(rc)) rc = lrc

    IF (dump) THEN
      IF (.NOT. PRESENT(timeStr)) timeStr = "_"
      CALL ESMF_FieldWrite(lfield, &
      fileName = 'field_pahm_'//trim(fldName)//trim(timeStr)//'.nc', &
      rc = rc,overwrite = .TRUE.)
      IF (ESMF_LogFoundError(rcToCheck = rc, msg = ESMF_LOGERR_PASSTHRU, &
          line = __LINE__,  &
          file = __FILE__)) &
        RETURN  ! bail out
    END IF

  END SUBROUTINE State_GetFldPtr

!================================================================================

  SUBROUTINE CheckImport(model, rc)

    IMPLICIT NONE

    TYPE(ESMF_GridComp)   :: model
    INTEGER, INTENT(OUT)  :: rc
    
    ! This is the routine that enforces correct time stamps on imported fields
    
    ! Local variables
    TYPE(ESMF_Clock)        :: driverClock
    TYPE(ESMF_Time)         :: startTime, currTime
    TYPE(ESMF_State)        :: importState
    TYPE(ESMF_Field)        :: field
    logical                 :: atCorrectTime

    rc = ESMF_SUCCESS
    RETURN
    
!   ! Query Component for the driverClock
!   CALL NUOPC_ModelGet(model, driverClock = driverClock, rc = rc)
!   IF (ESMF_LogFoundError(rcToCheck = rc, msg = ESMF_LOGERR_PASSTHRU, &
!       line = __LINE__, &
!       file = __FILE__)) &
!     RETURN  ! bail out
!   
!   ! Get the start time and current time out of the clock
!   CALL ESMF_ClockGet(driverClock, startTime = startTime, &
!     currTime = currTime, rc = rc)
!   IF (ESMF_LogFoundError(rcToCheck = rc, msg = ESMF_LOGERR_PASSTHRU, &
!       line = __LINE__, &
!       file = __FILE__)) &
!     RETURN  ! bail out

  END SUBROUTINE CheckImport

!================================================================================

END MODULE Pahm_Cap
