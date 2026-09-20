000100 IDENTIFICATION DIVISION.                                         IC1054.2
000200 PROGRAM-ID.                                                      IC1054.2
000300     IC105A.                                                      IC1054.2
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
002500 ENVIRONMENT DIVISION.                                            IC1054.2
002600 CONFIGURATION SECTION.                                           IC1054.2
002700 SOURCE-COMPUTER.                                                 IC1054.2
002800     GNU-Linux.                                                   IC1054.2
002900 OBJECT-COMPUTER.                                                 IC1054.2
003000     GNU-Linux.                                                   IC1054.2
003100 DATA DIVISION.                                                   IC1054.2
003200 LINKAGE SECTION.                                                 IC1054.2
003300 77  DN1 PICTURE 999.                                             IC1054.2
003400 77  DN2 PICTURE S99 COMPUTATIONAL.                               IC1054.2
003500 PROCEDURE DIVISION  USING DN1 DN2.                               IC1054.2
003600*                                                                         
003700*                                                                         
003800 SECT-IC105-0001 SECTION.                                         IC1054.2
003900 EXIT-TEST-001.                                                   IC1054.2
004000     IF DN1 IS NOT EQUAL TO 1                                     IC1054.2
004100          GO TO EXIT-TEST-002.                                    IC1054.2
004200     MOVE 1 TO DN2.                                               IC1054.2
004300 EXIT-STATEMENT-001.                                              IC1054.2
004400     EXIT PROGRAM.                                                IC1054.2
004500 EXIT-TEST-002.                                                   IC1054.2
004600     IF DN1 IS NOT EQUAL TO 2                                     IC1054.2
004700          GO TO EXIT-TEST-003.                                    IC1054.2
004800     MOVE 2 TO DN2.                                               IC1054.2
004900 EXIT-STATEMENT-002.                                              IC1054.2
005000     EXIT PROGRAM.                                                IC1054.2
005100 EXIT-TEST-003.                                                   IC1054.2
005200     IF DN1 NOT EQUAL TO 3                                        IC1054.2
005300          GO TO EXIT-TEST-004.                                    IC1054.2
005400     MOVE 3 TO DN2.                                               IC1054.2
005500 EXIT-STATEMENT-003.                                              IC1054.2
005600     EXIT PROGRAM.                                                IC1054.2
005700 EXIT-TEST-004.                                                   IC1054.2
005800     MOVE 4 TO DN2.                                               IC1054.2
005900     GO TO EXIT-STATEMENT-004.                                    IC1054.2
006000 EXTRANEOUS-PARAGRAPH.                                            IC1054.2
006100*                                                                         
006200     MOVE 5 TO DN2.                                               IC1054.2
006300 EXIT-STATEMENT-004.                                              IC1054.2
006400     EXIT PROGRAM.                                                IC1054.2
