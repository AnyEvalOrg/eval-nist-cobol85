000100 IDENTIFICATION DIVISION.                                         IC1134.2
000200 PROGRAM-ID.                                                      IC1134.2
000300     IC113A.                                                      IC1134.2
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
002500*                                                                         
002600*                                                                         
002700*                                                                         
002800*                                                                         
002900*                                                                         
003000*                                                                         
003100 ENVIRONMENT DIVISION.                                            IC1134.2
003200 CONFIGURATION SECTION.                                           IC1134.2
003300 SOURCE-COMPUTER.                                                 IC1134.2
003400     GNU-Linux.                                                   IC1134.2
003500 OBJECT-COMPUTER.                                                 IC1134.2
003600     GNU-Linux.                                                   IC1134.2
003700 DATA DIVISION.                                                   IC1134.2
003800 WORKING-STORAGE SECTION.                                         IC1134.2
003900 01  DUMMY-WS-ENTRY   PIC 99  VALUE 0.                            IC1134.2
004000 LINKAGE SECTION.                                                 IC1134.2
004100 01  COUNT-OF-RECORDS   PIC S9(9)   USAGE COMP.                   IC1134.2
004200 01  RECORDS-IN-ERROR   PIC S9(5)   USAGE COMP.                   IC1134.2
004300 01  ERROR-FLAG   PICTURE 9.                                      IC1134.2
004400 01  SQ-FS3-R1-G-120.                                             IC1134.2
004500     02  XFILE-NAME-GROUP.                                        IC1134.2
004600         03  FILLER   PIC X(5).                                   IC1134.2
004700         03  XFILE-NAME   PIC X(6).                               IC1134.2
004800     02  XRECORD-NAME-GROUP.                                      IC1134.2
004900         03  FILLER   PIC X(8).                                   IC1134.2
005000         03  XRECORD-NAME   PIC X(6).                             IC1134.2
005100     02  REELUNIT-NUMBER-GROUP.                                   IC1134.2
005200         03  FILLER   PIC X(1).                                   IC1134.2
005300         03  REELUNIT-NUMBER   PIC 9(1).                          IC1134.2
005400     02  FILLER   PIC X(7).                                       IC1134.2
005500     02  XRECORD-NUMBER   PIC 9(6).                               IC1134.2
005600     02  FILLER   PIC X(79).                                      IC1134.2
005700     02  XLABEL-TYPE   PIC X(1).                                  IC1134.2
005800 PROCEDURE DIVISION USING RECORDS-IN-ERROR  SQ-FS3-R1-G-120       IC1134.2
005900             ERROR-FLAG  COUNT-OF-RECORDS.                        IC1134.2
006000 SECT-IC113-0001 SECTION.                                         IC1134.2
006100 LINK-TEST-08.                                                    IC1134.2
006200     ADD 1 TO COUNT-OF-RECORDS.                                   IC1134.2
006300     IF COUNT-OF-RECORDS NOT EQUAL TO XRECORD-NUMBER              IC1134.2
006400         GO TO LINK-FAIL-08.                                      IC1134.2
006500     IF REELUNIT-NUMBER-GROUP NOT EQUAL TO "/0"                   IC1134.2
006600         GO TO LINK-FAIL-08.                                      IC1134.2
006700     IF XFILE-NAME NOT EQUAL TO "SQ-FS3"                          IC1134.2
006800         GO TO LINK-FAIL-08.                                      IC1134.2
006900     IF XRECORD-NAME NOT EQUAL TO "R1-F-G"                        IC1134.2
007000         GO TO LINK-FAIL-08.                                      IC1134.2
007100     IF XLABEL-TYPE NOT EQUAL TO "S"                              IC1134.2
007200         GO TO LINK-FAIL-08.                                      IC1134.2
007300 LINK-EXIT-08.                                                    IC1134.2
007400     EXIT PROGRAM.                                                IC1134.2
007500 LINK-FAIL-08.                                                    IC1134.2
007600     ADD 1 TO RECORDS-IN-ERROR.                                   IC1134.2
007700     MOVE 1 TO ERROR-FLAG.                                        IC1134.2
007800     GO TO LINK-EXIT-08.                                          IC1134.2
