!----------------------------------------------------------------
!               P R O G R A M   P A R A M E T R I C  W I N D S
!----------------------------------------------------------------
!> @author PanagiotisVelissariou <panagiotis.velissariou@noaa.gov>
!>
!----------------------------------------------------------------

PROGRAM ParametricWinds

!  USE PAHM_Sizes
!  USE PAHM_Global
  USE PAHM_Messages
  USE Utilities
  USE TimeDateUtils
  USE PAHM_Mesh
  USE ParWind
  USE PAHM_NetCDFIO
!  USE NetCDF

  IMPLICIT NONE

  !------------------------------------------------------------
  !     S T A R T   P R O G R A M   C A L C U L A T I O N S
  !------------------------------------------------------------
  ! Get possible command line arguments
  CALL GetProgramCmdlArgs

  ! Initialize the logging system, needs to be called first
  CALL InitLogging()

  ! Read the mesh/grid of the domain or the generic mesh/grid input file
  CALL ReadMesh()

  ! Read all track files and save the data into the array of the best track structures
  ! for subsequent access by the P-W models in the program
  !CALL ReadBestTrackFile()
  CALL ReadCsvBestTrackFile()
 
  CALL GetHollandFields()

  CALL InitAdcircNetCDFOutFile(outFileName)

  CALL closeLogFile()


CONTAINS

!PV Do I need to move it to the utilities module?
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

END PROGRAM ParametricWinds
