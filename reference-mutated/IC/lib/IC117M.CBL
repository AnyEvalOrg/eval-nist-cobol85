000100 IDENTIFICATION DIVISION.                                         IC1174.2
000200 PROGRAM-ID.                                                      IC1174.2
000300     IC117M.                                                      IC1174.2
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
003000*                                                                         
003100*                                                                         
003200*                                                                         
003300*                                                                         
003400*                                                                         
003500 ENVIRONMENT DIVISION.                                            IC1174.2
003600 CONFIGURATION SECTION.                                           IC1174.2
003700 SOURCE-COMPUTER.                                                 IC1174.2
003800     GNU-Linux.                                                   IC1174.2
003900 OBJECT-COMPUTER.                                                 IC1174.2
004000     GNU-Linux.                                                   IC1174.2
004100 DATA DIVISION.                                                   IC1174.2
004200 WORKING-STORAGE SECTION.                                         IC1174.2
004300 01  IC117-TEMP1         PICTURE 9.                               IC1174.2
004400 01  ONE                 PICTURE 9    VALUE 1.                    IC1174.2
004500 01  IC117-TEMP2         PICTURE 9     VALUE 0.                   IC1174.2
004600 PROCEDURE DIVISION.                                              IC1174.2
004700*                                                                         
004800*                                                                         
004900*                                                                         
005000*                                                                         
005100*                                                                         
005200 USNG-VERIFY-02.                                                  IC1174.2
005300     MOVE 1 TO IC117-TEMP1.                                       IC1174.2
005400     ADD ONE TO IC117-TEMP2.                                      IC1174.2
005500*                                                                         
005600*                                                                         
005700*                                                                         
005800 USNG-DISPLAY-02.                                                 IC1174.2
005900     DISPLAY "  ".                                                IC1174.2
006000     DISPLAY "IC117M CALLED".                                     IC1174.2
006100 USNG-TEST-03.                                                    IC1174.2
006200     CALL "IC118M".                                               IC1174.2
006300*                                                                         
006400*                                                                         
006500*                                                                         
006600*                                                                         
006700*                                                                         
006800 USNG-DISPLAY-03.                                                 IC1174.2
006900     DISPLAY "RETURNED TO IC117M".                                IC1174.2
007000 IC117-EXIT.                                                      IC1174.2
007100     EXIT PROGRAM.                                                IC1174.2
