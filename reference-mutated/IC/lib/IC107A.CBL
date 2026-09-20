000100 IDENTIFICATION DIVISION.                                         IC1074.2
000200 PROGRAM-ID.                                                      IC1074.2
000300     IC107A.                                                      IC1074.2
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
003200 ENVIRONMENT DIVISION.                                            IC1074.2
003300 CONFIGURATION SECTION.                                           IC1074.2
003400 SOURCE-COMPUTER.                                                 IC1074.2
003500     GNU-Linux.                                                   IC1074.2
003600 OBJECT-COMPUTER.                                                 IC1074.2
003700     GNU-Linux.                                                   IC1074.2
003800 INPUT-OUTPUT SECTION.                                            IC1074.2
003900 FILE-CONTROL.                                                    IC1074.2
004000     SELECT PRINT-FILE ASSIGN TO                                  IC1074.2
004100     "REPORT".                                                    IC1074.2
004200 DATA DIVISION.                                                   IC1074.2
004300 FILE SECTION.                                                    IC1074.2
004400 FD  PRINT-FILE.                                                  IC1074.2
004500 01  PRINT-REC PICTURE X(120).                                    IC1074.2
004600 01  DUMMY-RECORD PICTURE X(120).                                 IC1074.2
004700 WORKING-STORAGE SECTION.                                         IC1074.2
004800 77  IDN3  USAGE IS INDEX.                                        IC1074.2
004900 77  S1  PICTURE 99.                                              IC1074.2
005000 77  AL-CON PICTURE XXX  VALUE "XYZ".                             IC1074.2
005100 LINKAGE SECTION.                                                 IC1074.2
005200 77  IDN2  USAGE IS INDEX.                                        IC1074.2
005300 01  GROUP-1.                                                     IC1074.2
005400     02  DN1 PICTURE X OCCURS 10 TIMES                            IC1074.2
005500                       INDEXED BY IN3.                            IC1074.2
005600 01  GROUP-2.                                                     IC1074.2
005700     02    GROUP-21.                                              IC1074.2
005800         06 DN2 PIC X OCCURS 10 TIMES.                            IC1074.2
005900     02     GROUP-2-1 REDEFINES GROUP-21.                         IC1074.2
006000         03  FILLER  PICTURE X(7).                                IC1074.2
006100         03  DN3     PICTURE XXX.                                 IC1074.2
006200 PROCEDURE DIVISION USING IDN2 GROUP-1 GROUP-2.                   IC1074.2
006300 SECT-IC107-0001 SECTION.                                         IC1074.2
006400 LINK-TEST-02-01.                                                 IC1074.2
006500     SET IN3 TO IDN2.                                             IC1074.2
006600     IF DN1 (IN3) EQUAL TO "F"                                    IC1074.2
006700         MOVE "G" TO DN2 (7).                                     IC1074.2
006800 LINK-TEST-02-02.                                                 IC1074.2
006900     SET IDN3 TO IDN2.                                            IC1074.2
007000     SET IN3 TO IDN3.                                             IC1074.2
007100     IF IN3 EQUAL TO 6                                            IC1074.2
007200         MOVE "F" TO DN2 (6).                                     IC1074.2
007300*                                                                         
007400*                                                                         
007500*                                                                         
007600 LINK-TEST-03-01.                                                 IC1074.2
007700     SET IN3 TO 1.                                                IC1074.2
007800     MOVE 1 TO S1.                                                IC1074.2
007900     MOVE DN1 (IN3) TO DN2 (S1).                                  IC1074.2
008000 LINK-TEST-03-02.                                                 IC1074.2
008100     SET IN3 UP BY 1.                                             IC1074.2
008200     ADD 1 TO S1.                                                 IC1074.2
008300     MOVE DN1 (IN3) TO DN2 (S1).                                  IC1074.2
008400*                                                                         
008500*                                                                         
008600*                                                                         
008700 LINK-TEST-04-01.                                                 IC1074.2
008800     SET IN3 TO 3.                                                IC1074.2
008900     SET IDN2 TO IN3.                                             IC1074.2
009000 LINK-TEST-04-02.                                                 IC1074.2
009100     IF IDN2 IS EQUAL TO IN3                                      IC1074.2
009200         MOVE "C" TO DN2 (3).                                     IC1074.2
009300*                                                                         
009400*                                                                         
009500*                                                                         
009600 LINK-TEST-05-01.                                                 IC1074.2
009700     MOVE 4 TO S1.                                                IC1074.2
009800     SET IN3 TO S1.                                               IC1074.2
009900     MOVE DN1 (IN3) TO DN2 (S1).                                  IC1074.2
010000 LINK-TEST-05-02.                                                 IC1074.2
010100     MOVE DN1 (5) TO DN2 (5).                                     IC1074.2
010200*                                                                         
010300*                                                                         
010400 LINK-TEST-06.                                                    IC1074.2
010500     MOVE AL-CON TO DN3.                                          IC1074.2
010600*                                                                         
010700*                                                                         
010800 EXIT-IC107.                                                      IC1074.2
010900     EXIT PROGRAM.                                                IC1074.2
