000100 IDENTIFICATION DIVISION.                                         NC1104.2
000200 PROGRAM-ID.                                                      NC1104.2
000300     NC110M.                                                      NC1104.2
000400*                                                                         
000500*                                                                         
000600*                                                                         
000700*                                                                         
000800*                                                                         
000900*                                                                         
001000*                                                                         
001100*                                                                         
001200*                                                                         
001300*                                                                         
001400*                                                                         
001500*                                                                         
001600*                                                                         
001700*                                                                         
001800*                                                                         
001900*                                                                         
002000*                                                                         
002100*                                                                         
002200*                                                                         
002300*                                                                         
002400*                                                                         
002500 ENVIRONMENT DIVISION.                                            NC1104.2
002600 CONFIGURATION SECTION.                                           NC1104.2
002700 SOURCE-COMPUTER.                                                 NC1104.2
002800     GNU-Linux.                                                   NC1104.2
002900 OBJECT-COMPUTER.                                                 NC1104.2
003000     GNU-Linux.                                                   NC1104.2
003100 DATA DIVISION.                                                   NC1104.2
003200 PROCEDURE    DIVISION.                                           NC1104.2
003300 HEADER-PRINT.                                                    NC1104.2
003400     DISPLAY " ".                                                 NC1104.2
003500     DISPLAY                                                      NC1104.2
003600     " FOR OFFICIAL USE ONLY                                    ".NC1104.2
003700     DISPLAY                                                      NC1104.2
003800     "     OFFICIAL COBOL COMPILER TEST SYSTEM.     ".            NC1104.2
003900     DISPLAY                                                      NC1104.2
004000     "                TEST RESULTS SET- NC110M                  ".NC1104.2
004100     DISPLAY                                                      NC1104.2
004200     "                                                          ".NC1104.2
004300     DISPLAY                                                      NC1104.2
004400     " FOR OFFICIAL USE ONLY "                                    NC1104.2
004500     "                                                         ". NC1104.2
004600     DISPLAY                                                      NC1104.2
004700     "COPYRIGHT  1985".                                           NC1104.2
004800     DISPLAY                                                      NC1104.2
004900     "                                                          ".NC1104.2
005000     DISPLAY                                                      NC1104.2
005100     " FEATURE     RESULTS AND                                  ".NC1104.2
005200     DISPLAY                                                      NC1104.2
005300     " TESTED      REMARKS                                      ".NC1104.2
005400     DISPLAY                                                      NC1104.2
005500     "                                                          ".NC1104.2
005600     DISPLAY                                                      NC1104.2
005700     " ---------------------------------------------------------".NC1104.2
005800 GO-TEST.                                                         NC1104.2
005900     DISPLAY                                                      NC1104.2
006000     " GO TO       THIS TEST PASSES UNLESS FAIL APPEARS BELOW.  ".NC1104.2
006100     GO       TO PERFORM-TEST.                                    NC1104.2
006200 GO-FAIL.                                                         NC1104.2
006300     DISPLAY                                                      NC1104.2
006400     "             FAIL".                                         NC1104.2
006500 PERFORM-TEST.                                                    NC1104.2
006600     DISPLAY                                                      NC1104.2
006700     " PERFORM     THIS TEST FAILS UNLESS PASS APPEARS BELOW.   ".NC1104.2
006800     PERFORM  PASS.                                               NC1104.2
006900 ENDER-PRINT.                                                     NC1104.2
007000     DISPLAY                                                      NC1104.2
007100     " ---------------------------------------------------------".NC1104.2
007200     DISPLAY                                                      NC1104.2
007300     SPACE.                                                       NC1104.2
007400     DISPLAY                                                      NC1104.2
007500     "                  END OF TEST - NC110M                    ".NC1104.2
007600     DISPLAY                                                      NC1104.2
007700     "                  CHECK FOR ERRORS                        ".NC1104.2
007800     DISPLAY                                                      NC1104.2
007900     "                                                          ".NC1104.2
008000     DISPLAY                                                      NC1104.2
008100     " FOR OFFICIAL USE ONLY "                                    NC1104.2
008200     DISPLAY                                                      NC1104.2
008300     "COPYRIGHT  1985".                                           NC1104.2
008400     DISPLAY                                                      NC1104.2
008500     "       NTIS DISTRIBUTION COBOL 1985               ".        NC1104.2
008600     STOP RUN.                                                    NC1104.2
008700 PASS.                                                            NC1104.2
008800     DISPLAY                                                      NC1104.2
008900     "             PASS".                                         NC1104.2
