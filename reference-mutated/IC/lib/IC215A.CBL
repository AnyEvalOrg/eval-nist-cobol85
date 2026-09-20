000100 IDENTIFICATION DIVISION.                                         IC2154.2
000200 PROGRAM-ID.                                                      IC2154.2
000300     IC215A.                                                      IC2154.2
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
002300 ENVIRONMENT DIVISION.                                            IC2154.2
002400 CONFIGURATION SECTION.                                           IC2154.2
002500 SOURCE-COMPUTER.                                                 IC2154.2
002600     GNU-Linux.                                                   IC2154.2
002700 OBJECT-COMPUTER.                                                 IC2154.2
002800     GNU-Linux.                                                   IC2154.2
002900 DATA DIVISION.                                                   IC2154.2
003000 LINKAGE SECTION.                                                 IC2154.2
003100 01  DN2                         PICTURE S9.                      IC2154.2
003200 01  DN3                         PICTURE S9.                      IC2154.2
003300 PROCEDURE DIVISION USING DN2, DN3.                               IC2154.2
003400 CALL-TEST-2.                                                     IC2154.2
003500     MOVE 1 TO DN2.                                               IC2154.2
003600 CANCEL-TEST-1.                                                   IC2154.2
003700     CANCEL "IC214A".                                             IC2154.2
003800     MOVE 1 TO DN3.                                               IC2154.2
003900 IC215-EXIT.                                                      IC2154.2
004000     EXIT PROGRAM.                                                IC2154.2
