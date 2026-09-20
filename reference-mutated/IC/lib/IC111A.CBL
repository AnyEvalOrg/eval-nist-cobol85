000100 IDENTIFICATION DIVISION.                                         IC1114.2
000200 PROGRAM-ID.                                                      IC1114.2
000300     IC111A.                                                      IC1114.2
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
002500 ENVIRONMENT DIVISION.                                            IC1114.2
002600 CONFIGURATION SECTION.                                           IC1114.2
002700 SOURCE-COMPUTER.                                                 IC1114.2
002800     GNU-Linux.                                                   IC1114.2
002900 OBJECT-COMPUTER.                                                 IC1114.2
003000     GNU-Linux.                                                   IC1114.2
003100 DATA DIVISION.                                                   IC1114.2
003200 LINKAGE SECTION.                                                 IC1114.2
003300 77  LS1 PICTURE X.                                               IC1114.2
003400 77  LS2 PICTURE X.                                               IC1114.2
003500 01  GRP-01.                                                      IC1114.2
003600     02  SUB-CALLED.                                              IC1114.2
003700         03  DN1 PICTURE X(6).                                    IC1114.2
003800         03  DN2 PICTURE X(6).                                    IC1114.2
003900         03  DN3 PICTURE X(6).                                    IC1114.2
004000     02  TIMES-CALLED.                                            IC1114.2
004100         03  DN4 PICTURE S999.                                    IC1114.2
004200         03  DN5 PICTURE S999.                                    IC1114.2
004300         03  DN6 PICTURE S999.                                    IC1114.2
004400     02  SPECIAL-FLAGS.                                           IC1114.2
004500         03  DN7 PICTURE X.                                       IC1114.2
004600         03  DN8 PICTURE X.                                       IC1114.2
004700         03  DN9 PICTURE X.                                       IC1114.2
004800 PROCEDURE DIVISION USING LS1 GRP-01 LS2.                         IC1114.2
004900 SECT-IC111-0001 SECTION.                                         IC1114.2
005000 PARA-IC111.                                                      IC1114.2
005100     MOVE "IC111A" TO DN3.                                        IC1114.2
005200     ADD 1 TO DN6.                                                IC1114.2
005300     MOVE "A" TO LS2.                                             IC1114.2
005400     MOVE "A" TO LS1.                                             IC1114.2
005500 EXIT-IC111.                                                      IC1114.2
005600     EXIT PROGRAM.                                                IC1114.2
