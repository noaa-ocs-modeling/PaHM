-------------------------------------------------------------------------------
                  Automated Tropical Cyclone Forecast (ATCF)
                       "Archive Data Files / Text Files"
-------------------------------------------------------------------------------
                    last README file update: 29 April 2020

-------------------------------------------------------------------------------
 NOTICE STATEMENT:

   This README describes the sub-directory structure and file layout / format
   for ATCF archive database files.  These files contain forecast guidance,
   along with position and intensity estimates of Tropical and Subtropical
   Cyclones.  The data are provided "as-is"; consequently, users of the data
   should recheck this database periodically for updates, revisions and
   corrections.


-------------------------------------------------------------------------------
 SUB-DIRECTORY STRUCTURE:

    YYYY - Year of archived data containing archived storm data in comma
           delimited ATCF format.

    files:  aBBCCYYYY.dat  - guidance information
            bBBCCYYYY.dat  - best track information
            fBBCCYYYY.dat  - fix information
            eBBCCYYYY.dat  - probability information


            BB - basin: al (Atlantic), ep (East Pacific), cp (Central Pacific),
                        and sl (South Atlantic)

            CC - storm number

                 01 - 30   "numbered storms with forecasts
                            issued and numbers are *not* recycled
                            until the next season."

                 90 - 99   "Invest, areas of interest watched
                            by forecasters for possible
                            development and these numbers are
                            re-used periodically throughout the
                            season"

                 80 - 89   "Internal training storm numbers
                            which are to always be ignored"

                 A0 - Z9   "Internal disturbance IDs that are experimental"
                            schema is [A-Z][0-9] which is meant to save the 
                            Invest series into a permenant 2-char system.
                            For example, 90 -> A0, B0, C0, ... (depending upon
                            how many times the 90 has been recycled).
                            
             YYYY - 4-digit Year


-------------------------------------------------------------------------------
SPECIFICATION and REFERENCES:

Master Storm File --> storm.table "Comma Separated File"

Link to Navy/NRL format specification

http://www.nrlmry.navy.mil/atcf_web/docs/database/new/database.html

Compression utilzied: GZIP, see http://www.gzip.org/ for details.


-------------------------------------------------------------------------------
CHANGE HISTORY:

* Updated storm.table file

Done: 12-Aug-2020 (MJB)

* Posted updated b-decks for the following storms to fix errors:
  AL021865
  AL051878
  AL021880
  AL061947
  AL131999
  AL141999
  AL092011

Done: 1-May-2020 (MJB)

* Posted final decks for EP122019 (Akoni). 

Done: 29-Apr-2020 (MJB)

* Posted final data, including b-decks, for all 2019 AL and EP storms except
  for EP062019 (Erick) and EP122019 (Akoni), which are awaiting final best
  track information. For Erick, the final best track east of 140W has been 
  posted in the archives, while the real-time track information west of 140W 
  is still available in the real-time btk directory. 

  The final best tracks for CP012018 (Walaka) and EP142018 (Lane) have also 
  been posted.

Done: 28-Apr-2020 (MJB)

* Removed EP091961 (Simone) as part of the hurricane database reanalysis 
  project.  

Done: 14-Jan-2020 (MJB)

* Updated final f-deck for AL172017 (Ophelia) to correct errors. 
  Updated all Atlantic b-decks from 1961-1965 to reflect reanalysis changes
  and updated storm.table for best-track changes.

Done: 16-Dec-2019 (MJB)

* Updated final b-decks for AL032004 (Charley) and AL122008 (Laura) to correct 
  wind radii errors. 

Done: 1-Nov-2019 (MJB)

* Posted final b-decks for EP102018 (Hector) and EP152018 (Miriam), including
  final best track information from CPHC and JTWC for EP10 and CPHC for EP15.

Done: 8-Aug-2019 (MJB)

* Posted final decks for CP012016 (Pali). 

Done: 28-May-2019 (MJB)

* Posted final data, including b-decks, for all 2018 AL and EP storms except
  for EP0102018 (Hector), EP142018 (Lane), EP152018 (Miriam), and EP162018
  (Norman), which are pending receipt of final best track information from CPHC. 
  For these systems, the final best track east of 140W has been posted in
  the archives, while the real-time track information west of 140W is still
  available in the real-time btk directory.

Done: 13-May-2019 (MJB)

* Updated b-deck and f-deck for Fernanda (EP062017) after receipt of final
  best track data from CPHC.

Done: 28-Feb-2019 (MJB)

* Updated b-decks for EP142017 (Lidia) and AL172017 (Ophelia) to correct
  erroneous data. 

Done: 14-Feb-2019 (MJB)

* Posted corrected b-deck for CP032009 (Neki).

Done: 28-Jan-2019 (MJB)

* Posted final decks for CP032015 (Kilo).

Done: 14-Nov-2018 (MJB)

* Posted final decks for EP122015 (Ignacio) after receipt of final best track 
  info from CPHC.

Done: 22-Aug-2018 (MJB)

* Posted corrected b-deck for AL021899 to correct erroneous lat/lon at 1000 UTC
  30 July 1899.

Done: 14-Aug-2018 (MJB)

* Posted final decks for EP132016 (Lester) including final best track 
  information from CPHC.

Done: 3-August-2018 (MJB)

* Posted corrected b-deck for AL131995 that is consistent with post analysis
  published in NHC Preliminary Report (currently known as Tropical Cyclone Report).

* Posted complete a-deck for EP112006 to replace nearly empty old a-deck.

Done: 9-July-2018 (MJB)

* Posted new b-decks for storms listed below to correct typos in best track data
  
  AL081861
  AL061889
  AL031952
  AL131954
  AL031955
  AL031988
  AL051989
  AL091993
  AL091998
  AL092004

Done: 11-May-2018 (MJB)

* Finalized all 2017 AL and EP storm information, including best tracks, except
  for EP062017 (Fernanda), which is pending receipt of final best track information
  from CPHC. For this system, the final best track east of 140W has been posted in
  the archives, while the real-time track information west of 140W is still
  available in the real-time btk directory.

  The final best track data for CP022015 (Iune) has also been posted.

  Done: 25-Apr-2018 (MJB)

* Posted final decks for CP042015. 

  Done: 8-Jan-2018 (MJB)

* Posted final decks for CP082015. 

  Done: 31-Oct-2017 (MJB)

* Posted new b-decks for the storms listed below to fix spacing within the files,
  however no changes were made to best track infromation. 

  AL101995
  AL131995
  AL131996
  AL131998
  AL131999

  Done: 26-Apr-2017 (MJB)

* Posted final decks for EP040215 (Ela).
 
  Done: 7-Apr-2017 (MJB)

* Finalized all 2016 AL and EP information, including best tracks, except
  for EP052016 (Darby), EP132016 (Lester), and EP142016 (Madeline),
  which are pending the receipt of final best track information from CPHC.
 
  For these three systems, the final best track east of 140W has been posted in
  the archives, while the real-time track information west of 140W is still
  available in the real-time directory.

  The final best track data for CP012016 has also been posted.

  Note that final best tracks for the five 2015 CP systems (CP01, 02, 03, 04,
  and 08) have not yet been completed. These systems will be pushed into the
  archives when final best tracks from CPHC are available.

  A special note about the files for Otto, which is listed as both AL16 and EP22.
  The best track and fix files contain the complete history of the storm in both
  sets of files. The a- and e-decks, however, only contain forecast information
  for times when Otto was located in their respective basins. For example, the
  a-deck for AL16 contains model tracks for all times prior to 06Z on 25 November,
  when Otto moved into the EP basin.

  Done: 5-Apr-2017 (MJB)


* Posted updated f-decks to correct several typos and errors for the following 
  storms: 

  AL051995
  AL132010
  AL092012
  AL062014

  Done: 22-Mar-2017 (MJB)

* Posted final decks for TD Nine-C (CP092015). 
 
  Done: 17-Nov-2016 (MJB)

* Posted final decks for Oho (CP072015).

  Done: 11-Oct-2016 (MJB)

* Posted final decks for Malia (CP052015).
 
  Done: 4-Oct-2016 (MJB)

* Posted final decks for Niala (CP062015).  Also updated b-decks for 1956-
  1960 AL systems to reflect reanalysis changes, including addition of 
  several new storms.  Updated storm.table.

  Done: 23-July-2016 (MJB)

* Posted final decks for Genevieve (EP072014) and updated storm.table. 

  Done: 3-May-2016 (MJB)

* Posted updates to numerous east Pacific b-decks to fix errors, include
  non-synoptic landfall points, and include all non-developing tropical
  depressions from 1988. 

  EP141988 through EP201988
  EP031989
  EP211989
  EP211990
  EP201992
  EP101995
  EP051996
  EP091996
  EP101996
  EP011997
  EP161997
  EP191997
  EP121999
  EP162000
  EP192000
  EP142013

  Done: 26-Feb-2016 (MJB)

* Finalized all 2015 AL and EP information, including best tracks, except for
  EP042015 (Ela) and EP122015 (Ignacio) which are pending the receipt of final 
  best track information from CPHC. The working best track data for EP042015 
  is still available in the real time directory. For EP122015, the final best
  track east of 140W has been posted in the archives and the real-time track
  information west of 140W is still available in the real-time directory.

  Also, the final best track data for the 9 2015 CP storms are not yet available, 
  so the real-time data for those storms remain in the real-time directories.
  
  Done: 19-Feb-2016 (MJB)

* Posted updated b-deck for EP121959 based on reanalysis.

  Done: 16-Feb-2016 (MJB)

* Posted final decks for EP092014 and EP102014.

  Done: 12-Feb-2016 (MJB)

* Corrected error in system status in b-deck for AL032005.

  Done: 21-Dec-2015 (MJB)

* Corrected dates/times in storm.table file for AL111926 and AL041974.

  Done: 9-Nov-2015 (MJB)

* Updated a-deck for AL172011 to remove extraneous model data before system formed.

  Done: 21-Jul-2015 (MJB)


* Posted final decks, including best tracks, for CP012014 and CP022014.

  Done: 7-Jul-2015 (MJB)


* Updated a-deck for EP112014 to remove extraneous model data before system formed.

  Done: 25-Jun-2015 (MJB)


* Updated b-deck for AL011952 to correct status on first day of system's life to "LO".

  Done: 11-Jun-2015 (MJB)


* Corrected errors in f-deck for EP182014.

  Done: 2-Jun-2015 (MJB)


* Updated b-decks for 1951-1955 AL systems to reflect reanalysis changes, including
  renumbering of storms. Also, a-decks for 1954-1955 were updated to reflect
  renumbering.

  Also updated the following AL b-decks to correct errors:

  AL021876
  AL031938
  AL011941
  AL151949
  AL031974
  AL041974
  AL051974

  Also updated storm.table for best-track changes.

  Done: 26-May-2015 (MJB)


* Updated f-decks for 2006 Atlantic systems to clean up AMSU fixes being stored
  in the wrong storm's f-deck.

  Done: 24-Apr-2014 (MJB)


* Updated b-deck and f-deck for al012014 for best track and fix changes.

  Done: 21-Apr-2015 (MJB)


* Finalized all 2014 AL and EP information, including best tracks, except for
  EP072014, EP092014, and EP102014. The final best track of these storms
  in the archives section ends at 140W pending receipt of final best track
  information from CPHC and JTWC. The working best track data from these storms
  is still available in the real time directories.

  Done: 8-Mar-2015 (MJB)


* Finalized all 2013 CP storms, including best tracks.

  Done: 30-Jun-2014 (MJB)


* Updated a-deck for al022013 to remove extraneous OCD5 entires.
  Updated a-deck for ep092013 to include missing OCD5 entries.

  Done: 22-Jun-2014 (MJB)


* Updated numerous AL b-decks as described below:

  Added non-developing TDs for 1988 (bal131988.dat through bal191988.dat),
  which were previously missing.
  
  Added multiple asynoptic landfall/intensity points for 1983 to 2011, which
  were not in the b-decks.
   
  Fixed typographic errors in b-decks for al011928, al071934, al071944, and
  al191974.

  Also updated storm.table for best-track changes.

  Done: 8-Jun-2014 (MJB)


* Fixed typo in b-deck for AL071916.

  Done: 23-Apr-2013 (MJB)


* Updated all AL b-decks from 1946-1950 to reflect reanalysis changes.
  Updated b-deck for AL091969 (Camille) to reflect reanalysis changes.
  Updated storm.table for best-track changes.

  Done: 10-Apr-2014 (MJB)


* Finalized all 2013 EP and AL data, including best tracks.

  Done: 12-Mar-2014 (MJB)


* Updated the following AL b-decks to include landfall entries:

  AL051855
  AL021998
  AL081999
  AL131999
  AL112000
  AL042008

  Done: 29-Nov-2013 (MJB)


* Updated storm.table for best-track changes.

  Done: 10-Jun-2013 (MJB)


* Updated all AL b-decks from 1941-1945 to reflect reanalysis changes.

  Updated the following b-decks to correct minor typos:

  AL051897
  AL131936
  AL061938
  AL021940
  AL011969
  AL191974
  AL181975
  AL071998

  Done: 9-Jun-2013 (MJB)

* Updated b-decks for the following storms to correct errors:

  CP011963
  CP011990
  CP012009
  EP051962
  EP071976
  EP081976
  EP101978
  EP131978
  EP142003

  Done: 5-Apr-2013 (MJB)


* Updated storm.table for best-track changes.

  Done: 4-Apr-2013 (MJB)


* Corrected b-deck for ep041989 to remove erroneous 35-kt intensity.
  Updated storm.table for 2012 TCs.

  Done: 12-Mar-2013 (MJB)


* Finalized all 2012 data, including best tracks.

  Done: 8-Mar-2013 (MJB)

* Made numerous changes to fix errors and typos in several archived decks.  Also
  updated b-decks to reflect reanalysis changes for 1931-1940.  Fixed duplicate
  storm entry for AL231969, which results in a renumbering of all systems for that
  year - storms that were AL24-AL301969 are now AL23-AL291969.  Corrected
  storm.table master list to reflect the change in storm IDs for 1969.

  Done: 15-Feb-2013 (MJB)


* corrected storm.table master list that had incorrect storm IDs for 1899

  Done: 5-Jun-2012 (CAS)


* Updated storm.table master list with missing AL062011 "Franklin" entry

  Done: 21-May-2012 (CAS)


* ATCF Best Track Database Reanalysis Updates (1857-1930) CORRECTIONS: 
  AL021901 "UNNAMED" Correction to best track information
  AL101901 "UNNAMED" Correction to best track information
  AL081906 "UNNAMED" Correction to best track information

  Done: 15-Mar-2012 (CAS)


* ATCF Best Track Database Misc Changes/Updates: 

  AL091980 "GEORGES" revised intensity to nearest 5 kts at 09/08-12Z
  AL091981 "FLOYD" revised intensity to nearest 5 kts at 09/05-00Z and 09/05-06Z
  AL091988 "HELENE" revised intensity to nearest 5 kts for several DTGs
  AL121988 "KEITH" revised intensity to nearest 5 kts at 11/20-06Z
  AL062004 "FRANCES" revised intensity to nearest 5 kts at 09/03-10Z  
  AL192010 "RICHARD" added wind raddi at 10/25-00Z

  Done: 9-Mar-2012 (CAS)


* ATCF Guidance Database Misc Changes/Updates:

  AL042010 "CELIA" replaced corrupted OFCO aids
  AL122010 "JULIA" replaced corrupted OFCO aids
  AL142010 "LISA" replaced corrupted OFCO aids
  AL212010 "TOMAS" replaced corrupted OFCO aids

  Done: 9-Mar-2012 (CAS)
  

* ATCF Best Track Database Reanalysis Updates (1857-1930): 

  North Atlantic Basin:
  ---------------------
  AL021857 "UNNAMED" Updated information 
  AL081859 "UNNAMED" Updated information 
  AL021865 "UNNAMED" Corrected format/spacing
  AL021866 "UNNAMED" Updated information, status changed from HU to TS/EX
  AL021882 "UNNAMED" Updated information
  AL031882 "UNNAMED" Updated information, status changed from HU to TS/EX
  AL031885 "UNNAMED" Updated information
  AL051885 "UNNAMED" Updated information
  AL051886 "UNNAMED" Updated information
  AL091887 "UNNAMED" Updated information
  AL081899 "UNNAMED" New TC addition
  AL091899 "UNNAMED" Formerly AL081899 (re-number)
  AL101899 "UNNAMED" Formerly AL091899 (re-number)
  AL011900 "UNNAMED" Corrected format/spacing/time entry
  AL061900 "UNNAMED" Corrected format/spacing/time entry
  AL011901 "UNNAMED" Corrected format/spacing/time entry
  AL031901 "UNNAMED" Corrected format/spacing/time entry
  AL041901 "UNNAMED" Updated information
  AL061901 "UNNAMED" New TC addition
  AL071901 "UNNAMED" Formerly AL061901 (re-number)
  AL081901 "UNNAMED" Formerly AL071901 (re-number)
  AL091901 "UNNAMED" Formerly AL081901 (re-number)
  AL101901 "UNNAMED" Formerly AL091901 (re-number)
  AL111901 "UNNAMED" Formerly AL101901 (re-number)
  AL121901 "UNNAMED" Formerly AL111901 (re-number)
  AL131901 "UNNAMED" Formerly AL121901 (re-number)
  AL011902 "UNNAMED" Corrected format/spacing/time entry
  AL021902 "UNNAMED" Corrected format/spacing/time entry
  AL041902 "UNNAMED" Corrected format/spacing/time entry
  AL031903 "UNNAMED" Updated information
  AL041903 "UNNAMED" Corrected format/spacing/time entry
  AL021904 "UNNAMED" Corrected format/spacing/time entry
  AL031904 "UNNAMED" New TC addition
  AL041904 "UNNAMED" Formerly AL031904 (re-number)
  AL051904 "UNNAMED" Formerly AL041904 (re-number)
  AL061904 "UNNAMED" Formerly AL051904 (re-number)
  AL031905 "UNNAMED" Corrected format/spacing/time entry
  AL051905 "UNNAMED" Corrected format/spacing/time entry
  AL011906 "UNNAMED" Corrected format/spacing/time entry
  AL021906 "UNNAMED" Corrected format/spacing/time entry
  AL051906 "UNNAMED" Corrected format/spacing/time entry
  AL011907 "UNNAMED" Corrected format/spacing/time entry
  AL031907 "UNNAMED" Corrected format/spacing/time entry
  AL021908 "UNNAMED" Corrected format/spacing/time entry
  AL041908 "UNNAMED" Corrected format/spacing/time entry
  AL031909 "UNNAMED" Corrected format/spacing/time entry
  AL041909 "UNNAMED" Corrected format/spacing/time entry
  AL071909 "UNNAMED" New TC addition 
  AL081909 "UNNAMED" Formerly AL071909 (re-number)
  AL091909 "UNNAMED" Formerly AL081909 (re-number)
  AL101909 "UNNAMED" Formerly AL091909 (re-number)
  AL111909 "UNNAMED" Formerly AL101909 (re-number)
  AL121909 "UNNAMED" Formerly AL111909 (re-number)
  AL031910 "UNNAMED" Updated information
  AL031911 "UNNAMED" Corrected format/spacing/time entry
  AL011912 "UNNAMED" Updated information
  AL021912 "UNNAMED" Corrected format/spacing/time entry
  AL041912 "UNNAMED" Corrected format/spacing/time entry
  AL061912 "UNNAMED" Corrected format/spacing/time entry
  AL011913 "UNNAMED" Corrected format/spacing/time entry
  AL041913 "UNNAMED" Corrected format/spacing/time entry
  AL051913 "UNNAMED" Corrected format/spacing/time entry
  AL011914 "UNNAMED" Corrected format/spacing/time entry
  AL021915 "UNNAMED" Updated information
  AL141916 "UNNAMED" Corrected format/spacing/time entry
  AL061921 "UNNAMED" Updated information
  AL021922 "UNNAMED" Updated information
  AL041925 "UNNAMED" Updated information, status changed from HU to TS/EX
  AL051926 "UNNAMED" Updated information
  AL081926 "UNNAMED" Updated information
  AL011927 "UNNAMED" Updated information
  AL011930 "UNNAMED" Updated information
  
  Done: 9-Mar-2012 (CAS)


* ATCF Database updates:  Corrected AL041938 "UNNAMED" best track dataset
  Done: 13-May-2011 (CAS)


* ATCF Database updates:  Final Data for 2010 Season Posted for AL, EP and 
  CP Basins - includes final best tracks and other TC data.
  Done: 18-Feb-2011 (CAS)


* ATCF Database updates:  Added missing A-deck/B-Deck file for EP112006 "JOHN"
  Done: 17-Feb-2011 (CAS)


* ATCF Database reanalysis updates (1851-1925): 
  - includes the addition of higher temporal information and other dotrm information

  North Atlantic Basin:
  ---------------------

  AL011926 "UNNAMED" Added information for 07/28-10:00Z and added/updated MSLP info
  AL021926 "UNNAMED" Updated information 
  AL031926 "UNNAMED" Added information for 08/25-23:00Z and added/updated MSLP info
  AL041926 "UNNAMED" Added/updated MSLP info
  AL051926 "UNNAMED" Updated information 
  AL061926 "UNNAMED" Updated information 
  AL071926 "UNNAMED" Added information for 09/20-22:00Z and added/updated MSLP info
  AL081926 "UNNAMED" Updated information 
  AL091926 "UNNAMED" Updated information 
  AL101926 "UNNAMED" Added/updated MSLP info
  AL111926 "UNNAMED" Added/updated MSLP info
  AL011927 "UNNAMED" Added/updated MSLP info
  AL021927 "UNNAMED" Updated information 
  AL031927 "UNNAMED" Updated information 
  AL041927 "UNNAMED" Added/updated MSLP info
  AL051927 "UNNAMED" Added information for 10/03-09:00Z
  AL061927 "UNNAMED" Updated information 
  AL071927 "UNNAMED" Updated information 
  AL081927 "UNNAMED" Updated information 
  AL011928 "UNNAMED" Added information for 08/08-07:00Z, 08/10-04:00Z and added/updated MSLP info
  AL021928 "UNNAMED" Added information for 08/13-03:00Z, 08/14-14:00Z
  AL031928 "UNNAMED" Updated information 
  AL041928 "UNNAMED" Added information for 09/18-19:00Z and added/updated MSLP info
  AL051928 "UNNAMED" Added/updated MSLP info
  AL061928 "UNNAMED" Updated information 
  AL011929 "UNNAMED" Added information for 06/28-21:00Z and added/updated MSLP info
  AL021929 "UNNAMED" Added information for 09/28-13:00Z, 10/01-04:00Z and added/updated MSLP info
  AL031929 "UNNAMED" Added/updated MSLP info
  AL041929 "UNNAMED" Updated information 
  AL051929 "UNNAMED" Updated information 
  AL011930 "UNNAMED" Updated information 
  AL021930 "UNNAMED" Added information for 09/09-09:00Z and added/updated MSLP info
  AL031930 "UNNAMED" Updated information 

  Done: 17-Feb-2011 (CAS)


* ATCF Database reanalysis updates (1851-1925): 
  - includes the addition of higher temporal information and other dotrm information

  North Atlantic Basin:
  ---------------------

  AL011851 "UNNAMED" Added information for 06/25-21:00Z 
  AL041851 "UNNAMED" Added information for 08/23-21:00Z  
  AL061851 "UNNAMED" Added information for 10/19-15:00Z  
  AL011852 "UNNAMED" Added/updated MSLP info
  AL031852 "UNNAMED" Updated information 
  AL051852 "UNNAMED" Added information for 10/09-21:00Z  
  AL011854 "UNNAMED" Updated information 
  AL031854 "UNNAMED" Added information for 09/08-20:00Z and added/updated MSLP info
  AL041854 "UNNAMED" Added information for 09/18-21:00Z
  AL011856 "UNNAMED" Added/updated MSLP info
  AL031856 "UNNAMED" Added information for 08/19-11:00Z  
  AL051856 "UNNAMED" Added/updated MSLP info
  AL041857 "UNNAMED" Added information for 09/29-10:00Z  
  AL031858 "UNNAMED" Added information for 09/14-15:00Z, 09/16-17:00Z and added/updated MSLP info
  AL051859 "UNNAMED" Updated information 
  AL071859 "UNNAMED" Added information for 10/17-16:00Z 

  AL011860 "UNNAMED" Added information for 08/11-20:00Z  
  AL041860 "UNNAMED" Added information for 09/15-04:00Z  
  AL061860 "UNNAMED" Added information for 10/02-17:00Z  
  AL051861 "UNNAMED" Added information for 09/27-17:00Z  
  AL071861 "UNNAMED" Updated information 
  AL081861 "UNNAMED" Added information for 11/01-08:00Z, 11/02-10:00Z, 11/03-08:00Z, 11/03-09:00Z and added/updated MSLP info
  AL061863 "UNNAMED" Added information for 09/18-13:00Z
  AL091863 "UNNAMED" Updated information 
  AL021865 "UNNAMED" Updated information 
  AL041865 "UNNAMED" Added information for 09/13-21:00Z
  AL051865 "UNNAMED" Updated information 
  AL071865 "UNNAMED" Added information for 10/23-10:00Z, 10/23-14:00Z and added/updated MSLP info
  AL011866 "UNNAMED" Updated information 
  AL071866 "UNNAMED" Added information for 10/30-08:00Z
  AL011867 "UNNAMED" Added information for 06/22-14:00Z  
  AL071867 "UNNAMED" Added information for 10/04-15:00Z, 10/06-15:00Z  
  AL021868 "UNNAMED" Added information for 10/04-16:00Z
  AL021869 "UNNAMED" Added information for 08/17-07:00Z  
  AL051869 "UNNAMED" Updated information 
  AL061869 "UNNAMED" Added information for 09/08-22:00Z and added/updated MSLP info
  AL101869 "UNNAMED" Added information for 10/04-23:00Z

  AL011870 "UNNAMED" Updated information 
  AL091870 "UNNAMED" Added information for 10/20-14:00Z, 10/20-20:00Z  
  AL011871 "UNNAMED" Added information for 06/04-07:00Z,  added/updated MSLP info
  AL021871 "UNNAMED" Added information for 06/09-17:00Z,  
  AL031871 "UNNAMED" Added information for 08/17-20:00Z and added/updated MSLP info
  AL041871 "UNNAMED" Added information for 08/25-05:00Z and added/updated MSLP info
  AL061871 "UNNAMED" Added information for 09/06-14:00Z
  AL071871 "UNNAMED" Added information for 10/05-16:00Z  
  AL011872 "UNNAMED" Added information for 07/11-05:00Z, 07/11-08:00Z  
  AL051872 "UNNAMED" Added information for 10/23-08:00Z, 10/25-01:00Z  
  AL011873 "UNNAMED" Added information for 06/02-11:00Z
  AL031873 "UNNAMED" Added information for 09/19-15:00Z  
  AL041873 "UNNAMED" Added information for 09/23-10:00Z  
  AL051873 "UNNAMED" Added information for 10/07-01:00Z and added/updated MSLP info
  AL011874 "UNNAMED" Added information for 07/04-20:00Z
  AL061874 "UNNAMED" Added information for 09/28-03:00Z and added/updated MSLP info
  AL031875 "UNNAMED" Added information for 09/16-21:00Z and added/updated MSLP info
  AL041875 "UNNAMED" Added information for 09/27-13:00Z
  AL021876 "UNNAMED" Added information for 09/17-14:00Z and added/updated MSLP info
  AL051876 "UNNAMED" Added information for 10/20-05:00Z and added/updated MSLP info
  AL021877 "UNNAMED" Added information for 09/18-16:00Z, 09/19-20:00Z  
  AL071877 "UNNAMED" Added information for 10/26-21:00Z
  AL011878 "UNNAMED" Added information for 07/02-15:00Z  
  AL051878 "UNNAMED" Added information for 09/07-21:00Z, 09/08-02:00Z, 09/10-11:00Z and added/updated MSLP info
  AL081878 "UNNAMED" Added information for 10/10-21:00Z and added/updated MSLP info
  AL111878 "UNNAMED" Added information for 10/23-04:00Z and added/updated MSLP info
  AL021879 "UNNAMED" Added/updated MSLP info
  AL031879 "UNNAMED" Added information for 08/23-02:00Z and added/updated MSLP info
  AL041879 "UNNAMED" Added information for 09/01-04:00Z
  AL051879 "UNNAMED" Added information for 10/07-05:00Z  
  AL061879 "UNNAMED" Added information for 10/16-08:00Z  
  AL071879 "UNNAMED" Added information for 10/27-21:00Z  

  AL011880 "UNNAMED" Added information for 06/24-15:00Z  
  AL041880 "UNNAMED" Added information for 08/31-04:00Z and added/updated MSLP info
  AL061880 "UNNAMED" Added information for 09/08-16:00Z, 09/09-10:00Z and added/updated MSLP info
  AL091880 "UNNAMED" Added information for 10/08-19:00Z
  AL111880 "UNNAMED" Added information for 10/23-08:00Z, 10/23-13:00Z and added/updated MSLP info
  AL011881 "UNNAMED" Added information for 08/03-13:00Z
  AL021881 "UNNAMED" Added information for 08/13-21:00Z  
  AL051881 "UNNAMED" Added information for 08/28-02:00Z and added/updated MSLP info
  AL061881 "UNNAMED" Added information for 09/09-16:00Z and added/updated MSLP info
  AL021882 "UNNAMED" Added information for 09/10-02:00Z and added/updated MSLP info
  AL031882 "UNNAMED" Added information for 09/15-05:00Z
  AL041882 "UNNAMED" Added information for 09/22-22:00Z, 09/24-05:00Z and added/updated MSLP info
  AL061882 "UNNAMED" Added information for 10/11-04:00Z
  AL031883 "UNNAMED" Added information for 09/11-13:00Z  
  AL031884 "UNNAMED" Added information for 09/11-01:00Z and added/updated MSLP info
  AL021885 "UNNAMED" Added information for 08/25-09:00Z and added/updated MSLP info
  AL041885 "UNNAMED" Added information for 09/21-03:00Z 
  AL061885 "UNNAMED" Added information for 09/26-04:00Z  
  AL081885 "UNNAMED" Added information for 10/11-22:00Z  
  AL011886 "UNNAMED" Added information for 06/14-16:00Z  
  AL021886 "UNNAMED" Added information for 06/21-11:00Z  
  AL031886 "UNNAMED" Added information for 06/30-21:00Z  
  AL041886 "UNNAMED" Added information for 07/19-01:00Z and added/updated MSLP info
  AL051886 "UNNAMED" Added information for 08/20-13:00Z and added/updated MSLP info
  AL101886 "UNNAMED" Added information for 10/12-22:00Z
  AL031887 "UNNAMED" Added information for 06/14-07:00Z  
  AL041887 "UNNAMED" Added information for 07/27-15:00Z  
  AL091887 "UNNAMED" Added information for 09/21-17:00Z and added/updated MSLP info
  AL131887 "UNNAMED" Updated information 
  AL161887 "UNNAMED" Added information for 10/30-01:00Z and added/updated MSLP info
  AL011888 "UNNAMED" Updated information 
  AL021888 "UNNAMED" Added information for 07/05-16:00Z
  AL031888 "UNNAMED" Added information for 08/16-19:00Z, 08/19-16:00Z  
  AL051888 "UNNAMED" Added/updated MSLP info
  AL071888 "UNNAMED" Added information for 10/11-01:00Z, 10/11-16:00Z and added/updated MSLP info
  AL021889 "UNNAMED" Added information for 06/17-15:00Z
  AL061889 "UNNAMED" Added information for 09/23-04:00Z, 09/23-13:00Z  
  AL091889 "UNNAMED" Added information for 10/05-23:00Z, 10/06-01:00Z

  AL021890 "UNNAMED" Added information for 08/27-16:00Z
  AL011891 "UNNAMED" Added information for 07/05-22:00Z  
  AL031891 "UNNAMED" Added information for 08/24-15:00Z and added/updated MSLP info
  AL071891 "UNNAMED" Added information for 10/07-08:00Z and added/updated MSLP info
  AL011892 "UNNAMED" Added information for 06/10-23:00Z
  AL041892 "UNNAMED" Added information for 09/12-07:00Z  
  AL091892 "UNNAMED" Added information for 10/24-19:00Z  
  AL011893 "UNNAMED" Added information for 06/15-23:00Z  
  AL041893 "UNNAMED" Added/updated MSLP info
  AL061893 "UNNAMED" Added information for 08/28-05:00Z and added/updated MSLP info
  AL081893 "UNNAMED" Added information for 09/07-14:00Z
  AL091893 "UNNAMED" Added information for 10/13-13:00Z and added/updated MSLP info
  AL101893 "UNNAMED" Added information for 10/02-08:00Z, 10/02-16:00Z and added/updated MSLP info
  AL111893 "UNNAMED" Added information for 10/23-03:00Z, 10/23-11:00Z 
  AL021894 "UNNAMED" Updated information 
  AL041894 "UNNAMED" Added information for 09/25-11:00Z, 09/25-19:00Z, 09/27-07:00Z and added/updated MSLP info
  AL051894 "UNNAMED" Added information for 10/09-03:00Z, 10/10-15:00Z
  AL011895 "UNNAMED" Added information for 08/15-19:00Z, 08/16-13:00Z  
  AL041895 "UNNAMED" Added information for 10/07-04:00Z
  AL061895 "UNNAMED" Added information for 10/16-13:00Z  
  AL011896 "UNNAMED" Added information for 07/07-17:00Z  
  AL021896 "UNNAMED" Added information for 09/10-13:00Z and added/updated MSLP info
  AL041896 "UNNAMED" Added information for 09/29-11:00Z and added/updated MSLP info
  AL051896 "UNNAMED" Added information for 10/09-02:00Z  
  AL021897 "UNNAMED" Added information for 09/13-05:00Z  
  AL031897 "UNNAMED" Added information for 09/21-02:00Z, 09/24-11:00Z, 09/24-13:00Z  
  AL051897 "UNNAMED" Added information for 10/20-20:00Z 
  AL061897 "UNNAMED" Added information for 10/25-20:00Z  
  AL011898 "UNNAMED" Added information for 08/02-03:00Z, 08/02-22:00Z  
  AL021898 "UNNAMED" Added information for 08/31-07:00Z
  AL051898 "UNNAMED" Added information for 09/20-11:00Z  
  AL061898 "UNNAMED" Added information for 09/28-07:00Z  
  AL071898 "UNNAMED" Added information for 10/02-16:00Z and added/updated MSLP info
  AL011899 "UNNAMED" Added information for 06/27-09:00Z,  
  AL021899 "UNNAMED" Added information for 07/30-10:00Z, 08/01-17:00Z and added/updated MSLP info
  AL031899 "UNNAMED" Added information for 08/18-01:00Z and added/updated MSLP info
  AL061899 "UNNAMED" Added information for 10/05-10:00Z
  AL081899 "UNNAMED" Added information for 10/31-09:00Z  

  AL011900 "UNNAMED" Added information for 09/09-01:00Z and added/updated MSLP info
  AL041900 "UNNAMED" Added information for 09/13-15:00Z
  AL061900 "UNNAMED" Added information for 10/12-02:00Z  
  AL011901 "UNNAMED" Added information for 06/13-20:00Z  
  AL021901 "UNNAMED" Added information for 07/10-10:00Z  
  AL031901 "UNNAMED" Added information for 07/11-07:00Z, 07/12-22:00Z  
  AL041901 "UNNAMED" Added information for 08/14-21:00Z, 08/15-17:00Z and added/updated MSLP info
  AL071901 "UNNAMED" Added information for 09/17-19:00Z
  AL091901 "UNNAMED" Added information for 09/28-02:00Z and added/updated MSLP info
  AL011902 "UNNAMED" Added information for 06/14-23:00Z
  AL021902 "UNNAMED" Added information for 06/26-21:00Z  
  AL041902 "UNNAMED" Added/updated MSLP info
  AL031903 "UNNAMED" Added information for 09/11-22:00Z, 09/13-23:00Z and added/updated MSLP info
  AL041903 "UNNAMED" Added/updated MSLP info
  AL021904 "UNNAMED" Added information for 09/14-13:00Z
  AL031904 "UNNAMED" Added information for 10/17-07:00Z, 10/29-10:00Z  
  AL051904 "UNNAMED" Updated information 
  AL031905 "UNNAMED" Added information for 09/29-09:00Z
  AL051905 "UNNAMED" Added information for 10/09-17:00Z  
  AL011906 "UNNAMED" Added information for 06/12-20:00Z,  
  AL021906 "UNNAMED" Added information for 06/17-02:00Z, 06/17-07:00Z and added/updated MSLP info
  AL051906 "UNNAMED" Added information for 09/17-21:00Z and added/updated MSLP info
  AL061906 "UNNAMED" Added information for 09/27-11:00Z and added/updated MSLP info
  AL081906 "UNNAMED" Added information for 10/18-10:00Z, 10/21-09:00Z and added/updated MSLP info
  AL011907 "UNNAMED" Added information for 06/28-23:00Z
  AL021907 "UNNAMED" Added information for 09/21-17:00Z  
  AL031907 "UNNAMED" Added information for 09/28-20:00Z  
  AL021908 "UNNAMED" Added information for 05/30-22:00Z and added/updated MSLP info
  AL031908 "UNNAMED" Added information for 07/31-11:00Z
  AL041908 "UNNAMED" Added information for 08/03-21:00Z  
  AL051908 "UNNAMED" Added information for 09/01-08:00Z  
  AL021909 "UNNAMED" Added information for 06/29-17:00Z and added/updated MSLP info
  AL031909 "UNNAMED" Added information for 06/28-20:00Z, 06/30-14:00Z  
  AL041909 "UNNAMED" Added information for 07/21-16:00Z and added/updated MSLP info
  AL071909 "UNNAMED" Added information for 08/29-09:00Z
  AL081909 "UNNAMED" Added/updated MSLP info
  AL101909 "UNNAMED" Added/updated MSLP info

  AL031910 "UNNAMED" Added information for 09/14-22:00Z  
  AL021911 "UNNAMED" Added information for 08/11-22:00Z  
  AL031911 "UNNAMED" Added information for 08/28-09:00Z and added/updated MSLP info
  AL011912 "UNNAMED" Added information for 06/13-04:00Z
  AL021912 "UNNAMED" Added information for 07/15-14:00Z  
  AL041912 "UNNAMED" Added information for 09/14-08:00Z  
  AL061912 "UNNAMED" Added information for 10/16-17:00Z  
  AL011913 "UNNAMED" Added information for 06/28-00:00Z  
  AL041913 "UNNAMED" Added information for 09/03-07:00Z and added/updated MSLP info
  AL051913 "UNNAMED" Added information for 10/08-14:00Z  
  AL011914 "UNNAMED" Added information for 09/17-07:00Z  
  AL011915 "UNNAMED" Added/updated MSLP info
  AL021915 "UNNAMED" Added information for 08/17-07:00Z and added/updated MSLP info
  AL041915 "UNNAMED" Added information for 09/04-11:00Z and added/updated MSLP info
  AL061915 "UNNAMED" Added/updated MSLP info
  AL011916 "UNNAMED" Added/updated MSLP info
  AL021916 "UNNAMED" Added information for 07/05-21:00Z and added/updated MSLP info
  AL031916 "UNNAMED" Added information for 07/21-13:00Z and added/updated MSLP info
  AL041916 "UNNAMED" Added information for 07/14-08:00Z and added/updated MSLP info
  AL061916 "UNNAMED" Added information for 08/18-22:00Z,  added/updated MSLP info
  AL071916 "UNNAMED" Added information for 08/25-08:00Z  
  AL121916 "UNNAMED" Added information for 10/04-21:00Z and added/updated MSLP info
  AL141916 "UNNAMED" Added information for 10/18-14:00Z and added/updated MSLP info
  AL041917 "UNNAMED" Added information for 09/29-02:00Z and added/updated MSLP info
  AL011918 "UNNAMED" Added/updated MSLP info
  AL031918 "UNNAMED" Added information for 08/24-21:00Z  

  AL011919 "UNNAMED" Added information for 07/04-11:00Z and added/updated MSLP info
  AL021919 "UNNAMED" Added information for 09/10-07:00Z, 09/14-21:00Z and added/updated MSLP info
  AL041919 "UNNAMED" Added information for 10/01-01:00Z  
  AL021920 "UNNAMED" Added information for 09/22-01:00Z and added/updated MSLP info
  AL031920 "UNNAMED" Updated information 
  AL051920 "UNNAMED" Added information for 09/30-09:00Z

  AL011921 "UNNAMED" Added/updated MSLP info
  AL061921 "UNNAMED" Added information for 10/25-20:00Z and added/updated MSLP info
  AL011923 "UNNAMED" Added information for 06/26-05:00Z and added/updated MSLP info
  AL061923 "UNNAMED" Added/updated MSLP info
  AL071923 "UNNAMED" Added information for 10/19-09:00Z and added/updated MSLP info
  AL081923 "UNNAMED" Added information for 10/18-01:00Z and added/updated MSLP info
  AL051924 "UNNAMED" Added information for 09/15-14:00Z and added/updated MSLP info
  AL081924 "UNNAMED" Added information for 09/29-21:00Z and added/updated MSLP info
  AL101924 "UNNAMED" Added information for 10/21-01:00Z and added/updated MSLP info
  AL041925 "UNNAMED" Added information for 12/01-04:00Z and added/updated MSLP info
  AL041925 "UNNAMED" Added information for 12/01-04:00Z, 12/03-00:21Z and added/updated MSLP info

  Done: 17-Feb-2011 (CAS)


* ATCF Database Fix file updates: 
  added additional fix information to the following systems:

  2005:  AL012005 AL022005 AL032005 AL042005 AL052005 AL062005

  2006:  AL012006 AL022006 AL032006 AL042006 AL052006 AL062006 AL072006 
         AL082006 AL092006 EP022006 EP032006 EP042006 EP052006 EP072006 
         EP082006 EP092006 EP102006 EP112006 EP122006 EP132006 EP142006 
         EP172006 EP182006 EP192006 EP202006 EP212006 

  2007:  AL012007 AL022007 AL032007 AL042007 AL052007 AL062007 AL072007 
         AL082007 AL092007 AL102007 AL112007 AL122007 AL132007 AL142007 
         AL152007 AL162007 AL172007 EP012007 EP022007 EP032007 EP042007 
         EP052007 EP062007 EP072007 EP082007 EP092007 EP102007 EP112007 
         EP122007 EP132007 EP142007 EP152007

  2008:  AL012008 AL022008 AL032008 AL042008 AL052008 AL062008 AL072008 
         AL082008 AL092008 AL102008 AL112008 AL122008 AL132008 AL142008
         AL152008 AL162008 AL172008 EP012008 EP022008 EP032008 EP042008
         EP052008 EP062008 EP072008 EP082008 EP092008 EP102008 EP112008
         EP122008 EP132008 EP142008 EP152008 EP162008 EP172008 EP182008

  Done: 21-Oct-2010 (CAS)


* ATCF Database best track updates: 
  - includes the addition of higher temporal information

  North Atlantic Basin:
  ---------------------

  AL011994 "ALBERTO" added information for 07/03-15Z.

  AL012001 "ALLISON" added information for 06/05-14Z and 06/05-15Z.

  AL012005 "ARLENE" added information for 06/10-08Z, 06/11-01Z and 06/11-19Z.

  AL012006 "ALBERTO" added information for 06/13-16Z.

  AL021993 "ARLENE" added information for 06/20-09Z.

  AL021994 "TWO" added information for 07/20-14Z.

  AL021995 "BARRY" added information for 07/07-21Z, 07/09-21:30Z and 07/09-22Z. 

  AL021996 "BERTHA" added information for 07/12-20Z.
  
  AL022002 "BERTHA" added information for 08/05-01Z, 08/05-02Z and 08/09-08Z. 

  AL022004 "BONNIE" added information for 08/12-14Z. 

  AL022005 "BRET" added information for 06/28-22Z. 

  AL022007 "BARRY" added information for 06/02-14Z. 

  AL031982 "BERYL" corrected intensity information for 08/31-06Z. 

  AL031991 "BOB" added information for 08/20-01Z. 

  AL031993 "BRET" added information for 08/07-07Z, 08/07-10Z, 08/08-08Z and 08/10-17Z. 

  AL031994 "BERYL" added information for 08/16-03Z.  

  AL031996 "CESAR" added information for 07/28-04Z.  

  AL031997 "BILL" added information for 07/12-15Z.  

  AL032001 "BILL" added information for 08/06-05Z.  

  AL032003 "BARRY" added information for 06/30-19Z.  

  AL032004 "CHARLEY" added information for 08/13-04:30Z, 08/13-19:45Z, 08/13-20:45Z, 08/14-14Z and 08/14-16Z.  

  AL032005 "CINDY" added information for 07/04-03:30Z and 07/06-03Z.  

  AL032006 "BERYL" added information for 07/21-06:45Z.  

  AL041980 "ALLEN" revised internal format information.  

  AL041992 "ANDREW" added information for 08/23-21Z, 08/24-01Z, 08/24-08:40Z, 08/24-09:05Z and 08/26-08:30Z.  

  AL041993 "CINDY" added information for 08/16-21Z.

  AL041995 "DEAN" added information for 07/31-02Z.

  AL041996 "DOLLY" added information for 08/20-17:30Z.

  AL042001 "CHANTAL" added information for 08/21-02Z.

  AL042003 "CLAUDETTE" added information for 07/11-10Z and 07/15-15:30Z.

  AL042005 "DENNIS" added information for 07/04-21Z, 07/08-02:45Z, 07/08-18:45Z and 07/10-19:30Z.

  AL042007 "DEAN" added information for 08/21-08:30Z and 08/22-16:30Z.

  AL051993 "EMILY" added information for 08/31-21Z.

  AL051995 "ERIN" added information for 08/02-06:15Z, 08/03-13:30Z and 08/03-16Z.

  AL052002 "EDOUARD" added information for 09/05-00:45Z.

  AL052005 "EMILY" added information for 07/14-07Z and 07/18-06Z.

  AL052007 "ERIN" added information for 08/16-10:30Z.

  AL061991 "CLAUDETTE" added information for 09/07-10Z.

  AL061994 "DEBBY" added information for 09/10-03Z.

  AL061996 "FRAN" added information for 09/06-00:30Z.

  AL062002 "FAY" added information for 09/07-09Z.

  AL062004 "FRANCES" added information for 09/01-07Z, 09/02-07:30Z, 09/02-19:30Z, 09/03-05:30Z, 09/03-10Z and 09/04-10Z.

  AL062006 "ERNESTO" added information for 08/28-11:15Z, 08/30-03Z, 08/30-05Z and 09/01-03:40Z.

  AL062007 "FELIX" added information for 09/01-08:45Z and 09/03-07Z.

  AL071992 "DANIELLE" added information for 09/25-22Z.

  AL072004 "GASTON" added information for 08/29-14Z.

  AL072007 "GABRIELLE" added information for 09/09-15:30Z.

  AL081991 "ERIKA" added information for 09/12-03Z.

  AL081993 "GERT" added information for 09/20-21Z.

  AL081995 "GABRIELLE" added information for 08/11-20Z.

  AL081996 "HORTENSE" added information for 09/15-03Z.

  AL082002 "GUSTAV" added information for 09/12-04Z, 09/12-04:30Z and 09/12-09Z.

  AL082003 "ERIKA" added information for 08/16-10:30Z.

  AL091991 "FABIAN" added information for 10/16-08:34Z.

  AL092001 "NINE" added information for 10/19-21Z.

  AL092002 "HANNA" added information for 09/14-08Z and 09/14-15Z.

  AL092004 "IVAN" added information for 09/07-21:30Z, 09/11-03:30Z, 09/12-14:15Z, 09/13-21Z, 09/14-01Z, 09/16-06:50Z and 09/24-02Z.

  AL092007 "HUMBERTO" added information for 09/13-07Z.

  AL101995 "IRIS" added information for 08/27-23Z.

  AL101996 "JOSEPHINE" added information for 10/08-03:30Z.

  AL101999 "HARVEY" added information for 09/21-08Z.

  AL102002 "ISIDORE" added information for 09/20-21Z and 09/22-21Z.

  AL111991 "GRACE" added information for 10/29-14Z.

  AL111996 "KYLE" added information for 10/11-21Z.

  AL112001 "IRIS" added information for 10/09-02Z.

  AL112003 "GRACE" added information for 08/31-11Z.

  AL112004 "JEANNE" added information for 09/14-04Z, 09/15-16Z, 09/16-11Z, 09/25-14Z and 09/26-04Z.

  AL112005 "JOSE" added information for 08/23-03:30Z.

  AL121994 "GORDON" added information for 11/13-03Z, 11/13-13Z, 11/15-13Z and 11/16-13Z.

  AL121996 "LILI" added information for 10/18-09:30Z.

  AL122002 "KYLE" added information for 10/11-17Z and 10/11-22Z.

  AL122003 "HENRI" added information for 09/06-09Z.

  AL122005 "KATRINA" added information for 08/25-22:30Z, 08/29-11:10Z and 08/29-14:45Z.

  AL131999 "IRENE" added information for 10/18-07:56Z.

  AL132002 "LILI" added information for 09/30-14Z, 10/01-11Z, 10/01-14Z, 10/02-20:13Z and 10/03-13Z.

  AL132007 "LORENZO" added information for 09/28-05Z.

  AL142004 "MATTHEW" added information for 10/10-11Z.

  AL151995 "MARILYN" added information for 09/14-21Z and 09/17-03Z.

  AL152000 "KEITH" added information for 10/01-07Z.

  AL152001 "MICHELLE" added information for 11/03-21Z and 11/04-23Z.

  AL132003 "ISABEL" added information for 09/18-17Z.

  AL152003 "JUAN" added information for 09/29-03Z.

  AL162005 "OPHELIA" added information for 09/06-16Z.

  AL162007 "NOEL" added information for 10/29-07Z, 11/01-13:15Z and 11/01-17:45Z.

  AL171970 "UNNAMED" updated format.

  AL171995 "OPAL" added information for 10/04-10Z and 10/04-22Z.

  AL172003 "LARRY" added information for 10/05-10Z.

  AL172007 "OLGA" added information for 12/11-07Z.

  AL182005 "RITA" added information for 09/22-03Z and 09/24-07:40Z.

  AL191974 "UNNAMED" updated format.

  AL191995 "ROXANNE" added information for 10/10-21:52Z and 10/11-02Z. 

  AL202003 "ODETTE" added information for 12/06-23Z. 

  AL202005 "STAN" added information for 10/02-10Z. 

  AL221975 "UNNAMED" updated format. 

  AL222005 "TAMMY" added information for 10/05-23Z. 

  AL242005 "VINCE" added information for 10/11-09Z.

  AL252005 "WILMA" added information for 10/21-21:45Z, 10/22-03:30Z and 10/24-10:30Z.

  AL262005 "ALPHA" added information for 10/23-10Z.

  AL502004 "UNNAMED" updated intenstity information for 03/27-00Z (South Atlantic System).

  Done: 04-Oct-2010 (CAS)


  North East Pacific Basin:
  -------------------------
 
  EP012005 "ADRIAN" added information for 05/19-17Z and 05/20-21Z.

  EP012007 "ALVIN" added information for 06/01-06Z.

  EP022007 "BARBARA" added information for 06/02-13Z.

  EP032003 "CARLOS" added information for 06/27-03Z.

  EP041993 "CALVIN" added information for 07/08-17Z.

  EP051994 "EMILIA" revised information for 07/19-18Z, intensity revised to 140 kts.

  EP091993 "HILARY" added information for 08/25-13Z.

  EP101959 "UNNAMED" corrected information 09/21-12Z and 09/21-18Z records.

  EP112006 "JOHN" added information for 09/02-02Z.

  EP112007 "HENRIETTE" added information for 09/04-21Z.

  EP121997 "JIMENA" added information for 08/28-15Z.

  EP131993 "LIDIA" added information for 09/13-08Z.

  EP132003 "MARTY" added information for 09/22-09Z.

  EP132004 "JAVIER" added information for 09/19-11Z.

  EP132006 "LANE" added information for 09/16-19Z.

  EP141986 "NEWTON" added information for 09/24-00Z.

  EP141992 "LESTER" added information for 09/23-10Z and 09/23-20Z.

  EP142002 "KENNA" added information for 10/25-16Z.

  EP151978 "OLIVIA" modified postion information for 09/20-00Z.

  EP152003 "OLAF" modified postion information for 09/20-00Z.

  EP162004 "SIXTEEN" added information for 10/26-10Z. 

  EP172006 "PAUL" added information for 10/26-04Z. 

  EP191994 "ROSA" added information for 10/14-10Z. 

  EP231992 "VIRGIL" added information for 10/04-03Z. 

  EP241992 "WINIFRED" added information for 10/09-20Z. 

  Done: 01-Oct-2010 (CAS)


* ATCF Database best track updates/corrections: 

  CP012009 "MAKA" updated best track based on post-analysis work performed by CPHC.

  CP022009 "TWO" updated best track based on post-analysis work performed by CPHC.

  CP032009 "NEKI" updated best track based on post-analysis work performed by CPHC.

  CP012006 "IOKE" corrected the truncated data at the dateline for all datasets
                  related to this system (Fixes, Best Track and Guidance).
                  Note - merged in data from US Navy Joint Typhoon Warning Center

  Done: 27-Sep-2010 (CAS)


* ATCF Database best track corrections: 

  AL021983 "UNNAMED" corrected erroneous double July times, now the date tiem group
                     progresses properly from the end of July to start of Aug.

  EP031989 "COSME" corrected erroneous MSLP value (98mb -> 985mb) on 19890622/06Z. 

  Done: 22-Sep-2010 (CAS)


* ATCF Database best track corrections: 

  AL031982 "BERYL" corrected erroneously smoothed wind speeds.

  AL072008 "GUSTAV" updated off-synoptic times, peak intensity/pressure values.

  Done: 22-Oct-2009 (CAS)


* ATCF Database Objective Aid "guidance" additions:

  Added BCD5, BCS5, OCD5 and OCS5 guidance to the A-decks for years covering
  1970 to 2008 - when available.

  Done: 10-Jul-2009 (CAS)


* ATCF Database Objective Aid "guidance" revision:

  Purged erroneous guidance in the A-decks for year 2008, generally guidance 
  that was erroneously merged into the A-deck by mistake.  All records must
  start with a CARQ record.

  Done: 10-Jul-2009 (CAS)


* ATCF Database best track corrections:

  AL051974 "TD-5 (non-developing)" corrected erroneous dates.

  Done: 18-Jun-2009 (CAS)


* ATCF Database best track corrections:

  AL101989 "GABRIELLE" corrected erroneous MSLP value (927mb -> 937mb) on 19890904/00Z.
  
  AL101995 "IRIS" corrected to match current HURDAT and final TCR information.

  AL151995 "LUIS" corrected to match current HURDAT and final TCR information.

  Done: 16-Jun-2009 (CAS)


* ATCF Database best track corrections:

  Converted 1921-1925 reanalysis conversion from HURDAT dated June 6, 2009.

  1921 -  AL011921 "UNNAMED - reanalysis performed with changes"
          AL021921 "UNNAMED - reanalysis performed with changes" 
	  AL031921 "UNNAMED - reanalysis performed with changes" 
	  AL041921 "UNNAMED - reanalysis performed with changes" 
	  AL051921 "UNNAMED - reanalysis performed with changes" 
          AL061921 "UNNAMED - reanalysis performed with changes" 
          AL071921 "UNNAMED - reanalysis performed - new addition" 
	  
  1922 -  AL011922 "UNNAMED - reanalysis performed with changes"
 	  AL021922 "UNNAMED - reanalysis performed with changes"
	  AL031922 "UNNAMED - reanalysis performed - new addition (assigned AL031922)"
	  AL041922 "UNNAMED - reanalysis performed with changes (formerly AL031922)"
	  AL051922 "UNNAMED - reanalysis performed with changes (formerly AL041922)"
	  AL061922 "UNNAMED - reanalysis performed with changes (formerly AL051922)"

  1923 -  AL011923 "UNNAMED - reanalysis performed - new addition"
          AL021923 "UNNAMED - reanalysis performed with changes (formerly AL011923)"
          AL031923 "UNNAMED - reanalysis performed - new addition"
          AL041923 "UNNAMED - reanalysis performed - new addition"
          AL051923 "UNNAMED - reanalysis performed with changes (formerly AL021923)"
          AL061923 "UNNAMED - reanalysis performed with changes (formerly AL03923)"
          AL071923 "UNNAMED - reanalysis performed with changes (formerly AL051923)"
          AL081923 "UNNAMED - reanalysis performed with changes (formerly AL061923)"
          AL091923 "UNNAMED - reanalysis performed with changes (formerly AL071923)"	  

  1924 -  AL011924 "UNNAMED - reanalysis performed with changes"
          AL021924 "UNNAMED - reanalysis performed - new addition"
          AL031924 "UNNAMED - reanalysis performed with changes (formerly AL021924)"
          AL041924 "UNNAMED - reanalysis performed with changes (formerly AL031924)"
          AL051924 "UNNAMED - reanalysis performed with changes (formerly AL041924)"
          AL061924 "UNNAMED - reanalysis performed - new addition"
          AL071924 "UNNAMED - reanalysis performed - new addition"
          AL081924 "UNNAMED - reanalysis performed with changes (formerly AL051924)"
          AL091924 "UNNAMED - reanalysis performed with changes (formerly AL061924)"	 
          AL101924 "UNNAMED - reanalysis performed with changes (formerly AL071924)"	
	  AL111924 "UNNAMED - reanalysis performed with changes (formerly AL081924)"  

  1925 -  AL011925 "UNNAMED - reanalysis performed - new addition"
          AL021925 "UNNAMED - reanalysis performed - new addition"
          AL031925 "UNNAMED - reanalysis performed with changes (formerly AL011925)"
          AL041925 "UNNAMED - reanalysis performed with changes (formerly AL021925)"

  Done: 15-Jun-2009 (CAS)
	  

* ATCF Database best track corrections:

  AL081989 "FELIX" corrected intensity and status to reflect 40 KTS (EX) at 09/06Z.

  AL252005 "WILMA" corrected intensity and status to reflect 95 KTS at 24/12Z.

  Done: 14-Aug-2008 (CAS)


* ATCF Database best track corrections:

  AL101979 "UNNAMED" corrected erroneous intensity and status from 205 KTS (HU)
  to 25 KTS (TD).

  AL111978 "UNNAMED" correct date/time groups during month crossing.

  Done: 13-Aug-2008 (CAS)


* ATCF Database best track correction of intensity and development type for
  AL011975 "UNNAMED", changed erroeneous entry of 35 KTS (TS) to 30 KTS (TD).
  AL011975 was originally derived from a non-developing depression database.

  Done: 12-Aug-2008 (CAS)

* ATCF Database best track development type or status corrections:
  North East Pacific Basin

  EP081957 "UNNAMED" - corrected to reflect LO type at proper times.

  EP101958 "UNNAMED" - corrected to reflect LO type at proper times.

  EP011961 "IVA" - corrected to reflect LO type at proper times.

  EP011964 "NATALIE" - corrected to reflect LO type at proper times.

  EP101967 "KATRINA" - corrected to reflect LO type at proper times.

  Done: 12-Aug-2008 (CAS)


* ATCF Database best track development type or status corrections:
  North Atlantic Basin

  AL041980 "ALLEN" - corrected to reflect DB type at proper times.

  AL091980 "GEORGES" -  corrected to reflect DB type at proper times.

  AL161980 "JEANNE" - corrected to reflect DB type at proper times.

  AL021987 "ARLENE" - corrected to reflect LO type at proper times.

  AL011991 "ANA" - corrected to reflect LO type at proper times.

  AL131996 "MARCO" - corrected to reflect LO type at proper times.

  AL011997 "SUBTROP" - corrected to reflect LO type at proper times.

  AL131998 "MITCH" - corrected to reflect LO type at proper times.

  AL131999 "IRENE" - corrected to reflect LO type at proper times.

  Done: 12-Aug-2008 (CAS)


* ATCF Database best track intensity corrections:
  North East Pacific Basin

  EP131988 "MIRIAM" - adjusted development type from TD to LO in order to reflect
  proper status as a 10 KTS system.

  EP111989 "HENRIETTE" - corrected last intensity value in best track from 22 KTS
  to 20 KTS.

  Done: 12-Aug-2008 (CAS)


* ATCF Database best track conversion of AL HURDAT for years 1851 - 1920 using
  official HURDAT version "22-Apr-2008" approved by NHC best track committee.
  HURDAT file used "tracks1851to2007_atl_reanal.txt" (22-Apr-2008)
  North Atlantic Basin

  Done: 11-Aug-2008 (CAS)


* ATCF Database best track conversion of EP/CP HURDAT for years 1949 - 1988

  Done: 7-Sep-2007 (CAS)


* ATCF Database best track corrections:

  1989 - AL031989 "BARRY" 10/0000Z erroenous itensity of 24 KTS corrected to 25 KTS.
  1989 - AL081989 "FEXIX" 09/0600Z erroenous itensity of 37 KTS corrected to 35 KTS.
  1954 - AL111954 "ALICE" corrected Year in best track to 1955 for Jan 1 crossing.
  1992 - AL041992 "ANDREW" revised best track to reflect upgrade status to Cat 5 and revised
         best track to be consistent with HURDAT database.
  1991 - AL121991 "UNNAMED" updated best track to longer ATCF best track format
  1993 - AL011993 "ONE" updated best track to longer ATCF best track format
  Done: 11-Sep-2007 (CAS)
