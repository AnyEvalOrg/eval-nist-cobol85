000100 IDENTIFICATION DIVISION.                                         IC2174.2
000200 PROGRAM-ID.                                                      IC2174.2
000300     IC217A.                                                      IC2174.2
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
002300 ENVIRONMENT DIVISION.                                            IC2174.2
002400 CONFIGURATION SECTION.                                           IC2174.2
002500 SOURCE-COMPUTER.                                                 IC2174.2
002600     GNU-Linux.                                                   IC2174.2
002700 OBJECT-COMPUTER.                                                 IC2174.2
002800     GNU-Linux.                                                   IC2174.2
002900 DATA DIVISION.                                                   IC2174.2
003000 LINKAGE SECTION.                                                 IC2174.2
003100 01  DN1.                                                         IC2174.2
003200     02  DN2                     PICTURE X(5).                    IC2174.2
003300     02  DN3                     REDEFINES DN2   PICTURE 9(5).    IC2174.2
003400 01  DN4.                                                         IC2174.2
003500     02  DN5.                                                     IC2174.2
003600         03  DN6                 PICTURE X(3).                    IC2174.2
003700         03  DN7                 PICTURE X(3).                    IC2174.2
003800         03  DN8                 REDEFINES DN7   PICTURE 9(3).    IC2174.2
003900     02  DN9                     PICTURE XX.                      IC2174.2
004000 PROCEDURE DIVISION USING DN1, DN4.                               IC2174.2
004100 CALL-TEST-1.                                                     IC2174.2
004200     MOVE 12345 TO DN3.                                           IC2174.2
004300 CALL-TEST-2.                                                     IC2174.2
004400     MOVE "YES" TO DN6.                                           IC2174.2
004500     MOVE 987 TO DN8.                                             IC2174.2
004600     MOVE "NO" TO DN9.                                            IC2174.2
004700 IC217-EXIT.                                                      IC2174.2
004800     EXIT PROGRAM.                                                IC2174.2
