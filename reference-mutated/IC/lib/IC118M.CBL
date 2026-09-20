000100 IDENTIFICATION DIVISION.                                         IC1184.2
000200 PROGRAM-ID.                                                      IC1184.2
000300     IC118M.                                                      IC1184.2
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
002900 ENVIRONMENT DIVISION.                                            IC1184.2
003000 CONFIGURATION SECTION.                                           IC1184.2
003100 SOURCE-COMPUTER.                                                 IC1184.2
003200     GNU-Linux.                                                   IC1184.2
003300 OBJECT-COMPUTER.                                                 IC1184.2
003400     GNU-Linux.                                                   IC1184.2
003500 DATA DIVISION.                                                   IC1184.2
003600 WORKING-STORAGE SECTION.                                         IC1184.2
003700 01  IC118-TEMP1         PICTURE 9.                               IC1184.2
003800 01  TWO                 PICTURE 9   VALUE 2.                     IC1184.2
003900 01  IC118-TEMP2         PICTURE 99   VALUE 97.                   IC1184.2
004000 PROCEDURE DIVISION.                                              IC1184.2
004100*                                                                         
004200*                                                                         
004300*                                                                         
004400*                                                                         
004500*                                                                         
004600 USNG-VERIFY-04.                                                  IC1184.2
004700     MOVE 2 TO IC118-TEMP1.                                       IC1184.2
004800     ADD TWO TO IC118-TEMP2.                                      IC1184.2
004900*                                                                         
005000*                                                                         
005100*                                                                         
005200 USNG-DISPLAY-04.                                                 IC1184.2
005300     DISPLAY "IC118M CALLED".                                     IC1184.2
005400 IC118-EXIT.                                                      IC1184.2
005500     EXIT PROGRAM.                                                IC1184.2
