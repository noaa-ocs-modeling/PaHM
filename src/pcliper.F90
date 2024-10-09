!----------------------------------------------------------------
!               M O D U L E   P C L I P E R
!----------------------------------------------------------------
!> @file pcliper.F90
!>
!>
!> @brief
!>   
!>
!> @details
!>   
!>
!> @author Panagiotis Velissariou <panagiotis.velissariou@noaa.gov>
!----------------------------------------------------------------

MODULE PCliper

  USE PaHM_Sizes


  CONTAINS


  !----------------------------------------------------------------
  !  F U N C T I O N   G E T  S T O R M  C L A S S
  !----------------------------------------------------------------
  !>
  !> @brief
  !>   Function to check the TC class, TS, CAT 1-2, CAT 3-4-5
  !>
  !> @details
  !>   Function to check the TC class, TS, CAT 1-2, CAT 3-4-5
  !>
  !> @param[in]
  !>   VMax       The maximum sustained wind speed (kt)
  !> @param[out]
  !>   myValOut   The TC class value: -1, 0 (TS), 12 (CAT 1-2), 35 (CAT 3-4-5)
  !>
  !----------------------------------------------------------------
  INTEGER FUNCTION GetStormClass(VMax) RESULT (myValOut)

    IMPLICIT NONE

    INTEGER, INTENT(IN)           :: VMax

    INTEGER                       :: class


    IF ((VMax >= 34) .AND. (VMax < 64))        THEN   ! TS
      class = 0
    ELSE IF ((VMax >= 64) .AND. (VMax < 83))   THEN   ! CAT 1
      class = 12
    ELSE IF ((VMax >= 83) .AND. (VMax < 96))   THEN   ! CAT 2
      class = 12
    ELSE IF ((VMax >= 96) .AND. (VMax < 113))  THEN   ! CAT 3
      class = 35
    ELSE IF ((VMax >= 113) .AND. (VMax < 137)) THEN   ! CAT 4
      class = 35
    ELSE IF (VMax >= 137)                      THEN   ! CAT 5
      class = 35
    ELSE
      class = -1
    END IF

    myValOut = class

  END FUNCTION GetStormClass

!================================================================================

  !----------------------------------------------------------------
  !  F U N C T I O N   G E T  F R E Q U E N C Y  V A L U E
  !----------------------------------------------------------------
  !>
  !> @brief
  !>   Function to get a reasonable f-value for PCliper
  !>
  !> @details
  !>   Function to get an f-value for PCliper. An iterative approach may
  !>   required to get the proper "f" value(s) for the particular storm.
  !>   Can a lool-up table used to simplify and speed-up the process?
  !>
  !> @param[in]
  !>   classTC    The class the TC falls in: 0 (TS), 12 (CAT 1-2), 35 (CAT 3-4-5)
  !>   RainMax    The maximum value of the hourly accumulated rainfall - optional (mm/hr)
  !>
  !> @param[out]
  !>   myValOut   The calculated f-value
  !>
  !----------------------------------------------------------------
  INTEGER FUNCTION GetFrequencyValue(classTC, RainMax) RESULT (myValOut)

    IMPLICIT NONE

    INTEGER, INTENT(IN)            :: classTC
    REAL(SZ), OPTIONAL, INTENT(IN) :: RainMax

    REAL(SZ)                       :: rmax, A, B, fVal

    fVal = 28.0 _SZ

    IF (PRESENT(RainMax)) THEN
      SELECT CASE(classTC)
        CASE(-1)
          myValOut = 0
          RETURN
        CASE(0)
          rmax = 50.0   !km
          A = 2.995207_SZ
          B = 0.027499_SZ
          fVal = (1.0_SZ / B ) * LOG(RainMax / A)
        CASE(12)
          rmax = 30.0   !km
          A = 5.539108_SZ
          B = 0.021300_SZ
          !fVal = (1.0_SZ / B ) * LOG((30.0_SZ * RainMax) / (A * rmax))
          fVal = (1.0_SZ / B ) * LOG(RainMax / A)
        CASE(35)
          rmax = 30.0   !km
          A = 10.943440_SZ
          B = 0.0184330_SZ
          !fVal = (1.0_SZ / B ) * LOG((30.0_SZ * RainMax) / (A * rmax))
          fVal = (1.0_SZ / B ) * LOG(RainMax / A)
        CASE DEFAULT
          myValOut = 0
          RETURN
      END SELECT
    END IF

    myValOut = NINT(fVal)

  END FUNCTION GetFrequencyValue

!================================================================================

  !----------------------------------------------------------------
  !  F U N C T I O N   G E T  A C C  R A I N  V A L  P C L I P E R
  !----------------------------------------------------------------
  !>
  !> @brief
  !>   Function to get the rain value from PCliper at a point
  !>
  !> @details
  !>   Function to get an f-value for PCliper. An iterative approach may
  !>   required to get the proper "f" value(s) for the particular storm.
  !>   Can a lool-up table used to simplify and speed-up the process?
  !>
  !> @param[in]
  !>   classTC    The class the TC falls in: 0 (TS), 12 (CAT 1-2), 35 (CAT 3-4-5)
  !>   Radius     The radial distance of the point (node) from the eye of the TC (km)
  !>   RainMax    The maximum value of the hourly accumulated rainfall - optional (mm/hr)
  !>
  !> @param[out]
  !>   myValOut   The calculated rainfall value at radial distance "r" mm/hr
  !>
  !----------------------------------------------------------------
  REAL FUNCTION GetAccRainValPCliper(classTC, Radius, RainMax) RESULT (myValOut)

    IMPLICIT NONE

    INTEGER, INTENT(IN)            :: classTC
    REAL(SZ), INTENT(IN)           :: Radius
    REAL(SZ), OPTIONAL, INTENT(IN) :: RainMax

    REAL(SZ)                       :: rmax, A, B, fVal, rain


    ! Beyond that point there is no rain produced per Marks and De Maria (2003)
    ! so, set the rain value to zero and return
    IF (Radius >= 350.0_SZ) THEN
      myValOut = 0.0
      RETURN
    END IF

    IF (PRESENT(RainMax)) THEN
      fVal = GetFrequencyValue(classTC, RainMax)
    ELSE
      fVal = GetFrequencyValue(classTC)
    END IF

    SELECT CASE(classTC)
      CASE(-1)
        myValOut = 0.0   ! No rain here
        RETURN
      CASE(0)
        rmax = 50.0   !km
        A = 2.995207_SZ
        B = 0.027499_SZ

        IF (Radius <= 50.0) THEN
          rain = A * EXP(B * fval)
        ELSE
          rain = (2.059576840 * 10 ** (-5.0_SZ) * Radius * Radius - &
                  1.672969851 * 10 ** (-2.0_SZ) * Radius + 3.838964806) * EXP(B * fval)
        END IF
      CASE(12)
        rmax = 30.0   !km
        A = 5.539108_SZ
        B = 0.021300_SZ

        IF (Radius <= 30.0) THEN
          rain = A * EXP(B * fval) * (Radius / rmax)
        ELSE
          rain = (-2.474340293 * 10 ** (-9.0_SZ) * Radius ** 4.0_SZ + &
                   1.935560971 * 10 ** (-6.0_SZ) * Radius ** 3.0_SZ - &
                   4.444507808 * 10 ** (-4.0_SZ) * Radius ** 2.0_SZ + &
                   6.840501651 * 10 ** (-3.0_SZ) * Radius + 6.656484399) * EXP(B * fval)
        END IF
      CASE(35)
        rmax = 30.0   !km
        A = 10.943440_SZ
        B = 0.0184330_SZ

        IF (Radius <= 30.0) THEN
          rain = A * EXP(B * fval) * (Radius / rmax)
        ELSE
          rain = (-2.984284245 * 10 ** (-7.0_SZ) * Radius ** 3.0_SZ + &
                   3.033414728 * 10 ** (-4.0_SZ) * Radius ** 2.0_SZ - &
                   1.088545019 * 10 ** (-1.0_SZ) * Radius + 14.25059433) * EXP(B * fval)
        END IF
      CASE DEFAULT
        myValOut = 0.0   ! No rain here
        RETURN
    END SELECT

    myValOut = rain

  END FUNCTION GetAccRainValPCliper

!================================================================================

END MODULE PCliper
