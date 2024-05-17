!----------------------------------------------------------------
!               M O D U L E   P A H M  D R I V E R  M O D
!----------------------------------------------------------------
!> @file driver_mod.F90
!>
!> @brief
!>   
!>
!> @details
!>   
!>
!> @author Panagiotis Velissariou <panagiotis.velissariou@noaa.gov>
!----------------------------------------------------------------

MODULE PaHM_DriverMod

  USE PaHM_Messages
  USE Utilities
  !USE TimeDateUtils

  IMPLICIT NONE

  INTEGER, SAVE :: cntTimeBegin, cntTimeEnd


CONTAINS


  !-----------------------------------------------------------------------
  !     S U B R O U T I N E   G E T  P R O G R A M  C M D L  A R G S
  !-----------------------------------------------------------------------
  !>
  !> @brief
  !>   Prints on the screen the help system of the PaHM program.
  !>
  !> @details
  !>   
  !>
  !-----------------------------------------------------------------------
  SUBROUTINE GetProgramCmdlArgs()

    USE PaHM_Global, ONLY : controlFileName

    IMPLICIT NONE

    INTEGER         :: argNumb, argCnt      ! number of command line arguments and argument counter
    CHARACTER(1024) :: argCmdLine

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
  !>
  !> @brief
  !>   Subroutine to initialize a PaHM run.
  !>
  !> @details
  !>   
  !>
  !-----------------------------------------------------------------------
  SUBROUTINE PaHM_Init()

    USE PaHM_Global, ONLY : nOutDT, date_time_str
    USE PaHM_Mesh, ONLY   : ReadMesh
    USE ParWind, ONLY     : ReadBestTrackFile, ReadCsvBestTrackFile

    INTEGER :: tvals(8)

    ! This has to be first
    ! Set the start date_time string to be used in file renaming schemes
    CALL DATE_AND_TIME(VALUES = tvals)
    WRITE(date_time_str, '(i4.4, 5i2.2)') tvals(1:3), tvals(5:7)

    ! Get possible command line arguments. Also initialize the logging system, needs to be called first.
    CALL GetProgramCmdlArgs()

    CALL SetMessageSource("PaHM_Init")

    ! Read the mesh/grid of the domain or the generic mesh/grid input file
    CALL ReadMesh()

    ! Read all track files and save the data into the array of the best track structures
    ! for subsequent access by the P-W models in the program
    !CALL ReadBestTrackFile()
    CALL ReadCsvBestTrackFile()

    cntTimeBegin = 1
    cntTimeEnd   = nOutDT

    CALL UnsetMessageSource()

  END SUBROUTINE PaHM_Init

!================================================================================

  !----------------------------------------------------------------
  !  S U B R O U T I N E   P A H M  M O D E L  R U N
  !----------------------------------------------------------------
  !>
  !> @brief
  !>   Subroutine to run PaHM (timestepping).
  !>
  !> @details
  !>   
  !>
  !> @param[in]
  !>   nTimeSTP    The timestep index (optional)
  !>
  !----------------------------------------------------------------
  SUBROUTINE PaHM_Run(nTimeSTP)

    USE PaHM_Global, ONLY : modelType
    USE ParWind
    USE PaHM_NetCDFIO
  
    IMPLICIT NONE

    INTEGER, INTENT(IN), OPTIONAL :: nTimeSTP

    INTEGER :: iCnt

    CHARACTER(LEN=128) :: tmpStr1, tmpStr2
    INTEGER            :: timvals1(8), timvals2(8)
    INTEGER(KIND=8)    :: elap_time    ! In seconds

    CALL SetMessageSource("PaHM_Run")

    IF (PRESENT(nTimeSTP)) THEN
      cntTimeEnd = cntTimeBegin + nTimeSTP - 1
    ENDIF

    SELECT CASE (modelType)
      CASE (1)  ! --- Holland model

        ! Calculations: initial time
        CALL DATE_AND_TIME(VALUES = timvals1)

        DO iCnt = cntTimeBegin, cntTimeEnd
          CALL GetHollandFields(iCnt)

          IF (outFileNameSpecified) THEN
            ! Create the output NetCDF file and fill it with the static data only
            ! Initialize all variables. This subroutine is called just once
            CALL InitAdcircNetCDFOutFile(outFileName)

            CALL WriteNetCDFRecord(outFileName, iCnt)
          END IF
        END DO

        ! Calculations: finish time
        CALL DATE_AND_TIME(VALUES = timvals2)

        ! Calculate the elapsed time (seconds)
        elap_time = (timvals2(3) - timvals1(3)) * 86400 + (timvals2(5) - timvals1(5)) * 3600 + &
                    (timvals2(6) - timvals1(6)) * 60 + (timvals2(7) - timvals1(7))

        CALL LogMessage(' ')
        CALL LogMessage('------------------------------------------------------------')
        WRITE(tmpStr1, '(i20)') elap_time
          tmpStr1 = 'Elapsed Time = ' // TRIM(ADJUSTL(tmpStr1))
        WRITE(scratchMessage, '(a)') TRIM(ADJUSTL(tmpStr1)) // ' sec'
        CALL LogMessage(scratchMessage)
        CALL LogMessage('------------------------------------------------------------')
        CALL LogMessage(' ')

      CASE (10)  ! --- GAHM model

        ! Calculations: initial time
        CALL DATE_AND_TIME(VALUES = timvals1)

        DO iCnt = cntTimeBegin, cntTimeEnd
          CALL GetGAHMFields(iCnt)

          IF (outFileNameSpecified) THEN
            ! Create the output NetCDF file and fill it with the static data only
            ! Initialize all variables. This subroutine is called just once
            CALL InitAdcircNetCDFOutFile(outFileName)

            CALL WriteNetCDFRecord(outFileName, iCnt)
          END IF
        END DO

        ! Calculations: finish time
        CALL DATE_AND_TIME(VALUES = timvals2)

        ! Calculate the elapsed time (seconds)
        elap_time = (timvals2(3) - timvals1(3)) * 86400 + (timvals2(5) - timvals1(5)) * 3600 + &
                    (timvals2(6) - timvals1(6)) * 60 + (timvals2(7) - timvals1(7))

        CALL LogMessage(' ')
        CALL LogMessage('------------------------------------------------------------')
        WRITE(tmpStr1, '(i20)') elap_time
          tmpStr1 = 'Elapsed Time = ' // TRIM(ADJUSTL(tmpStr1))
        WRITE(scratchMessage, '(a)') TRIM(ADJUSTL(tmpStr1)) // ' sec'
        CALL LogMessage(scratchMessage)
        CALL LogMessage('------------------------------------------------------------')
        CALL LogMessage(' ')

      CASE DEFAULT
        WRITE(scratchMessage, '(a, i0)') &
                              'This model type is not supported: modelType = ', modelType
        CALL LogMessage(ERROR, scratchMessage)
    END SELECT

    IF (PRESENT(nTimeSTP)) THEN
      cntTimeBegin = cntTimeEnd + 1
    ENDIF
    
    CALL UnsetMessageSource()

  END SUBROUTINE PaHM_Run

!================================================================================

  !----------------------------------------------------------------
  !  S U B R O U T I N E   P A H M  M O D E L  F I N A L I Z E
  !----------------------------------------------------------------
  !>
  !> @brief
  !>   Subroutine to finalize a PaHM run.
  !>
  !> @details
  !>   
  !>
  !----------------------------------------------------------------
  SUBROUTINE PaHM_Finalize()
  
    CALL SetMessageSource("PaHM_Finalize")

    CALL UnsetMessageSource()

    ! Close the logging facilities
    CALL closeLogFile()
  
  END SUBROUTINE PaHM_Finalize

!================================================================================

END MODULE PaHM_DriverMod
