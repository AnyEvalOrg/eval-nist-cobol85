000100 IDENTIFICATION DIVISION.                                         IC2274.2
000200 PROGRAM-ID.                                                      IC2274.2
000300     IC227A.                                                      IC2274.2
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
004900 ENVIRONMENT DIVISION.                                            IC2274.2
005000 CONFIGURATION SECTION.                                           IC2274.2
005100 SOURCE-COMPUTER.                                                 IC2274.2
005200     GNU-Linux.                                                   IC2274.2
005300 OBJECT-COMPUTER.                                                 IC2274.2
005400     GNU-Linux.                                                   IC2274.2
005500*                                                                         
005600 INPUT-OUTPUT SECTION.                                            IC2274.2
005700 FILE-CONTROL.                                                    IC2274.2
005800     SELECT PRINT-FILE ASSIGN TO                                  IC2274.2
005900     "REPORT".                                                    IC2274.2
006000*                                                                         
006100     SELECT EXTERNAL-FILE ASSIGN TO                               IC2274.2
006200     "XXXXX014"                                                   IC2274.2
006300     FILE STATUS IS EXTERNAL-FILE-FS.                             IC2274.2
006400*                                                                         
006500 DATA DIVISION.                                                   IC2274.2
006600 FILE SECTION.                                                    IC2274.2
006700 FD  PRINT-FILE.                                                  IC2274.2
006800 01  PRINT-REC PICTURE X(120).                                    IC2274.2
006900 01  DUMMY-RECORD PICTURE X(120).                                 IC2274.2
007000*                                                                         
007100 FD  EXTERNAL-FILE                                                IC2274.2
007200         IS EXTERNAL                                              IC2274.2
007300         RECORD CONTAINS 18 CHARACTERS.                           IC2274.2
007400 01  EXTERNAL-FILE-RECORD.                                        IC2274.2
007500     03  EXT-DATA-1              PIC X(2).                        IC2274.2
007600     03  EXT-DATA-2              PIC X(6).                        IC2274.2
007700     03  EXT-DATA-3              PIC 9(6).                        IC2274.2
007800     03  EXT-DATA-4              PIC 9(4).                        IC2274.2
007900*                                                                         
008000 WORKING-STORAGE SECTION.                                         IC2274.2
008100*                                                                         
008200*                                                                         
008300*                                                                         
008400*                                                                         
008500*                                                                         
008600*                                                                         
008700*                                                                         
008800 01  EXTERNAL-RECORD-HOLD.                                        IC2274.2
008900     03  WSE-DATA-1              PIC X(2).                        IC2274.2
009000     03  WSE-DATA-2              PIC X(6).                        IC2274.2
009100     03  WSE-DATA-3              PIC 9(6).                        IC2274.2
009200     03  WSE-DATA-4              PIC 9(4).                        IC2274.2
009300*                                                                         
009400 01  EXTERNAL-RECORD-WORK.                                        IC2274.2
009500     03  WRK-DATA-1              PIC X(2).                        IC2274.2
009600     03  WRK-DATA-2              PIC X(6).                        IC2274.2
009700     03  WRK-DATA-3              PIC 9(6).                        IC2274.2
009800     03  WRK-DATA-4              PIC 9(4).                        IC2274.2
009900*                                                                         
010000 01  EXTERNAL-FILE-FS            PIC XX.                          IC2274.2
010100 01  F-S-PARAM                   PIC XX.                          IC2274.2
010200 01  ACTION-CODE                 PIC 99.                          IC2274.2
010300 77  ID1 PICTURE X(8) VALUE "IC227A-1".                           IC2274.2
010400*                                                                         
010500*                                                                         
010600*                                                                         
010700*                                                                         
010800*                                                                         
010900*                                                                         
011000*                                                                         
011100 01  TEST-RESULTS.                                                IC2274.2
011200     02 FILLER                   PIC X      VALUE SPACE.          IC2274.2
011300     02 FEATURE                  PIC X(20)  VALUE SPACE.          IC2274.2
011400     02 FILLER                   PIC X      VALUE SPACE.          IC2274.2
011500     02 P-OR-F                   PIC X(5)   VALUE SPACE.          IC2274.2
011600     02 FILLER                   PIC X      VALUE SPACE.          IC2274.2
011700     02  PAR-NAME.                                                IC2274.2
011800       03 FILLER                 PIC X(19)  VALUE SPACE.          IC2274.2
011900       03  PARDOT-X              PIC X      VALUE SPACE.          IC2274.2
012000       03 DOTVALUE               PIC 99     VALUE ZERO.           IC2274.2
012100     02 FILLER                   PIC X(8)   VALUE SPACE.          IC2274.2
012200     02 RE-MARK                  PIC X(61).                       IC2274.2
012300 01  TEST-COMPUTED.                                               IC2274.2
012400     02 FILLER                   PIC X(30)  VALUE SPACE.          IC2274.2
012500     02 FILLER                   PIC X(17)  VALUE                 IC2274.2
012600            "       COMPUTED=".                                   IC2274.2
012700     02 COMPUTED-X.                                               IC2274.2
012800     03 COMPUTED-A               PIC X(20)  VALUE SPACE.          IC2274.2
012900     03 COMPUTED-N               REDEFINES COMPUTED-A             IC2274.2
013000                                 PIC -9(9).9(9).                  IC2274.2
013100     03 COMPUTED-0V18 REDEFINES COMPUTED-A   PIC -.9(18).         IC2274.2
013200     03 COMPUTED-4V14 REDEFINES COMPUTED-A   PIC -9(4).9(14).     IC2274.2
013300     03 COMPUTED-14V4 REDEFINES COMPUTED-A   PIC -9(14).9(4).     IC2274.2
013400     03       CM-18V0 REDEFINES COMPUTED-A.                       IC2274.2
013500         04 COMPUTED-18V0                    PIC -9(18).          IC2274.2
013600         04 FILLER                           PIC X.               IC2274.2
013700     03 FILLER PIC X(50) VALUE SPACE.                             IC2274.2
013800 01  TEST-CORRECT.                                                IC2274.2
013900     02 FILLER PIC X(30) VALUE SPACE.                             IC2274.2
014000     02 FILLER PIC X(17) VALUE "       CORRECT =".                IC2274.2
014100     02 CORRECT-X.                                                IC2274.2
014200     03 CORRECT-A                  PIC X(20) VALUE SPACE.         IC2274.2
014300     03 CORRECT-N    REDEFINES CORRECT-A     PIC -9(9).9(9).      IC2274.2
014400     03 CORRECT-0V18 REDEFINES CORRECT-A     PIC -.9(18).         IC2274.2
014500     03 CORRECT-4V14 REDEFINES CORRECT-A     PIC -9(4).9(14).     IC2274.2
014600     03 CORRECT-14V4 REDEFINES CORRECT-A     PIC -9(14).9(4).     IC2274.2
014700     03      CR-18V0 REDEFINES CORRECT-A.                         IC2274.2
014800         04 CORRECT-18V0                     PIC -9(18).          IC2274.2
014900         04 FILLER                           PIC X.               IC2274.2
015000     03 FILLER PIC X(2) VALUE SPACE.                              IC2274.2
015100     03 COR-ANSI-REFERENCE             PIC X(48) VALUE SPACE.     IC2274.2
015200 01  CCVS-C-1.                                                    IC2274.2
015300     02 FILLER  PIC IS X(99)    VALUE IS " FEATURE              PAIC2274.2
015400-    "SS  PARAGRAPH-NAME                                          IC2274.2
015500-    "       REMARKS".                                            IC2274.2
015600     02 FILLER                     PIC X(20)    VALUE SPACE.      IC2274.2
015700 01  CCVS-C-2.                                                    IC2274.2
015800     02 FILLER                     PIC X        VALUE SPACE.      IC2274.2
015900     02 FILLER                     PIC X(6)     VALUE "TESTED".   IC2274.2
016000     02 FILLER                     PIC X(15)    VALUE SPACE.      IC2274.2
016100     02 FILLER                     PIC X(4)     VALUE "FAIL".     IC2274.2
016200     02 FILLER                     PIC X(94)    VALUE SPACE.      IC2274.2
016300 01  REC-SKL-SUB                   PIC 9(2)     VALUE ZERO.       IC2274.2
016400 01  REC-CT                        PIC 99       VALUE ZERO.       IC2274.2
016500 01  DELETE-COUNTER                PIC 999      VALUE ZERO.       IC2274.2
016600 01  ERROR-COUNTER                 PIC 999      VALUE ZERO.       IC2274.2
016700 01  INSPECT-COUNTER               PIC 999      VALUE ZERO.       IC2274.2
016800 01  PASS-COUNTER                  PIC 999      VALUE ZERO.       IC2274.2
016900 01  TOTAL-ERROR                   PIC 999      VALUE ZERO.       IC2274.2
017000 01  ERROR-HOLD                    PIC 999      VALUE ZERO.       IC2274.2
017100 01  DUMMY-HOLD                    PIC X(120)   VALUE SPACE.      IC2274.2
017200 01  RECORD-COUNT                  PIC 9(5)     VALUE ZERO.       IC2274.2
017300 01  ANSI-REFERENCE                PIC X(48)    VALUE SPACES.     IC2274.2
017400 01  CCVS-H-1.                                                    IC2274.2
017500     02  FILLER                    PIC X(39)    VALUE SPACES.     IC2274.2
017600     02  FILLER                    PIC X(42)    VALUE             IC2274.2
017700     "OFFICIAL COBOL COMPILER VALIDATION SYSTEM".                 IC2274.2
017800     02  FILLER                    PIC X(39)    VALUE SPACES.     IC2274.2
017900 01  CCVS-H-2A.                                                   IC2274.2
018000   02  FILLER                        PIC X(40)  VALUE SPACE.      IC2274.2
018100   02  FILLER                        PIC X(7)   VALUE "CCVS85 ".  IC2274.2
018200   02  FILLER                        PIC XXXX   VALUE             IC2274.2
018300     "4.2 ".                                                      IC2274.2
018400   02  FILLER                        PIC X(28)  VALUE             IC2274.2
018500            " COPY - NOT FOR DISTRIBUTION".                       IC2274.2
018600   02  FILLER                        PIC X(41)  VALUE SPACE.      IC2274.2
018700                                                                  IC2274.2
018800 01  CCVS-H-2B.                                                   IC2274.2
018900   02  FILLER                        PIC X(15)  VALUE             IC2274.2
019000            "TEST RESULT OF ".                                    IC2274.2
019100   02  TEST-ID                       PIC X(9).                    IC2274.2
019200   02  FILLER                        PIC X(4)   VALUE             IC2274.2
019300            " IN ".                                               IC2274.2
019400   02  FILLER                        PIC X(12)  VALUE             IC2274.2
019500     " HIGH       ".                                              IC2274.2
019600   02  FILLER                        PIC X(22)  VALUE             IC2274.2
019700            " LEVEL VALIDATION FOR ".                             IC2274.2
019800   02  FILLER                        PIC X(58)  VALUE             IC2274.2
019900     "ON-SITE VALIDATION, NATIONAL INSTITUTE OF STD & TECH.     ".IC2274.2
020000 01  CCVS-H-3.                                                    IC2274.2
020100     02  FILLER                      PIC X(34)  VALUE             IC2274.2
020200            " FOR OFFICIAL USE ONLY    ".                         IC2274.2
020300     02  FILLER                      PIC X(58)  VALUE             IC2274.2
020400     "COBOL 85 VERSION 4.2, Apr  1993 SSVG                      ".IC2274.2
020500     02  FILLER                      PIC X(28)  VALUE             IC2274.2
020600            "  COPYRIGHT   1985,1986 ".                           IC2274.2
020700 01  CCVS-E-1.                                                    IC2274.2
020800     02 FILLER                       PIC X(52)  VALUE SPACE.      IC2274.2
020900     02 FILLER  PIC X(14) VALUE IS "END OF TEST-  ".              IC2274.2
021000     02 ID-AGAIN                     PIC X(9).                    IC2274.2
021100     02 FILLER                       PIC X(45)  VALUE SPACES.     IC2274.2
021200 01  CCVS-E-2.                                                    IC2274.2
021300     02  FILLER                      PIC X(31)  VALUE SPACE.      IC2274.2
021400     02  FILLER                      PIC X(21)  VALUE SPACE.      IC2274.2
021500     02 CCVS-E-2-2.                                               IC2274.2
021600         03 ERROR-TOTAL              PIC XXX    VALUE SPACE.      IC2274.2
021700         03 FILLER                   PIC X      VALUE SPACE.      IC2274.2
021800         03 ENDER-DESC               PIC X(44)  VALUE             IC2274.2
021900            "ERRORS ENCOUNTERED".                                 IC2274.2
022000 01  CCVS-E-3.                                                    IC2274.2
022100     02  FILLER                      PIC X(22)  VALUE             IC2274.2
022200            " FOR OFFICIAL USE ONLY".                             IC2274.2
022300     02  FILLER                      PIC X(12)  VALUE SPACE.      IC2274.2
022400     02  FILLER                      PIC X(58)  VALUE             IC2274.2
022500     "ON-SITE VALIDATION, NATIONAL INSTITUTE OF STD & TECH.     ".IC2274.2
022600     02  FILLER                      PIC X(8)   VALUE SPACE.      IC2274.2
022700     02  FILLER                      PIC X(20)  VALUE             IC2274.2
022800             " COPYRIGHT 1985,1986".                              IC2274.2
022900 01  CCVS-E-4.                                                    IC2274.2
023000     02 CCVS-E-4-1                   PIC XXX    VALUE SPACE.      IC2274.2
023100     02 FILLER                       PIC X(4)   VALUE " OF ".     IC2274.2
023200     02 CCVS-E-4-2                   PIC XXX    VALUE SPACE.      IC2274.2
023300     02 FILLER                       PIC X(40)  VALUE             IC2274.2
023400      "  TESTS WERE EXECUTED SUCCESSFULLY".                       IC2274.2
023500 01  XXINFO.                                                      IC2274.2
023600     02 FILLER                       PIC X(19)  VALUE             IC2274.2
023700            "*** INFORMATION ***".                                IC2274.2
023800     02 INFO-TEXT.                                                IC2274.2
023900       04 FILLER                     PIC X(8)   VALUE SPACE.      IC2274.2
024000       04 XXCOMPUTED                 PIC X(20).                   IC2274.2
024100       04 FILLER                     PIC X(5)   VALUE SPACE.      IC2274.2
024200       04 XXCORRECT                  PIC X(20).                   IC2274.2
024300     02 INF-ANSI-REFERENCE           PIC X(48).                   IC2274.2
024400 01  HYPHEN-LINE.                                                 IC2274.2
024500     02 FILLER  PIC IS X VALUE IS SPACE.                          IC2274.2
024600     02 FILLER  PIC IS X(65)    VALUE IS "************************IC2274.2
024700-    "*****************************************".                 IC2274.2
024800     02 FILLER  PIC IS X(54)    VALUE IS "************************IC2274.2
024900-    "******************************".                            IC2274.2
025000 01  CCVS-PGM-ID                     PIC X(9)   VALUE             IC2274.2
025100     "IC227A".                                                    IC2274.2
025200*                                                                         
025300*                                                                         
025400 PROCEDURE DIVISION.                                              IC2274.2
025500 CCVS1 SECTION.                                                   IC2274.2
025600 OPEN-FILES.                                                      IC2274.2
025700     OPEN    OUTPUT PRINT-FILE.                                   IC2274.2
025800     MOVE  CCVS-PGM-ID TO TEST-ID. MOVE CCVS-PGM-ID TO ID-AGAIN.  IC2274.2
025900     MOVE    SPACE TO TEST-RESULTS.                               IC2274.2
026000     PERFORM HEAD-ROUTINE THRU COLUMN-NAMES-ROUTINE.              IC2274.2
026100     GO TO CCVS1-EXIT.                                            IC2274.2
026200 CLOSE-FILES.                                                     IC2274.2
026300     PERFORM END-ROUTINE THRU END-ROUTINE-13. CLOSE PRINT-FILE.   IC2274.2
026400 TERMINATE-CCVS.                                                  IC2274.2
026500     STOP     RUN.                                                IC2274.2
026600*                                                                         
026700 INSPT.                                                           IC2274.2
026800     MOVE   "INSPT" TO P-OR-F.                                    IC2274.2
026900     ADD     1 TO INSPECT-COUNTER.                                IC2274.2
027000     PERFORM PRINT-DETAIL.                                        IC2274.2
027100                                                                  IC2274.2
027200 PASS.                                                            IC2274.2
027300     MOVE   "PASS " TO P-OR-F.                                    IC2274.2
027400     ADD     1 TO PASS-COUNTER.                                   IC2274.2
027500     PERFORM PRINT-DETAIL.                                        IC2274.2
027600*                                                                         
027700 FAIL.                                                            IC2274.2
027800     MOVE   "FAIL*" TO P-OR-F.                                    IC2274.2
027900     ADD     1 TO ERROR-COUNTER.                                  IC2274.2
028000     PERFORM PRINT-DETAIL.                                        IC2274.2
028100*                                                                         
028200 DE-LETE.                                                         IC2274.2
028300     MOVE   "****TEST DELETED****" TO RE-MARK.                    IC2274.2
028400     MOVE   "*****" TO P-OR-F.                                    IC2274.2
028500     ADD     1 TO DELETE-COUNTER.                                 IC2274.2
028600     PERFORM PRINT-DETAIL.                                        IC2274.2
028700                                                                  IC2274.2
028800 PRINT-DETAIL.                                                    IC2274.2
028900     IF REC-CT NOT EQUAL TO ZERO                                  IC2274.2
029000             MOVE "." TO PARDOT-X                                 IC2274.2
029100             MOVE REC-CT TO DOTVALUE.                             IC2274.2
029200     MOVE    TEST-RESULTS TO PRINT-REC.                           IC2274.2
029300     PERFORM WRITE-LINE.                                          IC2274.2
029400     IF P-OR-F EQUAL TO "FAIL*"                                   IC2274.2
029500          PERFORM WRITE-LINE                                      IC2274.2
029600          PERFORM FAIL-ROUTINE THRU FAIL-ROUTINE-EX               IC2274.2
029700     ELSE                                                         IC2274.2
029800          PERFORM BAIL-OUT THRU BAIL-OUT-EX.                      IC2274.2
029900     MOVE SPACE TO P-OR-F. MOVE SPACE TO COMPUTED-X.              IC2274.2
030000     MOVE SPACE TO CORRECT-X.                                     IC2274.2
030100     IF     REC-CT EQUAL TO ZERO  MOVE SPACE TO PAR-NAME.         IC2274.2
030200     MOVE     SPACE TO RE-MARK.                                   IC2274.2
030300*                                                                         
030400 HEAD-ROUTINE.                                                    IC2274.2
030500     MOVE CCVS-H-1  TO DUMMY-RECORD. PERFORM WRITE-LINE 2 TIMES.  IC2274.2
030600     MOVE CCVS-H-2A TO DUMMY-RECORD. PERFORM WRITE-LINE 2 TIMES.  IC2274.2
030700     MOVE CCVS-H-2B TO DUMMY-RECORD. PERFORM WRITE-LINE 3 TIMES.  IC2274.2
030800     MOVE CCVS-H-3  TO DUMMY-RECORD. PERFORM WRITE-LINE 3 TIMES.  IC2274.2
030900 COLUMN-NAMES-ROUTINE.                                            IC2274.2
031000     MOVE CCVS-C-1 TO DUMMY-RECORD. PERFORM WRITE-LINE.           IC2274.2
031100     MOVE CCVS-C-2 TO DUMMY-RECORD. PERFORM WRITE-LINE 2 TIMES.   IC2274.2
031200     MOVE HYPHEN-LINE TO DUMMY-RECORD. PERFORM WRITE-LINE.        IC2274.2
031300 END-ROUTINE.                                                     IC2274.2
031400     MOVE HYPHEN-LINE TO DUMMY-RECORD.                            IC2274.2
031500     PERFORM WRITE-LINE 5 TIMES.                                  IC2274.2
031600 END-RTN-EXIT.                                                    IC2274.2
031700     MOVE CCVS-E-1 TO DUMMY-RECORD. PERFORM WRITE-LINE 2 TIMES.   IC2274.2
031800*                                                                         
031900 END-ROUTINE-1.                                                   IC2274.2
032000      ADD     ERROR-COUNTER   TO ERROR-HOLD                       IC2274.2
032100      ADD     INSPECT-COUNTER TO ERROR-HOLD.                      IC2274.2
032200      ADD     DELETE-COUNTER  TO ERROR-HOLD.                      IC2274.2
032300      ADD     PASS-COUNTER    TO ERROR-HOLD.                      IC2274.2
032400*                                                                         
032500      MOVE PASS-COUNTER TO CCVS-E-4-1.                            IC2274.2
032600      MOVE ERROR-HOLD TO CCVS-E-4-2.                              IC2274.2
032700      MOVE CCVS-E-4 TO CCVS-E-2-2.                                IC2274.2
032800      MOVE CCVS-E-2 TO DUMMY-RECORD PERFORM WRITE-LINE.           IC2274.2
032900  END-ROUTINE-12.                                                 IC2274.2
033000      MOVE "TEST(S) FAILED" TO ENDER-DESC.                        IC2274.2
033100      IF       ERROR-COUNTER IS EQUAL TO ZERO                     IC2274.2
033200         MOVE "NO " TO ERROR-TOTAL                                IC2274.2
033300         ELSE                                                     IC2274.2
033400         MOVE ERROR-COUNTER TO ERROR-TOTAL.                       IC2274.2
033500     MOVE     CCVS-E-2 TO DUMMY-RECORD.                           IC2274.2
033600     PERFORM WRITE-LINE.                                          IC2274.2
033700 END-ROUTINE-13.                                                  IC2274.2
033800     IF DELETE-COUNTER IS EQUAL TO ZERO                           IC2274.2
033900         MOVE "NO " TO ERROR-TOTAL  ELSE                          IC2274.2
034000         MOVE DELETE-COUNTER TO ERROR-TOTAL.                      IC2274.2
034100     MOVE "TEST(S) DELETED     " TO ENDER-DESC.                   IC2274.2
034200     MOVE CCVS-E-2 TO DUMMY-RECORD. PERFORM WRITE-LINE.           IC2274.2
034300     IF   INSPECT-COUNTER EQUAL TO ZERO                           IC2274.2
034400          MOVE "NO " TO ERROR-TOTAL                               IC2274.2
034500     ELSE                                                         IC2274.2
034600          MOVE INSPECT-COUNTER TO ERROR-TOTAL.                    IC2274.2
034700     MOVE "TEST(S) REQUIRE INSPECTION" TO ENDER-DESC.             IC2274.2
034800     MOVE CCVS-E-2 TO DUMMY-RECORD. PERFORM WRITE-LINE.           IC2274.2
034900     MOVE CCVS-E-3 TO DUMMY-RECORD. PERFORM WRITE-LINE.           IC2274.2
035000*                                                                         
035100 WRITE-LINE.                                                      IC2274.2
035200     ADD 1 TO RECORD-COUNT.                                       IC2274.2
035300     IF RECORD-COUNT GREATER 50                                   IC2274.2
035400         MOVE DUMMY-RECORD TO DUMMY-HOLD                          IC2274.2
035500         MOVE SPACE TO DUMMY-RECORD                               IC2274.2
035600         WRITE DUMMY-RECORD AFTER ADVANCING PAGE                  IC2274.2
035700         MOVE CCVS-C-1 TO DUMMY-RECORD PERFORM WRT-LN             IC2274.2
035800         MOVE CCVS-C-2 TO DUMMY-RECORD PERFORM WRT-LN 2 TIMES     IC2274.2
035900         MOVE HYPHEN-LINE TO DUMMY-RECORD PERFORM WRT-LN          IC2274.2
036000         MOVE DUMMY-HOLD TO DUMMY-RECORD                          IC2274.2
036100         MOVE ZERO TO RECORD-COUNT.                               IC2274.2
036200     PERFORM WRT-LN.                                              IC2274.2
036300 WRT-LN.                                                          IC2274.2
036400     WRITE   DUMMY-RECORD AFTER ADVANCING 1 LINES.                IC2274.2
036500     MOVE    SPACE TO DUMMY-RECORD.                               IC2274.2
036600 BLANK-LINE-PRINT.                                                IC2274.2
036700     PERFORM WRT-LN.                                              IC2274.2
036800 FAIL-ROUTINE.                                                    IC2274.2
036900     IF   COMPUTED-X NOT EQUAL TO SPACE GO TO FAIL-ROUTINE-WRITE. IC2274.2
037000     IF   CORRECT-X NOT EQUAL TO SPACE GO TO FAIL-ROUTINE-WRITE.  IC2274.2
037100     MOVE   ANSI-REFERENCE TO INF-ANSI-REFERENCE.                 IC2274.2
037200     MOVE  "NO FURTHER INFORMATION, SEE PROGRAM." TO INFO-TEXT.   IC2274.2
037300     MOVE   XXINFO TO DUMMY-RECORD. PERFORM WRITE-LINE 2 TIMES.   IC2274.2
037400     MOVE   SPACES TO INF-ANSI-REFERENCE.                         IC2274.2
037500     GO TO  FAIL-ROUTINE-EX.                                      IC2274.2
037600 FAIL-ROUTINE-WRITE.                                              IC2274.2
037700     MOVE   TEST-COMPUTED TO PRINT-REC PERFORM WRITE-LINE         IC2274.2
037800     MOVE   ANSI-REFERENCE TO COR-ANSI-REFERENCE.                 IC2274.2
037900     MOVE   TEST-CORRECT TO PRINT-REC PERFORM WRITE-LINE 2 TIMES. IC2274.2
038000     MOVE   SPACES TO COR-ANSI-REFERENCE.                         IC2274.2
038100 FAIL-ROUTINE-EX. EXIT.                                           IC2274.2
038200 BAIL-OUT.                                                        IC2274.2
038300     IF     COMPUTED-A NOT EQUAL TO SPACE GO TO BAIL-OUT-WRITE.   IC2274.2
038400     IF     CORRECT-A EQUAL TO SPACE GO TO BAIL-OUT-EX.           IC2274.2
038500 BAIL-OUT-WRITE.                                                  IC2274.2
038600     MOVE CORRECT-A TO XXCORRECT. MOVE COMPUTED-A TO XXCOMPUTED.  IC2274.2
038700     MOVE   ANSI-REFERENCE TO INF-ANSI-REFERENCE.                 IC2274.2
038800     MOVE   XXINFO TO DUMMY-RECORD. PERFORM WRITE-LINE 2 TIMES.   IC2274.2
038900     MOVE   SPACES TO INF-ANSI-REFERENCE.                         IC2274.2
039000 BAIL-OUT-EX. EXIT.                                               IC2274.2
039100 CCVS1-EXIT.                                                      IC2274.2
039200     EXIT.                                                        IC2274.2
039300*                                                                         
039400*                                                                         
039500*                                                                         
039600*                                                                         
039700*                                                                         
039800*                                                                         
039900*                                                                         
040000*                                                                         
040100 SECT-IC227A-01 SECTION.                                          IC2274.2
040200 EXT-INIT-01.                                                     IC2274.2
040300*                                                                         
040400*                                                                         
040500*                                                                         
040600*                                                                         
040700*                                                                         
040800*                                                                         
040900*                                                                         
041000     OPEN    OUTPUT EXTERNAL-FILE.                                IC2274.2
041100*                                                                         
041200     MOVE    1 TO REC-CT.                                         IC2274.2
041300     MOVE   "EXTERNAL FILE RECORD" TO FEATURE.                    IC2274.2
041400     MOVE   "X-23 4.5.1" TO ANSI-REFERENCE.                       IC2274.2
041500     MOVE   "EXT-REC-TEST-01"     TO PAR-NAME.                    IC2274.2
041600     MOVE   "******************"  TO EXTERNAL-FILE-RECORD.        IC2274.2
041700     MOVE   "**"                  TO F-S-PARAM.                   IC2274.2
041800     MOVE   "AA"                  TO WRK-DATA-1                   IC2274.2
041900     MOVE   "PQRSTU"              TO WRK-DATA-2                   IC2274.2
042000     MOVE    123456               TO WRK-DATA-3                   IC2274.2
042100     MOVE    9876                 TO WRK-DATA-4.                  IC2274.2
042200     MOVE    EXTERNAL-RECORD-WORK TO EXTERNAL-RECORD-HOLD.        IC2274.2
042300     MOVE   "<>"                  TO EXTERNAL-FILE-FS.            IC2274.2
042400     GO TO   EXT-REC-TEST-01.                                     IC2274.2
042500 EXT-REC-DELETE-01.                                               IC2274.2
042600     PERFORM DE-LETE.                                             IC2274.2
042700     GO TO   EXT-REC-DELETE-01-02.                                IC2274.2
042800*                                                                         
042900*                                                                         
043000*                                                                         
043100*                                                                         
043200*                                                                         
043300*                                                                         
043400*                                                                         
043500 EXT-REC-TEST-01.                                                 IC2274.2
043600     MOVE    1 TO ACTION-CODE.                                    IC2274.2
043700     CALL   "IC227A-1" USING ACTION-CODE                          IC2274.2
043800                             EXTERNAL-RECORD-WORK                 IC2274.2
043900                             F-S-PARAM.                           IC2274.2
044000     IF EXTERNAL-FILE-RECORD EQUAL EXTERNAL-RECORD-HOLD           IC2274.2
044100         PERFORM PASS                                             IC2274.2
044200     ELSE                                                         IC2274.2
044300         MOVE   "SUBPROGRAM DID NOT WRITE TO RECORD AREA"         IC2274.2
044400                   TO RE-MARK                                     IC2274.2
044500         MOVE    EXTERNAL-FILE-RECORD TO COMPUTED-A               IC2274.2
044600         MOVE    EXTERNAL-RECORD-HOLD TO CORRECT-A                IC2274.2
044700         PERFORM FAIL                                             IC2274.2
044800     END-IF.                                                      IC2274.2
044900     GO TO  EXT-REC-TEST-01-02.                                   IC2274.2
045000 EXT-REC-DELETE-01-02.                                            IC2274.2
045100     ADD     1 TO REC-CT                                          IC2274.2
045200     PERFORM DE-LETE.                                             IC2274.2
045300     GO TO   EXT-REC-DELETE-01-03.                                IC2274.2
045400 EXT-REC-TEST-01-02.                                              IC2274.2
045500     ADD     1 TO REC-CT.                                         IC2274.2
045600     IF EXTERNAL-RECORD-WORK EQUAL "******************"           IC2274.2
045700         PERFORM PASS                                             IC2274.2
045800     ELSE                                                         IC2274.2
045900         MOVE   "SUBPROGRAM DID NOT READ FROM RECORD AREA"        IC2274.2
046000                   TO RE-MARK                                     IC2274.2
046100         MOVE    EXTERNAL-RECORD-WORK TO COMPUTED-A               IC2274.2
046200         MOVE    "******************" TO CORRECT-A                IC2274.2
046300         PERFORM FAIL                                             IC2274.2
046400     END-IF.                                                      IC2274.2
046500     GO TO  EXT-REC-TEST-01-03.                                   IC2274.2
046600 EXT-REC-DELETE-01-03.                                            IC2274.2
046700     ADD     1 TO REC-CT                                          IC2274.2
046800     PERFORM DE-LETE.                                             IC2274.2
046900     GO TO   EXT-REC-TEST-01-END.                                 IC2274.2
047000 EXT-REC-TEST-01-03.                                              IC2274.2
047100     ADD     1 TO REC-CT.                                         IC2274.2
047200     IF F-S-PARAM IS EQUAL "XX"                                   IC2274.2
047300         PERFORM PASS                                             IC2274.2
047400     ELSE                                                         IC2274.2
047500         MOVE   "WRONG FILE STATUS VALUE RETURNED"                IC2274.2
047600                   TO RE-MARK                                     IC2274.2
047700         MOVE    F-S-PARAM TO COMPUTED-A                          IC2274.2
047800         MOVE    "XX" TO CORRECT-A                                IC2274.2
047900         PERFORM FAIL                                             IC2274.2
048000     END-IF.                                                      IC2274.2
048100 EXT-REC-TEST-01-END.                                             IC2274.2
048200*                                                                         
048300*                                                                         
048400 EXT-INIT-02.                                                     IC2274.2
048500*                                                                         
048600*                                                                         
048700*                                                                         
048800*                                                                         
048900*                                                                         
049000*                                                                         
049100*                                                                         
049200     MOVE    1 TO REC-CT.                                         IC2274.2
049300     MOVE   "EXTERNAL FILE WRITE" TO FEATURE.                     IC2274.2
049400     MOVE   "X-23 4.5.1" TO ANSI-REFERENCE.                       IC2274.2
049500     MOVE   "EXT-FILE-TEST-02"    TO PAR-NAME.                    IC2274.2
049600     MOVE   "******************"  TO EXTERNAL-FILE-RECORD.        IC2274.2
049700     MOVE   "**"                  TO F-S-PARAM.                   IC2274.2
049800     MOVE   "AA"                  TO WRK-DATA-1                   IC2274.2
049900     MOVE   "PQRSTU"              TO WRK-DATA-2                   IC2274.2
050000     MOVE    123456               TO WRK-DATA-3                   IC2274.2
050100     MOVE    9876                 TO WRK-DATA-4.                  IC2274.2
050200     MOVE   "<>"                  TO EXTERNAL-FILE-FS.            IC2274.2
050300     GO TO   EXT-FILE-TEST-02.                                    IC2274.2
050400 EXT-FILE-DELETE-02.                                              IC2274.2
050500     PERFORM DE-LETE.                                             IC2274.2
050600     MOVE    EXTERNAL-RECORD-WORK TO EXTERNAL-FILE-RECORD.        IC2274.2
050700     WRITE   EXTERNAL-FILE-RECORD.                                IC2274.2
050800     GO TO   EXT-FILE-DELETE-02-02.                               IC2274.2
050900*                                                                         
051000*                                                                         
051100*                                                                         
051200*                                                                         
051300*                                                                         
051400*                                                                         
051500*                                                                         
051600 EXT-FILE-TEST-02.                                                IC2274.2
051700     MOVE    2 TO ACTION-CODE.                                    IC2274.2
051800     CALL   "IC227A-1" USING CONTENT   ACTION-CODE                IC2274.2
051900                             REFERENCE EXTERNAL-RECORD-WORK       IC2274.2
052000                                       F-S-PARAM.                 IC2274.2
052100     IF F-S-PARAM IS EQUAL "00"                                   IC2274.2
052200         PERFORM PASS                                             IC2274.2
052300     ELSE                                                         IC2274.2
052400         MOVE   "UNEXPECTED FILE STATUS VALUE RETURNED"           IC2274.2
052500                   TO RE-MARK                                     IC2274.2
052600         MOVE    F-S-PARAM TO COMPUTED-A                          IC2274.2
052700         MOVE    "00" TO CORRECT-A                                IC2274.2
052800         PERFORM FAIL                                             IC2274.2
052900     END-IF.                                                      IC2274.2
053000     GO TO   EXT-FILE-TEST-02-02.                                 IC2274.2
053100 EXT-FILE-DELETE-02-02.                                           IC2274.2
053200     ADD     1 TO REC-CT                                          IC2274.2
053300     PERFORM DE-LETE.                                             IC2274.2
053400     GO TO   EXT-FILE-TEST-02-END.                                IC2274.2
053500 EXT-FILE-TEST-02-02.                                             IC2274.2
053600     ADD     1 TO REC-CT.                                         IC2274.2
053700     IF EXTERNAL-FILE-FS IS EQUAL TO "<>"                         IC2274.2
053800          PERFORM PASS                                            IC2274.2
053900     ELSE                                                         IC2274.2
054000          MOVE   "MAIN PROGRAM FILE STATUS UPDATED" TO RE-MARK    IC2274.2
054100          MOVE   "<>" TO CORRECT-A                                IC2274.2
054200          MOVE    EXTERNAL-FILE-FS TO COMPUTED-A                  IC2274.2
054300          PERFORM FAIL.                                           IC2274.2
054400*                                                                         
054500 EXT-FILE-TEST-02-END.                                            IC2274.2
054600*                                                                         
054700*                                                                         
054800 EXT-INIT-03.                                                     IC2274.2
054900*                                                                         
055000*                                                                         
055100*                                                                         
055200*                                                                         
055300*                                                                         
055400*                                                                         
055500*                                                                         
055600     MOVE    1 TO REC-CT.                                         IC2274.2
055700     MOVE   "EXTERNAL FILE WRITE" TO FEATURE.                     IC2274.2
055800     MOVE   "X-23 4.5.1" TO ANSI-REFERENCE.                       IC2274.2
055900     MOVE   "EXT-FILE-TEST-03"    TO PAR-NAME.                    IC2274.2
056000     MOVE   "BB"                  TO EXT-DATA-1                   IC2274.2
056100     MOVE   "ZYXWVU"              TO EXT-DATA-2                   IC2274.2
056200     MOVE    222222               TO EXT-DATA-3                   IC2274.2
056300     MOVE    9765                 TO EXT-DATA-4.                  IC2274.2
056400     MOVE   "<>"                  TO EXTERNAL-FILE-FS.            IC2274.2
056500     GO TO   EXT-FILE-TEST-03-01.                                 IC2274.2
056600 EXT-FILE-DELETE-03.                                              IC2274.2
056700     PERFORM DE-LETE.                                             IC2274.2
056800     GO TO   EXT-FILE-TEST-03-END.                                IC2274.2
056900*                                                                         
057000 EXT-FILE-TEST-03-01.                                             IC2274.2
057100     WRITE   EXTERNAL-FILE-RECORD.                                IC2274.2
057200     IF EXTERNAL-FILE-FS IS EQUAL TO "00"                         IC2274.2
057300          PERFORM PASS                                            IC2274.2
057400     ELSE                                                         IC2274.2
057500          MOVE   "MAIN PROGRAM FILE STATUS NON-ZERO" TO RE-MARK   IC2274.2
057600          MOVE   "00" TO CORRECT-A                                IC2274.2
057700          MOVE    EXTERNAL-FILE-FS TO COMPUTED-A                  IC2274.2
057800          PERFORM FAIL.                                           IC2274.2
057900*                                                                         
058000 EXT-FILE-TEST-03-END.                                            IC2274.2
058100*                                                                         
058200*                                                                         
058300 EXT-INIT-04.                                                     IC2274.2
058400*                                                                         
058500*                                                                         
058600*                                                                         
058700*                                                                         
058800*                                                                         
058900*                                                                         
059000*                                                                         
059100     MOVE    1 TO REC-CT.                                         IC2274.2
059200     MOVE   "EXTERNAL FILE CLOSE" TO FEATURE.                     IC2274.2
059300     MOVE   "X-23 4.5.1" TO ANSI-REFERENCE.                       IC2274.2
059400     MOVE   "EXT-FILE-TEST-04"    TO PAR-NAME.                    IC2274.2
059500     MOVE   "**"                  TO F-S-PARAM.                   IC2274.2
059600     MOVE   "<>"                  TO EXTERNAL-FILE-FS.            IC2274.2
059700     GO TO   EXT-FILE-TEST-04-01.                                 IC2274.2
059800 EXT-FILE-DELETE-04-01.                                           IC2274.2
059900     PERFORM DE-LETE.                                             IC2274.2
060000     CLOSE   EXTERNAL-FILE.                                       IC2274.2
060100     GO TO   EXT-FILE-DELETE-04-02.                               IC2274.2
060200*                                                                         
060300 EXT-FILE-TEST-04-01.                                             IC2274.2
060400     MOVE    3 TO ACTION-CODE.                                    IC2274.2
060500     CALL   "IC227A-1" USING CONTENT   ACTION-CODE                IC2274.2
060600                                       EXTERNAL-RECORD-WORK       IC2274.2
060700                             REFERENCE F-S-PARAM.                 IC2274.2
060800     IF F-S-PARAM IS EQUAL "00"                                   IC2274.2
060900         PERFORM PASS                                             IC2274.2
061000     ELSE                                                         IC2274.2
061100         MOVE   "UNEXPECTED FILE STATUS VALUE RETURNED"           IC2274.2
061200                   TO RE-MARK                                     IC2274.2
061300         MOVE    F-S-PARAM TO COMPUTED-A                          IC2274.2
061400         MOVE    "00" TO CORRECT-A                                IC2274.2
061500         PERFORM FAIL                                             IC2274.2
061600     END-IF.                                                      IC2274.2
061700     GO TO   EXT-FILE-TEST-04-02.                                 IC2274.2
061800 EXT-FILE-DELETE-04-02.                                           IC2274.2
061900     ADD     1 TO REC-CT                                          IC2274.2
062000     PERFORM DE-LETE.                                             IC2274.2
062100     GO TO   EXT-FILE-TEST-04-END.                                IC2274.2
062200 EXT-FILE-TEST-04-02.                                             IC2274.2
062300     ADD     1 TO REC-CT.                                         IC2274.2
062400     IF EXTERNAL-FILE-FS IS EQUAL TO "<>"                         IC2274.2
062500          PERFORM PASS                                            IC2274.2
062600     ELSE                                                         IC2274.2
062700          MOVE   "MAIN PROGRAM FILE STATUS UPDATED" TO RE-MARK    IC2274.2
062800          MOVE   "<>" TO CORRECT-A                                IC2274.2
062900          MOVE    EXTERNAL-FILE-FS TO COMPUTED-A                  IC2274.2
063000          PERFORM FAIL.                                           IC2274.2
063100*                                                                         
063200 EXT-FILE-TEST-04-END.                                            IC2274.2
063300*                                                                         
063400*                                                                         
063500 EXT-INIT-05.                                                     IC2274.2
063600*                                                                         
063700*                                                                         
063800*                                                                         
063900*                                                                         
064000*                                                                         
064100*                                                                         
064200*                                                                         
064300     MOVE    1 TO REC-CT.                                         IC2274.2
064400     MOVE   "EXTERNAL FILE OPEN"  TO FEATURE.                     IC2274.2
064500     MOVE   "X-23 4.5.1" TO ANSI-REFERENCE.                       IC2274.2
064600     MOVE   "EXT-FILE-TEST-05"    TO PAR-NAME.                    IC2274.2
064700     MOVE   "******************"  TO EXTERNAL-RECORD-WORK.        IC2274.2
064800     MOVE    EXTERNAL-RECORD-WORK TO EXTERNAL-RECORD-HOLD.        IC2274.2
064900     MOVE   "**"                  TO F-S-PARAM.                   IC2274.2
065000     MOVE   "<>"                  TO EXTERNAL-FILE-FS.            IC2274.2
065100     GO TO   EXT-FILE-TEST-05-01.                                 IC2274.2
065200 EXT-FILE-DELETE-05.                                              IC2274.2
065300     PERFORM DE-LETE.                                             IC2274.2
065400     OPEN    INPUT EXTERNAL-FILE.                                 IC2274.2
065500     GO TO   EXT-FILE-DELETE-05-02.                               IC2274.2
065600 EXT-FILE-TEST-05-01.                                             IC2274.2
065700     MOVE    4 TO ACTION-CODE.                                    IC2274.2
065800     CALL    ID1    USING BY CONTENT   ACTION-CODE                IC2274.2
065900                             REFERENCE EXTERNAL-RECORD-WORK       IC2274.2
066000                          BY REFERENCE F-S-PARAM.                 IC2274.2
066100     IF F-S-PARAM IS EQUAL "00"                                   IC2274.2
066200         PERFORM PASS                                             IC2274.2
066300     ELSE                                                         IC2274.2
066400         MOVE   "UNEXPECTED FILE STATUS VALUE RETURNED"           IC2274.2
066500                   TO RE-MARK                                     IC2274.2
066600         MOVE    F-S-PARAM TO COMPUTED-A                          IC2274.2
066700         MOVE    "00" TO CORRECT-A                                IC2274.2
066800         PERFORM FAIL                                             IC2274.2
066900     END-IF.                                                      IC2274.2
067000     GO TO   EXT-FILE-TEST-05-02.                                 IC2274.2
067100 EXT-FILE-DELETE-05-02.                                           IC2274.2
067200     ADD     1 TO REC-CT                                          IC2274.2
067300     PERFORM DE-LETE.                                             IC2274.2
067400     GO TO   EXT-FILE-DELETE-05-03.                               IC2274.2
067500 EXT-FILE-TEST-05-02.                                             IC2274.2
067600     ADD     1 TO REC-CT.                                         IC2274.2
067700     IF EXTERNAL-FILE-FS IS EQUAL TO "<>"                         IC2274.2
067800          PERFORM PASS                                            IC2274.2
067900     ELSE                                                         IC2274.2
068000          MOVE   "MAIN PROGRAM FILE STATUS UPDATED" TO RE-MARK    IC2274.2
068100          MOVE   "<>" TO CORRECT-A                                IC2274.2
068200          MOVE    EXTERNAL-FILE-FS TO COMPUTED-A                  IC2274.2
068300          PERFORM FAIL.                                           IC2274.2
068400*                                                                         
068500 EXT-FILE-DELETE-05-03.                                           IC2274.2
068600     ADD     1 TO REC-CT.                                         IC2274.2
068700     PERFORM DE-LETE.                                             IC2274.2
068800     GO TO   EXT-FILE-DELETE-05-04.                               IC2274.2
068900 EXT-FILE-TEST-05-03.                                             IC2274.2
069000     ADD     1 TO REC-CT.                                         IC2274.2
069100     IF EXTERNAL-FILE-RECORD = EXTERNAL-RECORD-HOLD               IC2274.2
069200          PERFORM PASS                                            IC2274.2
069300     ELSE                                                         IC2274.2
069400          MOVE   "PARAMETER NOT RETURNED THROUGH RECORD AREA"     IC2274.2
069500                    TO RE-MARK                                    IC2274.2
069600          MOVE    EXTERNAL-FILE-RECORD TO COMPUTED-A              IC2274.2
069700          MOVE    EXTERNAL-RECORD-HOLD TO CORRECT-A               IC2274.2
069800          PERFORM FAIL.                                           IC2274.2
069900     GO TO   EXT-FILE-TEST-05-04.                                 IC2274.2
070000 EXT-FILE-DELETE-05-04.                                           IC2274.2
070100     ADD     1 TO REC-CT.                                         IC2274.2
070200     PERFORM DE-LETE.                                             IC2274.2
070300     GO TO   EXT-FILE-TEST-05-END.                                IC2274.2
070400 EXT-FILE-TEST-05-04.                                             IC2274.2
070500     ADD     1 TO REC-CT.                                         IC2274.2
070600     IF EXTERNAL-RECORD-WORK IS = "OPEN   OPEN   OPEN"            IC2274.2
070700          PERFORM PASS                                            IC2274.2
070800     ELSE                                                         IC2274.2
070900          MOVE   "PARAMETER RETURN INCORRECT" TO RE-MARK          IC2274.2
071000          MOVE   "OPEN   OPEN   OPEN"  TO CORRECT-A               IC2274.2
071100          MOVE    EXTERNAL-RECORD-WORK TO COMPUTED-A              IC2274.2
071200          PERFORM FAIL.                                           IC2274.2
071300*                                                                         
071400 EXT-FILE-TEST-05-END.                                            IC2274.2
071500*                                                                         
071600*                                                                         
071700 EXT-INIT-06.                                                     IC2274.2
071800*                                                                         
071900*                                                                         
072000*                                                                         
072100*                                                                         
072200*                                                                         
072300*                                                                         
072400*                                                                         
072500*                                                                         
072600     MOVE    1 TO REC-CT.                                         IC2274.2
072700     MOVE   "EXTERNAL FILE READ"  TO FEATURE.                     IC2274.2
072800     MOVE   "X-23 4.5.1"          TO ANSI-REFERENCE.              IC2274.2
072900     MOVE   "EXT-FILE-TEST-06"    TO PAR-NAME.                    IC2274.2
073000     MOVE   "%%%%%%%%%%%%%%%%%%"  TO EXTERNAL-FILE-RECORD.        IC2274.2
073100     MOVE   "AAPQRSTU1234569876"  TO EXTERNAL-RECORD-HOLD.        IC2274.2
073200     MOVE   "<>"                  TO EXTERNAL-FILE-FS.            IC2274.2
073300     GO TO   EXT-FILE-TEST-06-01.                                 IC2274.2
073400 EXT-FILE-DELETE-06.                                              IC2274.2
073500     PERFORM DE-LETE.                                             IC2274.2
073600     GO TO   EXT-FILE-DELETE-06-02.                               IC2274.2
073700 EXT-FILE-TEST-06-01.                                             IC2274.2
073800     READ    EXTERNAL-FILE NEXT RECORD                            IC2274.2
073900            AT END GO TO EXT-FILE-TEST-06-02.                     IC2274.2
074000     IF EXTERNAL-FILE-FS IS EQUAL "00"                            IC2274.2
074100         PERFORM PASS                                             IC2274.2
074200     ELSE                                                         IC2274.2
074300         MOVE   "UNEXPECTED FILE STATUS VALUE RETURNED"           IC2274.2
074400                   TO RE-MARK                                     IC2274.2
074500         MOVE    EXTERNAL-FILE-FS TO COMPUTED-A                   IC2274.2
074600         MOVE    "00" TO CORRECT-A                                IC2274.2
074700         PERFORM FAIL                                             IC2274.2
074800     END-IF.                                                      IC2274.2
074900     GO TO   EXT-FILE-TEST-06-02.                                 IC2274.2
075000 EXT-FILE-DELETE-06-02.                                           IC2274.2
075100     ADD     1 TO REC-CT                                          IC2274.2
075200     PERFORM DE-LETE.                                             IC2274.2
075300     GO TO   EXT-FILE-TEST-06-END.                                IC2274.2
075400 EXT-FILE-TEST-06-02.                                             IC2274.2
075500     ADD     1 TO REC-CT.                                         IC2274.2
075600     IF EXTERNAL-FILE-RECORD = EXTERNAL-RECORD-HOLD               IC2274.2
075700          PERFORM PASS                                            IC2274.2
075800     ELSE                                                         IC2274.2
075900          MOVE "EXPECTED RECORD NOT READ FROM FILE"               IC2274.2
076000                    TO RE-MARK                                    IC2274.2
076100          MOVE    EXTERNAL-FILE-RECORD TO COMPUTED-A              IC2274.2
076200          MOVE    EXTERNAL-RECORD-HOLD TO CORRECT-A               IC2274.2
076300          PERFORM FAIL.                                           IC2274.2
076400*                                                                         
076500 EXT-FILE-TEST-06-END.                                            IC2274.2
076600*                                                                         
076700*                                                                         
076800 EXT-INIT-07.                                                     IC2274.2
076900*                                                                         
077000*                                                                         
077100*                                                                         
077200*                                                                         
077300*                                                                         
077400*                                                                         
077500*                                                                         
077600*                                                                         
077700     MOVE    1 TO REC-CT.                                         IC2274.2
077800     MOVE   "EXTERNAL FILE READ"  TO FEATURE.                     IC2274.2
077900     MOVE   "X-23 4.5.1" TO ANSI-REFERENCE.                       IC2274.2
078000     MOVE   "EXT-FILE-TEST-07"    TO PAR-NAME.                    IC2274.2
078100     MOVE   "%%%%%%%%%%%%%%%%%%"  TO EXTERNAL-FILE-RECORD.        IC2274.2
078200     MOVE   ";;;;;;;;;;;;;;;;;;"  TO EXTERNAL-RECORD-WORK.        IC2274.2
078300     MOVE   "BBZYXWVU2222229765"  TO EXTERNAL-RECORD-HOLD.        IC2274.2
078400     MOVE   "**"                  TO F-S-PARAM.                   IC2274.2
078500     MOVE   "<>"                  TO EXTERNAL-FILE-FS.            IC2274.2
078600     GO TO   EXT-FILE-TEST-07-01.                                 IC2274.2
078700 EXT-FILE-DELETE-07.                                              IC2274.2
078800     PERFORM DE-LETE.                                             IC2274.2
078900     GO TO   EXT-FILE-DELETE-07-02.                               IC2274.2
079000 EXT-FILE-TEST-07-01.                                             IC2274.2
079100     MOVE    5 TO ACTION-CODE.                                    IC2274.2
079200     CALL    ID1    USING BY CONTENT   ACTION-CODE                IC2274.2
079300                             REFERENCE EXTERNAL-RECORD-WORK       IC2274.2
079400                          BY REFERENCE F-S-PARAM.                 IC2274.2
079500     IF F-S-PARAM IS EQUAL "00"                                   IC2274.2
079600         PERFORM PASS                                             IC2274.2
079700     ELSE                                                         IC2274.2
079800         MOVE   "UNEXPECTED FILE STATUS VALUE RETURNED"           IC2274.2
079900                   TO RE-MARK                                     IC2274.2
080000         MOVE    F-S-PARAM TO COMPUTED-A                          IC2274.2
080100         MOVE    "00" TO CORRECT-A                                IC2274.2
080200         PERFORM FAIL                                             IC2274.2
080300     END-IF.                                                      IC2274.2
080400     GO TO   EXT-FILE-TEST-07-02.                                 IC2274.2
080500 EXT-FILE-DELETE-07-02.                                           IC2274.2
080600     ADD     1 TO REC-CT                                          IC2274.2
080700     PERFORM DE-LETE.                                             IC2274.2
080800     GO TO   EXT-FILE-DELETE-07-03.                               IC2274.2
080900 EXT-FILE-TEST-07-02.                                             IC2274.2
081000     ADD     1 TO REC-CT.                                         IC2274.2
081100     IF EXTERNAL-FILE-FS IS EQUAL TO "<>"                         IC2274.2
081200          PERFORM PASS                                            IC2274.2
081300     ELSE                                                         IC2274.2
081400          MOVE   "MAIN PROGRAM FILE STATUS UPDATED" TO RE-MARK    IC2274.2
081500          MOVE   "<>" TO CORRECT-A                                IC2274.2
081600          MOVE    EXTERNAL-FILE-FS TO COMPUTED-A                  IC2274.2
081700          PERFORM FAIL.                                           IC2274.2
081800     GO TO   EXT-FILE-TEST-07-03.                                 IC2274.2
081900 EXT-FILE-DELETE-07-03.                                           IC2274.2
082000     ADD     1 TO REC-CT.                                         IC2274.2
082100     PERFORM DE-LETE.                                             IC2274.2
082200     GO TO   EXT-FILE-DELETE-07-04.                               IC2274.2
082300 EXT-FILE-TEST-07-03.                                             IC2274.2
082400     ADD     1 TO REC-CT.                                         IC2274.2
082500     IF EXTERNAL-FILE-RECORD = EXTERNAL-RECORD-HOLD               IC2274.2
082600          PERFORM PASS                                            IC2274.2
082700     ELSE                                                         IC2274.2
082800          MOVE "EXPECTED RECORD NOT RETURNED THROUGH RECORD AREA" IC2274.2
082900                    TO RE-MARK                                    IC2274.2
083000          MOVE    EXTERNAL-FILE-RECORD TO COMPUTED-A              IC2274.2
083100          MOVE    EXTERNAL-RECORD-HOLD TO CORRECT-A               IC2274.2
083200          PERFORM FAIL.                                           IC2274.2
083300     GO TO   EXT-FILE-TEST-07-04.                                 IC2274.2
083400 EXT-FILE-DELETE-07-04.                                           IC2274.2
083500     ADD     1 TO REC-CT.                                         IC2274.2
083600     PERFORM DE-LETE.                                             IC2274.2
083700     GO TO   EXT-FILE-TEST-07-END.                                IC2274.2
083800 EXT-FILE-TEST-07-04.                                             IC2274.2
083900     ADD     1 TO REC-CT.                                         IC2274.2
084000     IF EXTERNAL-RECORD-WORK IS = EXTERNAL-RECORD-HOLD            IC2274.2
084100          PERFORM PASS                                            IC2274.2
084200     ELSE                                                         IC2274.2
084300          MOVE   "PARAMETER RETURN INCORRECT" TO RE-MARK          IC2274.2
084400          MOVE    EXTERNAL-RECORD-HOLD TO CORRECT-A               IC2274.2
084500          MOVE    EXTERNAL-RECORD-WORK TO COMPUTED-A              IC2274.2
084600          PERFORM FAIL.                                           IC2274.2
084700*                                                                         
084800 EXT-FILE-TEST-07-END.                                            IC2274.2
084900*                                                                         
085000*                                                                         
085100 EXT-INIT-08.                                                     IC2274.2
085200*                                                                         
085300*                                                                         
085400*                                                                         
085500*                                                                         
085600*                                                                         
085700*                                                                         
085800*                                                                         
085900*                                                                         
086000*                                                                         
086100     MOVE    1 TO REC-CT.                                         IC2274.2
086200     MOVE   "EXTERNAL FILE EOF"   TO FEATURE.                     IC2274.2
086300     MOVE   "X-23 4.5.1" TO ANSI-REFERENCE.                       IC2274.2
086400     MOVE   "EXT-FILE-TEST-08"    TO PAR-NAME.                    IC2274.2
086500     MOVE   "%%%%%%%%%%%%%%%%%%"  TO EXTERNAL-FILE-RECORD.        IC2274.2
086600     MOVE   ";;;;;;;;;;;;;;;;;;"  TO EXTERNAL-RECORD-WORK.        IC2274.2
086700     MOVE   "END-FILE  END-FILE"  TO EXTERNAL-RECORD-HOLD.        IC2274.2
086800     MOVE   "**"                  TO F-S-PARAM.                   IC2274.2
086900     MOVE   "<>"                  TO EXTERNAL-FILE-FS.            IC2274.2
087000     GO TO   EXT-FILE-TEST-08-01.                                 IC2274.2
087100 EXT-FILE-DELETE-08.                                              IC2274.2
087200     PERFORM DE-LETE.                                             IC2274.2
087300     GO TO   EXT-FILE-DELETE-08-02.                               IC2274.2
087400 EXT-FILE-TEST-08-01.                                             IC2274.2
087500     MOVE    5 TO ACTION-CODE.                                    IC2274.2
087600     CALL   "IC227A-1" USING CONTENT   ACTION-CODE                IC2274.2
087700                             REFERENCE EXTERNAL-RECORD-WORK       IC2274.2
087800                          BY REFERENCE F-S-PARAM.                 IC2274.2
087900     IF F-S-PARAM IS EQUAL "10"                                   IC2274.2
088000         PERFORM PASS                                             IC2274.2
088100     ELSE                                                         IC2274.2
088200         MOVE   "UNEXPECTED FILE STATUS VALUE RETURNED"           IC2274.2
088300                   TO RE-MARK                                     IC2274.2
088400         MOVE    F-S-PARAM TO COMPUTED-A                          IC2274.2
088500         MOVE    "10" TO CORRECT-A                                IC2274.2
088600         PERFORM FAIL                                             IC2274.2
088700     END-IF.                                                      IC2274.2
088800     GO TO   EXT-FILE-TEST-08-02.                                 IC2274.2
088900 EXT-FILE-DELETE-08-02.                                           IC2274.2
089000     ADD     1 TO REC-CT                                          IC2274.2
089100     PERFORM DE-LETE.                                             IC2274.2
089200     GO TO   EXT-FILE-DELETE-08-03.                               IC2274.2
089300 EXT-FILE-TEST-08-02.                                             IC2274.2
089400     ADD     1 TO REC-CT.                                         IC2274.2
089500     IF EXTERNAL-FILE-FS IS EQUAL TO "<>"                         IC2274.2
089600          PERFORM PASS                                            IC2274.2
089700     ELSE                                                         IC2274.2
089800          MOVE   "MAIN PROGRAM FILE STATUS UPDATED" TO RE-MARK    IC2274.2
089900          MOVE   "<>" TO CORRECT-A                                IC2274.2
090000          MOVE    EXTERNAL-FILE-FS TO COMPUTED-A                  IC2274.2
090100          PERFORM FAIL.                                           IC2274.2
090200*                                                                         
090300 EXT-FILE-DELETE-08-03.                                           IC2274.2
090400     ADD     1 TO REC-CT.                                         IC2274.2
090500     PERFORM DE-LETE.                                             IC2274.2
090600     GO TO   EXT-FILE-DELETE-08-04.                               IC2274.2
090700 EXT-FILE-TEST-08-03.                                             IC2274.2
090800     ADD     1 TO REC-CT.                                         IC2274.2
090900     IF EXTERNAL-FILE-RECORD = EXTERNAL-RECORD-HOLD               IC2274.2
091000          PERFORM PASS                                            IC2274.2
091100     ELSE                                                         IC2274.2
091200          MOVE "EXPECTED VALUE NOT RETURNED THROUGH RECORD AREA"  IC2274.2
091300                    TO RE-MARK                                    IC2274.2
091400          MOVE    EXTERNAL-FILE-RECORD TO COMPUTED-A              IC2274.2
091500          MOVE    EXTERNAL-RECORD-HOLD TO CORRECT-A               IC2274.2
091600          PERFORM FAIL.                                           IC2274.2
091700*                                                                         
091800 EXT-FILE-DELETE-08-04.                                           IC2274.2
091900     ADD     1 TO REC-CT.                                         IC2274.2
092000     PERFORM DE-LETE.                                             IC2274.2
092100     GO TO   EXT-FILE-TEST-08-END.                                IC2274.2
092200 EXT-FILE-TEST-08-04.                                             IC2274.2
092300     ADD     1 TO REC-CT.                                         IC2274.2
092400     IF EXTERNAL-RECORD-WORK IS = EXTERNAL-RECORD-HOLD            IC2274.2
092500          PERFORM PASS                                            IC2274.2
092600     ELSE                                                         IC2274.2
092700          MOVE   "PARAMETER RETURN INCORRECT" TO RE-MARK          IC2274.2
092800          MOVE    EXTERNAL-RECORD-HOLD TO CORRECT-A               IC2274.2
092900          MOVE    EXTERNAL-RECORD-WORK TO COMPUTED-A              IC2274.2
093000          PERFORM FAIL.                                           IC2274.2
093100*                                                                         
093200 EXT-FILE-TEST-08-END.                                            IC2274.2
093300*                                                                         
093400*                                                                         
093500 EXT-INIT-09.                                                     IC2274.2
093600*                                                                         
093700*                                                                         
093800*                                                                         
093900*                                                                         
094000*                                                                         
094100*                                                                         
094200*                                                                         
094300*                                                                         
094400     MOVE    1 TO REC-CT.                                         IC2274.2
094500     MOVE   "EXTERNAL FILE CLOSE" TO FEATURE.                     IC2274.2
094600     MOVE   "X-23 4.5.1" TO ANSI-REFERENCE.                       IC2274.2
094700     MOVE   "EXT-FILE-TEST-09"    TO PAR-NAME.                    IC2274.2
094800     MOVE   "<>"                  TO EXTERNAL-FILE-FS.            IC2274.2
094900     GO TO   EXT-FILE-TEST-09-01.                                 IC2274.2
095000 EXT-FILE-DELETE-09.                                              IC2274.2
095100     PERFORM DE-LETE.                                             IC2274.2
095200     GO TO   EXT-FILE-TEST-09-END.                                IC2274.2
095300 EXT-FILE-TEST-09-01.                                             IC2274.2
095400     CLOSE EXTERNAL-FILE.                                         IC2274.2
095500     IF EXTERNAL-FILE-FS IS EQUAL TO "00"                         IC2274.2
095600          PERFORM PASS                                            IC2274.2
095700     ELSE                                                         IC2274.2
095800          MOVE   "FILE CLOSE FAILURE" TO RE-MARK                  IC2274.2
095900          MOVE   "00" TO CORRECT-A                                IC2274.2
096000          MOVE    EXTERNAL-FILE-FS TO COMPUTED-A                  IC2274.2
096100          PERFORM FAIL.                                           IC2274.2
096200 EXT-FILE-TEST-09-END.                                            IC2274.2
096300*                                                                         
096400*                                                                         
096500 CCVS-EXIT SECTION.                                               IC2274.2
096600 CCVS-999999.                                                     IC2274.2
096700     GO TO CLOSE-FILES.                                           IC2274.2
096800 END PROGRAM IC227A.                                              IC2274.2
096900 IDENTIFICATION DIVISION.                                         IC2274.2
097000 PROGRAM-ID.                                                      IC2274.2
097100     IC227A-1.                                                    IC2274.2
097200*                                                                         
097300*                                                                         
097400*                                                                         
097500*                                                                         
097600*                                                                         
097700*                                                                         
097800*                                                                         
097900*                                                                         
098000*                                                                         
098100*                                                                         
098200*                                                                         
098300*                                                                         
098400*                                                                         
098500*                                                                         
098600*                                                                         
098700*                                                                         
098800*                                                                         
098900*                                                                         
099000*                                                                         
099100*                                                                         
099200*                                                                         
099300*                                                                         
099400*                                                                         
099500*                                                                         
099600*                                                                         
099700*                                                                         
099800*                                                                         
099900*                                                                         
100000*                                                                         
100100*                                                                         
100200*                                                                         
100300*                                                                         
100400*                                                                         
100500*                                                                         
100600*                                                                         
100700*                                                                         
100800*                                                                         
100900*                                                                         
101000*                                                                         
101100*                                                                         
101200*                                                                         
101300*                                                                         
101400*                                                                         
101500*                                                                         
101600*                                                                         
101700*                                                                         
101800*                                                                         
101900*                                                                         
102000*                                                                         
102100*                                                                         
102200*                                                                         
102300*                                                                         
102400*                                                                         
102500*                                                                         
102600*                                                                         
102700*                                                                         
102800*                                                                         
102900*                                                                         
103000*                                                                         
103100*                                                                         
103200*                                                                         
103300*                                                                         
103400*                                                                         
103500*                                                                         
103600*                                                                         
103700*                                                                         
103800*                                                                         
103900*                                                                         
104000*                                                                         
104100*                                                                         
104200*                                                                         
104300*                                                                         
104400*                                                                         
104500*                                                                         
104600*                                                                         
104700*                                                                         
104800*                                                                         
104900*                                                                         
105000*                                                                         
105100*                                                                         
105200*                                                                         
105300*                                                                         
105400*                                                                         
105500*                                                                         
105600*                                                                         
105700*                                                                         
105800*                                                                         
105900*                                                                         
106000*                                                                         
106100*                                                                         
106200*                                                                         
106300*                                                                         
106400*                                                                         
106500*                                                                         
106600*                                                                         
106700*                                                                         
106800*                                                                         
106900*                                                                         
107000*                                                                         
107100*                                                                         
107200*                                                                         
107300 ENVIRONMENT DIVISION.                                            IC2274.2
107400 CONFIGURATION SECTION.                                           IC2274.2
107500 SOURCE-COMPUTER.                                                 IC2274.2
107600     GNU-Linux.                                                   IC2274.2
107700 OBJECT-COMPUTER.                                                 IC2274.2
107800     GNU-Linux.                                                   IC2274.2
107900*                                                                         
108000 INPUT-OUTPUT SECTION.                                            IC2274.2
108100 FILE-CONTROL.                                                    IC2274.2
108200     SELECT EXTERNAL-FILE ASSIGN TO                               IC2274.2
108300     "XXXXX014"                                                   IC2274.2
108400     FILE STATUS IS LINKAGE-FS.                                   IC2274.2
108500*                                                                         
108600 DATA DIVISION.                                                   IC2274.2
108700 FILE SECTION.                                                    IC2274.2
108800 FD  EXTERNAL-FILE                                                IC2274.2
108900         IS EXTERNAL                                              IC2274.2
109000         RECORD CONTAINS 18 CHARACTERS.                           IC2274.2
109100 01  EXTERNAL-FILE-RECORD.                                        IC2274.2
109200     03  EXT-DATA-1              PIC X(2).                        IC2274.2
109300     03  EXT-DATA-2              PIC X(6).                        IC2274.2
109400     03  EXT-DATA-3              PIC 9(6).                        IC2274.2
109500     03  EXT-DATA-4              PIC 9(4).                        IC2274.2
109600*                                                                         
109700 WORKING-STORAGE SECTION.                                         IC2274.2
109800*                                                                         
109900*                                                                         
110000*                                                                         
110100*                                                                         
110200*                                                                         
110300*                                                                         
110400*                                                                         
110500 01  EXTERNAL-RECORD-WORK.                                        IC2274.2
110600     03  WRK-DATA-1              PIC X(2).                        IC2274.2
110700     03  WRK-DATA-2              PIC X(6).                        IC2274.2
110800     03  WRK-DATA-3              PIC 9(6).                        IC2274.2
110900     03  WRK-DATA-4              PIC 9(4).                        IC2274.2
111000*                                                                         
111100 LINKAGE SECTION.                                                 IC2274.2
111200*                                                                         
111300 01  LINKAGE-RECORD-WORK.                                         IC2274.2
111400     05  WRK-DATA-1              PIC X(2).                        IC2274.2
111500     05  WRK-DATA-2              PIC X(6).                        IC2274.2
111600     05  WRK-DATA-3              PIC 9(6).                        IC2274.2
111700     05  WRK-DATA-4              PIC 9(4).                        IC2274.2
111800*                                                                         
111900 01  LINKAGE-FS                  PIC XX.                          IC2274.2
112000 01  ACTION-CODE                 PIC 99.                          IC2274.2
112100*                                                                         
112200*                                                                         
112300 PROCEDURE DIVISION USING ACTION-CODE                             IC2274.2
112400                          LINKAGE-RECORD-WORK                     IC2274.2
112500                          LINKAGE-FS.                             IC2274.2
112600*                                                                         
112700 SECT-IC227A-1-01 SECTION.                                        IC2274.2
112800 EXT-DECODE-01.                                                   IC2274.2
112900*                                                                         
113000*                                                                         
113100*                                                                         
113200*                                                                         
113300*                                                                         
113400*                                                                         
113500*                                                                         
113600*                                                                         
113700     GO TO   SUBPROGRAM-FUNCTION-01                               IC2274.2
113800             SUBPROGRAM-FUNCTION-02                               IC2274.2
113900             SUBPROGRAM-FUNCTION-03                               IC2274.2
114000             SUBPROGRAM-FUNCTION-04                               IC2274.2
114100             SUBPROGRAM-FUNCTION-05                               IC2274.2
114200                 DEPENDING ON ACTION-CODE.                        IC2274.2
114300*                                                                         
114400*                                                                         
114500*                                                                         
114600     MOVE   "FFFFFFFFFFFFFFFFFF" TO LINKAGE-RECORD-WORK           IC2274.2
114700     MOVE   "FF"                 TO LINKAGE-FS                    IC2274.2
114800     EXIT PROGRAM.                                                IC2274.2
114900*                                                                         
115000*                                                                         
115100 SUBPROGRAM-FUNCTION-01.                                          IC2274.2
115200     MOVE    EXTERNAL-FILE-RECORD TO EXTERNAL-RECORD-WORK         IC2274.2
115300     MOVE    LINKAGE-RECORD-WORK  TO EXTERNAL-FILE-RECORD         IC2274.2
115400     MOVE    EXTERNAL-RECORD-WORK TO LINKAGE-RECORD-WORK.         IC2274.2
115500     MOVE   "XX"                  TO LINKAGE-FS.                  IC2274.2
115600     EXIT PROGRAM.                                                IC2274.2
115700*                                                                         
115800*                                                                         
115900 SUBPROGRAM-FUNCTION-02.                                          IC2274.2
116000*                                                                         
116100*                                                                         
116200*                                                                         
116300     MOVE    LINKAGE-RECORD-WORK TO EXTERNAL-FILE-RECORD.         IC2274.2
116400     WRITE   EXTERNAL-FILE-RECORD.                                IC2274.2
116500     EXIT    PROGRAM.                                             IC2274.2
116600*                                                                         
116700*                                                                         
116800 SUBPROGRAM-FUNCTION-03.                                          IC2274.2
116900*                                                                         
117000*                                                                         
117100*                                                                         
117200     CLOSE   EXTERNAL-FILE.                                       IC2274.2
117300     EXIT    PROGRAM.                                             IC2274.2
117400*                                                                         
117500*                                                                         
117600 SUBPROGRAM-FUNCTION-04.                                          IC2274.2
117700*                                                                         
117800*                                                                         
117900*                                                                         
118000     OPEN    INPUT EXTERNAL-FILE.                                 IC2274.2
118100     MOVE   "OPEN   OPEN   OPEN"  TO EXTERNAL-FILE-RECORD.        IC2274.2
118200     MOVE    EXTERNAL-FILE-RECORD TO LINKAGE-RECORD-WORK.         IC2274.2
118300     EXIT    PROGRAM.                                             IC2274.2
118400*                                                                         
118500*                                                                         
118600 SUBPROGRAM-FUNCTION-05.                                          IC2274.2
118700*                                                                         
118800*                                                                         
118900*                                                                         
119000     READ    EXTERNAL-FILE                                        IC2274.2
119100                AT END GO TO SUBPROGRAM-FUNCTION-05-EOF.          IC2274.2
119200     MOVE    EXTERNAL-FILE-RECORD TO LINKAGE-RECORD-WORK.         IC2274.2
119300     EXIT    PROGRAM.                                             IC2274.2
119400*                                                                         
119500 SUBPROGRAM-FUNCTION-05-EOF.                                      IC2274.2
119600     MOVE    EXTERNAL-FILE-RECORD TO LINKAGE-RECORD-WORK.         IC2274.2
119700     MOVE   "END-FILE  END-FILE"  TO EXTERNAL-FILE-RECORD.        IC2274.2
119800     EXIT    PROGRAM.                                             IC2274.2
119900*                                                                         
120000 END PROGRAM IC227A-1.                                            IC2274.2
