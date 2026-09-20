000100 IDENTIFICATION DIVISION.                                         IC2264.2
000200 PROGRAM-ID.                                                      IC2264.2
000300     IC226A.                                                      IC2264.2
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
004000 ENVIRONMENT DIVISION.                                            IC2264.2
004100 CONFIGURATION SECTION.                                           IC2264.2
004200 SOURCE-COMPUTER.                                                 IC2264.2
004300     GNU-Linux.                                                   IC2264.2
004400 OBJECT-COMPUTER.                                                 IC2264.2
004500     GNU-Linux.                                                   IC2264.2
004600 INPUT-OUTPUT SECTION.                                            IC2264.2
004700 FILE-CONTROL.                                                    IC2264.2
004800     SELECT PRINT-FILE ASSIGN TO                                  IC2264.2
004900     "REPORT".                                                    IC2264.2
005000 DATA DIVISION.                                                   IC2264.2
005100 FILE SECTION.                                                    IC2264.2
005200 FD  PRINT-FILE.                                                  IC2264.2
005300 01  PRINT-REC PICTURE X(120).                                    IC2264.2
005400 01  DUMMY-RECORD PICTURE X(120).                                 IC2264.2
005500 WORKING-STORAGE SECTION.                                         IC2264.2
005600 01  EXTERNAL-DATA IS EXTERNAL.                                   IC2264.2
005700   03        EXT-DATA-1          PIC X(2).                        IC2264.2
005800   03        EXT-DATA-2          PIC X(6).                        IC2264.2
005900   03        EXT-DATA-3          PIC 9(8).                        IC2264.2
006000   03        EXT-DATA-4          PIC 9(4).                        IC2264.2
006100 01  SUB                         PIC 9(4)  VALUE ZERO.            IC2264.2
006200*                                                                         
006300 01  TEST-RESULTS.                                                IC2264.2
006400     02 FILLER                   PIC X      VALUE SPACE.          IC2264.2
006500     02 FEATURE                  PIC X(20)  VALUE SPACE.          IC2264.2
006600     02 FILLER                   PIC X      VALUE SPACE.          IC2264.2
006700     02 P-OR-F                   PIC X(5)   VALUE SPACE.          IC2264.2
006800     02 FILLER                   PIC X      VALUE SPACE.          IC2264.2
006900     02  PAR-NAME.                                                IC2264.2
007000       03 FILLER                 PIC X(19)  VALUE SPACE.          IC2264.2
007100       03  PARDOT-X              PIC X      VALUE SPACE.          IC2264.2
007200       03 DOTVALUE               PIC 99     VALUE ZERO.           IC2264.2
007300     02 FILLER                   PIC X(8)   VALUE SPACE.          IC2264.2
007400     02 RE-MARK                  PIC X(61).                       IC2264.2
007500 01  TEST-COMPUTED.                                               IC2264.2
007600     02 FILLER                   PIC X(30)  VALUE SPACE.          IC2264.2
007700     02 FILLER                   PIC X(17)  VALUE                 IC2264.2
007800            "       COMPUTED=".                                   IC2264.2
007900     02 COMPUTED-X.                                               IC2264.2
008000     03 COMPUTED-A               PIC X(20)  VALUE SPACE.          IC2264.2
008100     03 COMPUTED-N               REDEFINES COMPUTED-A             IC2264.2
008200                                 PIC -9(9).9(9).                  IC2264.2
008300     03 COMPUTED-0V18 REDEFINES COMPUTED-A   PIC -.9(18).         IC2264.2
008400     03 COMPUTED-4V14 REDEFINES COMPUTED-A   PIC -9(4).9(14).     IC2264.2
008500     03 COMPUTED-14V4 REDEFINES COMPUTED-A   PIC -9(14).9(4).     IC2264.2
008600     03       CM-18V0 REDEFINES COMPUTED-A.                       IC2264.2
008700         04 COMPUTED-18V0                    PIC -9(18).          IC2264.2
008800         04 FILLER                           PIC X.               IC2264.2
008900     03 FILLER PIC X(50) VALUE SPACE.                             IC2264.2
009000 01  TEST-CORRECT.                                                IC2264.2
009100     02 FILLER PIC X(30) VALUE SPACE.                             IC2264.2
009200     02 FILLER PIC X(17) VALUE "       CORRECT =".                IC2264.2
009300     02 CORRECT-X.                                                IC2264.2
009400     03 CORRECT-A                  PIC X(20) VALUE SPACE.         IC2264.2
009500     03 CORRECT-N    REDEFINES CORRECT-A     PIC -9(9).9(9).      IC2264.2
009600     03 CORRECT-0V18 REDEFINES CORRECT-A     PIC -.9(18).         IC2264.2
009700     03 CORRECT-4V14 REDEFINES CORRECT-A     PIC -9(4).9(14).     IC2264.2
009800     03 CORRECT-14V4 REDEFINES CORRECT-A     PIC -9(14).9(4).     IC2264.2
009900     03      CR-18V0 REDEFINES CORRECT-A.                         IC2264.2
010000         04 CORRECT-18V0                     PIC -9(18).          IC2264.2
010100         04 FILLER                           PIC X.               IC2264.2
010200     03 FILLER PIC X(2) VALUE SPACE.                              IC2264.2
010300     03 COR-ANSI-REFERENCE             PIC X(48) VALUE SPACE.     IC2264.2
010400 01  CCVS-C-1.                                                    IC2264.2
010500     02 FILLER  PIC IS X(99)    VALUE IS " FEATURE              PAIC2264.2
010600-    "SS  PARAGRAPH-NAME                                          IC2264.2
010700-    "       REMARKS".                                            IC2264.2
010800     02 FILLER                     PIC X(20)    VALUE SPACE.      IC2264.2
010900 01  CCVS-C-2.                                                    IC2264.2
011000     02 FILLER                     PIC X        VALUE SPACE.      IC2264.2
011100     02 FILLER                     PIC X(6)     VALUE "TESTED".   IC2264.2
011200     02 FILLER                     PIC X(15)    VALUE SPACE.      IC2264.2
011300     02 FILLER                     PIC X(4)     VALUE "FAIL".     IC2264.2
011400     02 FILLER                     PIC X(94)    VALUE SPACE.      IC2264.2
011500 01  REC-SKL-SUB                   PIC 9(2)     VALUE ZERO.       IC2264.2
011600 01  REC-CT                        PIC 99       VALUE ZERO.       IC2264.2
011700 01  DELETE-COUNTER                PIC 999      VALUE ZERO.       IC2264.2
011800 01  ERROR-COUNTER                 PIC 999      VALUE ZERO.       IC2264.2
011900 01  INSPECT-COUNTER               PIC 999      VALUE ZERO.       IC2264.2
012000 01  PASS-COUNTER                  PIC 999      VALUE ZERO.       IC2264.2
012100 01  TOTAL-ERROR                   PIC 999      VALUE ZERO.       IC2264.2
012200 01  ERROR-HOLD                    PIC 999      VALUE ZERO.       IC2264.2
012300 01  DUMMY-HOLD                    PIC X(120)   VALUE SPACE.      IC2264.2
012400 01  RECORD-COUNT                  PIC 9(5)     VALUE ZERO.       IC2264.2
012500 01  ANSI-REFERENCE                PIC X(48)    VALUE SPACES.     IC2264.2
012600 01  CCVS-H-1.                                                    IC2264.2
012700     02  FILLER                    PIC X(39)    VALUE SPACES.     IC2264.2
012800     02  FILLER                    PIC X(42)    VALUE             IC2264.2
012900     "OFFICIAL COBOL COMPILER VALIDATION SYSTEM".                 IC2264.2
013000     02  FILLER                    PIC X(39)    VALUE SPACES.     IC2264.2
013100 01  CCVS-H-2A.                                                   IC2264.2
013200   02  FILLER                        PIC X(40)  VALUE SPACE.      IC2264.2
013300   02  FILLER                        PIC X(7)   VALUE "CCVS85 ".  IC2264.2
013400   02  FILLER                        PIC XXXX   VALUE             IC2264.2
013500     "4.2 ".                                                      IC2264.2
013600   02  FILLER                        PIC X(28)  VALUE             IC2264.2
013700            " COPY - NOT FOR DISTRIBUTION".                       IC2264.2
013800   02  FILLER                        PIC X(41)  VALUE SPACE.      IC2264.2
013900                                                                  IC2264.2
014000 01  CCVS-H-2B.                                                   IC2264.2
014100   02  FILLER                        PIC X(15)  VALUE             IC2264.2
014200            "TEST RESULT OF ".                                    IC2264.2
014300   02  TEST-ID                       PIC X(9).                    IC2264.2
014400   02  FILLER                        PIC X(4)   VALUE             IC2264.2
014500            " IN ".                                               IC2264.2
014600   02  FILLER                        PIC X(12)  VALUE             IC2264.2
014700     " HIGH       ".                                              IC2264.2
014800   02  FILLER                        PIC X(22)  VALUE             IC2264.2
014900            " LEVEL VALIDATION FOR ".                             IC2264.2
015000   02  FILLER                        PIC X(58)  VALUE             IC2264.2
015100     "ON-SITE VALIDATION, NATIONAL INSTITUTE OF STD & TECH.     ".IC2264.2
015200 01  CCVS-H-3.                                                    IC2264.2
015300     02  FILLER                      PIC X(34)  VALUE             IC2264.2
015400            " FOR OFFICIAL USE ONLY    ".                         IC2264.2
015500     02  FILLER                      PIC X(58)  VALUE             IC2264.2
015600     "COBOL 85 VERSION 4.2, Apr  1993 SSVG                      ".IC2264.2
015700     02  FILLER                      PIC X(28)  VALUE             IC2264.2
015800            "  COPYRIGHT   1985 ".                                IC2264.2
015900 01  CCVS-E-1.                                                    IC2264.2
016000     02 FILLER                       PIC X(52)  VALUE SPACE.      IC2264.2
016100     02 FILLER  PIC X(14) VALUE IS "END OF TEST-  ".              IC2264.2
016200     02 ID-AGAIN                     PIC X(9).                    IC2264.2
016300     02 FILLER                       PIC X(45)  VALUE SPACES.     IC2264.2
016400 01  CCVS-E-2.                                                    IC2264.2
016500     02  FILLER                      PIC X(31)  VALUE SPACE.      IC2264.2
016600     02  FILLER                      PIC X(21)  VALUE SPACE.      IC2264.2
016700     02 CCVS-E-2-2.                                               IC2264.2
016800         03 ERROR-TOTAL              PIC XXX    VALUE SPACE.      IC2264.2
016900         03 FILLER                   PIC X      VALUE SPACE.      IC2264.2
017000         03 ENDER-DESC               PIC X(44)  VALUE             IC2264.2
017100            "ERRORS ENCOUNTERED".                                 IC2264.2
017200 01  CCVS-E-3.                                                    IC2264.2
017300     02  FILLER                      PIC X(22)  VALUE             IC2264.2
017400            " FOR OFFICIAL USE ONLY".                             IC2264.2
017500     02  FILLER                      PIC X(12)  VALUE SPACE.      IC2264.2
017600     02  FILLER                      PIC X(58)  VALUE             IC2264.2
017700     "ON-SITE VALIDATION, NATIONAL INSTITUTE OF STD & TECH.     ".IC2264.2
017800     02  FILLER                      PIC X(13)  VALUE SPACE.      IC2264.2
017900     02 FILLER                       PIC X(15)  VALUE             IC2264.2
018000             " COPYRIGHT 1985".                                   IC2264.2
018100 01  CCVS-E-4.                                                    IC2264.2
018200     02 CCVS-E-4-1                   PIC XXX    VALUE SPACE.      IC2264.2
018300     02 FILLER                       PIC X(4)   VALUE " OF ".     IC2264.2
018400     02 CCVS-E-4-2                   PIC XXX    VALUE SPACE.      IC2264.2
018500     02 FILLER                       PIC X(40)  VALUE             IC2264.2
018600      "  TESTS WERE EXECUTED SUCCESSFULLY".                       IC2264.2
018700 01  XXINFO.                                                      IC2264.2
018800     02 FILLER                       PIC X(19)  VALUE             IC2264.2
018900            "*** INFORMATION ***".                                IC2264.2
019000     02 INFO-TEXT.                                                IC2264.2
019100       04 FILLER                     PIC X(8)   VALUE SPACE.      IC2264.2
019200       04 XXCOMPUTED                 PIC X(20).                   IC2264.2
019300       04 FILLER                     PIC X(5)   VALUE SPACE.      IC2264.2
019400       04 XXCORRECT                  PIC X(20).                   IC2264.2
019500     02 INF-ANSI-REFERENCE           PIC X(48).                   IC2264.2
019600 01  HYPHEN-LINE.                                                 IC2264.2
019700     02 FILLER  PIC IS X VALUE IS SPACE.                          IC2264.2
019800     02 FILLER  PIC IS X(65)    VALUE IS "************************IC2264.2
019900-    "*****************************************".                 IC2264.2
020000     02 FILLER  PIC IS X(54)    VALUE IS "************************IC2264.2
020100-    "******************************".                            IC2264.2
020200 01  CCVS-PGM-ID                     PIC X(9)   VALUE             IC2264.2
020300     "IC226A".                                                    IC2264.2
020400 PROCEDURE DIVISION.                                              IC2264.2
020500 CCVS1 SECTION.                                                   IC2264.2
020600 OPEN-FILES.                                                      IC2264.2
020700     OPEN     OUTPUT PRINT-FILE.                                  IC2264.2
020800     MOVE CCVS-PGM-ID TO TEST-ID. MOVE CCVS-PGM-ID TO ID-AGAIN.   IC2264.2
020900     MOVE    SPACE TO TEST-RESULTS.                               IC2264.2
021000     PERFORM  HEAD-ROUTINE THRU COLUMN-NAMES-ROUTINE.             IC2264.2
021100     GO TO CCVS1-EXIT.                                            IC2264.2
021200 CLOSE-FILES.                                                     IC2264.2
021300     PERFORM END-ROUTINE THRU END-ROUTINE-13. CLOSE PRINT-FILE.   IC2264.2
021400 TERMINATE-CCVS.                                                  IC2264.2
021700     STOP     RUN.                                                IC2264.2
021800 INSPT. MOVE "INSPT" TO P-OR-F. ADD 1 TO INSPECT-COUNTER.         IC2264.2
021900 PASS.  MOVE "PASS " TO P-OR-F.  ADD 1 TO PASS-COUNTER.           IC2264.2
022000 FAIL.  MOVE "FAIL*" TO P-OR-F.  ADD 1 TO ERROR-COUNTER.          IC2264.2
022100 DE-LETE.  MOVE "*****" TO P-OR-F.  ADD 1 TO DELETE-COUNTER.      IC2264.2
022200     MOVE "****TEST DELETED****" TO RE-MARK.                      IC2264.2
022300 PRINT-DETAIL.                                                    IC2264.2
022400     IF REC-CT NOT EQUAL TO ZERO                                  IC2264.2
022500             MOVE "." TO PARDOT-X                                 IC2264.2
022600             MOVE REC-CT TO DOTVALUE.                             IC2264.2
022700     MOVE     TEST-RESULTS TO PRINT-REC. PERFORM WRITE-LINE.      IC2264.2
022800     IF P-OR-F EQUAL TO "FAIL*"  PERFORM WRITE-LINE               IC2264.2
022900        PERFORM FAIL-ROUTINE THRU FAIL-ROUTINE-EX                 IC2264.2
023000          ELSE PERFORM BAIL-OUT THRU BAIL-OUT-EX.                 IC2264.2
023100     MOVE SPACE TO P-OR-F. MOVE SPACE TO COMPUTED-X.              IC2264.2
023200     MOVE SPACE TO CORRECT-X.                                     IC2264.2
023300     IF     REC-CT EQUAL TO ZERO  MOVE SPACE TO PAR-NAME.         IC2264.2
023400     MOVE     SPACE TO RE-MARK.                                   IC2264.2
023500 HEAD-ROUTINE.                                                    IC2264.2
023600     MOVE CCVS-H-1  TO DUMMY-RECORD. PERFORM WRITE-LINE 2 TIMES.  IC2264.2
023700     MOVE CCVS-H-2A TO DUMMY-RECORD. PERFORM WRITE-LINE 2 TIMES.  IC2264.2
023800     MOVE CCVS-H-2B TO DUMMY-RECORD. PERFORM WRITE-LINE 3 TIMES.  IC2264.2
023900     MOVE CCVS-H-3  TO DUMMY-RECORD. PERFORM WRITE-LINE 3 TIMES.  IC2264.2
024000 COLUMN-NAMES-ROUTINE.                                            IC2264.2
024100     MOVE CCVS-C-1 TO DUMMY-RECORD. PERFORM WRITE-LINE.           IC2264.2
024200     MOVE CCVS-C-2 TO DUMMY-RECORD. PERFORM WRITE-LINE 2 TIMES.   IC2264.2
024300     MOVE HYPHEN-LINE TO DUMMY-RECORD. PERFORM WRITE-LINE.        IC2264.2
024400 END-ROUTINE.                                                     IC2264.2
024500     MOVE HYPHEN-LINE TO DUMMY-RECORD. PERFORM WRITE-LINE 5 TIMES.IC2264.2
024600 END-RTN-EXIT.                                                    IC2264.2
024700     MOVE CCVS-E-1 TO DUMMY-RECORD. PERFORM WRITE-LINE 2 TIMES.   IC2264.2
024800 END-ROUTINE-1.                                                   IC2264.2
024900      ADD ERROR-COUNTER TO ERROR-HOLD ADD INSPECT-COUNTER TO      IC2264.2
025000      ERROR-HOLD. ADD DELETE-COUNTER TO ERROR-HOLD.               IC2264.2
025100      ADD PASS-COUNTER TO ERROR-HOLD.                             IC2264.2
025200*                                                                         
025300      MOVE PASS-COUNTER TO CCVS-E-4-1.                            IC2264.2
025400      MOVE ERROR-HOLD TO CCVS-E-4-2.                              IC2264.2
025500      MOVE CCVS-E-4 TO CCVS-E-2-2.                                IC2264.2
025600      MOVE CCVS-E-2 TO DUMMY-RECORD PERFORM WRITE-LINE.           IC2264.2
025700  END-ROUTINE-12.                                                 IC2264.2
025800      MOVE "TEST(S) FAILED" TO ENDER-DESC.                        IC2264.2
025900     IF       ERROR-COUNTER IS EQUAL TO ZERO                      IC2264.2
026000         MOVE "NO " TO ERROR-TOTAL                                IC2264.2
026100         ELSE                                                     IC2264.2
026200         MOVE ERROR-COUNTER TO ERROR-TOTAL.                       IC2264.2
026300     MOVE     CCVS-E-2 TO DUMMY-RECORD.                           IC2264.2
026400     PERFORM WRITE-LINE.                                          IC2264.2
026500 END-ROUTINE-13.                                                  IC2264.2
026600     IF DELETE-COUNTER IS EQUAL TO ZERO                           IC2264.2
026700         MOVE "NO " TO ERROR-TOTAL  ELSE                          IC2264.2
026800         MOVE DELETE-COUNTER TO ERROR-TOTAL.                      IC2264.2
026900     MOVE "TEST(S) DELETED     " TO ENDER-DESC.                   IC2264.2
027000     MOVE CCVS-E-2 TO DUMMY-RECORD. PERFORM WRITE-LINE.           IC2264.2
027100      IF   INSPECT-COUNTER EQUAL TO ZERO                          IC2264.2
027200          MOVE "NO " TO ERROR-TOTAL                               IC2264.2
027300      ELSE MOVE INSPECT-COUNTER TO ERROR-TOTAL.                   IC2264.2
027400      MOVE "TEST(S) REQUIRE INSPECTION" TO ENDER-DESC.            IC2264.2
027500      MOVE CCVS-E-2 TO DUMMY-RECORD. PERFORM WRITE-LINE.          IC2264.2
027600     MOVE CCVS-E-3 TO DUMMY-RECORD. PERFORM WRITE-LINE.           IC2264.2
027700 WRITE-LINE.                                                      IC2264.2
027800     ADD 1 TO RECORD-COUNT.                                       IC2264.2
027900     IF RECORD-COUNT GREATER 50                                   IC2264.2
028000         MOVE DUMMY-RECORD TO DUMMY-HOLD                          IC2264.2
028100         MOVE SPACE TO DUMMY-RECORD                               IC2264.2
028200         WRITE DUMMY-RECORD AFTER ADVANCING PAGE                  IC2264.2
028300         MOVE CCVS-C-1 TO DUMMY-RECORD PERFORM WRT-LN             IC2264.2
028400         MOVE CCVS-C-2 TO DUMMY-RECORD PERFORM WRT-LN 2 TIMES     IC2264.2
028500         MOVE HYPHEN-LINE TO DUMMY-RECORD PERFORM WRT-LN          IC2264.2
028600         MOVE DUMMY-HOLD TO DUMMY-RECORD                          IC2264.2
028700         MOVE ZERO TO RECORD-COUNT.                               IC2264.2
028800     PERFORM WRT-LN.                                              IC2264.2
028900 WRT-LN.                                                          IC2264.2
029000     WRITE    DUMMY-RECORD AFTER ADVANCING 1 LINES.               IC2264.2
029100     MOVE SPACE TO DUMMY-RECORD.                                  IC2264.2
029200 BLANK-LINE-PRINT.                                                IC2264.2
029300     PERFORM WRT-LN.                                              IC2264.2
029400 FAIL-ROUTINE.                                                    IC2264.2
029500     IF   COMPUTED-X NOT EQUAL TO SPACE GO TO FAIL-ROUTINE-WRITE. IC2264.2
029600     IF     CORRECT-X NOT EQUAL TO SPACE GO TO FAIL-ROUTINE-WRITE.IC2264.2
029700     MOVE   ANSI-REFERENCE TO INF-ANSI-REFERENCE.                 IC2264.2
029800     MOVE  "NO FURTHER INFORMATION, SEE PROGRAM." TO INFO-TEXT.   IC2264.2
029900     MOVE   XXINFO TO DUMMY-RECORD. PERFORM WRITE-LINE 2 TIMES.   IC2264.2
030000     MOVE   SPACES TO INF-ANSI-REFERENCE.                         IC2264.2
030100     GO TO  FAIL-ROUTINE-EX.                                      IC2264.2
030200 FAIL-ROUTINE-WRITE.                                              IC2264.2
030300     MOVE   TEST-COMPUTED TO PRINT-REC PERFORM WRITE-LINE         IC2264.2
030400     MOVE   ANSI-REFERENCE TO COR-ANSI-REFERENCE.                 IC2264.2
030500     MOVE   TEST-CORRECT TO PRINT-REC PERFORM WRITE-LINE 2 TIMES. IC2264.2
030600     MOVE   SPACES TO COR-ANSI-REFERENCE.                         IC2264.2
030700 FAIL-ROUTINE-EX. EXIT.                                           IC2264.2
030800 BAIL-OUT.                                                        IC2264.2
030900     IF     COMPUTED-A NOT EQUAL TO SPACE GO TO BAIL-OUT-WRITE.   IC2264.2
031000     IF     CORRECT-A EQUAL TO SPACE GO TO BAIL-OUT-EX.           IC2264.2
031100 BAIL-OUT-WRITE.                                                  IC2264.2
031200     MOVE CORRECT-A TO XXCORRECT. MOVE COMPUTED-A TO XXCOMPUTED.  IC2264.2
031300     MOVE   ANSI-REFERENCE TO INF-ANSI-REFERENCE.                 IC2264.2
031400     MOVE   XXINFO TO DUMMY-RECORD. PERFORM WRITE-LINE 2 TIMES.   IC2264.2
031500     MOVE   SPACES TO INF-ANSI-REFERENCE.                         IC2264.2
031600 BAIL-OUT-EX. EXIT.                                               IC2264.2
031700 CCVS1-EXIT.                                                      IC2264.2
031800     EXIT.                                                        IC2264.2
031900 SECT-IC226A-001 SECTION.                                         IC2264.2
032000 EXT-INIT-01.                                                     IC2264.2
032100     MOVE   1         TO REC-CT.                                  IC2264.2
032200     MOVE   "X-21 4.5.1" TO ANSI-REFERENCE.                       IC2264.2
032300     MOVE   "EXTERNAL CLAUSE" TO FEATURE.                         IC2264.2
032400     MOVE   "AA"      TO EXT-DATA-1.                              IC2264.2
032500     MOVE   "FIRST]"  TO EXT-DATA-2.                              IC2264.2
032600     MOVE    12345678 TO EXT-DATA-3.                              IC2264.2
032700     MOVE    1        TO EXT-DATA-4.                              IC2264.2
032800 EXT-TEST-01-01-0.                                                IC2264.2
032900     CALL   "IC226A-1"                                            IC2264.2
033000     END-CALL.                                                    IC2264.2
033100     GO TO   EXT-TEST-01-01-1.                                    IC2264.2
033200 EXT-DELETE-01-01.                                                IC2264.2
033300     PERFORM DE-LETE.                                             IC2264.2
033400     PERFORM PRINT-DETAIL.                                        IC2264.2
033500     GO TO   CCVS-EXIT.                                           IC2264.2
033600 EXT-TEST-01-01-1.                                                IC2264.2
033700     MOVE   "EXT-TEST-01-01-1" TO PAR-NAME.                       IC2264.2
033800     IF      EXT-DATA-1 = "ZZ"                                    IC2264.2
033900             PERFORM PASS                                         IC2264.2
034000             PERFORM PRINT-DETAIL                                 IC2264.2
034100     ELSE                                                         IC2264.2
034200             MOVE    EXT-DATA-1  TO COMPUTED-X                    IC2264.2
034300             MOVE   "ZZ" TO CORRECT-X                             IC2264.2
034400             MOVE   "INCORRECT VALUE RETURNED" TO RE-MARK         IC2264.2
034500             PERFORM FAIL                                         IC2264.2
034600             PERFORM PRINT-DETAIL.                                IC2264.2
034700     ADD     1 TO REC-CT.                                         IC2264.2
034800 CALL-TEST-01-01-2.                                               IC2264.2
034900     MOVE   "CALL-TEST-01-01-2" TO PAR-NAME.                      IC2264.2
035000     IF      EXT-DATA-2 = "CHANGE"                                IC2264.2
035100             PERFORM PASS                                         IC2264.2
035200             PERFORM PRINT-DETAIL                                 IC2264.2
035300     ELSE                                                         IC2264.2
035400             MOVE    EXT-DATA-2  TO COMPUTED-X                    IC2264.2
035500             MOVE   "CHANGE" TO CORRECT-X                         IC2264.2
035600             MOVE   "INCORRECT VALUE RETURNED" TO RE-MARK         IC2264.2
035700             PERFORM FAIL                                         IC2264.2
035800             PERFORM PRINT-DETAIL.                                IC2264.2
035900     ADD     1 TO REC-CT.                                         IC2264.2
036000 CALL-TEST-01-01-3.                                               IC2264.2
036100     MOVE   "CALL-TEST-01-01-3" TO PAR-NAME.                      IC2264.2
036200     IF      EXT-DATA-3 = 87654321                                IC2264.2
036300             PERFORM PASS                                         IC2264.2
036400             PERFORM PRINT-DETAIL                                 IC2264.2
036500     ELSE                                                         IC2264.2
036600             MOVE    EXT-DATA-3  TO COMPUTED-N                    IC2264.2
036700             MOVE    87654321 TO CORRECT-N                        IC2264.2
036800             MOVE   "INCORRECT VALUE RETURNED" TO RE-MARK         IC2264.2
036900             PERFORM FAIL                                         IC2264.2
037000             PERFORM PRINT-DETAIL.                                IC2264.2
037100     ADD     1 TO REC-CT.                                         IC2264.2
037200 CALL-TEST-01-01-4.                                               IC2264.2
037300     MOVE   "CALL-TEST-01-01-4" TO PAR-NAME.                      IC2264.2
037400     IF      EXT-DATA-4 = 11                                      IC2264.2
037500             PERFORM PASS                                         IC2264.2
037600             PERFORM PRINT-DETAIL                                 IC2264.2
037700     ELSE                                                         IC2264.2
037800             MOVE    EXT-DATA-4 TO COMPUTED-N                     IC2264.2
037900             MOVE    11   TO CORRECT-N                            IC2264.2
038000             MOVE   "INCORRECT VALUE RETURNED" TO RE-MARK         IC2264.2
038100             PERFORM FAIL                                         IC2264.2
038200             PERFORM PRINT-DETAIL.                                IC2264.2
038300*                                                                         
038400 CCVS-EXIT SECTION.                                               IC2264.2
038500 CCVS-999999.                                                     IC2264.2
038600     GO TO CLOSE-FILES.                                           IC2264.2
038700 END PROGRAM IC226A.                                              IC2264.2
038800 IDENTIFICATION DIVISION.                                         IC2264.2
038900 PROGRAM-ID.                                                      IC2264.2
039000     IC226A-1.                                                    IC2264.2
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
047600*                                                                         
047700*                                                                         
047800*                                                                         
047900*                                                                         
048000*                                                                         
048100*                                                                         
048200*                                                                         
048300 ENVIRONMENT DIVISION.                                            IC2264.2
048400 CONFIGURATION SECTION.                                           IC2264.2
048500 SOURCE-COMPUTER.                                                 IC2264.2
048600     GNU-Linux.                                                   IC2264.2
048700 OBJECT-COMPUTER.                                                 IC2264.2
048800     GNU-Linux.                                                   IC2264.2
048900*                                                                         
049000 DATA DIVISION.                                                   IC2264.2
049100 FILE SECTION.                                                    IC2264.2
049200 WORKING-STORAGE SECTION.                                         IC2264.2
049300 01  EXTERNAL-DATA IS EXTERNAL.                                   IC2264.2
049400   03        EXT-DATA-1          PIC X(2).                        IC2264.2
049500   03        EXT-DATA-2          PIC X(6).                        IC2264.2
049600   03        EXT-DATA-3          PIC 9(8).                        IC2264.2
049700   03        EXT-DATA-4          PIC 9(4).                        IC2264.2
049800 PROCEDURE DIVISION.                                              IC2264.2
049900 SECT-IC226A-1-001 SECTION.                                       IC2264.2
050000 EXT-TEST-001.                                                    IC2264.2
050100     MOVE   "ZZ"      TO EXT-DATA-1.                              IC2264.2
050200     MOVE   "CHANGE"  TO EXT-DATA-2.                              IC2264.2
050300     MOVE    87654321 TO EXT-DATA-3.                              IC2264.2
050400     ADD     10       TO EXT-DATA-4.                              IC2264.2
050500 EXT-EXIT-001.                                                    IC2264.2
050600     EXIT PROGRAM.                                                IC2264.2
