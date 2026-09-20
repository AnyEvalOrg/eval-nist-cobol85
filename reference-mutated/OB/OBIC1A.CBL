000100 IDENTIFICATION DIVISION.                                         OBIC14.2
000200 PROGRAM-ID.                                                      OBIC14.2
000300     OBIC1A.                                                      OBIC14.2
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
003500*                                                                         
003600*                                                                         
003700*                                                                         
003800*                                                                         
003900 ENVIRONMENT DIVISION.                                            OBIC14.2
004000 CONFIGURATION SECTION.                                           OBIC14.2
004100 SOURCE-COMPUTER.                                                 OBIC14.2
004200     GNU-Linux.                                                   OBIC14.2
004300 OBJECT-COMPUTER.                                                 OBIC14.2
004400     GNU-Linux.                                                   OBIC14.2
004500 DATA DIVISION.                                                   OBIC14.2
004600 WORKING-STORAGE SECTION.                                         OBIC14.2
004700 01  SORT-LINK               PICTURE 9.                           OBIC14.2
004800 01  PRINT-LINE-VALUES.                                           OBIC14.2
004900     02  PASS-OR-FAIL        PICTURE X(5).                        OBIC14.2
005000     02  R-COUNT             PICTURE 99.                          OBIC14.2
005100     02  FEATURE-TESTED      PICTURE X(20).                       OBIC14.2
005200     02  COMPUTED-SORT-KEY   PICTURE X(20).                       OBIC14.2
005300     02  CORRECT-SORT-KEY    PICTURE X(20).                       OBIC14.2
005400     02  PARAGRAPH-NAME      PICTURE X(12).                       OBIC14.2
005500 01  PRINT-FLAG              PICTURE 9.                           OBIC14.2
005600 PROCEDURE DIVISION.                                              OBIC14.2
005700 SECT-IC218-0001 SECTION.                                         OBIC14.2
005800 CALL-IC219.                                                      OBIC14.2
005900     MOVE 0 TO SORT-LINK.                                         OBIC14.2
006000     CALL "OBIC2A" USING SORT-LINK.                               OBIC14.2
006100 CALL-FAIL.                                                       OBIC14.2
006200*                                                                         
006300*                                                                         
006400*                                                                         
006500*                                                                         
006600     MOVE 2 TO PRINT-FLAG.                                        OBIC14.2
006700     MOVE "CALL-MAIN-IC" TO PARAGRAPH-NAME.                       OBIC14.2
006800     MOVE "CONTROL RETURNED" TO FEATURE-TESTED.                   OBIC14.2
006900     MOVE "FAIL " TO PASS-OR-FAIL.                                OBIC14.2
007000     MOVE 0 TO R-COUNT.                                           OBIC14.2
007100     MOVE SORT-LINK TO COMPUTED-SORT-KEY.                         OBIC14.2
007200     MOVE SPACE TO CORRECT-SORT-KEY.                              OBIC14.2
007300     CALL "OBIC3A" USING PRINT-LINE-VALUES  PRINT-FLAG.           OBIC14.2
007400     MOVE 3 TO PRINT-FLAG.                                        OBIC14.2
007500     CALL "OBIC3A" USING PRINT-LINE-VALUES  PRINT-FLAG.           OBIC14.2
007600*                                                                         
007700*                                                                         
007800*                                                                         
007900 END-OF-PROGRAM.                                                  OBIC14.2
008000     EXIT PROGRAM.                                                OBIC14.2
