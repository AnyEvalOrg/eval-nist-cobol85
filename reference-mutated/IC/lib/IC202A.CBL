000100 IDENTIFICATION DIVISION.                                         IC2024.2
000200 PROGRAM-ID.                                                      IC2024.2
000300     IC202A.                                                      IC2024.2
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
002500 ENVIRONMENT DIVISION.                                            IC2024.2
002600 CONFIGURATION SECTION.                                           IC2024.2
002700 SOURCE-COMPUTER.                                                 IC2024.2
002800     GNU-Linux.                                                   IC2024.2
002900 OBJECT-COMPUTER.                                                 IC2024.2
003000     GNU-Linux.                                                   IC2024.2
003100 INPUT-OUTPUT SECTION.                                            IC2024.2
003200 FILE-CONTROL.                                                    IC2024.2
003300     SELECT PRINT-FILE ASSIGN TO                                  IC2024.2
003400     "REPORT".                                                    IC2024.2
003500 DATA DIVISION.                                                   IC2024.2
003600 FILE SECTION.                                                    IC2024.2
003700 FD  PRINT-FILE.                                                  IC2024.2
003800 01  PRINT-REC PICTURE X(120).                                    IC2024.2
003900 01  DUMMY-RECORD PICTURE X(120).                                 IC2024.2
004000 WORKING-STORAGE SECTION.                                         IC2024.2
004100 77  WS1 PICTURE S999.                                            IC2024.2
004200 77  WS2 PICTURE S999                                             IC2024.2
004300         USAGE COMPUTATIONAL, VALUE ZERO.                         IC2024.2
004400 LINKAGE SECTION.                                                 IC2024.2
004500 77  DN1 PICTURE S99.                                             IC2024.2
004600 77  DN2 PICTURE S99 USAGE COMPUTATIONAL.                         IC2024.2
004700 77  DN3 PICTURE S99.                                             IC2024.2
004800 77  DN4 PICTURE S99 USAGE COMPUTATIONAL.                         IC2024.2
004900 PROCEDURE DIVISION USING DN1, DN2, DN3, DN4.                     IC2024.2
005000 SECT-IC202-0001 SECTION.                                         IC2024.2
005100 CALL-TEST-001.                                                   IC2024.2
005200     MOVE DN1 TO WS1.                                             IC2024.2
005300     ADD 1 TO WS1.                                                IC2024.2
005400     ADD 1 TO WS2.                                                IC2024.2
005500     MOVE WS1 TO DN3.                                             IC2024.2
005600     MOVE WS2 TO DN4.                                             IC2024.2
005700 CALL-EXIT-001.                                                   IC2024.2
005800     EXIT PROGRAM.                                                IC2024.2
