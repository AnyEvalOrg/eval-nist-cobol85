000100 IDENTIFICATION DIVISION.                                         IC1094.2
000200 PROGRAM-ID.                                                      IC1094.2
000300     IC109A.                                                      IC1094.2
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
002500 ENVIRONMENT DIVISION.                                            IC1094.2
002600 CONFIGURATION SECTION.                                           IC1094.2
002700 SOURCE-COMPUTER.                                                 IC1094.2
002800     GNU-Linux.                                                   IC1094.2
002900 OBJECT-COMPUTER.                                                 IC1094.2
003000     GNU-Linux.                                                   IC1094.2
003100 INPUT-OUTPUT SECTION.                                            IC1094.2
003200 FILE-CONTROL.                                                    IC1094.2
003300     SELECT PRINT-FILE ASSIGN TO                                  IC1094.2
003400     "REPORT".                                                    IC1094.2
003500 DATA DIVISION.                                                   IC1094.2
003600 FILE SECTION.                                                    IC1094.2
003700 FD  PRINT-FILE.                                                  IC1094.2
003800 01  PRINT-REC PICTURE X(120).                                    IC1094.2
003900 01  DUMMY-RECORD PICTURE X(120).                                 IC1094.2
004000 WORKING-STORAGE SECTION.                                         IC1094.2
004100 77  WS1 PICTURE X.                                               IC1094.2
004200 LINKAGE SECTION.                                                 IC1094.2
004300 01  GRP-01.                                                      IC1094.2
004400     02  SUB-CALLED.                                              IC1094.2
004500         03  DN1  PICTURE X(6).                                   IC1094.2
004600         03  DN2  PICTURE X(6).                                   IC1094.2
004700         03  DN3  PICTURE X(6).                                   IC1094.2
004800     02  TIMES-CALLED.                                            IC1094.2
004900         03  DN4  PICTURE S999.                                   IC1094.2
005000         03  DN5  PICTURE S999.                                   IC1094.2
005100         03  DN6  PICTURE S999.                                   IC1094.2
005200     02  SPECIAL-FLAGS.                                           IC1094.2
005300         03  DN7 PICTURE X.                                       IC1094.2
005400         03  DN8 PICTURE X.                                       IC1094.2
005500         03  DN9 PICTURE X.                                       IC1094.2
005600 PROCEDURE DIVISION USING GRP-01.                                 IC1094.2
005700 SECT-IC109-0001 SECTION.                                         IC1094.2
005800 PARA-IC109.                                                      IC1094.2
005900     MOVE "IC109A" TO DN1.                                        IC1094.2
006000     MOVE SPACE TO WS1.                                           IC1094.2
006100     CALL "IC110A" USING WS1 GRP-01.                              IC1094.2
006200     ADD 1 TO DN4.                                                IC1094.2
006300     MOVE WS1 TO DN9.                                             IC1094.2
006400 EXIT-IC109.                                                      IC1094.2
006500     EXIT PROGRAM.                                                IC1094.2
