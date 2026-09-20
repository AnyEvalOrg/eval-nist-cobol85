000100 IDENTIFICATION DIVISION.                                         IC1024.2
000200 PROGRAM-ID.                                                      IC1024.2
000300     IC102A.                                                      IC1024.2
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
002300 ENVIRONMENT DIVISION.                                            IC1024.2
002400 CONFIGURATION SECTION.                                           IC1024.2
002500 SOURCE-COMPUTER.                                                 IC1024.2
002600     GNU-Linux.                                                   IC1024.2
002700 OBJECT-COMPUTER.                                                 IC1024.2
002800     GNU-Linux.                                                   IC1024.2
002900 INPUT-OUTPUT SECTION.                                            IC1024.2
003000 FILE-CONTROL.                                                    IC1024.2
003100     SELECT PRINT-FILE ASSIGN TO                                  IC1024.2
003200     "REPORT".                                                    IC1024.2
003300 DATA DIVISION.                                                   IC1024.2
003400 FILE SECTION.                                                    IC1024.2
003500 FD  PRINT-FILE.                                                  IC1024.2
003600 01  PRINT-REC PICTURE X(120).                                    IC1024.2
003700 01  DUMMY-RECORD PICTURE X(120).                                 IC1024.2
003800 WORKING-STORAGE SECTION.                                         IC1024.2
003900 77  DN2 PICTURE S9  VALUE ZERO.                                  IC1024.2
004000 LINKAGE SECTION.                                                 IC1024.2
004100 77  DN1 PICTURE S9.                                              IC1024.2
004200 PROCEDURE DIVISION USING DN1.                                    IC1024.2
004300 SECT-IC102-0001 SECTION.                                         IC1024.2
004400 CALL-TEST-001.                                                   IC1024.2
004500     ADD 1 TO DN2.                                                IC1024.2
004600     MOVE DN2 TO DN1.                                             IC1024.2
004700 CALL-EXIT-001.                                                   IC1024.2
004800     EXIT PROGRAM.                                                IC1024.2
