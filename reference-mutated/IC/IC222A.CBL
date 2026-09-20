000100 IDENTIFICATION DIVISION.                                         IC2224.2
000200 PROGRAM-ID.                                                      IC2224.2
000300     IC222A.                                                      IC2224.2
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
005300*                                                                         
005400*                                                                         
005500*                                                                         
005600*                                                                         
005700*                                                                         
005800*                                                                         
005900*                                                                         
006000*                                                                         
006100*                                                                         
006200*                                                                         
006300*                                                                         
006400*                                                                         
006500*                                                                         
006600*                                                                         
006700*                                                                         
006800*                                                                         
006900*                                                                         
007000*                                                                         
007100*                                                                         
007200*                                                                         
007300*                                                                         
007400*                                                                         
007500*                                                                         
007600*                                                                         
007700*                                                                         
007800*                                                                         
007900*                                                                         
008000*                                                                         
008100*                                                                         
008200*                                                                         
008300*                                                                         
008400*                                                                         
008500 ENVIRONMENT DIVISION.                                            IC2224.2
008600 CONFIGURATION SECTION.                                           IC2224.2
008700 SOURCE-COMPUTER.                                                 IC2224.2
008800     GNU-Linux.                                                   IC2224.2
008900 OBJECT-COMPUTER.                                                 IC2224.2
009000     GNU-Linux.                                                   IC2224.2
009100 INPUT-OUTPUT SECTION.                                            IC2224.2
009200 FILE-CONTROL.                                                    IC2224.2
009300     SELECT PRINT-FILE ASSIGN TO                                  IC2224.2
009400     "REPORT".                                                    IC2224.2
009500*                                                                         
009600 DATA DIVISION.                                                   IC2224.2
009700 FILE SECTION.                                                    IC2224.2
009800 FD  PRINT-FILE.                                                  IC2224.2
009900 01  PRINT-REC PICTURE X(120).                                    IC2224.2
010000 01  DUMMY-RECORD PICTURE X(120).                                 IC2224.2
010100*                                                                         
010200 WORKING-STORAGE SECTION.                                         IC2224.2
010300 77  DN1 PICTURE S99  VALUE ZERO.                                 IC2224.2
010400 77  DN3 PICTURE S99.                                             IC2224.2
010500 77  ID1 PICTURE X(8) VALUE "IC222A-1".                           IC2224.2
010600 77  ID2 PICTURE X(8).                                            IC2224.2
010700 77  DN2 PICTURE S99                                              IC2224.2
010800         USAGE COMPUTATIONAL, VALUE ZERO.                         IC2224.2
010900 77  DN4 PICTURE S99                                              IC2224.2
011000         USAGE IS COMPUTATIONAL.                                  IC2224.2
011100 77  CALL-FLAG PIC 9.                                             IC2224.2
011200 01  EXCEPTION-PATH-FLAG PICTURE X.                               IC2224.2
011300*                                                                         
011400 01  TEST-RESULTS.                                                IC2224.2
011500     02 FILLER                   PIC X      VALUE SPACE.          IC2224.2
011600     02 FEATURE                  PIC X(20)  VALUE SPACE.          IC2224.2
011700     02 FILLER                   PIC X      VALUE SPACE.          IC2224.2
011800     02 P-OR-F                   PIC X(5)   VALUE SPACE.          IC2224.2
011900     02 FILLER                   PIC X      VALUE SPACE.          IC2224.2
012000     02  PAR-NAME.                                                IC2224.2
012100       03 FILLER                 PIC X(19)  VALUE SPACE.          IC2224.2
012200       03  PARDOT-X              PIC X      VALUE SPACE.          IC2224.2
012300       03 DOTVALUE               PIC 99     VALUE ZERO.           IC2224.2
012400     02 FILLER                   PIC X(8)   VALUE SPACE.          IC2224.2
012500     02 RE-MARK                  PIC X(61).                       IC2224.2
012600 01  TEST-COMPUTED.                                               IC2224.2
012700     02 FILLER                   PIC X(30)  VALUE SPACE.          IC2224.2
012800     02 FILLER                   PIC X(17)  VALUE                 IC2224.2
012900            "       COMPUTED=".                                   IC2224.2
013000     02 COMPUTED-X.                                               IC2224.2
013100     03 COMPUTED-A               PIC X(20)  VALUE SPACE.          IC2224.2
013200     03 COMPUTED-N               REDEFINES COMPUTED-A             IC2224.2
013300                                 PIC -9(9).9(9).                  IC2224.2
013400     03 COMPUTED-0V18 REDEFINES COMPUTED-A   PIC -.9(18).         IC2224.2
013500     03 COMPUTED-4V14 REDEFINES COMPUTED-A   PIC -9(4).9(14).     IC2224.2
013600     03 COMPUTED-14V4 REDEFINES COMPUTED-A   PIC -9(14).9(4).     IC2224.2
013700     03       CM-18V0 REDEFINES COMPUTED-A.                       IC2224.2
013800         04 COMPUTED-18V0                    PIC -9(18).          IC2224.2
013900         04 FILLER                           PIC X.               IC2224.2
014000     03 FILLER PIC X(50) VALUE SPACE.                             IC2224.2
014100 01  TEST-CORRECT.                                                IC2224.2
014200     02 FILLER PIC X(30) VALUE SPACE.                             IC2224.2
014300     02 FILLER PIC X(17) VALUE "       CORRECT =".                IC2224.2
014400     02 CORRECT-X.                                                IC2224.2
014500     03 CORRECT-A                  PIC X(20) VALUE SPACE.         IC2224.2
014600     03 CORRECT-N    REDEFINES CORRECT-A     PIC -9(9).9(9).      IC2224.2
014700     03 CORRECT-0V18 REDEFINES CORRECT-A     PIC -.9(18).         IC2224.2
014800     03 CORRECT-4V14 REDEFINES CORRECT-A     PIC -9(4).9(14).     IC2224.2
014900     03 CORRECT-14V4 REDEFINES CORRECT-A     PIC -9(14).9(4).     IC2224.2
015000     03      CR-18V0 REDEFINES CORRECT-A.                         IC2224.2
015100         04 CORRECT-18V0                     PIC -9(18).          IC2224.2
015200         04 FILLER                           PIC X.               IC2224.2
015300     03 FILLER PIC X(2) VALUE SPACE.                              IC2224.2
015400     03 COR-ANSI-REFERENCE             PIC X(48) VALUE SPACE.     IC2224.2
015500 01  CCVS-C-1.                                                    IC2224.2
015600     02 FILLER  PIC IS X(99)    VALUE IS " FEATURE              PAIC2224.2
015700-    "SS  PARAGRAPH-NAME                                          IC2224.2
015800-    "       REMARKS".                                            IC2224.2
015900     02 FILLER                     PIC X(20)    VALUE SPACE.      IC2224.2
016000 01  CCVS-C-2.                                                    IC2224.2
016100     02 FILLER                     PIC X        VALUE SPACE.      IC2224.2
016200     02 FILLER                     PIC X(6)     VALUE "TESTED".   IC2224.2
016300     02 FILLER                     PIC X(15)    VALUE SPACE.      IC2224.2
016400     02 FILLER                     PIC X(4)     VALUE "FAIL".     IC2224.2
016500     02 FILLER                     PIC X(94)    VALUE SPACE.      IC2224.2
016600 01  REC-SKL-SUB                   PIC 9(2)     VALUE ZERO.       IC2224.2
016700 01  REC-CT                        PIC 99       VALUE ZERO.       IC2224.2
016800 01  DELETE-COUNTER                PIC 999      VALUE ZERO.       IC2224.2
016900 01  ERROR-COUNTER                 PIC 999      VALUE ZERO.       IC2224.2
017000 01  INSPECT-COUNTER               PIC 999      VALUE ZERO.       IC2224.2
017100 01  PASS-COUNTER                  PIC 999      VALUE ZERO.       IC2224.2
017200 01  TOTAL-ERROR                   PIC 999      VALUE ZERO.       IC2224.2
017300 01  ERROR-HOLD                    PIC 999      VALUE ZERO.       IC2224.2
017400 01  DUMMY-HOLD                    PIC X(120)   VALUE SPACE.      IC2224.2
017500 01  RECORD-COUNT                  PIC 9(5)     VALUE ZERO.       IC2224.2
017600 01  ANSI-REFERENCE                PIC X(48)    VALUE SPACES.     IC2224.2
017700 01  CCVS-H-1.                                                    IC2224.2
017800     02  FILLER                    PIC X(39)    VALUE SPACES.     IC2224.2
017900     02  FILLER                    PIC X(42)    VALUE             IC2224.2
018000     "OFFICIAL COBOL COMPILER VALIDATION SYSTEM".                 IC2224.2
018100     02  FILLER                    PIC X(39)    VALUE SPACES.     IC2224.2
018200 01  CCVS-H-2A.                                                   IC2224.2
018300   02  FILLER                        PIC X(40)  VALUE SPACE.      IC2224.2
018400   02  FILLER                        PIC X(7)   VALUE "CCVS85 ".  IC2224.2
018500   02  FILLER                        PIC XXXX   VALUE             IC2224.2
018600     "4.2 ".                                                      IC2224.2
018700   02  FILLER                        PIC X(28)  VALUE             IC2224.2
018800            " COPY - NOT FOR DISTRIBUTION".                       IC2224.2
018900   02  FILLER                        PIC X(41)  VALUE SPACE.      IC2224.2
019000                                                                  IC2224.2
019100 01  CCVS-H-2B.                                                   IC2224.2
019200   02  FILLER                        PIC X(15)  VALUE             IC2224.2
019300            "TEST RESULT OF ".                                    IC2224.2
019400   02  TEST-ID                       PIC X(9).                    IC2224.2
019500   02  FILLER                        PIC X(4)   VALUE             IC2224.2
019600            " IN ".                                               IC2224.2
019700   02  FILLER                        PIC X(12)  VALUE             IC2224.2
019800     " HIGH       ".                                              IC2224.2
019900   02  FILLER                        PIC X(22)  VALUE             IC2224.2
020000            " LEVEL VALIDATION FOR ".                             IC2224.2
020100   02  FILLER                        PIC X(58)  VALUE             IC2224.2
020200     "ON-SITE VALIDATION, NATIONAL INSTITUTE OF STD & TECH.     ".IC2224.2
020300 01  CCVS-H-3.                                                    IC2224.2
020400     02  FILLER                      PIC X(34)  VALUE             IC2224.2
020500            " FOR OFFICIAL USE ONLY    ".                         IC2224.2
020600     02  FILLER                      PIC X(58)  VALUE             IC2224.2
020700     "COBOL 85 VERSION 4.2, Apr  1993 SSVG                      ".IC2224.2
020800     02  FILLER                      PIC X(28)  VALUE             IC2224.2
020900            "  COPYRIGHT   1985,1986 ".                           IC2224.2
021000 01  CCVS-E-1.                                                    IC2224.2
021100     02 FILLER                       PIC X(52)  VALUE SPACE.      IC2224.2
021200     02 FILLER  PIC X(14) VALUE IS "END OF TEST-  ".              IC2224.2
021300     02 ID-AGAIN                     PIC X(9).                    IC2224.2
021400     02 FILLER                       PIC X(45)  VALUE SPACES.     IC2224.2
021500 01  CCVS-E-2.                                                    IC2224.2
021600     02  FILLER                      PIC X(31)  VALUE SPACE.      IC2224.2
021700     02  FILLER                      PIC X(21)  VALUE SPACE.      IC2224.2
021800     02 CCVS-E-2-2.                                               IC2224.2
021900         03 ERROR-TOTAL              PIC XXX    VALUE SPACE.      IC2224.2
022000         03 FILLER                   PIC X      VALUE SPACE.      IC2224.2
022100         03 ENDER-DESC               PIC X(44)  VALUE             IC2224.2
022200            "ERRORS ENCOUNTERED".                                 IC2224.2
022300 01  CCVS-E-3.                                                    IC2224.2
022400     02  FILLER                      PIC X(22)  VALUE             IC2224.2
022500            " FOR OFFICIAL USE ONLY".                             IC2224.2
022600     02  FILLER                      PIC X(12)  VALUE SPACE.      IC2224.2
022700     02  FILLER                      PIC X(58)  VALUE             IC2224.2
022800     "ON-SITE VALIDATION, NATIONAL INSTITUTE OF STD & TECH.     ".IC2224.2
022900     02  FILLER                      PIC X(8)   VALUE SPACE.      IC2224.2
023000     02  FILLER                      PIC X(20)  VALUE             IC2224.2
023100             " COPYRIGHT 1985,1986".                              IC2224.2
023200 01  CCVS-E-4.                                                    IC2224.2
023300     02 CCVS-E-4-1                   PIC XXX    VALUE SPACE.      IC2224.2
023400     02 FILLER                       PIC X(4)   VALUE " OF ".     IC2224.2
023500     02 CCVS-E-4-2                   PIC XXX    VALUE SPACE.      IC2224.2
023600     02 FILLER                       PIC X(40)  VALUE             IC2224.2
023700      "  TESTS WERE EXECUTED SUCCESSFULLY".                       IC2224.2
023800 01  XXINFO.                                                      IC2224.2
023900     02 FILLER                       PIC X(19)  VALUE             IC2224.2
024000            "*** INFORMATION ***".                                IC2224.2
024100     02 INFO-TEXT.                                                IC2224.2
024200       04 FILLER                     PIC X(8)   VALUE SPACE.      IC2224.2
024300       04 XXCOMPUTED                 PIC X(20).                   IC2224.2
024400       04 FILLER                     PIC X(5)   VALUE SPACE.      IC2224.2
024500       04 XXCORRECT                  PIC X(20).                   IC2224.2
024600     02 INF-ANSI-REFERENCE           PIC X(48).                   IC2224.2
024700 01  HYPHEN-LINE.                                                 IC2224.2
024800     02 FILLER  PIC IS X VALUE IS SPACE.                          IC2224.2
024900     02 FILLER  PIC IS X(65)    VALUE IS "************************IC2224.2
025000-    "*****************************************".                 IC2224.2
025100     02 FILLER  PIC IS X(54)    VALUE IS "************************IC2224.2
025200-    "******************************".                            IC2224.2
025300 01  CCVS-PGM-ID                     PIC X(9)   VALUE             IC2224.2
025400     "IC222A".                                                    IC2224.2
025500*                                                                         
025600 PROCEDURE DIVISION.                                              IC2224.2
025700 CCVS1 SECTION.                                                   IC2224.2
025800 OPEN-FILES.                                                      IC2224.2
025900     OPEN    OUTPUT PRINT-FILE.                                   IC2224.2
026000     MOVE  CCVS-PGM-ID TO TEST-ID. MOVE CCVS-PGM-ID TO ID-AGAIN.  IC2224.2
026100     MOVE    SPACE TO TEST-RESULTS.                               IC2224.2
026200     PERFORM HEAD-ROUTINE THRU COLUMN-NAMES-ROUTINE.              IC2224.2
026300     GO TO CCVS1-EXIT.                                            IC2224.2
026400 CLOSE-FILES.                                                     IC2224.2
026500     PERFORM END-ROUTINE THRU END-ROUTINE-13. CLOSE PRINT-FILE.   IC2224.2
026600 TERMINATE-CCVS.                                                  IC2224.2
026900     STOP     RUN.                                                IC2224.2
027000 INSPT. MOVE "INSPT" TO P-OR-F. ADD 1 TO INSPECT-COUNTER.         IC2224.2
027100 PASS.  MOVE "PASS " TO P-OR-F.  ADD 1 TO PASS-COUNTER.           IC2224.2
027200 FAIL.  MOVE "FAIL*" TO P-OR-F.  ADD 1 TO ERROR-COUNTER.          IC2224.2
027300 DE-LETE.  MOVE "*****" TO P-OR-F.  ADD 1 TO DELETE-COUNTER.      IC2224.2
027400     MOVE "****TEST DELETED****" TO RE-MARK.                      IC2224.2
027500 PRINT-DETAIL.                                                    IC2224.2
027600     IF REC-CT NOT EQUAL TO ZERO                                  IC2224.2
027700             MOVE "." TO PARDOT-X                                 IC2224.2
027800             MOVE REC-CT TO DOTVALUE.                             IC2224.2
027900     MOVE     TEST-RESULTS TO PRINT-REC. PERFORM WRITE-LINE.      IC2224.2
028000     IF P-OR-F EQUAL TO "FAIL*"  PERFORM WRITE-LINE               IC2224.2
028100        PERFORM FAIL-ROUTINE THRU FAIL-ROUTINE-EX                 IC2224.2
028200          ELSE PERFORM BAIL-OUT THRU BAIL-OUT-EX.                 IC2224.2
028300     MOVE SPACE TO P-OR-F. MOVE SPACE TO COMPUTED-X.              IC2224.2
028400     MOVE SPACE TO CORRECT-X.                                     IC2224.2
028500     IF     REC-CT EQUAL TO ZERO  MOVE SPACE TO PAR-NAME.         IC2224.2
028600     MOVE     SPACE TO RE-MARK.                                   IC2224.2
028700 HEAD-ROUTINE.                                                    IC2224.2
028800     MOVE CCVS-H-1  TO DUMMY-RECORD. PERFORM WRITE-LINE 2 TIMES.  IC2224.2
028900     MOVE CCVS-H-2A TO DUMMY-RECORD. PERFORM WRITE-LINE 2 TIMES.  IC2224.2
029000     MOVE CCVS-H-2B TO DUMMY-RECORD. PERFORM WRITE-LINE 3 TIMES.  IC2224.2
029100     MOVE CCVS-H-3  TO DUMMY-RECORD. PERFORM WRITE-LINE 3 TIMES.  IC2224.2
029200 COLUMN-NAMES-ROUTINE.                                            IC2224.2
029300     MOVE CCVS-C-1 TO DUMMY-RECORD. PERFORM WRITE-LINE.           IC2224.2
029400     MOVE CCVS-C-2 TO DUMMY-RECORD. PERFORM WRITE-LINE 2 TIMES.   IC2224.2
029500     MOVE HYPHEN-LINE TO DUMMY-RECORD. PERFORM WRITE-LINE.        IC2224.2
029600 END-ROUTINE.                                                     IC2224.2
029700     MOVE HYPHEN-LINE TO DUMMY-RECORD. PERFORM WRITE-LINE 5 TIMES.IC2224.2
029800 END-RTN-EXIT.                                                    IC2224.2
029900     MOVE CCVS-E-1 TO DUMMY-RECORD. PERFORM WRITE-LINE 2 TIMES.   IC2224.2
030000 END-ROUTINE-1.                                                   IC2224.2
030100      ADD ERROR-COUNTER TO ERROR-HOLD ADD INSPECT-COUNTER TO      IC2224.2
030200      ERROR-HOLD. ADD DELETE-COUNTER TO ERROR-HOLD.               IC2224.2
030300      ADD PASS-COUNTER TO ERROR-HOLD.                             IC2224.2
030400*                                                                         
030500      MOVE PASS-COUNTER TO CCVS-E-4-1.                            IC2224.2
030600      MOVE ERROR-HOLD TO CCVS-E-4-2.                              IC2224.2
030700      MOVE CCVS-E-4 TO CCVS-E-2-2.                                IC2224.2
030800      MOVE CCVS-E-2 TO DUMMY-RECORD PERFORM WRITE-LINE.           IC2224.2
030900  END-ROUTINE-12.                                                 IC2224.2
031000      MOVE "TEST(S) FAILED" TO ENDER-DESC.                        IC2224.2
031100     IF       ERROR-COUNTER IS EQUAL TO ZERO                      IC2224.2
031200         MOVE "NO " TO ERROR-TOTAL                                IC2224.2
031300         ELSE                                                     IC2224.2
031400         MOVE ERROR-COUNTER TO ERROR-TOTAL.                       IC2224.2
031500     MOVE     CCVS-E-2 TO DUMMY-RECORD.                           IC2224.2
031600     PERFORM WRITE-LINE.                                          IC2224.2
031700 END-ROUTINE-13.                                                  IC2224.2
031800     IF DELETE-COUNTER IS EQUAL TO ZERO                           IC2224.2
031900         MOVE "NO " TO ERROR-TOTAL  ELSE                          IC2224.2
032000         MOVE DELETE-COUNTER TO ERROR-TOTAL.                      IC2224.2
032100     MOVE "TEST(S) DELETED     " TO ENDER-DESC.                   IC2224.2
032200     MOVE CCVS-E-2 TO DUMMY-RECORD. PERFORM WRITE-LINE.           IC2224.2
032300      IF   INSPECT-COUNTER EQUAL TO ZERO                          IC2224.2
032400          MOVE "NO " TO ERROR-TOTAL                               IC2224.2
032500      ELSE MOVE INSPECT-COUNTER TO ERROR-TOTAL.                   IC2224.2
032600      MOVE "TEST(S) REQUIRE INSPECTION" TO ENDER-DESC.            IC2224.2
032700      MOVE CCVS-E-2 TO DUMMY-RECORD. PERFORM WRITE-LINE.          IC2224.2
032800     MOVE CCVS-E-3 TO DUMMY-RECORD. PERFORM WRITE-LINE.           IC2224.2
032900 WRITE-LINE.                                                      IC2224.2
033000     ADD 1 TO RECORD-COUNT.                                       IC2224.2
033100     IF RECORD-COUNT GREATER 50                                   IC2224.2
033200         MOVE DUMMY-RECORD TO DUMMY-HOLD                          IC2224.2
033300         MOVE SPACE TO DUMMY-RECORD                               IC2224.2
033400         WRITE DUMMY-RECORD AFTER ADVANCING PAGE                  IC2224.2
033500         MOVE CCVS-C-1 TO DUMMY-RECORD PERFORM WRT-LN             IC2224.2
033600         MOVE CCVS-C-2 TO DUMMY-RECORD PERFORM WRT-LN 2 TIMES     IC2224.2
033700         MOVE HYPHEN-LINE TO DUMMY-RECORD PERFORM WRT-LN          IC2224.2
033800         MOVE DUMMY-HOLD TO DUMMY-RECORD                          IC2224.2
033900         MOVE ZERO TO RECORD-COUNT.                               IC2224.2
034000     PERFORM WRT-LN.                                              IC2224.2
034100 WRT-LN.                                                          IC2224.2
034200     WRITE    DUMMY-RECORD AFTER ADVANCING 1 LINES.               IC2224.2
034300     MOVE SPACE TO DUMMY-RECORD.                                  IC2224.2
034400 BLANK-LINE-PRINT.                                                IC2224.2
034500     PERFORM WRT-LN.                                              IC2224.2
034600 FAIL-ROUTINE.                                                    IC2224.2
034700     IF   COMPUTED-X NOT EQUAL TO SPACE GO TO FAIL-ROUTINE-WRITE. IC2224.2
034800     IF   CORRECT-X NOT EQUAL TO SPACE GO TO FAIL-ROUTINE-WRITE.  IC2224.2
034900     MOVE   ANSI-REFERENCE TO INF-ANSI-REFERENCE.                 IC2224.2
035000     MOVE  "NO FURTHER INFORMATION, SEE PROGRAM." TO INFO-TEXT.   IC2224.2
035100     MOVE   XXINFO TO DUMMY-RECORD. PERFORM WRITE-LINE 2 TIMES.   IC2224.2
035200     MOVE   SPACES TO INF-ANSI-REFERENCE.                         IC2224.2
035300     GO TO  FAIL-ROUTINE-EX.                                      IC2224.2
035400 FAIL-ROUTINE-WRITE.                                              IC2224.2
035500     MOVE   TEST-COMPUTED TO PRINT-REC PERFORM WRITE-LINE         IC2224.2
035600     MOVE   ANSI-REFERENCE TO COR-ANSI-REFERENCE.                 IC2224.2
035700     MOVE   TEST-CORRECT TO PRINT-REC PERFORM WRITE-LINE 2 TIMES. IC2224.2
035800     MOVE   SPACES TO COR-ANSI-REFERENCE.                         IC2224.2
035900 FAIL-ROUTINE-EX. EXIT.                                           IC2224.2
036000 BAIL-OUT.                                                        IC2224.2
036100     IF     COMPUTED-A NOT EQUAL TO SPACE GO TO BAIL-OUT-WRITE.   IC2224.2
036200     IF     CORRECT-A EQUAL TO SPACE GO TO BAIL-OUT-EX.           IC2224.2
036300 BAIL-OUT-WRITE.                                                  IC2224.2
036400     MOVE CORRECT-A TO XXCORRECT. MOVE COMPUTED-A TO XXCOMPUTED.  IC2224.2
036500     MOVE   ANSI-REFERENCE TO INF-ANSI-REFERENCE.                 IC2224.2
036600     MOVE   XXINFO TO DUMMY-RECORD. PERFORM WRITE-LINE 2 TIMES.   IC2224.2
036700     MOVE   SPACES TO INF-ANSI-REFERENCE.                         IC2224.2
036800 BAIL-OUT-EX. EXIT.                                               IC2224.2
036900 CCVS1-EXIT.                                                      IC2224.2
037000     EXIT.                                                        IC2224.2
037100*                                                                         
037200 SECT-IC222A-001 SECTION.                                         IC2224.2
037300 CALL-INIT-1.                                                     IC2224.2
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
038400     MOVE    1 TO REC-CT.                                         IC2224.2
038500     MOVE   "CALL-TEST-1" TO PAR-NAME.                            IC2224.2
038600     MOVE   "AVAILABLE ON " TO FEATURE.                           IC2224.2
038700     MOVE    0 TO CALL-FLAG.                                      IC2224.2
038800     MOVE   "P" TO EXCEPTION-PATH-FLAG.                           IC2224.2
038900     MOVE   "X-27 5.2.4 (2)" TO ANSI-REFERENCE.                   IC2224.2
039000     MOVE    ZERO TO DN3, DN4.                                    IC2224.2
039100     GO TO   CALL-TEST-1-1.                                       IC2224.2
039200 CALL-DELETE-1-1.                                                 IC2224.2
039300     PERFORM DE-LETE.                                             IC2224.2
039400     PERFORM PRINT-DETAIL.                                        IC2224.2
039500     ADD     1 TO REC-CT.                                         IC2224.2
039600*                                                                         
039700*                                                                         
039800*                                                                         
039900*                                                                         
040000     GO TO   CALL-DELETE-1-2.                                     IC2224.2
040100 CALL-TEST-1-1.                                                   IC2224.2
040200     CALL   "IC222A-1" USING DN1, DN2, DN3, DN4                   IC2224.2
040300             ON EXCEPTION                                         IC2224.2
040400                  MOVE "F" TO EXCEPTION-PATH-FLAG                 IC2224.2
040500     END-CALL                                                     IC2224.2
040600     MOVE    1 TO CALL-FLAG.                                      IC2224.2
040700     IF EXCEPTION-PATH-FLAG NOT = "P"                             IC2224.2
040800             MOVE "UNEXPECTED EXECUTION OF EXCEPTION PATH"        IC2224.2
040900                      TO RE-MARK                                  IC2224.2
041000             MOVE "P" TO CORRECT-A                                IC2224.2
041100             MOVE EXCEPTION-PATH-FLAG TO COMPUTED-A               IC2224.2
041200             PERFORM FAIL                                         IC2224.2
041300     ELSE                                                         IC2224.2
041400             PERFORM PASS.                                        IC2224.2
041500 CALL-WRITE-1-1.                                                  IC2224.2
041600     PERFORM PRINT-DETAIL.                                        IC2224.2
041700     ADD 1 TO REC-CT.                                             IC2224.2
041800*                                                                         
041900 CALL-INIT-1-2.                                                   IC2224.2
042000     GO TO    CALL-TEST-1-2.                                      IC2224.2
042100 CALL-DELETE-1-2.                                                 IC2224.2
042200     MOVE   "END-CALL OBSERVANCE" TO FEATURE.                     IC2224.2
042300     PERFORM DE-LETE.                                             IC2224.2
042400     PERFORM PRINT-DETAIL.                                        IC2224.2
042500     ADD     1 TO REC-CT.                                         IC2224.2
042600     GO TO   CALL-EXIT-1.                                         IC2224.2
042700*                                                                         
042800 CALL-TEST-1-2.                                                   IC2224.2
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
044000     MOVE   "END-CALL OBSERVANCE" TO FEATURE.                     IC2224.2
044100     IF      CALL-FLAG = 1                                        IC2224.2
044200             PERFORM PASS                                         IC2224.2
044300     ELSE                                                         IC2224.2
044400             MOVE   "INCORRECT CONTROL FLOW" TO RE-MARK           IC2224.2
044500             MOVE    1 TO CORRECT-N                               IC2224.2
044600             MOVE    CALL-FLAG TO COMPUTED-N                      IC2224.2
044700             PERFORM FAIL.                                        IC2224.2
044800     PERFORM PRINT-DETAIL.                                        IC2224.2
044900*                                                                         
045000 CALL-EXIT-1.                                                     IC2224.2
045100*                                                                         
045200*                                                                         
045300 CALL-INIT-2.                                                     IC2224.2
045400*                                                                         
045500*                                                                         
045600*                                                                         
045700*                                                                         
045800*                                                                         
045900*                                                                         
046000*                                                                         
046100*                                                                         
046200*                                                                         
046300     MOVE    1 TO REC-CT.                                         IC2224.2
046400     MOVE   "CALL-TEST-2" TO PAR-NAME.                            IC2224.2
046500     MOVE   "NO PROGRAM ON " TO FEATURE.                          IC2224.2
046600     MOVE    0 TO CALL-FLAG.                                      IC2224.2
046700     MOVE   "X" TO EXCEPTION-PATH-FLAG.                           IC2224.2
046800     MOVE   "X-28 5.2.4 (3)A" TO ANSI-REFERENCE.                  IC2224.2
046900     MOVE    ZERO TO DN3, DN4.                                    IC2224.2
047000     GO TO   CALL-TEST-2-1.                                       IC2224.2
047100 CALL-DELETE-2-1.                                                 IC2224.2
047200     PERFORM DE-LETE.                                             IC2224.2
047300     PERFORM PRINT-DETAIL.                                        IC2224.2
047400     ADD     1 TO REC-CT.                                         IC2224.2
047500*                                                                         
047600*                                                                         
047700*                                                                         
047800*                                                                         
047900     GO TO   CALL-DELETE-2-2.                                     IC2224.2
048000 CALL-TEST-2-1.                                                   IC2224.2
048100*                                                                         
048200     CALL   "XXXXXXXX" USING DN1, DN2, DN3, DN4                   IC2224.2
048300             ON EXCEPTION                                         IC2224.2
048400                  MOVE "P" TO EXCEPTION-PATH-FLAG                 IC2224.2
048500     END-CALL                                                     IC2224.2
048600     MOVE    1 TO CALL-FLAG.                                      IC2224.2
048700     IF EXCEPTION-PATH-FLAG NOT = "P"                             IC2224.2
048800             MOVE "EXCEPTION SHOULD HAVE OCCURRED" TO RE-MARK     IC2224.2
048900             MOVE "P" TO CORRECT-A                                IC2224.2
049000             MOVE EXCEPTION-PATH-FLAG TO COMPUTED-A               IC2224.2
049100             PERFORM FAIL                                         IC2224.2
049200     ELSE                                                         IC2224.2
049300             PERFORM PASS.                                        IC2224.2
049400 CALL-WRITE-2-1.                                                  IC2224.2
049500     PERFORM PRINT-DETAIL.                                        IC2224.2
049600     ADD 1 TO REC-CT.                                             IC2224.2
049700*                                                                         
049800 CALL-INIT-2-2.                                                   IC2224.2
049900     GO TO    CALL-TEST-2-2.                                      IC2224.2
050000 CALL-DELETE-2-2.                                                 IC2224.2
050100     MOVE   "END-CALL OBSERVANCE" TO FEATURE.                     IC2224.2
050200     PERFORM DE-LETE.                                             IC2224.2
050300     PERFORM PRINT-DETAIL.                                        IC2224.2
050400     ADD     1 TO REC-CT.                                         IC2224.2
050500     GO TO   CALL-EXIT-2.                                         IC2224.2
050600*                                                                         
050700 CALL-TEST-2-2.                                                   IC2224.2
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
051900     MOVE   "END-CALL OBSERVANCE" TO FEATURE.                     IC2224.2
052000     IF      CALL-FLAG = 1                                        IC2224.2
052100             PERFORM PASS                                         IC2224.2
052200     ELSE                                                         IC2224.2
052300             MOVE   "INCORRECT CONTROL FLOW" TO RE-MARK           IC2224.2
052400             MOVE    1 TO CORRECT-N                               IC2224.2
052500             MOVE    CALL-FLAG TO COMPUTED-N                      IC2224.2
052600             PERFORM FAIL.                                        IC2224.2
052700     PERFORM PRINT-DETAIL.                                        IC2224.2
052800*                                                                         
052900 CALL-EXIT-2.                                                     IC2224.2
053000*                                                                         
053100*                                                                         
053200 CALL-INIT-3.                                                     IC2224.2
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
054400     MOVE    1 TO REC-CT.                                         IC2224.2
054500     MOVE   "CALL-TEST-3" TO PAR-NAME.                            IC2224.2
054600     MOVE   "AVAILABLE  ON NOT ON" TO FEATURE.                    IC2224.2
054700     MOVE    0 TO CALL-FLAG.                                      IC2224.2
054800     MOVE   "X" TO EXCEPTION-PATH-FLAG.                           IC2224.2
054900     MOVE   "X-28 5.2.4 (2)" TO ANSI-REFERENCE.                   IC2224.2
055000     MOVE    ZERO TO DN3, DN4.                                    IC2224.2
055100     GO TO   CALL-TEST-3-1.                                       IC2224.2
055200 CALL-DELETE-3-1.                                                 IC2224.2
055300     PERFORM DE-LETE.                                             IC2224.2
055400     PERFORM PRINT-DETAIL.                                        IC2224.2
055500     ADD     1 TO REC-CT.                                         IC2224.2
055600*                                                                         
055700*                                                                         
055800*                                                                         
055900*                                                                         
056000     GO TO   CALL-DELETE-3-2.                                     IC2224.2
056100 CALL-TEST-3-1.                                                   IC2224.2
056200     CALL   "IC222A-1" USING DN1, DN2, DN3, DN4                   IC2224.2
056300             ON EXCEPTION                                         IC2224.2
056400                  MOVE "F" TO EXCEPTION-PATH-FLAG                 IC2224.2
056500                  ADD 2 TO CALL-FLAG                              IC2224.2
056600             NOT ON EXCEPTION                                     IC2224.2
056700                  MOVE "P" TO EXCEPTION-PATH-FLAG                 IC2224.2
056800                  ADD 2 TO CALL-FLAG                              IC2224.2
056900     END-CALL                                                     IC2224.2
057000     ADD     1 TO CALL-FLAG.                                      IC2224.2
057100     IF EXCEPTION-PATH-FLAG NOT = "P"                             IC2224.2
057200             MOVE "NON-EXECUTION OF NOT EXCEPTION PATH"           IC2224.2
057300                   TO RE-MARK                                     IC2224.2
057400             MOVE "P" TO CORRECT-A                                IC2224.2
057500             MOVE EXCEPTION-PATH-FLAG TO COMPUTED-A               IC2224.2
057600             PERFORM FAIL                                         IC2224.2
057700     ELSE                                                         IC2224.2
057800             PERFORM PASS.                                        IC2224.2
057900 CALL-WRITE-3-1.                                                  IC2224.2
058000     PERFORM PRINT-DETAIL.                                        IC2224.2
058100     ADD 1 TO REC-CT.                                             IC2224.2
058200*                                                                         
058300 CALL-INIT-3-2.                                                   IC2224.2
058400     GO TO    CALL-TEST-3-2.                                      IC2224.2
058500 CALL-DELETE-3-2.                                                 IC2224.2
058600     MOVE   "END-CALL OBSERVANCE" TO FEATURE.                     IC2224.2
058700     PERFORM DE-LETE.                                             IC2224.2
058800     PERFORM PRINT-DETAIL.                                        IC2224.2
058900     ADD     1 TO REC-CT.                                         IC2224.2
059000     GO TO   CALL-EXIT-3.                                         IC2224.2
059100*                                                                         
059200 CALL-TEST-3-2.                                                   IC2224.2
059300*                                                                         
059400*                                                                         
059500*                                                                         
059600*                                                                         
059700*                                                                         
059800*                                                                         
059900*                                                                         
060000*                                                                         
060100*                                                                         
060200*                                                                         
060300*                                                                         
060400     MOVE   "END-CALL OBSERVANCE" TO FEATURE.                     IC2224.2
060500     IF      CALL-FLAG = 3                                        IC2224.2
060600             PERFORM PASS                                         IC2224.2
060700     ELSE                                                         IC2224.2
060800             MOVE   "INCORRECT CONTROL FLOW" TO RE-MARK           IC2224.2
060900             MOVE    3 TO CORRECT-N                               IC2224.2
061000             MOVE    CALL-FLAG TO COMPUTED-N                      IC2224.2
061100             PERFORM FAIL.                                        IC2224.2
061200     PERFORM PRINT-DETAIL.                                        IC2224.2
061300*                                                                         
061400 CALL-EXIT-3.                                                     IC2224.2
061500*                                                                         
061600*                                                                         
061700 CALL-INIT-4.                                                     IC2224.2
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
063000     MOVE    1 TO REC-CT.                                         IC2224.2
063100     MOVE   "CALL-TEST-4" TO PAR-NAME.                            IC2224.2
063200     MOVE   "CALL ON EXCEPTION" TO FEATURE.                       IC2224.2
063300     MOVE    0 TO CALL-FLAG.                                      IC2224.2
063400     MOVE   "X" TO EXCEPTION-PATH-FLAG.                           IC2224.2
063500     MOVE   "X-28 5.2.4 (3)A" TO ANSI-REFERENCE.                  IC2224.2
063600     MOVE    ZERO TO DN3, DN4.                                    IC2224.2
063700     GO TO   CALL-TEST-4-1.                                       IC2224.2
063800 CALL-DELETE-4-1.                                                 IC2224.2
063900     PERFORM DE-LETE.                                             IC2224.2
064000     PERFORM PRINT-DETAIL.                                        IC2224.2
064100     ADD     1 TO REC-CT.                                         IC2224.2
064200*                                                                         
064300*                                                                         
064400*                                                                         
064500*                                                                         
064600     GO TO   CALL-DELETE-4-2.                                     IC2224.2
064700 CALL-TEST-4-1.                                                   IC2224.2
064800*                                                                         
064900     CALL   "XXXXXXXX" USING DN1, DN2, DN3, DN4                   IC2224.2
065000             ON EXCEPTION                                         IC2224.2
065100                  MOVE "P" TO EXCEPTION-PATH-FLAG                 IC2224.2
065200                  ADD 2 TO CALL-FLAG                              IC2224.2
065300             NOT ON EXCEPTION                                     IC2224.2
065400                  MOVE "F" TO EXCEPTION-PATH-FLAG                 IC2224.2
065500                  ADD 2 TO CALL-FLAG                              IC2224.2
065600     END-CALL                                                     IC2224.2
065700     ADD     1 TO CALL-FLAG.                                      IC2224.2
065800     IF EXCEPTION-PATH-FLAG NOT = "P"                             IC2224.2
065900             MOVE "NON-EXECUTION OF EXCEPTION PATH"               IC2224.2
066000                   TO RE-MARK                                     IC2224.2
066100             MOVE "P" TO CORRECT-A                                IC2224.2
066200             MOVE EXCEPTION-PATH-FLAG TO COMPUTED-A               IC2224.2
066300             PERFORM FAIL                                         IC2224.2
066400     ELSE                                                         IC2224.2
066500             PERFORM PASS.                                        IC2224.2
066600 CALL-WRITE-4-1.                                                  IC2224.2
066700     PERFORM PRINT-DETAIL.                                        IC2224.2
066800     ADD 1 TO REC-CT.                                             IC2224.2
066900*                                                                         
067000 CALL-INIT-4-2.                                                   IC2224.2
067100     GO TO    CALL-TEST-4-2.                                      IC2224.2
067200 CALL-DELETE-4-2.                                                 IC2224.2
067300     MOVE   "END-CALL OBSERVANCE" TO FEATURE.                     IC2224.2
067400     PERFORM DE-LETE.                                             IC2224.2
067500     PERFORM PRINT-DETAIL.                                        IC2224.2
067600     ADD     1 TO REC-CT.                                         IC2224.2
067700     GO TO   CALL-EXIT-4.                                         IC2224.2
067800*                                                                         
067900 CALL-TEST-4-2.                                                   IC2224.2
068000*                                                                         
068100*                                                                         
068200*                                                                         
068300*                                                                         
068400*                                                                         
068500*                                                                         
068600*                                                                         
068700*                                                                         
068800*                                                                         
068900     MOVE   "END-CALL OBSERVANCE" TO FEATURE.                     IC2224.2
069000     IF      CALL-FLAG = 3                                        IC2224.2
069100             PERFORM PASS                                         IC2224.2
069200     ELSE                                                         IC2224.2
069300             MOVE   "INCORRECT CONTROL FLOW" TO RE-MARK           IC2224.2
069400             MOVE    3 TO CORRECT-N                               IC2224.2
069500             MOVE    CALL-FLAG TO COMPUTED-N                      IC2224.2
069600             PERFORM FAIL.                                        IC2224.2
069700     PERFORM PRINT-DETAIL.                                        IC2224.2
069800*                                                                         
069900 CALL-EXIT-4.                                                     IC2224.2
070000*                                                                         
070100*                                                                         
070200 CALL-INIT-5.                                                     IC2224.2
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
071400     MOVE    1 TO REC-CT.                                         IC2224.2
071500     MOVE   "CALL-TEST-5" TO PAR-NAME.                            IC2224.2
071600     MOVE   "AVAILABLE  -- NOT ON" TO FEATURE.                    IC2224.2
071700     MOVE    0 TO CALL-FLAG.                                      IC2224.2
071800     MOVE   "X" TO EXCEPTION-PATH-FLAG.                           IC2224.2
071900     MOVE   "X-28 5.2.4 (3)A" TO ANSI-REFERENCE.                  IC2224.2
072000     MOVE    ZERO TO DN3, DN4.                                    IC2224.2
072100     GO TO   CALL-TEST-5-1.                                       IC2224.2
072200 CALL-DELETE-5-1.                                                 IC2224.2
072300     PERFORM DE-LETE.                                             IC2224.2
072400     PERFORM PRINT-DETAIL.                                        IC2224.2
072500     ADD     1 TO REC-CT.                                         IC2224.2
072600*                                                                         
072700*                                                                         
072800*                                                                         
072900*                                                                         
073000     GO TO   CALL-DELETE-5-2.                                     IC2224.2
073100 CALL-TEST-5-1.                                                   IC2224.2
073200     CALL   "IC222A-1" USING DN1, DN2, DN3, DN4                   IC2224.2
073300             NOT ON EXCEPTION                                     IC2224.2
073400                  MOVE "P" TO EXCEPTION-PATH-FLAG                 IC2224.2
073500                  ADD 2 TO CALL-FLAG                              IC2224.2
073600     END-CALL                                                     IC2224.2
073700     ADD     1 TO CALL-FLAG.                                      IC2224.2
073800     IF EXCEPTION-PATH-FLAG NOT = "P"                             IC2224.2
073900             MOVE "NON-EXECUTION OF NOT ON EXCEPTION PATH"        IC2224.2
074000                   TO RE-MARK                                     IC2224.2
074100             MOVE "P" TO CORRECT-A                                IC2224.2
074200             MOVE EXCEPTION-PATH-FLAG TO COMPUTED-A               IC2224.2
074300             PERFORM FAIL                                         IC2224.2
074400     ELSE                                                         IC2224.2
074500             PERFORM PASS.                                        IC2224.2
074600 CALL-WRITE-5-1.                                                  IC2224.2
074700     PERFORM PRINT-DETAIL.                                        IC2224.2
074800     ADD 1 TO REC-CT.                                             IC2224.2
074900*                                                                         
075000 CALL-INIT-5-2.                                                   IC2224.2
075100     GO TO    CALL-TEST-5-2.                                      IC2224.2
075200 CALL-DELETE-5-2.                                                 IC2224.2
075300     MOVE   "END-CALL OBSERVANCE" TO FEATURE.                     IC2224.2
075400     PERFORM DE-LETE.                                             IC2224.2
075500     PERFORM PRINT-DETAIL.                                        IC2224.2
075600     ADD     1 TO REC-CT.                                         IC2224.2
075700     GO TO   CALL-EXIT-5.                                         IC2224.2
075800*                                                                         
075900 CALL-TEST-5-2.                                                   IC2224.2
076000*                                                                         
076100*                                                                         
076200*                                                                         
076300*                                                                         
076400*                                                                         
076500*                                                                         
076600*                                                                         
076700*                                                                         
076800*                                                                         
076900     MOVE   "END-CALL OBSERVANCE" TO FEATURE.                     IC2224.2
077000     IF      CALL-FLAG = 8                                        IC2224.2
077100             PERFORM PASS                                         IC2224.2
077200     ELSE                                                         IC2224.2
077300             MOVE   "INCORRECT CONTROL FLOW" TO RE-MARK           IC2224.2
077400             MOVE    8 TO CORRECT-N                               IC2224.2
077500             MOVE    CALL-FLAG TO COMPUTED-N                      IC2224.2
077600             PERFORM FAIL.                                        IC2224.2
077700     PERFORM PRINT-DETAIL.                                        IC2224.2
077800*                                                                         
077900 CALL-EXIT-5.                                                     IC2224.2
078000*                                                                         
078100*                                                                         
078200 CALL-INIT-6.                                                     IC2224.2
078300*                                                                         
078400*                                                                         
078500*                                                                         
078600*                                                                         
078700*                                                                         
078800*                                                                         
078900*                                                                         
079000*                                                                         
079100*                                                                         
079200*                                                                         
079300     MOVE    1 TO REC-CT.                                         IC2224.2
079400     MOVE   "CALL-TEST-6" TO PAR-NAME.                            IC2224.2
079500     MOVE   "AVAILABLE  -- ---" TO FEATURE.                       IC2224.2
079600     MOVE    0 TO CALL-FLAG.                                      IC2224.2
079700     MOVE   "X" TO EXCEPTION-PATH-FLAG.                           IC2224.2
079800     MOVE   "X-28 5.2.4 (2)" TO ANSI-REFERENCE.                   IC2224.2
079900     MOVE    ZERO TO DN3, DN4.                                    IC2224.2
080000     GO TO   CALL-TEST-6-1.                                       IC2224.2
080100 CALL-DELETE-6-1.                                                 IC2224.2
080200     PERFORM DE-LETE.                                             IC2224.2
080300     PERFORM PRINT-DETAIL.                                        IC2224.2
080400     ADD     1 TO REC-CT.                                         IC2224.2
080500*                                                                         
080600*                                                                         
080700*                                                                         
080800*                                                                         
080900     GO TO   CALL-DELETE-6-2.                                     IC2224.2
081000 CALL-TEST-6-1.                                                   IC2224.2
081100     CALL   "IC222A-1" USING DN1, DN2, DN3, DN4                   IC2224.2
081200     END-CALL                                                     IC2224.2
081300     ADD     1 TO CALL-FLAG.                                      IC2224.2
081400     IF EXCEPTION-PATH-FLAG NOT = "X"                             IC2224.2
081500             MOVE "EXCEPTION-PATH-FLAG ALTERED" TO RE-MARK        IC2224.2
081600             MOVE "X" TO CORRECT-A                                IC2224.2
081700             MOVE EXCEPTION-PATH-FLAG TO COMPUTED-A               IC2224.2
081800             PERFORM FAIL                                         IC2224.2
081900     ELSE                                                         IC2224.2
082000             PERFORM PASS.                                        IC2224.2
082100 CALL-WRITE-6-1.                                                  IC2224.2
082200     PERFORM PRINT-DETAIL.                                        IC2224.2
082300     ADD 1 TO REC-CT.                                             IC2224.2
082400*                                                                         
082500 CALL-INIT-6-2.                                                   IC2224.2
082600     GO TO    CALL-TEST-6-2.                                      IC2224.2
082700 CALL-DELETE-6-2.                                                 IC2224.2
082800     MOVE   "END-CALL OBSERVANCE" TO FEATURE.                     IC2224.2
082900     PERFORM DE-LETE.                                             IC2224.2
083000     PERFORM PRINT-DETAIL.                                        IC2224.2
083100     ADD     1 TO REC-CT.                                         IC2224.2
083200     GO TO   CALL-EXIT-6.                                         IC2224.2
083300*                                                                         
083400 CALL-TEST-6-2.                                                   IC2224.2
083500*                                                                         
083600*                                                                         
083700*                                                                         
083800*                                                                         
083900*                                                                         
084000*                                                                         
084100*                                                                         
084200     MOVE   "END-CALL OBSERVANCE" TO FEATURE.                     IC2224.2
084300     IF      CALL-FLAG = 1                                        IC2224.2
084400             PERFORM PASS                                         IC2224.2
084500     ELSE                                                         IC2224.2
084600             MOVE   "INCORRECT CONTROL FLOW" TO RE-MARK           IC2224.2
084700             MOVE    1 TO CORRECT-N                               IC2224.2
084800             MOVE    CALL-FLAG TO COMPUTED-N                      IC2224.2
084900             PERFORM FAIL.                                        IC2224.2
085000     PERFORM PRINT-DETAIL.                                        IC2224.2
085100*                                                                         
085200 CALL-EXIT-6.                                                     IC2224.2
085300*                                                                         
085400*                                                                         
085500 CALL-INIT-7.                                                     IC2224.2
085600*                                                                         
085700*                                                                         
085800*                                                                         
085900*                                                                         
086000*                                                                         
086100*                                                                         
086200*                                                                         
086300*                                                                         
086400*                                                                         
086500     MOVE    1 TO REC-CT.                                         IC2224.2
086600     MOVE   "CALL-TEST-7" TO PAR-NAME.                            IC2224.2
086700     MOVE   "AVAILABLE  OV ---" TO FEATURE.                       IC2224.2
086800     MOVE    0 TO CALL-FLAG.                                      IC2224.2
086900     MOVE   "P" TO EXCEPTION-PATH-FLAG.                           IC2224.2
087000     MOVE   "X-27 5.2.4 (2)" TO ANSI-REFERENCE.                   IC2224.2
087100     MOVE    ZERO TO DN3, DN4.                                    IC2224.2
087200     GO TO   CALL-TEST-7-1.                                       IC2224.2
087300 CALL-DELETE-7-1.                                                 IC2224.2
087400     PERFORM DE-LETE.                                             IC2224.2
087500     PERFORM PRINT-DETAIL.                                        IC2224.2
087600     ADD     1 TO REC-CT.                                         IC2224.2
087700*                                                                         
087800*                                                                         
087900*                                                                         
088000*                                                                         
088100     GO TO   CALL-DELETE-7-2.                                     IC2224.2
088200 CALL-TEST-7-1.                                                   IC2224.2
088300     CALL   "IC222A-1" USING DN1, DN2, DN3, DN4                   IC2224.2
088400             ON OVERFLOW                                          IC2224.2
088500                  MOVE "F" TO EXCEPTION-PATH-FLAG                 IC2224.2
088600     END-CALL                                                     IC2224.2
088700     MOVE    1 TO CALL-FLAG.                                      IC2224.2
088800     IF EXCEPTION-PATH-FLAG NOT = "P"                             IC2224.2
088900             MOVE "UNEXPECTED EXECUTION OF EXCEPTION PATH"        IC2224.2
089000                      TO RE-MARK                                  IC2224.2
089100             MOVE "P" TO CORRECT-A                                IC2224.2
089200             MOVE EXCEPTION-PATH-FLAG TO COMPUTED-A               IC2224.2
089300             PERFORM FAIL                                         IC2224.2
089400     ELSE                                                         IC2224.2
089500             PERFORM PASS.                                        IC2224.2
089600 CALL-WRITE-7-1.                                                  IC2224.2
089700     PERFORM PRINT-DETAIL.                                        IC2224.2
089800     ADD 1 TO REC-CT.                                             IC2224.2
089900*                                                                         
090000 CALL-INIT-7-2.                                                   IC2224.2
090100     GO TO    CALL-TEST-7-2.                                      IC2224.2
090200 CALL-DELETE-7-2.                                                 IC2224.2
090300     MOVE   "END-CALL OBSERVANCE" TO FEATURE.                     IC2224.2
090400     PERFORM DE-LETE.                                             IC2224.2
090500     PERFORM PRINT-DETAIL.                                        IC2224.2
090600     ADD     1 TO REC-CT.                                         IC2224.2
090700     GO TO   CALL-EXIT-7.                                         IC2224.2
090800*                                                                         
090900 CALL-TEST-7-2.                                                   IC2224.2
091000*                                                                         
091100*                                                                         
091200*                                                                         
091300*                                                                         
091400*                                                                         
091500*                                                                         
091600*                                                                         
091700*                                                                         
091800*                                                                         
091900*                                                                         
092000*                                                                         
092100     MOVE   "END-CALL OBSERVANCE" TO FEATURE.                     IC2224.2
092200     IF      CALL-FLAG = 8                                        IC2224.2
092300             PERFORM PASS                                         IC2224.2
092400     ELSE                                                         IC2224.2
092500             MOVE   "INCORRECT CONTROL FLOW" TO RE-MARK           IC2224.2
092600             MOVE    8 TO CORRECT-N                               IC2224.2
092700             MOVE    CALL-FLAG TO COMPUTED-N                      IC2224.2
092800             PERFORM FAIL.                                        IC2224.2
092900     PERFORM PRINT-DETAIL.                                        IC2224.2
093000*                                                                         
093100 CALL-EXIT-7.                                                     IC2224.2
093200*                                                                         
093300*                                                                         
093400 CALL-INIT-8.                                                     IC2224.2
093500*                                                                         
093600*                                                                         
093700*                                                                         
093800*                                                                         
093900*                                                                         
094000*                                                                         
094100*                                                                         
094200*                                                                         
094300*                                                                         
094400*                                                                         
094500*                                                                         
094600     MOVE    1 TO REC-CT.                                         IC2224.2
094700     MOVE   "CALL-TEST-8" TO PAR-NAME.                            IC2224.2
094800     MOVE   "NO PROGRAM OV ---" TO FEATURE.                       IC2224.2
094900     MOVE    0 TO CALL-FLAG.                                      IC2224.2
095000     MOVE   "X" TO EXCEPTION-PATH-FLAG.                           IC2224.2
095100     MOVE   "X-28 5.2.4 (3)A" TO ANSI-REFERENCE.                  IC2224.2
095200     MOVE    ZERO TO DN3, DN4.                                    IC2224.2
095300     GO TO   CALL-TEST-8-1.                                       IC2224.2
095400 CALL-DELETE-8-1.                                                 IC2224.2
095500     PERFORM DE-LETE.                                             IC2224.2
095600     PERFORM PRINT-DETAIL.                                        IC2224.2
095700     ADD     1 TO REC-CT.                                         IC2224.2
095800*                                                                         
095900*                                                                         
096000*                                                                         
096100*                                                                         
096200     GO TO   CALL-DELETE-8-2.                                     IC2224.2
096300 CALL-TEST-8-1.                                                   IC2224.2
096400*                                                                         
096500     CALL   "XXXXXXXX" USING DN1, DN2, DN3, DN4                   IC2224.2
096600             ON OVERFLOW                                          IC2224.2
096700                  MOVE "P" TO EXCEPTION-PATH-FLAG                 IC2224.2
096800     END-CALL                                                     IC2224.2
096900     MOVE    1 TO CALL-FLAG.                                      IC2224.2
097000     IF EXCEPTION-PATH-FLAG NOT = "P"                             IC2224.2
097100             MOVE "EXCEPTION SHOULD HAVE OCCURRED" TO RE-MARK     IC2224.2
097200             MOVE "P" TO CORRECT-A                                IC2224.2
097300             MOVE EXCEPTION-PATH-FLAG TO COMPUTED-A               IC2224.2
097400             PERFORM FAIL                                         IC2224.2
097500     ELSE                                                         IC2224.2
097600             PERFORM PASS.                                        IC2224.2
097700 CALL-WRITE-8-1.                                                  IC2224.2
097800     PERFORM PRINT-DETAIL.                                        IC2224.2
097900     ADD 1 TO REC-CT.                                             IC2224.2
098000*                                                                         
098100 CALL-INIT-8-2.                                                   IC2224.2
098200     GO TO    CALL-TEST-8-2.                                      IC2224.2
098300 CALL-DELETE-8-2.                                                 IC2224.2
098400     MOVE   "END-CALL OBSERVANCE" TO FEATURE.                     IC2224.2
098500     PERFORM DE-LETE.                                             IC2224.2
098600     PERFORM PRINT-DETAIL.                                        IC2224.2
098700     ADD     1 TO REC-CT.                                         IC2224.2
098800     GO TO   CALL-EXIT-8.                                         IC2224.2
098900*                                                                         
099000 CALL-TEST-8-2.                                                   IC2224.2
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
100200     MOVE   "END-CALL OBSERVANCE" TO FEATURE.                     IC2224.2
100300     IF      CALL-FLAG = 5                                        IC2224.2
100400             PERFORM PASS                                         IC2224.2
100500     ELSE                                                         IC2224.2
100600             MOVE   "INCORRECT CONTROL FLOW" TO RE-MARK           IC2224.2
100700             MOVE    5 TO CORRECT-N                               IC2224.2
100800             MOVE    CALL-FLAG TO COMPUTED-N                      IC2224.2
100900             PERFORM FAIL.                                        IC2224.2
101000     PERFORM PRINT-DETAIL.                                        IC2224.2
101100*                                                                         
101200 CALL-EXIT-8.                                                     IC2224.2
101300*                                                                         
101400*                                                                         
101500 CCVS-EXIT SECTION.                                               IC2224.2
101600 CCVS-999999.                                                     IC2224.2
101700     GO TO CLOSE-FILES.                                           IC2224.2
101800 END PROGRAM IC222A.                                              IC2224.2
101900 IDENTIFICATION DIVISION.                                         IC2224.2
102000 PROGRAM-ID.                                                      IC2224.2
102100     IC222A-1.                                                    IC2224.2
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
107300*                                                                         
107400*                                                                         
107500*                                                                         
107600*                                                                         
107700*                                                                         
107800*                                                                         
107900*                                                                         
108000*                                                                         
108100*                                                                         
108200*                                                                         
108300*                                                                         
108400*                                                                         
108500*                                                                         
108600*                                                                         
108700*                                                                         
108800*                                                                         
108900*                                                                         
109000*                                                                         
109100*                                                                         
109200*                                                                         
109300*                                                                         
109400*                                                                         
109500*                                                                         
109600*                                                                         
109700*                                                                         
109800*                                                                         
109900*                                                                         
110000*                                                                         
110100*                                                                         
110200*                                                                         
110300*                                                                         
110400*                                                                         
110500*                                                                         
110600*                                                                         
110700*                                                                         
110800*                                                                         
110900*                                                                         
111000*                                                                         
111100*                                                                         
111200*                                                                         
111300*                                                                         
111400*                                                                         
111500*                                                                         
111600*                                                                         
111700*                                                                         
111800*                                                                         
111900*                                                                         
112000*                                                                         
112100*                                                                         
112200*                                                                         
112300*                                                                         
112400*                                                                         
112500*                                                                         
112600*                                                                         
112700 ENVIRONMENT DIVISION.                                            IC2224.2
112800 CONFIGURATION SECTION.                                           IC2224.2
112900 SOURCE-COMPUTER.                                                 IC2224.2
113000     GNU-Linux.                                                   IC2224.2
113100 OBJECT-COMPUTER.                                                 IC2224.2
113200     GNU-Linux.                                                   IC2224.2
113300 INPUT-OUTPUT SECTION.                                            IC2224.2
113400 FILE-CONTROL.                                                    IC2224.2
113500     SELECT PRINT-FILE ASSIGN TO                                  IC2224.2
113600     "REPORT".                                                    IC2224.2
113700*                                                                         
113800 DATA DIVISION.                                                   IC2224.2
113900 FILE SECTION.                                                    IC2224.2
114000 FD  PRINT-FILE.                                                  IC2224.2
114100 01  PRINT-REC PICTURE X(120).                                    IC2224.2
114200 01  DUMMY-RECORD PICTURE X(120).                                 IC2224.2
114300 WORKING-STORAGE SECTION.                                         IC2224.2
114400 77  WS1 PICTURE S999.                                            IC2224.2
114500 77  WS2 PICTURE S999                                             IC2224.2
114600         USAGE COMPUTATIONAL, VALUE ZERO.                         IC2224.2
114700 LINKAGE SECTION.                                                 IC2224.2
114800 77  DN1 PICTURE S99.                                             IC2224.2
114900 77  DN2 PICTURE S99 USAGE COMPUTATIONAL.                         IC2224.2
115000 77  DN3 PICTURE S99.                                             IC2224.2
115100 77  DN4 PICTURE S99 USAGE COMPUTATIONAL.                         IC2224.2
115200*                                                                         
115300 PROCEDURE DIVISION USING DN1, DN2, DN3, DN4.                     IC2224.2
115400 SECT-IC222A-1-001 SECTION.                                       IC2224.2
115500 CALL-TEST-001.                                                   IC2224.2
115600     MOVE DN1 TO WS1.                                             IC2224.2
115700     ADD 1 TO WS1.                                                IC2224.2
115800     ADD 1 TO WS2.                                                IC2224.2
115900     MOVE WS1 TO DN3.                                             IC2224.2
116000     MOVE WS2 TO DN4.                                             IC2224.2
116100 CALL-EXIT-001.                                                   IC2224.2
116200     EXIT PROGRAM.                                                IC2224.2
