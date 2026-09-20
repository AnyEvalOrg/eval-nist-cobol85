000100 IDENTIFICATION DIVISION.                                         IC1044.2
000200 PROGRAM-ID.                                                      IC1044.2
000300     IC104A.                                                      IC1044.2
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
002900 ENVIRONMENT DIVISION.                                            IC1044.2
003000 CONFIGURATION SECTION.                                           IC1044.2
003100 SOURCE-COMPUTER.                                                 IC1044.2
003200     GNU-Linux.                                                   IC1044.2
003300 OBJECT-COMPUTER.                                                 IC1044.2
003400     GNU-Linux.                                                   IC1044.2
003500 INPUT-OUTPUT SECTION.                                            IC1044.2
003600 FILE-CONTROL.                                                    IC1044.2
003700     SELECT PRINT-FILE ASSIGN TO                                  IC1044.2
003800     "REPORT".                                                    IC1044.2
003900 DATA DIVISION.                                                   IC1044.2
004000 FILE SECTION.                                                    IC1044.2
004100 FD  PRINT-FILE.                                                  IC1044.2
004200 01  PRINT-REC PICTURE X(120).                                    IC1044.2
004300 01  DUMMY-RECORD PICTURE X(120).                                 IC1044.2
004400 WORKING-STORAGE SECTION.                                         IC1044.2
004500 01  CONSTANT-VALUES.                                             IC1044.2
004600     02  AN-CONSTANT PIC X(5) VALUE "IC104".                      IC1044.2
004700     02  NUM-CONSTANT PIC 99V9999 VALUE 0.7654.                   IC1044.2
004800 LINKAGE SECTION.                                                 IC1044.2
004900 01  GRP-01.                                                      IC1044.2
005000     02  AN-FIELD PICTURE X(5).                                   IC1044.2
005100     02  NUM-DISPLAY PIC 99.                                      IC1044.2
005200     02  GRP-LEVEL.                                               IC1044.2
005300         03  A-FIELD PICTURE A(3).                                IC1044.2
005400 77  ELEM-01 PIC  V9(4) COMPUTATIONAL.                            IC1044.2
005500 01  GRP-02.                                                      IC1044.2
005600     02  GRP-03.                                                  IC1044.2
005700         03  NUM-ITEM PICTURE S99.                                IC1044.2
005800         03  EDITED-FIELD  PIC XXBX0X.                            IC1044.2
005900 PROCEDURE DIVISION USING GRP-01 ELEM-01 GRP-02.                  IC1044.2
006000 SECT-IC104-0001 SECTION.                                         IC1044.2
006100*                                                                         
006200*                                                                         
006300 CALL-TEST-06.                                                    IC1044.2
006400     MOVE AN-CONSTANT TO AN-FIELD.                                IC1044.2
006500     ADD 25 TO NUM-DISPLAY.                                       IC1044.2
006600     MOVE "YES" TO A-FIELD.                                       IC1044.2
006700     MOVE NUM-CONSTANT TO ELEM-01.                                IC1044.2
006800     MOVE NUM-DISPLAY TO NUM-ITEM.                                IC1044.2
006900     MOVE "ABCD" TO EDITED-FIELD.                                 IC1044.2
007000 CALL-EXIT-06.                                                    IC1044.2
007100     EXIT PROGRAM.                                                IC1044.2
