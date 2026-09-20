000100 IDENTIFICATION DIVISION.                                         IC2124.2
000200 PROGRAM-ID.                                                      IC2124.2
000300     IC212A.                                                      IC2124.2
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
002300 ENVIRONMENT DIVISION.                                            IC2124.2
002400 CONFIGURATION SECTION.                                           IC2124.2
002500 SOURCE-COMPUTER.                                                 IC2124.2
002600     GNU-Linux.                                                   IC2124.2
002700 OBJECT-COMPUTER.                                                 IC2124.2
002800     GNU-Linux.                                                   IC2124.2
002900 DATA DIVISION.                                                   IC2124.2
003000 LINKAGE SECTION.                                                 IC2124.2
003100 01  TEST-AREA.                                                   IC2124.2
003200     02  TEST1                   PICTURE X.                       IC2124.2
003300     02  TEST2                   PICTURE X.                       IC2124.2
003400     02  TEST3                   PICTURE X.                       IC2124.2
003500     02  TEST4                   PICTURE X.                       IC2124.2
003600 PROCEDURE DIVISION USING TEST-AREA.                              IC2124.2
003700 CALL-TEST-3.                                                     IC2124.2
003800     MOVE "Y" TO TEST3.                                           IC2124.2
003900 IC212-EXIT.                                                      IC2124.2
004000     EXIT PROGRAM.                                                IC2124.2
