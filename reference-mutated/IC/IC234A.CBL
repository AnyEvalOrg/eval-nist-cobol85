000100 IDENTIFICATION DIVISION.                                         IC2344.2
000200 PROGRAM-ID.                                                      IC2344.2
000300     IC234A.                                                      IC2344.2
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
003900*                                                                         
004000*                                                                         
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
005300 ENVIRONMENT DIVISION.                                            IC2344.2
005400 CONFIGURATION SECTION.                                           IC2344.2
005500 SOURCE-COMPUTER.                                                 IC2344.2
005600     GNU-Linux.                                                   IC2344.2
005700 OBJECT-COMPUTER.                                                 IC2344.2
005800     GNU-Linux.                                                   IC2344.2
005900 INPUT-OUTPUT SECTION.                                            IC2344.2
006000 FILE-CONTROL.                                                    IC2344.2
006100     SELECT PRINT-FILE ASSIGN TO                                  IC2344.2
006200     "REPORT".                                                    IC2344.2
006300     SELECT TEST-FILE  ASSIGN TO                                  IC2344.2
006400     "XXXXX014".                                                  IC2344.2
006500 DATA DIVISION.                                                   IC2344.2
006600 FILE SECTION.                                                    IC2344.2
006700 FD  PRINT-FILE.                                                  IC2344.2
006800 01  PRINT-REC                   PIC X(120).                      IC2344.2
006900 01  DUMMY-RECORD                PIC X(120).                      IC2344.2
007000 FD  TEST-FILE GLOBAL.                                            IC2344.2
007100 01  TEST-RECORD                 PIC X(20).                       IC2344.2
007200 WORKING-STORAGE SECTION.                                         IC2344.2
007300 01  DILFRAP   GLOBAL            PIC 9.                           IC2344.2
007400 01  TEST-RESULTS.                                                IC2344.2
007500     02 FILLER                   PIC X      VALUE SPACE.          IC2344.2
007600     02 FEATURE                  PIC X(20)  VALUE SPACE.          IC2344.2
007700     02 FILLER                   PIC X      VALUE SPACE.          IC2344.2
007800     02 P-OR-F                   PIC X(5)   VALUE SPACE.          IC2344.2
007900     02 FILLER                   PIC X      VALUE SPACE.          IC2344.2
008000     02  PAR-NAME.                                                IC2344.2
008100       03 FILLER                 PIC X(19)  VALUE SPACE.          IC2344.2
008200       03  PARDOT-X              PIC X      VALUE SPACE.          IC2344.2
008300       03 DOTVALUE               PIC 99     VALUE ZERO.           IC2344.2
008400     02 FILLER                   PIC X(8)   VALUE SPACE.          IC2344.2
008500     02 RE-MARK                  PIC X(61).                       IC2344.2
008600 01  TEST-COMPUTED.                                               IC2344.2
008700     02 FILLER                   PIC X(30)  VALUE SPACE.          IC2344.2
008800     02 FILLER                   PIC X(17)  VALUE                 IC2344.2
008900            "       COMPUTED=".                                   IC2344.2
009000     02 COMPUTED-X.                                               IC2344.2
009100     03 COMPUTED-A               PIC X(20)  VALUE SPACE.          IC2344.2
009200     03 COMPUTED-N               REDEFINES COMPUTED-A             IC2344.2
009300                                 PIC -9(9).9(9).                  IC2344.2
009400     03 COMPUTED-0V18 REDEFINES COMPUTED-A   PIC -.9(18).         IC2344.2
009500     03 COMPUTED-4V14 REDEFINES COMPUTED-A   PIC -9(4).9(14).     IC2344.2
009600     03 COMPUTED-14V4 REDEFINES COMPUTED-A   PIC -9(14).9(4).     IC2344.2
009700     03       CM-18V0 REDEFINES COMPUTED-A.                       IC2344.2
009800         04 COMPUTED-18V0                    PIC -9(18).          IC2344.2
009900         04 FILLER                           PIC X.               IC2344.2
010000     03 FILLER PIC X(50) VALUE SPACE.                             IC2344.2
010100 01  TEST-CORRECT.                                                IC2344.2
010200     02 FILLER PIC X(30) VALUE SPACE.                             IC2344.2
010300     02 FILLER PIC X(17) VALUE "       CORRECT =".                IC2344.2
010400     02 CORRECT-X.                                                IC2344.2
010500     03 CORRECT-A                  PIC X(20) VALUE SPACE.         IC2344.2
010600     03 CORRECT-N    REDEFINES CORRECT-A     PIC -9(9).9(9).      IC2344.2
010700     03 CORRECT-0V18 REDEFINES CORRECT-A     PIC -.9(18).         IC2344.2
010800     03 CORRECT-4V14 REDEFINES CORRECT-A     PIC -9(4).9(14).     IC2344.2
010900     03 CORRECT-14V4 REDEFINES CORRECT-A     PIC -9(14).9(4).     IC2344.2
011000     03      CR-18V0 REDEFINES CORRECT-A.                         IC2344.2
011100         04 CORRECT-18V0                     PIC -9(18).          IC2344.2
011200         04 FILLER                           PIC X.               IC2344.2
011300     03 FILLER PIC X(2) VALUE SPACE.                              IC2344.2
011400     03 COR-ANSI-REFERENCE             PIC X(48) VALUE SPACE.     IC2344.2
011500 01  CCVS-C-1.                                                    IC2344.2
011600     02 FILLER  PIC IS X(99)    VALUE IS " FEATURE              PAIC2344.2
011700-    "SS  PARAGRAPH-NAME                                          IC2344.2
011800-    "       REMARKS".                                            IC2344.2
011900     02 FILLER                     PIC X(20)    VALUE SPACE.      IC2344.2
012000 01  CCVS-C-2.                                                    IC2344.2
012100     02 FILLER                     PIC X        VALUE SPACE.      IC2344.2
012200     02 FILLER                     PIC X(6)     VALUE "TESTED".   IC2344.2
012300     02 FILLER                     PIC X(15)    VALUE SPACE.      IC2344.2
012400     02 FILLER                     PIC X(4)     VALUE "FAIL".     IC2344.2
012500     02 FILLER                     PIC X(94)    VALUE SPACE.      IC2344.2
012600 01  REC-SKL-SUB                   PIC 9(2)     VALUE ZERO.       IC2344.2
012700 01  REC-CT                        PIC 99       VALUE ZERO.       IC2344.2
012800 01  DELETE-COUNTER                PIC 999      VALUE ZERO.       IC2344.2
012900 01  ERROR-COUNTER                 PIC 999      VALUE ZERO.       IC2344.2
013000 01  INSPECT-COUNTER               PIC 999      VALUE ZERO.       IC2344.2
013100 01  PASS-COUNTER                  PIC 999      VALUE ZERO.       IC2344.2
013200 01  TOTAL-ERROR                   PIC 999      VALUE ZERO.       IC2344.2
013300 01  ERROR-HOLD                    PIC 999      VALUE ZERO.       IC2344.2
013400 01  DUMMY-HOLD                    PIC X(120)   VALUE SPACE.      IC2344.2
013500 01  RECORD-COUNT                  PIC 9(5)     VALUE ZERO.       IC2344.2
013600 01  ANSI-REFERENCE                PIC X(48)    VALUE SPACES.     IC2344.2
013700 01  CCVS-H-1.                                                    IC2344.2
013800     02  FILLER                    PIC X(39)    VALUE SPACES.     IC2344.2
013900     02  FILLER                    PIC X(42)    VALUE             IC2344.2
014000     "OFFICIAL COBOL COMPILER VALIDATION SYSTEM".                 IC2344.2
014100     02  FILLER                    PIC X(39)    VALUE SPACES.     IC2344.2
014200 01  CCVS-H-2A.                                                   IC2344.2
014300   02  FILLER                        PIC X(40)  VALUE SPACE.      IC2344.2
014400   02  FILLER                        PIC X(7)   VALUE "CCVS85 ".  IC2344.2
014500   02  FILLER                        PIC XXXX   VALUE             IC2344.2
014600     "4.2 ".                                                      IC2344.2
014700   02  FILLER                        PIC X(28)  VALUE             IC2344.2
014800            " COPY - NOT FOR DISTRIBUTION".                       IC2344.2
014900   02  FILLER                        PIC X(41)  VALUE SPACE.      IC2344.2
015000                                                                  IC2344.2
015100 01  CCVS-H-2B.                                                   IC2344.2
015200   02  FILLER                        PIC X(15)  VALUE             IC2344.2
015300            "TEST RESULT OF ".                                    IC2344.2
015400   02  TEST-ID                       PIC X(9).                    IC2344.2
015500   02  FILLER                        PIC X(4)   VALUE             IC2344.2
015600            " IN ".                                               IC2344.2
015700   02  FILLER                        PIC X(12)  VALUE             IC2344.2
015800     " HIGH       ".                                              IC2344.2
015900   02  FILLER                        PIC X(22)  VALUE             IC2344.2
016000            " LEVEL VALIDATION FOR ".                             IC2344.2
016100   02  FILLER                        PIC X(58)  VALUE             IC2344.2
016200     "ON-SITE VALIDATION, NATIONAL INSTITUTE OF STD & TECH.     ".IC2344.2
016300 01  CCVS-H-3.                                                    IC2344.2
016400     02  FILLER                      PIC X(34)  VALUE             IC2344.2
016500            " FOR OFFICIAL USE ONLY    ".                         IC2344.2
016600     02  FILLER                      PIC X(58)  VALUE             IC2344.2
016700     "COBOL 85 VERSION 4.2, Apr  1993 SSVG                      ".IC2344.2
016800     02  FILLER                      PIC X(28)  VALUE             IC2344.2
016900            "  COPYRIGHT   1985 ".                                IC2344.2
017000 01  CCVS-E-1.                                                    IC2344.2
017100     02 FILLER                       PIC X(52)  VALUE SPACE.      IC2344.2
017200     02 FILLER  PIC X(14) VALUE IS "END OF TEST-  ".              IC2344.2
017300     02 ID-AGAIN                     PIC X(9).                    IC2344.2
017400     02 FILLER                       PIC X(45)  VALUE SPACES.     IC2344.2
017500 01  CCVS-E-2.                                                    IC2344.2
017600     02  FILLER                      PIC X(31)  VALUE SPACE.      IC2344.2
017700     02  FILLER                      PIC X(21)  VALUE SPACE.      IC2344.2
017800     02 CCVS-E-2-2.                                               IC2344.2
017900         03 ERROR-TOTAL              PIC XXX    VALUE SPACE.      IC2344.2
018000         03 FILLER                   PIC X      VALUE SPACE.      IC2344.2
018100         03 ENDER-DESC               PIC X(44)  VALUE             IC2344.2
018200            "ERRORS ENCOUNTERED".                                 IC2344.2
018300 01  CCVS-E-3.                                                    IC2344.2
018400     02  FILLER                      PIC X(22)  VALUE             IC2344.2
018500            " FOR OFFICIAL USE ONLY".                             IC2344.2
018600     02  FILLER                      PIC X(12)  VALUE SPACE.      IC2344.2
018700     02  FILLER                      PIC X(58)  VALUE             IC2344.2
018800     "ON-SITE VALIDATION, NATIONAL INSTITUTE OF STD & TECH.     ".IC2344.2
018900     02  FILLER                      PIC X(13)  VALUE SPACE.      IC2344.2
019000     02 FILLER                       PIC X(15)  VALUE             IC2344.2
019100             " COPYRIGHT 1985".                                   IC2344.2
019200 01  CCVS-E-4.                                                    IC2344.2
019300     02 CCVS-E-4-1                   PIC XXX    VALUE SPACE.      IC2344.2
019400     02 FILLER                       PIC X(4)   VALUE " OF ".     IC2344.2
019500     02 CCVS-E-4-2                   PIC XXX    VALUE SPACE.      IC2344.2
019600     02 FILLER                       PIC X(40)  VALUE             IC2344.2
019700      "  TESTS WERE EXECUTED SUCCESSFULLY".                       IC2344.2
019800 01  XXINFO.                                                      IC2344.2
019900     02 FILLER                       PIC X(19)  VALUE             IC2344.2
020000            "*** INFORMATION ***".                                IC2344.2
020100     02 INFO-TEXT.                                                IC2344.2
020200       04 FILLER                     PIC X(8)   VALUE SPACE.      IC2344.2
020300       04 XXCOMPUTED                 PIC X(20).                   IC2344.2
020400       04 FILLER                     PIC X(5)   VALUE SPACE.      IC2344.2
020500       04 XXCORRECT                  PIC X(20).                   IC2344.2
020600     02 INF-ANSI-REFERENCE           PIC X(48).                   IC2344.2
020700 01  HYPHEN-LINE.                                                 IC2344.2
020800     02 FILLER  PIC IS X VALUE IS SPACE.                          IC2344.2
020900     02 FILLER  PIC IS X(65)    VALUE IS "************************IC2344.2
021000-    "*****************************************".                 IC2344.2
021100     02 FILLER  PIC IS X(54)    VALUE IS "************************IC2344.2
021200-    "******************************".                            IC2344.2
021300 01  CCVS-PGM-ID                     PIC X(9)   VALUE             IC2344.2
021400     "IC234A".                                                    IC2344.2
021500 PROCEDURE DIVISION.                                              IC2344.2
021600 DECLARATIVES.                                                    IC2344.2
021700 SECT-IC234A-001 SECTION.                                         IC2344.2
021800     USE GLOBAL AFTER ERROR PROCEDURE ON INPUT.                   IC2344.2
021900 USE-TEST-2.                                                      IC2344.2
022000     ADD 1 TO DILFRAP.                                            IC2344.2
022100 END DECLARATIVES.                                                IC2344.2
022200 CCVS1 SECTION.                                                   IC2344.2
022300 OPEN-FILES.                                                      IC2344.2
022400     OPEN     OUTPUT PRINT-FILE.                                  IC2344.2
022500     MOVE CCVS-PGM-ID TO TEST-ID. MOVE CCVS-PGM-ID TO ID-AGAIN.   IC2344.2
022600     MOVE    SPACE TO TEST-RESULTS.                               IC2344.2
022700     PERFORM  HEAD-ROUTINE THRU COLUMN-NAMES-ROUTINE.             IC2344.2
022800     GO TO CCVS1-EXIT.                                            IC2344.2
022900 CLOSE-FILES.                                                     IC2344.2
023000     PERFORM END-ROUTINE THRU END-ROUTINE-13. CLOSE PRINT-FILE.   IC2344.2
023100 TERMINATE-CCVS.                                                  IC2344.2
023400     STOP     RUN.                                                IC2344.2
023500 INSPT. MOVE "INSPT" TO P-OR-F. ADD 1 TO INSPECT-COUNTER.         IC2344.2
023600 PASS.  MOVE "PASS " TO P-OR-F.  ADD 1 TO PASS-COUNTER.           IC2344.2
023700 FAIL.  MOVE "FAIL*" TO P-OR-F.  ADD 1 TO ERROR-COUNTER.          IC2344.2
023800 DE-LETE.  MOVE "*****" TO P-OR-F.  ADD 1 TO DELETE-COUNTER.      IC2344.2
023900     MOVE "****TEST DELETED****" TO RE-MARK.                      IC2344.2
024000 PRINT-DETAIL.                                                    IC2344.2
024100     IF REC-CT NOT EQUAL TO ZERO                                  IC2344.2
024200             MOVE "." TO PARDOT-X                                 IC2344.2
024300             MOVE REC-CT TO DOTVALUE.                             IC2344.2
024400     MOVE     TEST-RESULTS TO PRINT-REC. PERFORM WRITE-LINE.      IC2344.2
024500     IF P-OR-F EQUAL TO "FAIL*"  PERFORM WRITE-LINE               IC2344.2
024600        PERFORM FAIL-ROUTINE THRU FAIL-ROUTINE-EX                 IC2344.2
024700          ELSE PERFORM BAIL-OUT THRU BAIL-OUT-EX.                 IC2344.2
024800     MOVE SPACE TO P-OR-F. MOVE SPACE TO COMPUTED-X.              IC2344.2
024900     MOVE SPACE TO CORRECT-X.                                     IC2344.2
025000     IF     REC-CT EQUAL TO ZERO  MOVE SPACE TO PAR-NAME.         IC2344.2
025100     MOVE     SPACE TO RE-MARK.                                   IC2344.2
025200 HEAD-ROUTINE.                                                    IC2344.2
025300     MOVE CCVS-H-1  TO DUMMY-RECORD. PERFORM WRITE-LINE 2 TIMES.  IC2344.2
025400     MOVE CCVS-H-2A TO DUMMY-RECORD. PERFORM WRITE-LINE 2 TIMES.  IC2344.2
025500     MOVE CCVS-H-2B TO DUMMY-RECORD. PERFORM WRITE-LINE 3 TIMES.  IC2344.2
025600     MOVE CCVS-H-3  TO DUMMY-RECORD. PERFORM WRITE-LINE 3 TIMES.  IC2344.2
025700 COLUMN-NAMES-ROUTINE.                                            IC2344.2
025800     MOVE CCVS-C-1 TO DUMMY-RECORD. PERFORM WRITE-LINE.           IC2344.2
025900     MOVE CCVS-C-2 TO DUMMY-RECORD. PERFORM WRITE-LINE 2 TIMES.   IC2344.2
026000     MOVE HYPHEN-LINE TO DUMMY-RECORD. PERFORM WRITE-LINE.        IC2344.2
026100 END-ROUTINE.                                                     IC2344.2
026200     MOVE HYPHEN-LINE TO DUMMY-RECORD. PERFORM WRITE-LINE 5 TIMES.IC2344.2
026300 END-RTN-EXIT.                                                    IC2344.2
026400     MOVE CCVS-E-1 TO DUMMY-RECORD. PERFORM WRITE-LINE 2 TIMES.   IC2344.2
026500 END-ROUTINE-1.                                                   IC2344.2
026600      ADD ERROR-COUNTER TO ERROR-HOLD ADD INSPECT-COUNTER TO      IC2344.2
026700      ERROR-HOLD. ADD DELETE-COUNTER TO ERROR-HOLD.               IC2344.2
026800      ADD PASS-COUNTER TO ERROR-HOLD.                             IC2344.2
026900*                                                                         
027000      MOVE PASS-COUNTER TO CCVS-E-4-1.                            IC2344.2
027100      MOVE ERROR-HOLD TO CCVS-E-4-2.                              IC2344.2
027200      MOVE CCVS-E-4 TO CCVS-E-2-2.                                IC2344.2
027300      MOVE CCVS-E-2 TO DUMMY-RECORD PERFORM WRITE-LINE.           IC2344.2
027400  END-ROUTINE-12.                                                 IC2344.2
027500      MOVE "TEST(S) FAILED" TO ENDER-DESC.                        IC2344.2
027600     IF       ERROR-COUNTER IS EQUAL TO ZERO                      IC2344.2
027700         MOVE "NO " TO ERROR-TOTAL                                IC2344.2
027800         ELSE                                                     IC2344.2
027900         MOVE ERROR-COUNTER TO ERROR-TOTAL.                       IC2344.2
028000     MOVE     CCVS-E-2 TO DUMMY-RECORD.                           IC2344.2
028100     PERFORM WRITE-LINE.                                          IC2344.2
028200 END-ROUTINE-13.                                                  IC2344.2
028300     IF DELETE-COUNTER IS EQUAL TO ZERO                           IC2344.2
028400         MOVE "NO " TO ERROR-TOTAL  ELSE                          IC2344.2
028500         MOVE DELETE-COUNTER TO ERROR-TOTAL.                      IC2344.2
028600     MOVE "TEST(S) DELETED     " TO ENDER-DESC.                   IC2344.2
028700     MOVE CCVS-E-2 TO DUMMY-RECORD. PERFORM WRITE-LINE.           IC2344.2
028800      IF   INSPECT-COUNTER EQUAL TO ZERO                          IC2344.2
028900          MOVE "NO " TO ERROR-TOTAL                               IC2344.2
029000      ELSE MOVE INSPECT-COUNTER TO ERROR-TOTAL.                   IC2344.2
029100      MOVE "TEST(S) REQUIRE INSPECTION" TO ENDER-DESC.            IC2344.2
029200      MOVE CCVS-E-2 TO DUMMY-RECORD. PERFORM WRITE-LINE.          IC2344.2
029300     MOVE CCVS-E-3 TO DUMMY-RECORD. PERFORM WRITE-LINE.           IC2344.2
029400 WRITE-LINE.                                                      IC2344.2
029500     ADD 1 TO RECORD-COUNT.                                       IC2344.2
029600     IF RECORD-COUNT GREATER 50                                   IC2344.2
029700         MOVE DUMMY-RECORD TO DUMMY-HOLD                          IC2344.2
029800         MOVE SPACE TO DUMMY-RECORD                               IC2344.2
029900         WRITE DUMMY-RECORD AFTER ADVANCING PAGE                  IC2344.2
030000         MOVE CCVS-C-1 TO DUMMY-RECORD PERFORM WRT-LN             IC2344.2
030100         MOVE CCVS-C-2 TO DUMMY-RECORD PERFORM WRT-LN 2 TIMES     IC2344.2
030200         MOVE HYPHEN-LINE TO DUMMY-RECORD PERFORM WRT-LN          IC2344.2
030300         MOVE DUMMY-HOLD TO DUMMY-RECORD                          IC2344.2
030400         MOVE ZERO TO RECORD-COUNT.                               IC2344.2
030500     PERFORM WRT-LN.                                              IC2344.2
030600 WRT-LN.                                                          IC2344.2
030700     WRITE    DUMMY-RECORD AFTER ADVANCING 1 LINES.               IC2344.2
030800     MOVE SPACE TO DUMMY-RECORD.                                  IC2344.2
030900 BLANK-LINE-PRINT.                                                IC2344.2
031000     PERFORM WRT-LN.                                              IC2344.2
031100 FAIL-ROUTINE.                                                    IC2344.2
031200     IF   COMPUTED-X NOT EQUAL TO SPACE GO TO FAIL-ROUTINE-WRITE. IC2344.2
031300     IF     CORRECT-X NOT EQUAL TO SPACE GO TO FAIL-ROUTINE-WRITE.IC2344.2
031400     MOVE   ANSI-REFERENCE TO INF-ANSI-REFERENCE.                 IC2344.2
031500     MOVE  "NO FURTHER INFORMATION, SEE PROGRAM." TO INFO-TEXT.   IC2344.2
031600     MOVE   XXINFO TO DUMMY-RECORD. PERFORM WRITE-LINE 2 TIMES.   IC2344.2
031700     MOVE   SPACES TO INF-ANSI-REFERENCE.                         IC2344.2
031800     GO TO  FAIL-ROUTINE-EX.                                      IC2344.2
031900 FAIL-ROUTINE-WRITE.                                              IC2344.2
032000     MOVE   TEST-COMPUTED TO PRINT-REC PERFORM WRITE-LINE         IC2344.2
032100     MOVE   ANSI-REFERENCE TO COR-ANSI-REFERENCE.                 IC2344.2
032200     MOVE   TEST-CORRECT TO PRINT-REC PERFORM WRITE-LINE 2 TIMES. IC2344.2
032300     MOVE   SPACES TO COR-ANSI-REFERENCE.                         IC2344.2
032400 FAIL-ROUTINE-EX. EXIT.                                           IC2344.2
032500 BAIL-OUT.                                                        IC2344.2
032600     IF     COMPUTED-A NOT EQUAL TO SPACE GO TO BAIL-OUT-WRITE.   IC2344.2
032700     IF     CORRECT-A EQUAL TO SPACE GO TO BAIL-OUT-EX.           IC2344.2
032800 BAIL-OUT-WRITE.                                                  IC2344.2
032900     MOVE CORRECT-A TO XXCORRECT. MOVE COMPUTED-A TO XXCOMPUTED.  IC2344.2
033000     MOVE   ANSI-REFERENCE TO INF-ANSI-REFERENCE.                 IC2344.2
033100     MOVE   XXINFO TO DUMMY-RECORD. PERFORM WRITE-LINE 2 TIMES.   IC2344.2
033200     MOVE   SPACES TO INF-ANSI-REFERENCE.                         IC2344.2
033300 BAIL-OUT-EX. EXIT.                                               IC2344.2
033400 CCVS1-EXIT.                                                      IC2344.2
033500     EXIT.                                                        IC2344.2
033600 SECT-IC234A-1R-001 SECTION.                                      IC2344.2
033700 USE-INIT-1.                                                      IC2344.2
033800     OPEN    OUTPUT TEST-FILE.                                    IC2344.2
033900     CLOSE   TEST-FILE.                                           IC2344.2
034000     MOVE    1 TO REC-CT.                                         IC2344.2
034100     MOVE "USE GLOBAL INPUT" TO FEATURE.                          IC2344.2
034200     MOVE   "USE-TEST-1" TO PAR-NAME.                             IC2344.2
034300     MOVE   "X-34 5.5.4 GR(1)C" TO ANSI-REFERENCE.                IC2344.2
034400     MOVE    ZERO TO DILFRAP.                                     IC2344.2
034500 USE-TEST-0.                                                      IC2344.2
034600     CALL   "IC234A-1".                                           IC2344.2
034700     IF      DILFRAP = 1                                          IC2344.2
034800             PERFORM PASS                                         IC2344.2
034900             GO TO   USE-WRITE-1.                                 IC2344.2
035000 USE-FAIL-1.                                                      IC2344.2
035100     MOVE    1 TO CORRECT-N.                                      IC2344.2
035200     MOVE    DILFRAP TO COMPUTED-N.                               IC2344.2
035300     IF DILFRAP = 0                                               IC2344.2
035400             MOVE   "USE PROCEDURE NOT INVOKED" TO RE-MARK        IC2344.2
035500     ELSE MOVE "WRONG 'USE' PROCEDURE INVOKED" TO RE-MARK.        IC2344.2
035600     PERFORM FAIL.                                                IC2344.2
035700     GO TO   USE-WRITE-1.                                         IC2344.2
035800 USE-DELETE-1.                                                    IC2344.2
035900     PERFORM DE-LETE.                                             IC2344.2
036000 USE-WRITE-1.                                                     IC2344.2
036100     PERFORM PRINT-DETAIL.                                        IC2344.2
036200*                                                                         
036300 CCVS-EXIT SECTION.                                               IC2344.2
036400 CCVS-999999.                                                     IC2344.2
036500     GO TO CLOSE-FILES.                                           IC2344.2
036600*                                                                         
036700 IDENTIFICATION DIVISION.                                         IC2344.2
036800 PROGRAM-ID.                                                      IC2344.2
036900     IC234A-1.                                                    IC2344.2
037000*                                                                         
037100*                                                                         
037200*                                                                         
037300*                                                                         
037400*                                                                         
037500*                                                                         
037600*                                                                         
037700*                                                                         
037800*                                                                         
037900*                                                                         
038000*                                                                         
038100*                                                                         
038200*                                                                         
038300*                                                                         
038400*                                                                         
038500*                                                                         
038600*                                                                         
038700*                                                                         
038800*                                                                         
038900*                                                                         
039000*                                                                         
039100*                                                                         
039200*                                                                         
039300*                                                                         
039400*                                                                         
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
047600 DATA DIVISION.                                                   IC2344.2
047700 FILE SECTION.                                                    IC2344.2
047800 WORKING-STORAGE SECTION.                                         IC2344.2
047900 PROCEDURE DIVISION.                                              IC2344.2
048000 DECLARATIVES.                                                    IC2344.2
048100 NON-GLOBAL-SECTION SECTION.                                      IC2344.2
048200     USE AFTER STANDARD EXCEPTION PROCEDURE ON TEST-FILE.         IC2344.2
048300 USE-PARA.                                                        IC2344.2
048400     ADD 2 TO DILFRAP.                                            IC2344.2
048500 END DECLARATIVES.                                                IC2344.2
048600 SECT-IC234A-1-001 SECTION.                                       IC2344.2
048700 USE-INIT-1.                                                      IC2344.2
048800     CALL   "IC234A-2".                                           IC2344.2
048900     EXIT PROGRAM.                                                IC2344.2
049000*                                                                         
049100 IDENTIFICATION DIVISION.                                         IC2344.2
049200 PROGRAM-ID.                                                      IC2344.2
049300     IC234A-2.                                                    IC2344.2
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
050900*                                                                         
051000*                                                                         
051100*                                                                         
051200*                                                                         
051300*                                                                         
051400*                                                                         
051500*                                                                         
051600*                                                                         
051700*                                                                         
051800*                                                                         
051900*                                                                         
052000*                                                                         
052100*                                                                         
052200*                                                                         
052300*                                                                         
052400*                                                                         
052500*                                                                         
052600*                                                                         
052700*                                                                         
052800*                                                                         
052900*                                                                         
053000*                                                                         
053100*                                                                         
053200*                                                                         
053300*                                                                         
053400*                                                                         
053500*                                                                         
053600*                                                                         
053700*                                                                         
053800*                                                                         
053900*                                                                         
054000*                                                                         
054100*                                                                         
054200*                                                                         
054300*                                                                         
054400*                                                                         
054500*                                                                         
054600*                                                                         
054700*                                                                         
054800*                                                                         
054900*                                                                         
055000*                                                                         
055100*                                                                         
055200*                                                                         
055300*                                                                         
055400*                                                                         
055500*                                                                         
055600*                                                                         
055700*                                                                         
055800*                                                                         
055900*                                                                         
056000*                                                                         
056100*                                                                         
056200*                                                                         
056300*                                                                         
056400*                                                                         
056500*                                                                         
056600*                                                                         
056700*                                                                         
056800*                                                                         
056900*                                                                         
057000*                                                                         
057100*                                                                         
057200*                                                                         
057300*                                                                         
057400*                                                                         
057500*                                                                         
057600*                                                                         
057700*                                                                         
057800*                                                                         
057900*                                                                         
058000*                                                                         
058100*                                                                         
058200*                                                                         
058300*                                                                         
058400*                                                                         
058500*                                                                         
058600*                                                                         
058700*                                                                         
058800*                                                                         
058900*                                                                         
059000*                                                                         
059100*                                                                         
059200*                                                                         
059300*                                                                         
059400*                                                                         
059500*                                                                         
059600*                                                                         
059700*                                                                         
059800*                                                                         
059900*                                                                         
060000 DATA DIVISION.                                                   IC2344.2
060100 FILE SECTION.                                                    IC2344.2
060200 WORKING-STORAGE SECTION.                                         IC2344.2
060300 PROCEDURE DIVISION.                                              IC2344.2
060400 DECLARATIVES.                                                    IC2344.2
060500 USE-TEST SECTION.                                                IC2344.2
060600     USE GLOBAL AFTER ERROR PROCEDURE ON OUTPUT.                  IC2344.2
060700 USE-TEST-1.                                                      IC2344.2
060800     ADD  4 TO DILFRAP.                                           IC2344.2
060900 END DECLARATIVES.                                                IC2344.2
061000 SECT-IC234A-2-001 SECTION.                                       IC2344.2
061100 USE-INIT-1.                                                      IC2344.2
061200     CALL   "IC234A-3".                                           IC2344.2
061300     EXIT PROGRAM.                                                IC2344.2
061400*                                                                         
061500 IDENTIFICATION DIVISION.                                         IC2344.2
061600 PROGRAM-ID.                                                      IC2344.2
061700     IC234A-3.                                                    IC2344.2
061800*                                                                         
061900*                                                                         
062000*                                                                         
062100*                                                                         
062200*                                                                         
062300*                                                                         
062400*                                                                         
062500*                                                                         
062600*                                                                         
062700*                                                                         
062800*                                                                         
062900*                                                                         
063000*                                                                         
063100*                                                                         
063200*                                                                         
063300*                                                                         
063400*                                                                         
063500*                                                                         
063600*                                                                         
063700*                                                                         
063800*                                                                         
063900*                                                                         
064000*                                                                         
064100*                                                                         
064200*                                                                         
064300*                                                                         
064400*                                                                         
064500*                                                                         
064600*                                                                         
064700*                                                                         
064800*                                                                         
064900*                                                                         
065000*                                                                         
065100*                                                                         
065200*                                                                         
065300*                                                                         
065400*                                                                         
065500*                                                                         
065600*                                                                         
065700*                                                                         
065800*                                                                         
065900*                                                                         
066000*                                                                         
066100*                                                                         
066200*                                                                         
066300*                                                                         
066400*                                                                         
066500*                                                                         
066600*                                                                         
066700*                                                                         
066800*                                                                         
066900*                                                                         
067000*                                                                         
067100*                                                                         
067200*                                                                         
067300*                                                                         
067400*                                                                         
067500*                                                                         
067600*                                                                         
067700*                                                                         
067800*                                                                         
067900*                                                                         
068000*                                                                         
068100*                                                                         
068200*                                                                         
068300*                                                                         
068400*                                                                         
068500*                                                                         
068600*                                                                         
068700*                                                                         
068800*                                                                         
068900*                                                                         
069000*                                                                         
069100*                                                                         
069200*                                                                         
069300*                                                                         
069400*                                                                         
069500*                                                                         
069600*                                                                         
069700*                                                                         
069800*                                                                         
069900*                                                                         
070000*                                                                         
070100*                                                                         
070200*                                                                         
070300*                                                                         
070400*                                                                         
070500*                                                                         
070600*                                                                         
070700*                                                                         
070800*                                                                         
070900*                                                                         
071000*                                                                         
071100*                                                                         
071200*                                                                         
071300*                                                                         
071400*                                                                         
071500*                                                                         
071600*                                                                         
071700*                                                                         
071800*                                                                         
071900*                                                                         
072000*                                                                         
072100*                                                                         
072200*                                                                         
072300*                                                                         
072400 DATA DIVISION.                                                   IC2344.2
072500 FILE SECTION.                                                    IC2344.2
072600 WORKING-STORAGE SECTION.                                         IC2344.2
072700 PROCEDURE DIVISION.                                              IC2344.2
072800 SECT-IC234A-3-001 SECTION.                                       IC2344.2
072900 USE-INIT-1.                                                      IC2344.2
073000     OPEN    INPUT TEST-FILE.                                     IC2344.2
073100     READ    TEST-FILE.                                           IC2344.2
073200     EXIT PROGRAM.                                                IC2344.2
073300*                                                                         
073400 END PROGRAM IC234A-3.                                            IC2344.2
073500 END PROGRAM IC234A-2.                                            IC2344.2
073600 END PROGRAM IC234A-1.                                            IC2344.2
073700 END PROGRAM IC234A.                                              IC2344.2
