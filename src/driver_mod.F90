!----------------------------------------------------------------
!               M O D U L E   P A H M  D R I V E R  M O D
!----------------------------------------------------------------
!> @author PanagiotisVelissariou <panagiotis.velissariou@noaa.gov>
!>
!----------------------------------------------------------------

MODULE PAHM_DriverMod

  USE PAHM_Messages
  USE Utilities
  USE TimeDateUtils
  USE PAHM_Mesh
  USE ParWind
  USE PAHM_NetCDFIO

  IMPLICIT NONE


CONTAINS


  !-----------------------------------------------------------------------
  !     S U B R O U T I N E   G E T  P R O G R A M  C M D L  A R G S
  !-----------------------------------------------------------------------
  !  author Panagiotis Velissariou <panagiotis.velissariou@noaa.gov>
  !>
  !> Prints on the screen the help system of the PAHM program.
  !-----------------------------------------------------------------------
  SUBROUTINE GetProgramCmdlArgs()

    USE PAHM_Messages
    USE PAHM_Global, ONLY : controlFileName
    USE Utilities, ONLY : ReadControlFile

    IMPLICIT NONE

    INTEGER         :: argNumb, argCnt      ! number of command line arguments and argument counter
    CHARACTER(1024) :: argCmdLine

    CALL InitLogging()

    argNumb = IARGC()
    IF (argNumb > 0) THEN
      argCnt = 0
      DO WHILE (argCnt < argNumb)
        argCnt = argCnt + 1
        CALL GETARG(argCnt, argCmdLine)

        SELECT CASE(TRIM(argCmdLine))
          CASE("-V", "-v", "--V", "--v", "--version")
            CALL ProgramVersion
            STOP

          CASE("-H", "-h", "--H", "--h", "--help") 
            CALL ProgramHelp
            STOP

          CASE DEFAULT
            ! Do nothing
        END SELECT
      END DO
      ! This is the first argument if not "-v/-h" were supplied.
      ! It is assumed that this argument is the filename of the user control file.
      CALL GETARG(1, argCmdLine)
      controlFileName = TRIM(ADJUSTL(argCmdLine))
    ENDIF

    CALL ReadControlFile(TRIM(controlFileName))

  END SUBROUTINE GetProgramCmdlArgs

!================================================================================

  !----------------------------------------------------------------
  !  S U B R O U T I N E   P A H M  M O D E L  I N I T
  !----------------------------------------------------------------
  !> @author Panagiotis Velissariou <panagiotis.velissariou@noaa.gov>
  !>
  !> Subroutine to initialize a PaHM run.
  !>   - comments here
  !----------------------------------------------------------------
  SUBROUTINE PaHM_ModelInit()

    ! Initialize the logging system, needs to be called first
    CALL InitLogging()

    CALL SetMessageSource("PaHM_ModelInit")

    ! Get possible command line arguments
    CALL GetProgramCmdlArgs()

    ! Read the mesh/grid of the domain or the generic mesh/grid input file
    CALL ReadMesh()

    ! Read all track files and save the data into the array of the best track structures
    ! for subsequent access by the P-W models in the program
    !CALL ReadBestTrackFile()
    CALL ReadCsvBestTrackFile()

    CALL UnsetMessageSource()

  END SUBROUTINE PaHM_ModelInit

!================================================================================

  !----------------------------------------------------------------
  !  S U B R O U T I N E   P A H M  M O D E L  R U N
  !----------------------------------------------------------------
  !> @author Panagiotis Velissariou <panagiotis.velissariou@noaa.gov>
  !>
  !> Subroutine to run PaHM (timestepping).
  !>   - comments here
  !----------------------------------------------------------------
  SUBROUTINE PaHM_ModelRun()
  
    CALL SetMessageSource("PaHM_ModelRun")

    CALL GetHollandFields()

    CALL InitAdcircNetCDFOutFile(outFileName)

    CALL UnsetMessageSource()

  END SUBROUTINE PaHM_ModelRun

!================================================================================

  !----------------------------------------------------------------
  !  S U B R O U T I N E   P A H M  M O D E L  F I N A L I Z E
  !----------------------------------------------------------------
  !> @author Panagiotis Velissariou <panagiotis.velissariou@noaa.gov>
  !>
  !> Subroutine to finalize a PaHM run.
  !>   - comments here
  !----------------------------------------------------------------
  SUBROUTINE PaHM_ModelFinalize()
  
    CALL SetMessageSource("PaHM_ModelFinalize")

    CALL UnsetMessageSource()

    ! Close the logging facilities
    CALL closeLogFile()
  
  END SUBROUTINE PaHM_ModelFinalize

!================================================================================

END MODULE PAHM_DriverMod
