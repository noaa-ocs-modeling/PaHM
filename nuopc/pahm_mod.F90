!>
!! @mainpage PaHM NUOPC Cap to exchange atm data with ocean models
!! @author Panagiotis Velissariou (panagiotis.velissariou@noaa.gov)
!! @author Saeed Moghimi (saeed.moghimi@noaa.gov)
!! @date 06/24/2021
!------------------------------------------------------

MODULE PaHM_Mod

  !-----------------------------------------------------------------------------
  ! ADCIRC mesh utility
  !-----------------------------------------------------------------------------
  USE mpi
  USE ESMF
  USE NUOPC
  USE NetCDF

  USE PaHM_Mesh

  IMPLICIT NONE

  ! Reading data time management information
  CHARACTER (LEN = 280) :: atm_dir, atm_nam
  CHARACTER (LEN = 280) :: pahm_dir, pahm_nam
  LOGICAL :: pahm_from_file
  CHARACTER (LEN = 280) :: FILE_NAME
  CHARACTER (LEN =2048) :: infoMsg

     
  ! Information for reading pahm NetCDF file
  integer               :: nnode,nelem , ntime, noel
  REAL(ESMF_KIND_R8), ALLOCATABLE     :: LONS(:), LATS(:),TIMES(:)
  INTEGER           , ALLOCATABLE     :: TRI(:,:)
  INTEGER           , ALLOCATABLE     :: TRID(:,:)
  REAL(ESMF_KIND_R8), ALLOCATABLE     :: UWND (:,:), VWND(:,:), PRES(:,:)
  !NetCDF vars
  INTEGER :: ncid, NOD_dimid, rec_dimid, ELM_dimid, NOE_dimid
  INTEGER :: LON_varid, LAT_varid, rec_varid, tri_varid
  INTEGER :: UWND_varid, VWND_varid, PRES_varid

  !> \author Ali Samii - 2016
  !! See: https://github.com/samiiali
  !! \brief This object stores the data required for construction of a parallel or serial
  !! ESMF_Mesh from <tt>fort.14, fort.18, partmesh.txt</tt> files.
  !!
  TYPE MeshData
    !> \details vm is an ESMF_VM object.  ESMF_VM is just an ESMF virtual machine class,
    !! which we will use to get the data about the local PE and PE count.
    type(ESMF_VM)                      :: vm
    !> \details This array contains the node coordinates of the mesh. For
    !! example, in a 2D mesh, the \c jth coordinate of the \c nth node
    !! is stored in location <tt> 2*(n-1)+j</tt> of this array.
    real(ESMF_KIND_R8), allocatable    :: ndCoords(:)
    !> \details This array contains the elevation of different nodes of the mesh
    real(ESMF_KIND_R8), allocatable    :: bathymetry(:)
    !> \details Number of nodes present in the current PE. This is different from the
    !! number of nodes owned by this PE (cf. numOwnedNd)
    integer(ESMF_KIND_I4)              :: numNd
    !> \details Number of nodes owned by this PE. This is different from the number of
    !! nodes present in the current PE (cf. numNd)
    integer(ESMF_KIND_I4)              :: numOwnedNd
    !> \details Number of elements in the current PE. This includes ghost elements and
    !! owned elements. However, we do not bother to distinguish between owned
    !! element and present element (as we did for the nodes).
    integer(ESMF_KIND_I4)              :: numEl
    !> \details Number of nodes of each element, which is simply three in 2D ADCIRC.
    integer(ESMF_KIND_I4)              :: numNd_per_El
    !> \details Global node numbers of the nodes which are present in the current PE.
    integer(ESMF_KIND_I4), allocatable :: ndIDs(:)
    !> \details Global element numbers which are present in the current PE.
    integer(ESMF_KIND_I4), allocatable :: elIDs(:)
    !> \details The element connectivity array, for the present elements in the current PE.
    !! The node numbers are the local numbers of the present nodes. All the element
    !! connectivities are arranged in this one-dimensional array.
    integer(ESMF_KIND_I4), allocatable :: elConnect(:)
    !> \details The number of the PE's which own each of the nodes present this PE.
    !! This number is zero-based.
    integer(ESMF_KIND_I4), allocatable :: ndOwners(:)
    !> \details An array containing the element types, which are all triangles in our
    !! application.
    integer(ESMF_KIND_I4), allocatable :: elTypes(:)
    !> \details This is an array, which maps the indices of the owned nodes to the indices of the present
    !! nodes. For example, assume we are on <tt>PE = 1</tt>, and we have four nodes present, and the
    !! first and third nodes belong to <tt>PE = 0</tt>. So we have:
    !! \code
    !! numNd = 4
    !! numOwnedNd = 2
    !! ndOwners = (/0, 1, 0, 1/)
    !! ndIDs = (/2, 3, 5, 6/)
    !! owned_to_present = (/2, 4/)    <-- Because the first node owned by this PE is actually
    !!                                    the second node present on this PE, and so on.
    !! \endcode
    integer(ESMF_KIND_I4), allocatable :: owned_to_present_nodes(:)
  END TYPE MeshData


  CONTAINS


  !----------------------------------------------------------------
  !  S U B R O U T I N E   P A H M _ N C D F  I N I T
  !----------------------------------------------------------------
  !> author
  !>
  !>
  !!
  !!
  !----------------------------------------------------------------
  SUBROUTINE PaHM_NCDFInit()

    IMPLICIT NONE

    character (len = *), parameter :: NOD_NAME    = "node"
    character (len = *), parameter :: NOE_NAME    = "noel"
    character (len = *), parameter :: ELM_NAME    = "element"
    character (len = *), parameter :: LAT_NAME    = "latitude"
    character (len = *), parameter :: LON_NAME    = "longitude"
    character (len = *), parameter :: REC_NAME    = "time"
    character (len = *), parameter :: UWND_NAME   = "uwnd"
    character (len = *), parameter :: VWND_NAME   = "vwnd"
    character (len = *), parameter :: PRES_NAME   = "P"
    character (len = *), parameter :: TRI_NAME    = "tri"

    character (len = 140)          :: units
    character(len=*),parameter :: subname='(PaHM_Mod:PaHM_NCDFInit)'


    logical :: THERE
    integer :: lat, lon,i, iret, rc, num
    

    FILE_NAME =  TRIM(atm_dir)//'/'//TRIM(atm_nam)
    print *, ' FILE_NAME  > ', FILE_NAME
    INQUIRE( FILE= FILE_NAME, EXIST=THERE )
    if ( .not. THERE)  stop 'PaHM NetCDF grdfile does not exist!'

    ncid = 0
    ! Open the file.
    CALL check(  nf90_open(trim(FILE_NAME), NF90_NOWRITE, ncid))

    ! Get ID of unlimited dimension
    !CALL check( nf90_inquire(ncid, unlimitedDimId = rec_dimid) )

    ! Get ID of limited dimension
    CALL check( nf90_inq_dimid(ncid, REC_NAME, rec_dimid) )
    CALL check( nf90_inq_dimid(ncid, NOD_NAME, NOD_dimid) )
    CALL check( nf90_inq_dimid(ncid, ELM_NAME, ELM_dimid) )
    CALL check( nf90_inq_dimid(ncid, NOE_NAME, NOE_dimid) )

    ! How many values of "nodes" are there?
    CALL check(nf90_inquire_dimension(ncid, NOD_dimid, len = nnode) )
    CALL check(nf90_inquire_dimension(ncid, ELM_dimid, len = nelem) )
    CALL check(nf90_inquire_dimension(ncid, NOE_dimid, len = noel) )
    ! What is the name of the unlimited dimension, how many records are there?
    CALL check(nf90_inquire_dimension(ncid, rec_dimid, len = ntime))

    ! Get the varids of the pressure and temperature NetCDF variables.
    CALL check( nf90_inq_varid(ncid, LAT_NAME,     LAT_varid) )
    CALL check( nf90_inq_varid(ncid, LON_NAME,     LON_varid) )
    CALL check( nf90_inq_varid(ncid, REC_NAME,     rec_varid) )
    CALL check( nf90_inq_varid(ncid, UWND_NAME,    UWND_varid) )
    CALL check( nf90_inq_varid(ncid, VWND_NAME,    VWND_varid) )
    CALL check( nf90_inq_varid(ncid, PRES_NAME,    PRES_varid) )
    CALL check( nf90_inq_varid(ncid, TRI_NAME,     TRI_varid) )

    !allocate vars
    if(.not. allocated(LATS))  ALLOCATE(LATS  (1:nnode))
    if(.not. allocated(LONS))  ALLOCATE(LONS  (1:nnode))
    if(.not. allocated(TIMES)) ALLOCATE(TIMES (1:ntime))
    if(.not. allocated(TRI))   ALLOCATE(TRI  (1:noel ,1:nelem))
    if(.not. allocated(TRID))  ALLOCATE(TRID (1:noel ,1:nelem))
    ! read vars
    CALL check(nf90_get_var(ncid, LAT_varid, LATS ))
    CALL check(nf90_get_var(ncid, LON_varid, LONS ))
    CALL check(nf90_get_var(ncid, rec_varid, TIMES))
    !CALL check(nf90_get_var(ncid, UWND_varid, UWND  ))

    !TODO: Why the order is other way???? Might change the whole forcing fields!!!!<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< IMPORTANT <<<<<
    ! plot input and out put to be sure we are not scrambling the data. the same for HWRF NetCDF file
    CALL check(nf90_get_var(ncid, TRI_varid, TRI, start = (/1,1/),count = (/noel, nelem/)  ))
    !TRI = int( TRID )
    
    !do num = 1,10
    !    print *,  "TRI", TRI(1,num), TRI(2,num), TRI(3,num)
    !end do
    
    write(infoMsg,*) subname,' --- init pahm NetCDF file  --- '
    !print *, infoMsg
    CALL ESMF_LogWrite(infoMsg, ESMF_LOGMSG_INFO, rc=rc)

  END SUBROUTINE PaHM_NCDFInit

!================================================================================

  !----------------------------------------------------------------
  !  S U B R O U T I N E   P A H M _ N C D F  R E A D
  !----------------------------------------------------------------
  !> author
  !>
  !>
  !!
  !!
  !----------------------------------------------------------------
  SUBROUTINE PaHM_NCDFRead(currTime)
    IMPLICIT NONE

    TYPE(ESMF_Time), INTENT(IN)    :: currTime
    TYPE(ESMF_Time)                :: refTime
    TYPE(ESMF_TimeInterval)        :: dTime


    character (len = 140)          :: units
    character(len=*),parameter :: subname='(PaHM_Mod:PaHM_NCDFRead)'
    integer, parameter :: NDIMS = 2
    integer    :: start(NDIMS),count(NDIMS)
    logical    :: THERE
    real       :: delta_d_all (ntime) , delta_d_ref
    !integer   :: dimids(NDIMS)

    character  :: c1,c2,c3,c4,c5,c6,c7
    integer    :: yy,mm,dd,hh,min,ss
    integer    :: d_d, d_h, d_m, d_s
    integer    :: lat, lon,it, iret, rc

    rc = ESMF_SUCCESS

    !units = "days since 1990-01-01 00:00:00"
    CALL check(nf90_get_att(ncid,rec_varid,'units',units))
    READ(units,'(a4,a7,i4,a1,i2,a1,i2,a1,i2,a1,i2,a1,i2)',iostat=iret)  &
                 c1,c2,yy,c3,mm,c4,dd,c5,hh,c6,min,c7,ss

    if (iret .ne. 0) then
      print *, 'Fatal error: A non valid time units string was provided'
      stop 'pahm_mod: PaHM_NCDFRead'
    end if

    CALL ESMF_TimeSet(refTime, yy=yy, mm=mm, dd=dd, h=hh, m=min, s=ss, rc=rc)
    if (ESMF_LogFoundError(rcToCheck=rc, msg=ESMF_LOGERR_PASSTHRU, &
      line=__LINE__, &
      file=__FILE__)) &
      RETURN  ! bail out
  
    
    dTime = currTime - refTime
    CALL ESMF_TimeIntervalGet (dTime, d=d_d, h=d_h, m=d_m, s=d_s, rc=rc)
    if (ESMF_LogFoundError(rcToCheck=rc, msg=ESMF_LOGERR_PASSTHRU, &
      line=__LINE__, &
      file=__FILE__)) &
      RETURN  ! bail out

    delta_d_ref = d_d + d_h /24.0 + d_m / (24.0 * 60.0) +  d_s / (24.0 * 3600.0)

    do it = 1, ntime
      delta_d_all(it) =  delta_d_ref - TIMES (it)
    end do

    it = minloc(abs(delta_d_all),dim=1)

    if (abs(delta_d_all (it)) .gt. 7200.) then
       write(infoMsg,*) subname,' --- STOP PaHM: Time dif is GT 2 hours ---  '
       CALL ESMF_LogWrite(infoMsg, ESMF_LOGMSG_INFO, rc=rc)
       stop                  ' --- STOP PaHM: Time dif is GT 2 hours ---  '
    endif

    !it = 1
    !print *, 'pahm file it index > ',it

    write(infoMsg,*) subname,'pahm file it index > ',it
    !print *, infoMsg
    CALL ESMF_LogWrite(infoMsg, ESMF_LOGMSG_INFO, rc=rc)

    
    CALL ESMF_TimePrint(refTime, preString="PaHM refTime=  ", rc=rc)
    if (ESMF_LogFoundError(rcToCheck=rc, msg=ESMF_LOGERR_PASSTHRU, &
      line=__LINE__, &
      file=__FILE__)) &
      RETURN  ! bail out
    
    !write(infoMsg,*) ' Read PaHM NetCDF:',it, 
    !CALL ESMF_LogWrite(infoMsg, ESMF_LOGMSG_INFO, rc=rc)


    !alocate vars
    if(.not. allocated(UWND))   ALLOCATE(UWND (1:nnode,1))
    if(.not. allocated(VWND))   ALLOCATE(VWND (1:nnode,1))
    if(.not. allocated(PRES))   ALLOCATE(PRES (1:nnode,1))

    start = (/ 1   , it/)
    count = (/nnode, 1 /)  !for some reason the order here is otherway around?!

    !print *, start+count
    !print *,size(UWND(ntime,:))
    CALL check( nf90_get_var(ncid,UWND_varid, UWND, start, count) )
    CALL check( nf90_get_var(ncid,VWND_varid, VWND, start, count) )
    CALL check( nf90_get_var(ncid,PRES_varid, PRES, start, count) )

    !print *,FILE_NAME , '   HARD CODED for NOWWWW>>>>>     Time index from pahm file is > ', it, UWND(1:10,1)
    write(infoMsg,*) subname,' --- read PaHM NetCDF file  --- '
    !print *, infoMsg
    CALL ESMF_LogWrite(infoMsg, ESMF_LOGMSG_INFO, rc=rc)

  END SUBROUTINE PaHM_NCDFRead

!================================================================================

  !----------------------------------------------------------------
  !  S U B R O U T I N E   P A H M _ N C D F  E X T R A C T  M E S H  D A T A
  !----------------------------------------------------------------
  !> author
  !>
  !>
  !!
  !!
  !----------------------------------------------------------------
  SUBROUTINE PaHM_NCDFExtractMeshData(theData)

    IMPLICIT NONE

    TYPE(MeshData), INTENT(INOUT) :: theData

    INTEGER                               :: i1
    INTEGER, PARAMETER                    :: dim1=2, numNd_per_El=3

    theData%numEl = nelem
    theData%numNd = nnode

    ALLOCATE(theData%ndIDs(theData%numNd))
    ALLOCATE(theData%elIDs(theData%numEl))
    ALLOCATE(theData%ndCoords(dim1*theData%numNd))
    ALLOCATE(theData%bathymetry(theData%numNd))
    ALLOCATE(theData%elConnect(numNd_per_El*theData%numEl))
    ALLOCATE(theData%ndOwners(theData%numNd))
    ALLOCATE(theData%elTypes(theData%numEl))
    ALLOCATE(theData%owned_to_present_nodes(theData%numNd))

    do i1 = 1, theData%numNd, 1
            theData%ndIDs(i1)                 = i1
            theData%ndCoords((i1-1)*dim1 + 1) = LONS(i1)
            theData%ndCoords((i1-1)*dim1 + 2) = LATS(i1)
    end do
    do i1 = 1, theData%numEl, 1
            theData%elIDs(i1)                        =   i1
            theData%elConnect((i1-1)*numNd_per_El+1) = TRI(1,i1)
            theData%elConnect((i1-1)*numNd_per_El+2) = TRI(2,i1)
            theData%elConnect((i1-1)*numNd_per_El+3) = TRI(3,i1)
    end do
    !We have only one node therefore:
    theData%ndOwners = 0                  !process 0 owns all the nodes
    theData%numOwnedND = theData%numNd   !number of nodes = number of owned nodes
    theData%owned_to_present_nodes = theData%ndIDs

    theData%elTypes = ESMF_MESHELEMTYPE_TRI

    close(14)
  END SUBROUTINE PaHM_NCDFExtractMeshData

!================================================================================

  !----------------------------------------------------------------
  !  S U B R O U T I N E   P A H M _ E X T R A C T  M E S H  D A T A
  !----------------------------------------------------------------
  !> @author Panagiotis Velissariou <panagiotis.velissariou@noaa.gov>
  !>
  !> Extracts the mesh data from the mesh  file using PaHM's ReadMesh()
  !! subroutine and populates the MeshData object "theData" accordingly.
  !!
  !----------------------------------------------------------------
  SUBROUTINE PaHM_ExtractMeshData(theData)

    IMPLICIT NONE

    TYPE(MeshData), INTENT(INOUT) :: theData

    INTEGER                       :: iCnt
    INTEGER                       :: nDims, numFaceEl

    ! The ReadMesh() is called during the call of the subroutine InitalizeP2.
    ! InitalizeP2 calls PaHM_Init which calls ReadMesh(). All mesh variables
    ! are defined at the time ReadMesh() is called.

    nDims     = 2
    numFaceEl = 3

    theData%numNd = np
    theData%numEl = ne

    ALLOCATE(theData%ndIDs(theData%numNd))
    ALLOCATE(theData%elIDs(theData%numEl))
    ALLOCATE(theData%ndCoords(nDims * theData%numNd))
    ALLOCATE(theData%bathymetry(theData%numNd))
    ALLOCATE(theData%elConnect(numFaceEl * theData%numEl))
    ALLOCATE(theData%ndOwners(theData%numNd))
    ALLOCATE(theData%elTypes(theData%numEl))
    ALLOCATE(theData%owned_to_present_nodes(theData%numNd))

    ! The nodal points: slam = longitude, sfea = latitude of nodal points
    DO iCnt = 1, theData%numNd, 1
      theData%ndIDs(iCnt)                      = iCnt
      theData%ndCoords((iCnt - 1) * nDims + 1) = slam(iCnt)
      theData%ndCoords((iCnt - 1) * nDims + 2) = sfea(iCnt)
    END DO

    ! The element connectivity table  (note that it is stored as nm(np, 1:numFaceEl) instead of nm(1:numFaceEl, np)
    theData%elTypes = ESMF_MESHELEMTYPE_TRI
    DO iCnt = 1, theData%numEl, 1
      theData%elIDs(iCnt)                           = iCnt
      theData%elConnect((iCnt - 1) * numFaceEl + 1) = nm(iCnt, 1)
      theData%elConnect((iCnt - 1) * numFaceEl + 2) = nm(iCnt, 2)
      theData%elConnect((iCnt - 1) * numFaceEl + 3) = nm(iCnt, 3)
    END DO

    ! The bathymetry 
    theData%bathymetry = dp

    ! In PaHM we use just one node, therefore:
    theData%ndOwners = 0                  !process 0 owns all the nodes
    theData%numOwnedND = theData%numNd    !number of nodes = number of owned nodes
    theData%owned_to_present_nodes = theData%ndIDs

  END SUBROUTINE PaHM_ExtractMeshData

!================================================================================

  !----------------------------------------------------------------
  !  S U B R O U T I N E   C R E A T E  E S M F  M E S H  F R O M  M E S H D A T A
  !----------------------------------------------------------------
  !> @author Panagiotis Velissariou <panagiotis.velissariou@noaa.gov>
  !>
  !> @author Ali Samii - 2016
  !! See: https://github.com/samiiali
  !> @details Using the data available in <tt> fort.14, fort.18, partmesh.txt</tt> files
  !! this function extracts the scalars and arrays required for construction of a
  !! MeshData object.
  !! After calling this fucntion, one can call CreateESMFMeshFromMeshData()
  !! or create_masked_esmf_mesh_from_data() to create an ESMF_Mesh.
  !! @param vm This is an ESMF_VM object, which will be used to obtain the \c localPE
  !! and \c peCount of the \c MPI_Communicator.
  !! @param global_fort14_dir This is the directory path (relative to the executable
  !! or an absolute path) which contains the global \c fort.14 file (not the fort.14
  !! after decomposition).
  !! @param theData This is the output MeshData object.
  !!
  !> \details As the name of this function suggests, this funciton creates a parallel
  !! ESMF_Mesh from MeshData object. This function should be called collectively by
  !! all PEs for the parallel mesh to be created. The function, extract_parallel_data_from_mesh()
  !! should be called prior to calling this function.
  !! \param theData This the input MeshData object.
  !! \param outEsmfMesh This is the ouput ESMF_Mesh object.
  !----------------------------------------------------------------
  SUBROUTINE CreateESMFMeshFromMeshData(theData, outEsmfMesh)

    IMPLICIT NONE

    TYPE(MeshData), INTENT(IN)   :: theData
    TYPE(ESMF_Mesh), INTENT(OUT) :: outEsmfMesh

    INTEGER                      :: nDims, spaceDims
    INTEGER                      :: rc

    nDims     = 2
    spaceDims = 2

    outEsmfMesh = ESMF_MeshCreate(parametricDim = nDims, spatialDim = spaceDims,                   &
                                  nodeIDs = theData%ndIDs, nodeCoords = theData%ndCoords,          &
                                  nodeOwners = theData%ndOwners, elementIDs = theData%elIDs,       &
                                  elementTypes = theData%elTypes, elementConn = theData%elConnect, &
                                  rc = rc)

    if (ESMF_LogFoundError(rcToCheck = rc, msg = ESMF_LOGERR_PASSTHRU, &
        line = __LINE__,  &
        file = __FILE__)) &
        RETURN  ! bail out

  END SUBROUTINE CreateESMFMeshFromMeshData

!================================================================================

  !----------------------------------------------------------------
  !  S U B R O U T I N E   C H E C K
  !----------------------------------------------------------------
  !> author
  !>
  !>
  !!
  !!
  !----------------------------------------------------------------
  SUBROUTINE check(status)

    IMPLICIT NONE

    INTEGER, INTENT ( IN) :: status

    if(status /= nf90_noerr) then
      print *, trim(nf90_strerror(status))
      stop
    end if
  END SUBROUTINE check

!================================================================================

  !----------------------------------------------------------------
  !  F U N C T I O N   R E P L A C E  T E X T
  !----------------------------------------------------------------
  !> author
  !>
  !>
  !!
  !!
  !----------------------------------------------------------------
  FUNCTION ReplaceText(s,text,rep)  RESULT(outs)
    CHARACTER(*)        :: s,text,rep
    CHARACTER(LEN(s)+300) :: outs     ! provide outs with extra char len
    INTEGER             :: i, nt, nr

    outs = s ; nt = LEN_TRIM(text) ; nr = LEN_TRIM(rep)
      DO
         i = INDEX(outs,text(:nt)) ; IF (i == 0) EXIT
         outs = outs(:i-1) // rep(:nr) // outs(i+nt:)
      END DO
  END FUNCTION ReplaceText

!================================================================================

  !----------------------------------------------------------------
  !  S U B R O U T I N E   P A H M _ N C D F  I N I T
  !----------------------------------------------------------------
  !> author
  !>
  !>
  !!
  !!
  !----------------------------------------------------------------
  SUBROUTINE update_pahm_filename (YY, MM, DD, H)
    integer             :: YY, MM, DD, H
    CHARACTER(len=280)      :: inps     ! provide outs with extra 100 char len
    CHARACTER(len=4)        :: year
    CHARACTER(len=2)        :: mon,day
    CHARACTER(len=3)        :: hours

    ! example:  atm_nam: pahm.Constant.YYYYMMDD_sxy.nc
    inps = trim(atm_nam)

    write(year,"(I4.4)") YY
    inps =  ReplaceText(inps,'YYYY',year)

    write(mon,"(I2.2)")  MM
    inps =  ReplaceText(inps,'MM',mon)

    write(day,"(I2.2)")  DD
    inps =  ReplaceText(inps,'DD',day)

    !past hours from start date
    !write(hours,"(I3.3)") H
    !inps =  ReplaceText(inps,'HHH',hours)

    FILE_NAME =  TRIM(atm_dir)//'/'//TRIM(inps)

  END SUBROUTINE update_pahm_filename

!================================================================================

  !----------------------------------------------------------------
  !  S U B R O U T I N E   R E A D  C O N F I G
  !----------------------------------------------------------------
  !> author
  !>
  !>
  !!
  !!
  !----------------------------------------------------------------
  SUBROUTINE ReadConfig()

    CHARACTER(ESMF_MAXPATHLEN)    :: fname  ! config file name
    TYPE(ESMF_Config)             :: cf     ! the Config itself
    INTEGER                       :: rc

    rc             = ESMF_SUCCESS
    pahm_from_file = .FALSE.

   !Initiate reading resource file
    cf = ESMF_ConfigCreate(rc=rc)  ! Create the empty Config
    if (ESMF_LogFoundError(rcToCheck=rc, msg=ESMF_LOGERR_PASSTHRU, &
      line=__LINE__, file=__FILE__)) &
      RETURN  ! bail out

    fname = "config.rc" ! Name the Resource File
    CALL ESMF_ConfigLoadFile(cf, fname, rc=rc) ! Load the Resource File
    if (ESMF_LogFoundError(rcToCheck=rc, msg=ESMF_LOGERR_PASSTHRU, &
      line=__LINE__, file=__FILE__)) &
      RETURN  ! bail out

    ! Do not use defaults for PaHM, need to force the PaHM generation of wind fields
    ! if the user desires so.
    CALL ESMF_ConfigGetAttribute(cf, pahm_from_file, label="pahm_from_file:", default=.FALSE., rc=rc)

    IF (pahm_from_file) THEN
      CALL ESMF_ConfigGetAttribute(cf, atm_dir, label="atm_dir:",default='./', rc=rc)
      CALL ESMF_ConfigGetAttribute(cf, atm_nam, label="atm_nam:", &
                                   default='pahm_YYYYMMDD_wind.nc', rc=rc)
      ! PV: rc will always be 0 as long as defaults are set in the previous two calls
      IF (ESMF_LogFoundError(rcToCheck=rc, msg=ESMF_LOGERR_PASSTHRU, line=__LINE__, file=__FILE__)) &
       CALL ESMF_Finalize(endflag=ESMF_END_ABORT) ! bail out
       !PV: Here we want to be able to assign a user supplied pahm_control.in file instead of the default.
!    ELSE
!      ! user supplied pahm variables are: pahm_from_file, pahm_dir, pahm_nam
!      CALL ESMF_ConfigGetAttribute(cf, pahm_dir, label="pahm_dir:", default='./', rc=rc)
!      CALL ESMF_ConfigGetAttribute(cf, pahm_nam, label="pahm_nam:", rc=rc)
!      ! PV: The filename (pahm_nam) of the control input file for pahm is and should be mandatory.
!      !     The file should exist in the current directory (default) or in the user supplied pahm_dir
!      IF (rc /= ESMF_SUCCESS) THEN
!        WRITE(infoMsg, *) 'pahm_nam is not defined in the config.rc file'
!        CALL ESMF_LogWrite(infoMsg, ESMF_LOGMSG_INFO)
!        IF (ESMF_LogFoundError(rcToCheck=rc, msg=ESMF_LOGERR_PASSTHRU, line=__LINE__, file=__FILE__)) &
!          CALL ESMF_Finalize(endflag=ESMF_END_ABORT) ! bail out
!      END IF
    END IF

    CALL ESMF_ConfigDestroy(cf, rc=rc) ! Destroy the Config

  END SUBROUTINE ReadConfig

!================================================================================

END MODULE PaHM_Mod
