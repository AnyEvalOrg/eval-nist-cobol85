000100 IDENTIFICATION DIVISION.                                         NC1084.2
000200 PROGRAM-ID.                                                      NC1084.2
000300     NC108M.                                                      NC1084.2
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
003000 ENVIRONMENT DIVISION.                                            NC1084.2
003100 CONFIGURATION SECTION.                                           NC1084.2
003200 SOURCE-COMPUTER.                                                 NC1084.2
003300     GNU-Linux.                                                   NC1084.2
003400 OBJECT-COMPUTER.                                                 NC1084.2
003500     GNU-Linux.                                                   NC1084.2
003600 SPECIAL-NAMES.                                                   NC1084.2
003700     SWITCH-1                                                     NC1084.2
003800     IS ABBREV-SWITCH                                             NC1084.2
003900         ON  ON-SWITCH                                            NC1084.2
004000         OFF IS  OFF-SWITCH                                       NC1084.2
004100*                                                                         
004200*                                                                         
004300*                                                                         
004400*                                                                         
004500*                                                                         
004600*                                                                         
004700*                                                                         
004800*                                                                         
004900*                                                                         
005000*                                                                         
005100*                                                                         
005200*                                                                         
005300*                                                                         
005400     ALPHABET TEST-ALPHABET IS NATIVE                             NC1084.2
005500     CURRENCY  "<".                                               NC1084.2
005600 INPUT-OUTPUT SECTION.                                            NC1084.2
005700 FILE-CONTROL.                                                    NC1084.2
005800     SELECT PRINT-FILE ASSIGN TO                                  NC1084.2
005900     "REPORT".                                                    NC1084.2
006000 DATA DIVISION.                                                   NC1084.2
006100 FILE SECTION.                                                    NC1084.2
006200 FD  PRINT-FILE.                                                  NC1084.2
006300 01  PRINT-REC PICTURE X(120).                                    NC1084.2
006400 01  DUMMY-RECORD PICTURE X(120).                                 NC1084.2
006500 WORKING-STORAGE SECTION.                                         NC1084.2
006600 77  ONE      PICTURE 9 VALUE 1.                                  NC1084.2
006700 77  TWO      PICTURE 9 VALUE 2.                                  NC1084.2
006800 01  XCHAR-SET PICTURE X(51) VALUE     "ABCDEFGHIJKLMNOPQRSTUVWXYZNC1084.2
006900-    " 0123456789 +-*/=$,.;()><".                                 NC1084.2
007000 01  CHARACTER-QUOTE  PIC X VALUE QUOTE.                          NC1084.2
007100 01  CHARACTER-LOW PIC X(26) VALUE "abcdefghijklmnopqrstuvwxyz".  NC1084.2
007200 01  COMPLETE-01.                                                 NC1084.2
007300     02 COMPLETE-F.                                               NC1084.2
007400       03 FILLER PICTURE X(90) VALUE SPACE.                       NC1084.2
007500       03 FL-LESS PICTURE <(3),<<<.99 VALUE " <1,111.11".         NC1084.2
007600     02 COMPLETE-FORMAT                                           NC1084.2
007700         REDEFINES COMPLETE-F                                     NC1084.2
007800         JUSTIFIED RIGHT                                          NC1084.2
007900         PICTURE X(5)                                             NC1084.2
008000         OCCURS 20 TIMES                                          NC1084.2
008100         USAGE IS DISPLAY.                                        NC1084.2
008200     02 MORE-COMPLETE-FORMAT                                      NC1084.2
008300         BLANK WHEN ZERO                                          NC1084.2
008400         PICTURE IS 9                                             NC1084.2
008500         SYNCHRONIZED RIGHT                                       NC1084.2
008600         DISPLAY                                                  NC1084.2
008700              VALUE IS "5".                                       NC1084.2
008800 01  PIC-GROUP.                                                   NC1084.2
008900     02 FILLER          PICTURE X(4) VALUE "AAAA".                NC1084.2
009000     02 FILLER          PIC     X(4) VALUE "BBBB".                NC1084.2
009100     02 FILLER          PIC IS  X(4) VALUE "CCCC".                NC1084.2
009200     02                 PICTURE X(4) VALUE "DDDD".                NC1084.2
009300 01  PICTURE-ITEM       PICTURE X(16) VALUE "AAAABBBBCCCCDDDD".   NC1084.2
009400 01  SEND-JUST          PICTURE X(5) VALUE "RIGHT".               NC1084.2
009500 01  RECEIVE-JUST       PICTURE X(10)               JUST.         NC1084.2
009600 01  RECEIVE-JUSTRIGHT  PICTURE X(10)               JUST RIGHT.   NC1084.2
009700 01  SEND-BLANK         PICTURE 9(5) VALUE ZERO.                  NC1084.2
009800 01  RECEIVE-BLANK      PICTURE 9(9)                BLANK ZERO.   NC1084.2
009900 01  COMP-GROUP.                                                  NC1084.2
010000     02 FILLER          PICTURE X(5) VALUE SPACE.                 NC1084.2
010100     02 FILLER          PICTURE 9(5) VALUE 77777 USAGE IS COMP.   NC1084.2
010200     02 FILLER          PICTURE X(5) VALUE SPACE.                 NC1084.2
010300 01  COMPUTATIONAL-GROUP.                                         NC1084.2
010400     02 FILLER          PICTURE X(5) VALUE SPACE.                 NC1084.2
010500     02 FILLER          PICTURE 9(5) VALUE 77777 COMPUTATIONAL.   NC1084.2
010600     02 FILLER          PICTURE X(5) VALUE SPACE.                 NC1084.2
010700 01  SYNC-GROUP.                                                  NC1084.2
010800     02                 PICTURE X(5) VALUE SPACE.                 NC1084.2
010900     02                 PICTURE 9(5) VALUE 55555 SYNC.            NC1084.2
011000     02                 PICTURE X(5) VALUE SPACE.                 NC1084.2
011100 01  SYNCHRONIZED-GROUP.                                          NC1084.2
011200     02 FILLER          PICTURE X(5) VALUE SPACE.                 NC1084.2
011300     02 FILLER          PICTURE 9(5) VALUE 55555 SYNCHRONIZED.    NC1084.2
011400     02 FILLER          PICTURE X(5) VALUE SPACE.                 NC1084.2
011500 01  SYNC-RIGHT-GROUP.                                            NC1084.2
011600     02 FILLER PICTURE X(5) VALUE SPACE.                          NC1084.2
011700     02 FILLER PICTURE 9(5) VALUE 33333 SYNC RIGHT.               NC1084.2
011800     02 FILLER PICTURE X(5) VALUE SPACE.                          NC1084.2
011900 01  SYNCHRONIZED-RIGHT-GROUP.                                    NC1084.2
012000     02 FILLER PICTURE X(5) VALUE SPACE.                          NC1084.2
012100     02 FILLER PICTURE 9(5) VALUE 33333 SYNCHRONIZED RIGHT.       NC1084.2
012200     02 FILLER PICTURE X(5) VALUE SPACE.                          NC1084.2
012300 01  SYNC-LEFT-GROUP.                                             NC1084.2
012400     02 FILLER PICTURE X(5) VALUE SPACE.                          NC1084.2
012500     02 FILLER PICTURE 9(5) VALUE 11111 SYNC LEFT.                NC1084.2
012600     02 FILLER PICTURE X(5) VALUE SPACE.                          NC1084.2
012700 01  SYNCHRONIZED-LEFT-GROUP.                                     NC1084.2
012800     02 FILLER PICTURE X(5) VALUE SPACE.                          NC1084.2
012900     02 FILLER PICTURE 9(5) VALUE 11111 SYNCHRONIZED LEFT.        NC1084.2
013000     02 FILLER PICTURE X(5) VALUE SPACE.                          NC1084.2
013100 01  TEST-FIELD            PIC X(10).                             NC1084.2
013200 01                        REDEFINES TEST-FIELD                   NC1084.2
013300                           PIC 9(9).                              NC1084.2
013400 01  TEST-RESULTS.                                                NC1084.2
013500     02 FILLER                   PIC X      VALUE SPACE.          NC1084.2
013600     02 FEATURE                  PIC X(20)  VALUE SPACE.          NC1084.2
013700     02 FILLER                   PIC X      VALUE SPACE.          NC1084.2
013800     02 P-OR-F                   PIC X(5)   VALUE SPACE.          NC1084.2
013900     02 FILLER                   PIC X      VALUE SPACE.          NC1084.2
014000     02  PAR-NAME.                                                NC1084.2
014100       03 FILLER                 PIC X(19)  VALUE SPACE.          NC1084.2
014200       03  PARDOT-X              PIC X      VALUE SPACE.          NC1084.2
014300       03 DOTVALUE               PIC 99     VALUE ZERO.           NC1084.2
014400     02 FILLER                   PIC X(8)   VALUE SPACE.          NC1084.2
014500     02 RE-MARK                  PIC X(61).                       NC1084.2
014600 01  TEST-COMPUTED.                                               NC1084.2
014700     02 FILLER                   PIC X(30)  VALUE SPACE.          NC1084.2
014800     02 FILLER                   PIC X(17)  VALUE                 NC1084.2
014900            "       COMPUTED=".                                   NC1084.2
015000     02 COMPUTED-X.                                               NC1084.2
015100     03 COMPUTED-A               PIC X(20)  VALUE SPACE.          NC1084.2
015200     03 COMPUTED-N               REDEFINES COMPUTED-A             NC1084.2
015300                                 PIC -9(9).9(9).                  NC1084.2
015400     03 COMPUTED-0V18 REDEFINES COMPUTED-A   PIC -.9(18).         NC1084.2
015500     03 COMPUTED-4V14 REDEFINES COMPUTED-A   PIC -9(4).9(14).     NC1084.2
015600     03 COMPUTED-14V4 REDEFINES COMPUTED-A   PIC -9(14).9(4).     NC1084.2
015700     03       CM-18V0 REDEFINES COMPUTED-A.                       NC1084.2
015800         04 COMPUTED-18V0                    PIC -9(18).          NC1084.2
015900         04 FILLER                           PIC X.               NC1084.2
016000     03 FILLER PIC X(50) VALUE SPACE.                             NC1084.2
016100 01  TEST-CORRECT.                                                NC1084.2
016200     02 FILLER PIC X(30) VALUE SPACE.                             NC1084.2
016300     02 FILLER PIC X(17) VALUE "       CORRECT =".                NC1084.2
016400     02 CORRECT-X.                                                NC1084.2
016500     03 CORRECT-A                  PIC X(20) VALUE SPACE.         NC1084.2
016600     03 CORRECT-N    REDEFINES CORRECT-A     PIC -9(9).9(9).      NC1084.2
016700     03 CORRECT-0V18 REDEFINES CORRECT-A     PIC -.9(18).         NC1084.2
016800     03 CORRECT-4V14 REDEFINES CORRECT-A     PIC -9(4).9(14).     NC1084.2
016900     03 CORRECT-14V4 REDEFINES CORRECT-A     PIC -9(14).9(4).     NC1084.2
017000     03      CR-18V0 REDEFINES CORRECT-A.                         NC1084.2
017100         04 CORRECT-18V0                     PIC -9(18).          NC1084.2
017200         04 FILLER                           PIC X.               NC1084.2
017300     03 FILLER PIC X(2) VALUE SPACE.                              NC1084.2
017400     03 COR-ANSI-REFERENCE             PIC X(48) VALUE SPACE.     NC1084.2
017500 01  CCVS-C-1.                                                    NC1084.2
017600     02 FILLER  PIC IS X(99)    VALUE IS " FEATURE              PANC1084.2
017700-    "SS  PARAGRAPH-NAME                                          NC1084.2
017800-    "       REMARKS".                                            NC1084.2
017900     02 FILLER                     PIC X(20)    VALUE SPACE.      NC1084.2
018000 01  CCVS-C-2.                                                    NC1084.2
018100     02 FILLER                     PIC X        VALUE SPACE.      NC1084.2
018200     02 FILLER                     PIC X(6)     VALUE "TESTED".   NC1084.2
018300     02 FILLER                     PIC X(15)    VALUE SPACE.      NC1084.2
018400     02 FILLER                     PIC X(4)     VALUE "FAIL".     NC1084.2
018500     02 FILLER                     PIC X(94)    VALUE SPACE.      NC1084.2
018600 01  REC-SKL-SUB                   PIC 9(2)     VALUE ZERO.       NC1084.2
018700 01  REC-CT                        PIC 99       VALUE ZERO.       NC1084.2
018800 01  DELETE-COUNTER                PIC 999      VALUE ZERO.       NC1084.2
018900 01  ERROR-COUNTER                 PIC 999      VALUE ZERO.       NC1084.2
019000 01  INSPECT-COUNTER               PIC 999      VALUE ZERO.       NC1084.2
019100 01  PASS-COUNTER                  PIC 999      VALUE ZERO.       NC1084.2
019200 01  TOTAL-ERROR                   PIC 999      VALUE ZERO.       NC1084.2
019300 01  ERROR-HOLD                    PIC 999      VALUE ZERO.       NC1084.2
019400 01  DUMMY-HOLD                    PIC X(120)   VALUE SPACE.      NC1084.2
019500 01  RECORD-COUNT                  PIC 9(5)     VALUE ZERO.       NC1084.2
019600 01  ANSI-REFERENCE                PIC X(48)    VALUE SPACES.     NC1084.2
019700 01  CCVS-H-1.                                                    NC1084.2
019800     02  FILLER                    PIC X(39)    VALUE SPACES.     NC1084.2
019900     02  FILLER                    PIC X(42)    VALUE             NC1084.2
020000     "OFFICIAL COBOL COMPILER VALIDATION SYSTEM".                 NC1084.2
020100     02  FILLER                    PIC X(39)    VALUE SPACES.     NC1084.2
020200 01  CCVS-H-2A.                                                   NC1084.2
020300   02  FILLER                        PIC X(40)  VALUE SPACE.      NC1084.2
020400   02  FILLER                        PIC X(7)   VALUE "CCVS85 ".  NC1084.2
020500   02  FILLER                        PIC XXXX   VALUE             NC1084.2
020600     "4.2 ".                                                      NC1084.2
020700   02  FILLER                        PIC X(28)  VALUE             NC1084.2
020800            " COPY - NOT FOR DISTRIBUTION".                       NC1084.2
020900   02  FILLER                        PIC X(41)  VALUE SPACE.      NC1084.2
021000                                                                  NC1084.2
021100 01  CCVS-H-2B.                                                   NC1084.2
021200   02  FILLER                        PIC X(15)  VALUE             NC1084.2
021300            "TEST RESULT OF ".                                    NC1084.2
021400   02  TEST-ID                       PIC X(9).                    NC1084.2
021500   02  FILLER                        PIC X(4)   VALUE             NC1084.2
021600            " IN ".                                               NC1084.2
021700   02  FILLER                        PIC X(12)  VALUE             NC1084.2
021800     " HIGH       ".                                              NC1084.2
021900   02  FILLER                        PIC X(22)  VALUE             NC1084.2
022000            " LEVEL VALIDATION FOR ".                             NC1084.2
022100   02  FILLER                        PIC X(58)  VALUE             NC1084.2
022200     "ON-SITE VALIDATION, NATIONAL INSTITUTE OF STD & TECH.     ".NC1084.2
022300 01  CCVS-H-3.                                                    NC1084.2
022400     02  FILLER                      PIC X(34)  VALUE             NC1084.2
022500            " FOR OFFICIAL USE ONLY    ".                         NC1084.2
022600     02  FILLER                      PIC X(58)  VALUE             NC1084.2
022700     "COBOL 85 VERSION 4.2, Apr  1993 SSVG                      ".NC1084.2
022800     02  FILLER                      PIC X(28)  VALUE             NC1084.2
022900            "  COPYRIGHT   1985 ".                                NC1084.2
023000 01  CCVS-E-1.                                                    NC1084.2
023100     02 FILLER                       PIC X(52)  VALUE SPACE.      NC1084.2
023200     02 FILLER  PIC X(14) VALUE IS "END OF TEST-  ".              NC1084.2
023300     02 ID-AGAIN                     PIC X(9).                    NC1084.2
023400     02 FILLER                       PIC X(45)  VALUE SPACES.     NC1084.2
023500 01  CCVS-E-2.                                                    NC1084.2
023600     02  FILLER                      PIC X(31)  VALUE SPACE.      NC1084.2
023700     02  FILLER                      PIC X(21)  VALUE SPACE.      NC1084.2
023800     02 CCVS-E-2-2.                                               NC1084.2
023900         03 ERROR-TOTAL              PIC XXX    VALUE SPACE.      NC1084.2
024000         03 FILLER                   PIC X      VALUE SPACE.      NC1084.2
024100         03 ENDER-DESC               PIC X(44)  VALUE             NC1084.2
024200            "ERRORS ENCOUNTERED".                                 NC1084.2
024300 01  CCVS-E-3.                                                    NC1084.2
024400     02  FILLER                      PIC X(22)  VALUE             NC1084.2
024500            " FOR OFFICIAL USE ONLY".                             NC1084.2
024600     02  FILLER                      PIC X(12)  VALUE SPACE.      NC1084.2
024700     02  FILLER                      PIC X(58)  VALUE             NC1084.2
024800     "ON-SITE VALIDATION, NATIONAL INSTITUTE OF STD & TECH.     ".NC1084.2
024900     02  FILLER                      PIC X(13)  VALUE SPACE.      NC1084.2
025000     02 FILLER                       PIC X(15)  VALUE             NC1084.2
025100             " COPYRIGHT 1985".                                   NC1084.2
025200 01  CCVS-E-4.                                                    NC1084.2
025300     02 CCVS-E-4-1                   PIC XXX    VALUE SPACE.      NC1084.2
025400     02 FILLER                       PIC X(4)   VALUE " OF ".     NC1084.2
025500     02 CCVS-E-4-2                   PIC XXX    VALUE SPACE.      NC1084.2
025600     02 FILLER                       PIC X(40)  VALUE             NC1084.2
025700      "  TESTS WERE EXECUTED SUCCESSFULLY".                       NC1084.2
025800 01  XXINFO.                                                      NC1084.2
025900     02 FILLER                       PIC X(19)  VALUE             NC1084.2
026000            "*** INFORMATION ***".                                NC1084.2
026100     02 INFO-TEXT.                                                NC1084.2
026200       04 FILLER                     PIC X(8)   VALUE SPACE.      NC1084.2
026300       04 XXCOMPUTED                 PIC X(20).                   NC1084.2
026400       04 FILLER                     PIC X(5)   VALUE SPACE.      NC1084.2
026500       04 XXCORRECT                  PIC X(20).                   NC1084.2
026600     02 INF-ANSI-REFERENCE           PIC X(48).                   NC1084.2
026700 01  HYPHEN-LINE.                                                 NC1084.2
026800     02 FILLER  PIC IS X VALUE IS SPACE.                          NC1084.2
026900     02 FILLER  PIC IS X(65)    VALUE IS "************************NC1084.2
027000-    "*****************************************".                 NC1084.2
027100     02 FILLER  PIC IS X(54)    VALUE IS "************************NC1084.2
027200-    "******************************".                            NC1084.2
027300 01  CCVS-PGM-ID                     PIC X(9)   VALUE             NC1084.2
027400     "NC108M".                                                    NC1084.2
027500 PROCEDURE DIVISION.                                              NC1084.2
027600 CCVS1 SECTION.                                                   NC1084.2
027700 OPEN-FILES.                                                      NC1084.2
027800     OPEN     OUTPUT PRINT-FILE.                                  NC1084.2
027900     MOVE CCVS-PGM-ID TO TEST-ID. MOVE CCVS-PGM-ID TO ID-AGAIN.   NC1084.2
028000     MOVE    SPACE TO TEST-RESULTS.                               NC1084.2
028100     PERFORM  HEAD-ROUTINE THRU COLUMN-NAMES-ROUTINE.             NC1084.2
028200     GO TO CCVS1-EXIT.                                            NC1084.2
028300 CLOSE-FILES.                                                     NC1084.2
028400     PERFORM END-ROUTINE THRU END-ROUTINE-13. CLOSE PRINT-FILE.   NC1084.2
028500 TERMINATE-CCVS.                                                  NC1084.2
028800     STOP     RUN.                                                NC1084.2
028900 INSPT. MOVE "INSPT" TO P-OR-F. ADD 1 TO INSPECT-COUNTER.         NC1084.2
029000 PASS.  MOVE "PASS " TO P-OR-F.  ADD 1 TO PASS-COUNTER.           NC1084.2
029100 FAIL.  MOVE "FAIL*" TO P-OR-F.  ADD 1 TO ERROR-COUNTER.          NC1084.2
029200 DE-LETE.  MOVE "*****" TO P-OR-F.  ADD 1 TO DELETE-COUNTER.      NC1084.2
029300     MOVE "****TEST DELETED****" TO RE-MARK.                      NC1084.2
029400 PRINT-DETAIL.                                                    NC1084.2
029500     IF REC-CT NOT EQUAL TO ZERO                                  NC1084.2
029600             MOVE "." TO PARDOT-X                                 NC1084.2
029700             MOVE REC-CT TO DOTVALUE.                             NC1084.2
029800     MOVE     TEST-RESULTS TO PRINT-REC. PERFORM WRITE-LINE.      NC1084.2
029900     IF P-OR-F EQUAL TO "FAIL*"  PERFORM WRITE-LINE               NC1084.2
030000        PERFORM FAIL-ROUTINE THRU FAIL-ROUTINE-EX                 NC1084.2
030100          ELSE PERFORM BAIL-OUT THRU BAIL-OUT-EX.                 NC1084.2
030200     MOVE SPACE TO P-OR-F. MOVE SPACE TO COMPUTED-X.              NC1084.2
030300     MOVE SPACE TO CORRECT-X.                                     NC1084.2
030400     IF     REC-CT EQUAL TO ZERO  MOVE SPACE TO PAR-NAME.         NC1084.2
030500     MOVE     SPACE TO RE-MARK.                                   NC1084.2
030600 HEAD-ROUTINE.                                                    NC1084.2
030700     MOVE CCVS-H-1  TO DUMMY-RECORD. PERFORM WRITE-LINE 2 TIMES.  NC1084.2
030800     MOVE CCVS-H-2A TO DUMMY-RECORD. PERFORM WRITE-LINE 2 TIMES.  NC1084.2
030900     MOVE CCVS-H-2B TO DUMMY-RECORD. PERFORM WRITE-LINE 3 TIMES.  NC1084.2
031000     MOVE CCVS-H-3  TO DUMMY-RECORD. PERFORM WRITE-LINE 3 TIMES.  NC1084.2
031100 COLUMN-NAMES-ROUTINE.                                            NC1084.2
031200     MOVE CCVS-C-1 TO DUMMY-RECORD. PERFORM WRITE-LINE.           NC1084.2
031300     MOVE CCVS-C-2 TO DUMMY-RECORD. PERFORM WRITE-LINE 2 TIMES.   NC1084.2
031400     MOVE HYPHEN-LINE TO DUMMY-RECORD. PERFORM WRITE-LINE.        NC1084.2
031500 END-ROUTINE.                                                     NC1084.2
031600     MOVE HYPHEN-LINE TO DUMMY-RECORD. PERFORM WRITE-LINE 5 TIMES.NC1084.2
031700 END-RTN-EXIT.                                                    NC1084.2
031800     MOVE CCVS-E-1 TO DUMMY-RECORD. PERFORM WRITE-LINE 2 TIMES.   NC1084.2
031900 END-ROUTINE-1.                                                   NC1084.2
032000      ADD ERROR-COUNTER TO ERROR-HOLD ADD INSPECT-COUNTER TO      NC1084.2
032100      ERROR-HOLD. ADD DELETE-COUNTER TO ERROR-HOLD.               NC1084.2
032200      ADD PASS-COUNTER TO ERROR-HOLD.                             NC1084.2
032300*                                                                         
032400      MOVE PASS-COUNTER TO CCVS-E-4-1.                            NC1084.2
032500      MOVE ERROR-HOLD TO CCVS-E-4-2.                              NC1084.2
032600      MOVE CCVS-E-4 TO CCVS-E-2-2.                                NC1084.2
032700      MOVE CCVS-E-2 TO DUMMY-RECORD PERFORM WRITE-LINE.           NC1084.2
032800  END-ROUTINE-12.                                                 NC1084.2
032900      MOVE "TEST(S) FAILED" TO ENDER-DESC.                        NC1084.2
033000     IF       ERROR-COUNTER IS EQUAL TO ZERO                      NC1084.2
033100         MOVE "NO " TO ERROR-TOTAL                                NC1084.2
033200         ELSE                                                     NC1084.2
033300         MOVE ERROR-COUNTER TO ERROR-TOTAL.                       NC1084.2
033400     MOVE     CCVS-E-2 TO DUMMY-RECORD.                           NC1084.2
033500     PERFORM WRITE-LINE.                                          NC1084.2
033600 END-ROUTINE-13.                                                  NC1084.2
033700     IF DELETE-COUNTER IS EQUAL TO ZERO                           NC1084.2
033800         MOVE "NO " TO ERROR-TOTAL  ELSE                          NC1084.2
033900         MOVE DELETE-COUNTER TO ERROR-TOTAL.                      NC1084.2
034000     MOVE "TEST(S) DELETED     " TO ENDER-DESC.                   NC1084.2
034100     MOVE CCVS-E-2 TO DUMMY-RECORD. PERFORM WRITE-LINE.           NC1084.2
034200      IF   INSPECT-COUNTER EQUAL TO ZERO                          NC1084.2
034300          MOVE "NO " TO ERROR-TOTAL                               NC1084.2
034400      ELSE MOVE INSPECT-COUNTER TO ERROR-TOTAL.                   NC1084.2
034500      MOVE "TEST(S) REQUIRE INSPECTION" TO ENDER-DESC.            NC1084.2
034600      MOVE CCVS-E-2 TO DUMMY-RECORD. PERFORM WRITE-LINE.          NC1084.2
034700     MOVE CCVS-E-3 TO DUMMY-RECORD. PERFORM WRITE-LINE.           NC1084.2
034800 WRITE-LINE.                                                      NC1084.2
034900     ADD 1 TO RECORD-COUNT.                                       NC1084.2
035000     IF RECORD-COUNT GREATER 50                                   NC1084.2
035100         MOVE DUMMY-RECORD TO DUMMY-HOLD                          NC1084.2
035200         MOVE SPACE TO DUMMY-RECORD                               NC1084.2
035300         WRITE DUMMY-RECORD AFTER ADVANCING PAGE                  NC1084.2
035400         MOVE CCVS-H-1  TO DUMMY-RECORD  PERFORM WRT-LN 2 TIMES   NC1084.2
035500         MOVE CCVS-H-2A TO DUMMY-RECORD  PERFORM WRT-LN 2 TIMES   NC1084.2
035600         MOVE CCVS-H-2B TO DUMMY-RECORD  PERFORM WRT-LN 3 TIMES   NC1084.2
035700         MOVE CCVS-H-3  TO DUMMY-RECORD  PERFORM WRT-LN 3 TIMES   NC1084.2
035800         MOVE CCVS-C-1  TO DUMMY-RECORD  PERFORM WRT-LN           NC1084.2
035900         MOVE CCVS-C-2  TO DUMMY-RECORD  PERFORM WRT-LN           NC1084.2
036000         MOVE HYPHEN-LINE TO DUMMY-RECORD PERFORM WRT-LN          NC1084.2
036100         MOVE DUMMY-HOLD TO DUMMY-RECORD                          NC1084.2
036200         MOVE ZERO TO RECORD-COUNT.                               NC1084.2
036300     PERFORM WRT-LN.                                              NC1084.2
036400 WRT-LN.                                                          NC1084.2
036500     WRITE    DUMMY-RECORD AFTER ADVANCING 1 LINES.               NC1084.2
036600     MOVE SPACE TO DUMMY-RECORD.                                  NC1084.2
036700 BLANK-LINE-PRINT.                                                NC1084.2
036800     PERFORM WRT-LN.                                              NC1084.2
036900 FAIL-ROUTINE.                                                    NC1084.2
037000     IF     COMPUTED-X NOT EQUAL TO SPACE                         NC1084.2
037100            GO TO FAIL-ROUTINE-WRITE.                             NC1084.2
037200     IF     CORRECT-X NOT EQUAL TO SPACE GO TO FAIL-ROUTINE-WRITE.NC1084.2
037300     MOVE   ANSI-REFERENCE TO INF-ANSI-REFERENCE.                 NC1084.2
037400     MOVE  "NO FURTHER INFORMATION, SEE PROGRAM." TO INFO-TEXT.   NC1084.2
037500     MOVE   XXINFO TO DUMMY-RECORD. PERFORM WRITE-LINE 2 TIMES.   NC1084.2
037600     MOVE   SPACES TO INF-ANSI-REFERENCE.                         NC1084.2
037700     GO TO  FAIL-ROUTINE-EX.                                      NC1084.2
037800 FAIL-ROUTINE-WRITE.                                              NC1084.2
037900     MOVE   TEST-COMPUTED TO PRINT-REC PERFORM WRITE-LINE         NC1084.2
038000     MOVE   ANSI-REFERENCE TO COR-ANSI-REFERENCE.                 NC1084.2
038100     MOVE   TEST-CORRECT TO PRINT-REC PERFORM WRITE-LINE 2 TIMES. NC1084.2
038200     MOVE   SPACES TO COR-ANSI-REFERENCE.                         NC1084.2
038300 FAIL-ROUTINE-EX. EXIT.                                           NC1084.2
038400 BAIL-OUT.                                                        NC1084.2
038500     IF     COMPUTED-A NOT EQUAL TO SPACE GO TO BAIL-OUT-WRITE.   NC1084.2
038600     IF     CORRECT-A EQUAL TO SPACE GO TO BAIL-OUT-EX.           NC1084.2
038700 BAIL-OUT-WRITE.                                                  NC1084.2
038800     MOVE CORRECT-A TO XXCORRECT. MOVE COMPUTED-A TO XXCOMPUTED.  NC1084.2
038900     MOVE   ANSI-REFERENCE TO INF-ANSI-REFERENCE.                 NC1084.2
039000     MOVE   XXINFO TO DUMMY-RECORD. PERFORM WRITE-LINE 2 TIMES.   NC1084.2
039100     MOVE   SPACES TO INF-ANSI-REFERENCE.                         NC1084.2
039200 BAIL-OUT-EX. EXIT.                                               NC1084.2
039300 CCVS1-EXIT.                                                      NC1084.2
039400     EXIT.                                                        NC1084.2
039500*                                                                         
039600*                                                                         
039700*                                                                         
039800*                                                                         
039900*                                                                         
040000*                                                                         
040100*                                                                         
040200*                                                                         
040300*                                                                         
040400*                                                                         
040500*                                                                         
040600*                                                                         
040700*                                                                         
040800*                                                                         
040900*                                                                         
041000*                                                                         
041100*                                                                         
041200*                                                                         
041300*                                                                         
041400*                                                                         
041500*                                                                         
041600*                                                                         
041700*                                                                         
041800*                                                                         
041900*                                                                         
042000*                                                                         
042100*                                                                         
042200*                                                                         
042300*                                                                         
042400*                                                                         
042500*                                                                         
042600*                                                                         
042700*                                                                         
042800*                                                                         
042900*                                                                         
043000*                                                                         
043100*                                                                         
043200*                                                                         
043300*                                                                         
043400*                                                                         
043500*                                                                         
043600*                                                                         
043700*                                                                         
043800*                                                                         
043900*                                                                         
044000*                                                                         
044100*                                                                         
044200*                                                                         
044300*                                                                         
044400*                                                                         
044500*                                                                         
044600*                                                                         
044700*                                                                         
044800*                                                                         
044900*                                                                         
045000*                                                                         
045100*                                                                         
045200*                                                                         
045300*                                                                         
045400*                                                                         
045500*                                                                         
045600*                                                                         
045700*                                                                         
045800*                                                                         
045900*                                                                         
046000*                                                                         
046100*                                                                         
046200*                                                                         
046300*                                                                         
046400*                                                                         
046500*                                                                         
046600*                                                                         
046700*                                                                         
046800*                                                                         
046900*                                                                         
047000*                                                                         
047100*                                                                         
047200*                                                                         
047300*                                                                         
047400*                                                                         
047500*                                                                         
047600*                                                                         
047700*                                                                         
047800*                                                                         
047900*                                                                         
048000*                                                                         
048100*                                                                         
048200*                                                                         
048300*                                                                         
048400*                                                                         
048500*                                                                         
048600*                                                                         
048700*                                                                         
048800*                                                                         
048900*                                                                         
049000*                                                                         
049100*                                                                         
049200*                                                                         
049300*                                                                         
049400*                                                                         
049500*                                                                         
049600*                                                                         
049700*                                                                         
049800*                                                                         
049900*                                                                         
050000*                                                                         
050100*                                                                         
050200*                                                                         
050300*                                                                         
050400*                                                                         
050500*                                                                         
050600*                                                                         
050700*                                                                         
050800*                                                                         
050900 FMT-INIT-GF-1.                                                   NC1084.2
051000     MOVE   "COMPLETE DATA FORMAT" TO FEATURE.                    NC1084.2
051100     MOVE   "V1-6 3.2.1.1" TO ANSI-REFERENCE.                     NC1084.2
051200 FMT-TEST-GF-1.                                                   NC1084.2
051300     MOVE COMPLETE-FORMAT (19) TO COMPUTED-A.                     NC1084.2
051400     MOVE " <1,1" TO CORRECT-A.                                   NC1084.2
051500     IF   COMPLETE-FORMAT (19) EQUAL TO " <1,1"                   NC1084.2
051600          MOVE "FAILURE IF DOLLAR APPEARS" TO RE-MARK             NC1084.2
051700          GO TO FMT-WRITE-GF-1.                                   NC1084.2
051800     PERFORM FAIL.                                                NC1084.2
051900     MOVE "LESS THAN SHOULD APPEAR" TO RE-MARK.                   NC1084.2
052000     GO       TO FMT-WRITE-GF-1.                                  NC1084.2
052100 FMT-DELETE-GF-1.                                                 NC1084.2
052200     PERFORM  DE-LETE.                                            NC1084.2
052300 FMT-WRITE-GF-1.                                                  NC1084.2
052400     MOVE     "FMT-TEST-GF-1" TO PAR-NAME.                        NC1084.2
052500     PERFORM  PRINT-DETAIL.                                       NC1084.2
052600 FMT-INIT-GF-2.                                                   NC1084.2
052700     MOVE   "V1-20 5.3" TO ANSI-REFERENCE.                        NC1084.2
052800 FMT-TEST-GF-2.                                                   NC1084.2
052900     IF       MORE-COMPLETE-FORMAT NOT EQUAL TO "7"               NC1084.2
053000              PERFORM FAIL                                        NC1084.2
053100         ELSE PERFORM PASS                                        NC1084.2
053200              GO TO FMT-WRITE-GF-2.                               NC1084.2
053300     MOVE     MORE-COMPLETE-FORMAT TO COMPUTED-A.                 NC1084.2
053400     MOVE     "7" TO CORRECT-A.                                   NC1084.2
053500     GO       TO FMT-WRITE-GF-2.                                  NC1084.2
053600 FMT-DELETE-GF-2.                                                 NC1084.2
053700     PERFORM  DE-LETE.                                            NC1084.2
053800 FMT-WRITE-GF-2.                                                  NC1084.2
053900     MOVE     "FMT-TEST-GF-2" TO PAR-NAME.                        NC1084.2
054000     PERFORM  PRINT-DETAIL.                                       NC1084.2
054100 FMT-TEST-GF-3.                                                   NC1084.2
054200     MOVE     ZERO TO MORE-COMPLETE-FORMAT.                       NC1084.2
054300     IF       MORE-COMPLETE-FORMAT EQUAL TO SPACE                 NC1084.2
054400              PERFORM PASS                                        NC1084.2
054500              GO TO FMT-WRITE-GF-3.                               NC1084.2
054600     PERFORM  FAIL.                                               NC1084.2
054700     MOVE     MORE-COMPLETE-FORMAT TO COMPUTED-A.                 NC1084.2
054800     MOVE     "      (SPACES)" TO CORRECT-A.                      NC1084.2
054900     GO       TO FMT-WRITE-GF-3.                                  NC1084.2
055000 FMT-DELETE-GF-3.                                                 NC1084.2
055100     PERFORM  DE-LETE.                                            NC1084.2
055200 FMT-WRITE-GF-3.                                                  NC1084.2
055300     MOVE     "FMT-TEST-GF-3" TO PAR-NAME.                        NC1084.2
055400     PERFORM  PRINT-DETAIL.                                       NC1084.2
055500 ABR-INIT-GF-1.                                                   NC1084.2
055600     MOVE   "DATA DESCR ABBREVS -" TO FEATURE.                    NC1084.2
055700     MOVE   "VI-20 5.3" TO ANSI-REFERENCE.                        NC1084.2
055800     PERFORM  PRINT-DETAIL.                                       NC1084.2
055900 ABR-TEST-GF-1.                                                   NC1084.2
056000     IF       PIC-GROUP IS EQUAL TO PICTURE-ITEM                  NC1084.2
056100              PERFORM PASS GO TO ABR-WRITE-GF-1.                  NC1084.2
056200     GO       TO ABR-FAIL-GF-1.                                   NC1084.2
056300 ABR-DELETE-GF-1.                                                 NC1084.2
056400     PERFORM  DE-LETE.                                            NC1084.2
056500     GO       TO ABR-WRITE-GF-1.                                  NC1084.2
056600 ABR-FAIL-GF-1.                                                   NC1084.2
056700     MOVE     PIC-GROUP TO COMPUTED-A.                            NC1084.2
056800     MOVE     PICTURE-ITEM TO CORRECT-A.                          NC1084.2
056900     PERFORM  FAIL.                                               NC1084.2
057000 ABR-WRITE-GF-1.                                                  NC1084.2
057100     MOVE     "  PIC" TO FEATURE.                                 NC1084.2
057200     MOVE     "ABR-TEST-GF-1 " TO PAR-NAME.                       NC1084.2
057300     PERFORM  PRINT-DETAIL.                                       NC1084.2
057400 ABR-INIT-GF-2.                                                   NC1084.2
057500     MOVE   "VI-20 5.3" TO ANSI-REFERENCE.                        NC1084.2
057600     MOVE     SEND-JUST TO RECEIVE-JUSTRIGHT.                     NC1084.2
057700 ABR-TEST-GF-2.                                                   NC1084.2
057800     IF       RECEIVE-JUSTRIGHT EQUAL TO "     SIGHT"             NC1084.2
057900              PERFORM PASS GO TO ABR-WRITE-GF-2.                  NC1084.2
058000     GO       TO ABR-FAIL-GF-2.                                   NC1084.2
058100 ABR-DELETE-GF-2.                                                 NC1084.2
058200     PERFORM  DE-LETE.                                            NC1084.2
058300     GO       TO ABR-WRITE-GF-2.                                  NC1084.2
058400 ABR-FAIL-GF-2.                                                   NC1084.2
058500     PERFORM  FAIL.                                               NC1084.2
058600     MOVE     RECEIVE-JUSTRIGHT TO COMPUTED-A.                    NC1084.2
058700     MOVE     "     SIGHT" TO CORRECT-A.                          NC1084.2
058800 ABR-WRITE-GF-2.                                                  NC1084.2
058900     MOVE     "  JUST" TO FEATURE                                 NC1084.2
059000     MOVE     "ABR-TEST-GF-2 " TO PAR-NAME.                       NC1084.2
059100     PERFORM  PRINT-DETAIL.                                       NC1084.2
059200 ABR-INIT-GF-3.                                                   NC1084.2
059300     MOVE   "VI-20 5.3" TO ANSI-REFERENCE.                        NC1084.2
059400     MOVE     SEND-JUST TO RECEIVE-JUST.                          NC1084.2
059500 ABR-TEST-GF-3.                                                   NC1084.2
059600     IF       RECEIVE-JUST EQUAL TO "     DIGHT"                  NC1084.2
059700              PERFORM PASS GO TO ABR-WRITE-GF-3.                  NC1084.2
059800     GO       TO ABR-FAIL-GF-3.                                   NC1084.2
059900 ABR-DELETE-GF-3.                                                 NC1084.2
060000     PERFORM  DE-LETE.                                            NC1084.2
060100     GO       TO ABR-WRITE-GF-3.                                  NC1084.2
060200 ABR-FAIL-GF-3.                                                   NC1084.2
060300     PERFORM  FAIL.                                               NC1084.2
060400     MOVE     RECEIVE-JUST TO COMPUTED-A.                         NC1084.2
060500     MOVE     "     DIGHT" TO CORRECT-A.                          NC1084.2
060600 ABR-WRITE-GF-3.                                                  NC1084.2
060700     MOVE     "ABR-TEST-GF-3 " TO PAR-NAME.                       NC1084.2
060800     PERFORM  PRINT-DETAIL.                                       NC1084.2
060900 ABR-INIT-GF-4.                                                   NC1084.2
061000     MOVE   "VI-20 5.3" TO ANSI-REFERENCE.                        NC1084.2
061100     MOVE     SEND-BLANK TO RECEIVE-BLANK.                        NC1084.2
061200 ABR-TEST-GF-4.                                                   NC1084.2
061300     IF       RECEIVE-BLANK EQUAL TO "         "                  NC1084.2
061400              PERFORM PASS GO TO ABR-WRITE-GF-4.                  NC1084.2
061500     GO       TO ABR-FAIL-GF-4.                                   NC1084.2
061600 ABR-DELETE-GF-4.                                                 NC1084.2
061700     PERFORM  DE-LETE.                                            NC1084.2
061800     GO       TO ABR-WRITE-GF-4.                                  NC1084.2
061900 ABR-FAIL-GF-4.                                                   NC1084.2
062000     PERFORM  FAIL.                                               NC1084.2
062100     MOVE     RECEIVE-BLANK TO COMPUTED-A.                        NC1084.2
062200     MOVE     "      (SPACES)" TO CORRECT-A.                      NC1084.2
062300 ABR-WRITE-GF-4.                                                  NC1084.2
062400     MOVE     "  BLANK ZERO" TO FEATURE                           NC1084.2
062500     MOVE     "ABR-TEST-GF-4 " TO PAR-NAME.                       NC1084.2
062600     PERFORM  PRINT-DETAIL.                                       NC1084.2
062700 ABR-INIT-GF-5.                                                   NC1084.2
062800     MOVE   "VI-20 5.3" TO ANSI-REFERENCE.                        NC1084.2
062900 ABR-TEST-GF-5.                                                   NC1084.2
063000     IF       COMP-GROUP EQUAL TO COMPUTATIONAL-GROUP             NC1084.2
063100              PERFORM PASS GO TO ABR-WRITE-GF-5.                  NC1084.2
063200     GO       TO ABR-FAIL-GF-5.                                   NC1084.2
063300 ABR-DELETE-GF-5.                                                 NC1084.2
063400     PERFORM  DE-LETE.                                            NC1084.2
063500     GO       TO ABR-WRITE-GF-5.                                  NC1084.2
063600 ABR-FAIL-GF-5.                                                   NC1084.2
063700     PERFORM  FAIL.                                               NC1084.2
063800     MOVE     COMP-GROUP TO COMPUTED-A.                           NC1084.2
063900     MOVE     COMPUTATIONAL-GROUP TO CORRECT-A.                   NC1084.2
064000 ABR-WRITE-GF-5.                                                  NC1084.2
064100     MOVE     "  COMP" TO FEATURE.                                NC1084.2
064200     MOVE     "ABR-TEST-GF-5 " TO PAR-NAME.                       NC1084.2
064300     PERFORM  PRINT-DETAIL.                                       NC1084.2
064400 ABR-INIT-GF-6.                                                   NC1084.2
064500     MOVE   "VI-20 5.3" TO ANSI-REFERENCE.                        NC1084.2
064600 ABR-TEST-GF-6.                                                   NC1084.2
064700     IF       SYNC-GROUP EQUAL TO SYNCHRONIZED-GROUP              NC1084.2
064800              PERFORM PASS GO TO ABR-WRITE-GF-6.                  NC1084.2
064900     GO       TO ABR-FAIL-GF-6.                                   NC1084.2
065000 ABR-DELETE-GF-6.                                                 NC1084.2
065100     PERFORM  DE-LETE.                                            NC1084.2
065200     GO       TO ABR-WRITE-GF-6.                                  NC1084.2
065300 ABR-FAIL-GF-6.                                                   NC1084.2
065400     PERFORM  FAIL.                                               NC1084.2
065500     MOVE     SYNC-GROUP TO COMPUTED-A.                           NC1084.2
065600     MOVE     SYNCHRONIZED-GROUP TO CORRECT-A.                    NC1084.2
065700 ABR-WRITE-GF-6.                                                  NC1084.2
065800     MOVE     "  SYNC" TO FEATURE                                 NC1084.2
065900     MOVE     "ABR-TEST-GF-6 " TO PAR-NAME.                       NC1084.2
066000     PERFORM  PRINT-DETAIL.                                       NC1084.2
066100 ABR-INIT-GF-7.                                                   NC1084.2
066200     MOVE   "VI-20 5.3" TO ANSI-REFERENCE.                        NC1084.2
066300 ABR-TEST-GF-7.                                                   NC1084.2
066400     IF       SYNC-RIGHT-GROUP EQUAL TO SYNCHRONIZED-RIGHT-GROUP  NC1084.2
066500              PERFORM PASS GO TO ABR-WRITE-GF-7.                  NC1084.2
066600     GO       TO ABR-FAIL-GF-7.                                   NC1084.2
066700 ABR-DELETE-GF-7.                                                 NC1084.2
066800     PERFORM  DE-LETE.                                            NC1084.2
066900     GO       TO ABR-WRITE-GF-7.                                  NC1084.2
067000 ABR-FAIL-GF-7.                                                   NC1084.2
067100     PERFORM  FAIL.                                               NC1084.2
067200     MOVE     SYNC-RIGHT-GROUP TO COMPUTED-A.                     NC1084.2
067300     MOVE     SYNCHRONIZED-RIGHT-GROUP TO CORRECT-A.              NC1084.2
067400 ABR-WRITE-GF-7.                                                  NC1084.2
067500     MOVE     "ABR-TEST-GF-7 " TO PAR-NAME.                       NC1084.2
067600     PERFORM  PRINT-DETAIL.                                       NC1084.2
067700 ABR-INIT-GF-8.                                                   NC1084.2
067800     MOVE   "VI-20 5.3" TO ANSI-REFERENCE.                        NC1084.2
067900 ABR-TEST-GF-8.                                                   NC1084.2
068000     IF       SYNC-LEFT-GROUP EQUAL TO SYNCHRONIZED-LEFT-GROUP    NC1084.2
068100              PERFORM PASS GO TO ABR-WRITE-GF-8.                  NC1084.2
068200     GO       TO ABR-FAIL-GF-8.                                   NC1084.2
068300 ABR-DELETE-GF-8.                                                 NC1084.2
068400     PERFORM  DE-LETE.                                            NC1084.2
068500     GO       TO ABR-WRITE-GF-8.                                  NC1084.2
068600 ABR-FAIL-GF-8.                                                   NC1084.2
068700     PERFORM  FAIL.                                               NC1084.2
068800     MOVE     SYNC-LEFT-GROUP TO COMPUTED-A.                      NC1084.2
068900     MOVE     SYNCHRONIZED-LEFT-GROUP TO CORRECT-A.               NC1084.2
069000 ABR-WRITE-GF-8.                                                  NC1084.2
069100     MOVE     "ABR-TEST-GF-8 " TO PAR-NAME.                       NC1084.2
069200     PERFORM  PRINT-DETAIL.                                       NC1084.2
069300 ABR-INIT-GF-9.                                                   NC1084.2
069400     MOVE   "VI-20 5.3" TO ANSI-REFERENCE.                        NC1084.2
069500 ABR-TEST-GF-9.                                                   NC1084.2
069600     MOVE ZERO TO ONE                                             NC1084.2
069700     IF ON-SWITCH ADD 1 TO ONE.                                   NC1084.2
069800     IF OFF-SWITCH ADD 1 TO ONE.                                  NC1084.2
069900     IF ONE EQUAL TO 1 PERFORM PASS GO TO ABR-WRITE-GF-9          NC1084.2
070000              ELSE MOVE 1 TO ONE GO TO ABR-FAIL-GF-9.             NC1084.2
070100 ABR-DELETE-GF-9.                                                 NC1084.2
070200     PERFORM  DE-LETE.                                            NC1084.2
070300     GO       TO ABR-WRITE-GF-9.                                  NC1084.2
070400 ABR-FAIL-GF-9.                                                   NC1084.2
070500     PERFORM  FAIL.                                               NC1084.2
070600     MOVE "NOT BOOLEAN COMPLEMENTS" TO RE-MARK.                   NC1084.2
070700 ABR-WRITE-GF-9.                                                  NC1084.2
070800     MOVE "SPECIAL-NAMES SWITCH" TO FEATURE.                      NC1084.2
070900     MOVE     "ABR-TEST-GF-9 " TO PAR-NAME.                       NC1084.2
071000     PERFORM  PRINT-DETAIL.                                       NC1084.2
071100 ABR-INIT-GF-10.                                                  NC1084.2
071200     MOVE   "VI-20 5.3" TO ANSI-REFERENCE.                        NC1084.2
071300     MOVE     ZERO TO FL-LESS.                                    NC1084.2
071400     MOVE FL-LESS  TO COMPUTED-A.                                 NC1084.2
071500     MOVE "      <.00" TO CORRECT-A.                              NC1084.2
071600 ABR-TEST-GF-10.                                                  NC1084.2
071700     IF   FL-LESS EQUAL TO "      <.00"                           NC1084.2
071800          MOVE "FAILURE IF DOLLAR APPEARS" TO RE-MARK             NC1084.2
071900          GO TO ABR-WRITE-GF-10.                                  NC1084.2
072000     GO       TO ABR-FAIL-GF-10.                                  NC1084.2
072100 ABR-DELETE-GF-10.                                                NC1084.2
072200     PERFORM  DE-LETE.                                            NC1084.2
072300     GO       TO ABR-WRITE-GF-10.                                 NC1084.2
072400 ABR-FAIL-GF-10.                                                  NC1084.2
072500     PERFORM  FAIL.                                               NC1084.2
072600     MOVE "LESS THAN SHOULD APPEAR" TO RE-MARK.                   NC1084.2
072700 ABR-WRITE-GF-10.                                                 NC1084.2
072800     MOVE     "ABR-TEST-GF-10" TO PAR-NAME.                       NC1084.2
072900     MOVE "SPECIAL-NAMES CURNCY" TO FEATURE.                      NC1084.2
073000     PERFORM  PRINT-DETAIL.                                       NC1084.2
073100 CHA-INIT-1.                                                      NC1084.2
073200     MOVE   "III-3" TO ANSI-REFERENCE.                            NC1084.2
073300 CHA-GF-1-1.                                                      NC1084.2
073400     IF       XCHAR-SET EQUAL TO                                  NC1084.2
073500     "ABCDEFGHIJKLMNOPQRSTUVWXYZ 0123456789 +-*/=$,.;()><"        NC1084.2
073600              PERFORM PASS ELSE PERFORM FAIL.                     NC1084.2
073700*                                                                         
073800*                                                                         
073900     GO       TO CHA-WRITE-GF-1-1.                                NC1084.2
074000 CHA-DELETE-GF-1-1.                                               NC1084.2
074100     PERFORM  DE-LETE.                                            NC1084.2
074200 CHA-WRITE-GF-1-1.                                                NC1084.2
074300     MOVE     "CHARACTER-SET" TO FEATURE.                         NC1084.2
074400     MOVE     "CHA-GF-1-1" TO PAR-NAME.                           NC1084.2
074500     PERFORM  PRINT-DETAIL.                                       NC1084.2
074600 CHA-GF-1-2.                                                      NC1084.2
074700     IF       CHARACTER-QUOTE = QUOTE                             NC1084.2
074800              PERFORM PASS ELSE PERFORM FAIL.                     NC1084.2
074900     GO       TO CHA-WRITE-GF-1-2.                                NC1084.2
075000 CHA-DELETE-GF-1-2.                                               NC1084.2
075100     PERFORM  DE-LETE.                                            NC1084.2
075200 CHA-WRITE-GF-1-2.                                                NC1084.2
075300     MOVE     "CHARACTER-SET" TO FEATURE.                         NC1084.2
075400     MOVE     "CHA-GF-1-2" TO PAR-NAME.                           NC1084.2
075500     PERFORM  PRINT-DETAIL.                                       NC1084.2
075600 CHA-GF-1-3.                                                      NC1084.2
075700     IF       CHARACTER-LOW = "abcdefghijklmnopqrstuvwxyz"        NC1084.2
075800              PERFORM PASS ELSE PERFORM FAIL.                     NC1084.2
075900     GO       TO CHA-WRITE-GF-1-3.                                NC1084.2
076000 CHA-DELETE-GF-1-3.                                               NC1084.2
076100     PERFORM  DE-LETE.                                            NC1084.2
076200 CHA-WRITE-GF-1-3.                                                NC1084.2
076300     MOVE     "CHARACTER-SET" TO FEATURE.                         NC1084.2
076400     MOVE     "CHA-GF-1-3" TO PAR-NAME.                           NC1084.2
076500     PERFORM  PRINT-DETAIL.                                       NC1084.2
076600*                                                                         
076700 ALPHABET-INIT-10.                                                NC1084.2
076800     MOVE   "VI-15 4.5.4 GR4" TO ANSI-REFERENCE.                  NC1084.2
076900 ALPHABET-TEST-10.                                                NC1084.2
077000     PERFORM END-ROUTINE.                                         NC1084.2
077100     MOVE    " ALPHABET-NAME     *****     CHECK THE ALPHABET-NAMENC1084.2
077200-    " IN THE SPECIAL-NAMES PARAGRAPH" TO TEST-RESULTS.           NC1084.2
077300     PERFORM PRINT-DETAIL.                                        NC1084.2
077400*                                                                         
077500 CCVS-EXIT SECTION.                                               NC1084.2
077600 CCVS-999999.                                                     NC1084.2
077700     GO TO CLOSE-FILES.                                           NC1084.2
