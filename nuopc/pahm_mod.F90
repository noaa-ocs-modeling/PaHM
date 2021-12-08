!------------------------------------------------------
!! @mainpage PaHM NUOPC Cap to exchange atm data with ocean/wave models
!! @author Panagiotis Velissariou (panagiotis.velissariou@noaa.gov)
!! @date 06/24/2021
!------------------------------------------------------

MODULE PaHM_Mod

  !-----------------------------------------------------------------------------
  ! ADCIRC mesh utility
  !-----------------------------------------------------------------------------
  USE mpi
  USE ESMF
  USE NUOPC
  USE PaHM_Mesh

  IMPLICIT NONE

  CHARACTER (LEN = 2048) :: infoMsg

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

END MODULE PaHM_Mod
