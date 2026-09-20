000100 IDENTIFICATION DIVISION.                                         IC2144.2
000200 PROGRAM-ID.                                                      IC2144.2
000300     IC214A.                                                      IC2144.2
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
002300 ENVIRONMENT DIVISION.                                            IC2144.2
002400 CONFIGURATION SECTION.                                           IC2144.2
002500 SOURCE-COMPUTER.                                                 IC2144.2
002600     GNU-Linux.                                                   IC2144.2
002700 OBJECT-COMPUTER.                                                 IC2144.2
002800     GNU-Linux.                                                   IC2144.2
002900 DATA DIVISION.                                                   IC2144.2
003000 LINKAGE SECTION.                                                 IC2144.2
003100 01  DN1                         PICTURE S9.                      IC2144.2
003200 PROCEDURE DIVISION USING DN1.                                    IC2144.2
003300 CALL-TEST-1.                                                     IC2144.2
003400     MOVE 1 TO DN1.                                               IC2144.2
003500 IC214-EXIT.                                                      IC2144.2
003600     EXIT PROGRAM.                                                IC2144.2
