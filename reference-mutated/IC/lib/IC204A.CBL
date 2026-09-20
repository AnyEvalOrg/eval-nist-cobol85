000100 IDENTIFICATION DIVISION.                                         IC2044.2
000200 PROGRAM-ID.                                                      IC2044.2
000300     IC204A.                                                      IC2044.2
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
003000 ENVIRONMENT DIVISION.                                            IC2044.2
003100 CONFIGURATION SECTION.                                           IC2044.2
003200 SOURCE-COMPUTER.                                                 IC2044.2
003300     GNU-Linux.                                                   IC2044.2
003400 OBJECT-COMPUTER.                                                 IC2044.2
003500     GNU-Linux.                                                   IC2044.2
003600 INPUT-OUTPUT SECTION.                                            IC2044.2
003700 FILE-CONTROL.                                                    IC2044.2
003800     SELECT PRINT-FILE ASSIGN TO                                  IC2044.2
003900     "REPORT".                                                    IC2044.2
004000 DATA DIVISION.                                                   IC2044.2
004100 FILE SECTION.                                                    IC2044.2
004200 FD  PRINT-FILE.                                                  IC2044.2
004300 01  PRINT-REC PICTURE X(120).                                    IC2044.2
004400 01  DUMMY-RECORD PICTURE X(120).                                 IC2044.2
004500 WORKING-STORAGE SECTION.                                         IC2044.2
004600 77  WS1  PICTURE 99 VALUE ZERO.                                  IC2044.2
004700 77  WS2 PICTURE X(5)   VALUE "FIRST".                            IC2044.2
004800 LINKAGE SECTION.                                                 IC2044.2
004900 77  SUB-DN1 PICTURE S999.                                        IC2044.2
005000 01  SUB-TABLE-1.                                                 IC2044.2
005100     02  SUB-DN2 PIC XXX.                                         IC2044.2
005200     02  SUB-DN3 PIC 99.                                          IC2044.2
005300     02  SUB-DN4 PIC X(5).                                        IC2044.2
005400 PROCEDURE DIVISION USING SUB-TABLE-1, SUB-DN1.                   IC2044.2
005500 SECT-IC204-0001 SECTION.                                         IC2044.2
005600 CNCL-TEST-01.                                                    IC2044.2
005700     ADD 1 TO WS1.                                                IC2044.2
005800     MOVE WS1 TO SUB-DN1.                                         IC2044.2
005900 CNCL-TEST-02.                                                    IC2044.2
006000     MOVE "NO" TO SUB-DN2.                                        IC2044.2
006100     IF WS2 EQUAL TO "FIRST"                                      IC2044.2
006200         MOVE SPACE TO WS2                                        IC2044.2
006300         MOVE "YES" TO SUB-DN2.                                   IC2044.2
006400 CNCL-TEST-03.                                                    IC2044.2
006500     MOVE SPACE TO SUB-DN4.                                       IC2044.2
006600     IF WS1 EQUAL TO SUB-DN3                                      IC2044.2
006700         MOVE "EQUAL" TO SUB-DN4.                                 IC2044.2
006800 IC204-EXIT.                                                      IC2044.2
006900     EXIT PROGRAM.                                                IC2044.2
007000*                                                                         
007100*                                                                         
007200*                                                                         
007300*                                                                         
