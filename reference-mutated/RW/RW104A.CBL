000100 IDENTIFICATION DIVISION.                                         RW1044.2
000200 PROGRAM-ID.                                                      RW1044.2
000300     RW104A.                                                      RW1044.2
000400 AUTHOR.                                                          RW1044.2
000500     FEDERAL COMPILER TESTING CENTER.                             RW1044.2
000600 INSTALLATION.                                                    RW1044.2
000700     GENERAL SERVICES ADMINISTRATION                              RW1044.2
000800     AUTOMATED DATA AND TELECOMMUNICATION SERVICE.                RW1044.2
000900     SOFTWARE DEVELOPMENT OFFICE.                                 RW1044.2
001000     5203 LEESBURG PIKE  SUITE 1100                               RW1044.2
001100     FALLS CHURCH VIRGINIA 22041.                                 RW1044.2
001200                                                                  RW1044.2
001300     PHONE   (703) 756-6153                                       RW1044.2
001400                                                                  RW1044.2
001500     " HIGH       ".                                              RW1044.2
001600 DATE-WRITTEN.                                                    RW1044.2
001700     CCVS-74 VERSION 4.0 - 1980 JULY 1.                           RW1044.2
001800     CREATION DATE     /    VALIDATION DATE                       RW1044.2
001900     "4.2 ".                                                      RW1044.2
002000 SECURITY.                                                        RW1044.2
002100     NONE.                                                        RW1044.2
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
007000 ENVIRONMENT DIVISION.                                            RW1044.2
007100 CONFIGURATION SECTION.                                           RW1044.2
007200 SOURCE-COMPUTER.                                                 RW1044.2
007300     GNU-Linux.                                                   RW1044.2
007400 OBJECT-COMPUTER.                                                 RW1044.2
007500     GNU-Linux.                                                   RW1044.2
007600 INPUT-OUTPUT SECTION.                                            RW1044.2
007700 FILE-CONTROL.                                                    RW1044.2
007800     SELECT PRINT-FILE ASSIGN TO                                  RW1044.2
007900     "REPORT".                                                    RW1044.2
008000     SELECT RW-FS4 ASSIGN TO                                      RW1044.2
008100     "XXXXX049".                                                  RW1044.2
008200 DATA DIVISION.                                                   RW1044.2
008300 FILE SECTION.                                                    RW1044.2
008400 FD  PRINT-FILE                                                   RW1044.2
008500     LABEL RECORDS                                                RW1044.2
008600         OMITTED                                                  RW1044.2
008700     DATA RECORD IS PRINT-REC DUMMY-RECORD.                       RW1044.2
008800 01  PRINT-REC PICTURE X(120).                                    RW1044.2
008900 01  DUMMY-RECORD PICTURE X(120).                                 RW1044.2
009000 FD  RW-FS4                                                       RW1044.2
009100     LABEL RECORDS ARE STANDARD                                   RW1044.2
009700     REPORT IS RW-FS4-REPORT-1.                                   RW1044.2
009800 WORKING-STORAGE SECTION.                                         RW1044.2
009900 01  LC-ERRORS  PIC 99   VALUE 0.                                 RW1044.2
010000 01  PC-ERRORS  PIC 99   VALUE 0.                                 RW1044.2
010100 01  WS-COUNTER PIC 99   VALUE 0.                                 RW1044.2
010200 01  PAGENO   PIC 99   VALUE 1.                                   RW1044.2
010300 01  TEMP-COMP    PIC 99.                                         RW1044.2
010400 01  TEST-RESULTS.                                                RW1044.2
010500     02 FILLER                    PICTURE X VALUE SPACE.          RW1044.2
010600     02 FEATURE                   PICTURE X(20) VALUE SPACE.      RW1044.2
010700     02 FILLER                    PICTURE X VALUE SPACE.          RW1044.2
010800     02 P-OR-F                    PICTURE X(5) VALUE SPACE.       RW1044.2
010900     02 FILLER                    PICTURE X  VALUE SPACE.         RW1044.2
011000     02  PAR-NAME.                                                RW1044.2
011100       03 FILLER PICTURE X(12) VALUE SPACE.                       RW1044.2
011200       03  PARDOT-X PICTURE X  VALUE SPACE.                       RW1044.2
011300       03 DOTVALUE PICTURE 99  VALUE ZERO.                        RW1044.2
011400       03 FILLER PIC X(5) VALUE SPACE.                            RW1044.2
011500     02 FILLER PIC X(10) VALUE SPACE.                             RW1044.2
011600     02 RE-MARK PIC X(61).                                        RW1044.2
011700 01  TEST-COMPUTED.                                               RW1044.2
011800     02 FILLER PIC X(30) VALUE SPACE.                             RW1044.2
011900     02 FILLER PIC X(17) VALUE "       COMPUTED=".                RW1044.2
012000     02 COMPUTED-X.                                               RW1044.2
012100     03 COMPUTED-A                PICTURE X(20) VALUE SPACE.      RW1044.2
012200     03 COMPUTED-N REDEFINES COMPUTED-A PICTURE -9(9).9(9).       RW1044.2
012300     03 COMPUTED-0V18 REDEFINES COMPUTED-A  PICTURE -.9(18).      RW1044.2
012400     03 COMPUTED-4V14 REDEFINES COMPUTED-A  PICTURE -9(4).9(14).  RW1044.2
012500     03 COMPUTED-14V4 REDEFINES COMPUTED-A  PICTURE -9(14).9(4).  RW1044.2
012600     03       CM-18V0 REDEFINES COMPUTED-A.                       RW1044.2
012700         04 COMPUTED-18V0                   PICTURE -9(18).       RW1044.2
012800         04 FILLER                          PICTURE X.            RW1044.2
012900     03 FILLER PIC X(50) VALUE SPACE.                             RW1044.2
013000 01  TEST-CORRECT.                                                RW1044.2
013100     02 FILLER PIC X(30) VALUE SPACE.                             RW1044.2
013200     02 FILLER PIC X(17) VALUE "       CORRECT =".                RW1044.2
013300     02 CORRECT-X.                                                RW1044.2
013400     03 CORRECT-A                 PICTURE X(20) VALUE SPACE.      RW1044.2
013500     03 CORRECT-N REDEFINES CORRECT-A PICTURE -9(9).9(9).         RW1044.2
013600     03 CORRECT-0V18 REDEFINES CORRECT-A    PICTURE -.9(18).      RW1044.2
013700     03 CORRECT-4V14 REDEFINES CORRECT-A    PICTURE -9(4).9(14).  RW1044.2
013800     03 CORRECT-14V4 REDEFINES CORRECT-A    PICTURE -9(14).9(4).  RW1044.2
013900     03      CR-18V0 REDEFINES CORRECT-A.                         RW1044.2
014000         04 CORRECT-18V0                    PICTURE -9(18).       RW1044.2
014100         04 FILLER                          PICTURE X.            RW1044.2
014200     03 FILLER PIC X(50) VALUE SPACE.                             RW1044.2
014300 01  CCVS-C-1.                                                    RW1044.2
014400     02 FILLER PICTURE IS X(99) VALUE IS " FEATURE              PARW1044.2
014500-    "SS  PARAGRAPH-NAME                                          RW1044.2
014600-    "        REMARKS".                                           RW1044.2
014700     02 FILLER PICTURE IS X(20) VALUE IS SPACE.                   RW1044.2
014800 01  CCVS-C-2.                                                    RW1044.2
014900     02 FILLER PICTURE IS X VALUE IS SPACE.                       RW1044.2
015000     02 FILLER PICTURE IS X(6) VALUE IS "TESTED".                 RW1044.2
015100     02 FILLER PICTURE IS X(15) VALUE IS SPACE.                   RW1044.2
015200     02 FILLER PICTURE IS X(4) VALUE IS "FAIL".                   RW1044.2
015300     02 FILLER PICTURE IS X(94) VALUE IS SPACE.                   RW1044.2
015400 01  REC-SKL-SUB PICTURE 9(2) VALUE ZERO.                         RW1044.2
015500 01  REC-CT PICTURE 99 VALUE ZERO.                                RW1044.2
015600 01  DELETE-CNT                   PICTURE 999  VALUE ZERO.        RW1044.2
015700 01  ERROR-COUNTER PICTURE IS 999 VALUE IS ZERO.                  RW1044.2
015800 01  INSPECT-COUNTER PIC 999 VALUE ZERO.                          RW1044.2
015900 01  PASS-COUNTER PIC 999 VALUE ZERO.                             RW1044.2
016000 01  TOTAL-ERROR PIC 999 VALUE ZERO.                              RW1044.2
016100 01  ERROR-HOLD PIC 999 VALUE ZERO.                               RW1044.2
016200 01  DUMMY-HOLD PIC X(120) VALUE SPACE.                           RW1044.2
016300 01  RECORD-COUNT PIC 9(5) VALUE ZERO.                            RW1044.2
016400 01  CCVS-H-1.                                                    RW1044.2
016500     02  FILLER   PICTURE X(27)  VALUE SPACE.                     RW1044.2
016600     02 FILLER PICTURE X(67) VALUE                                RW1044.2
016700     " FEDERAL COMPILER TESTING CENTER COBOL COMPILER VALIDATION  RW1044.2
016800-    " SYSTEM".                                                   RW1044.2
016900     02  FILLER     PICTURE X(26)  VALUE SPACE.                   RW1044.2
017000 01  CCVS-H-2.                                                    RW1044.2
017100     02 FILLER PICTURE X(52) VALUE IS                             RW1044.2
017200     "CCVS74 NCC  COPY, NOT FOR DISTRIBUTION.".                   RW1044.2
017300     02 FILLER PICTURE IS X(19) VALUE IS "TEST RESULTS SET-  ".   RW1044.2
017400     02 TEST-ID PICTURE IS X(9).                                  RW1044.2
017500     02 FILLER PICTURE IS X(40) VALUE IS SPACE.                   RW1044.2
017600 01  CCVS-H-3.                                                    RW1044.2
017700     02  FILLER PICTURE X(34) VALUE                               RW1044.2
017800     " FOR OFFICIAL USE ONLY    ".                                RW1044.2
017900     02  FILLER PICTURE X(58) VALUE                               RW1044.2
018000     "COBOL 85 VERSION 4.2, Apr  1993 SSVG                      ".RW1044.2
018100     02  FILLER PICTURE X(28) VALUE                               RW1044.2
018200     "  COPYRIGHT   1974 ".                                       RW1044.2
018300 01  CCVS-E-1.                                                    RW1044.2
018400     02 FILLER PICTURE IS X(52) VALUE IS SPACE.                   RW1044.2
018500     02 FILLER PICTURE IS X(14) VALUE IS "END OF TEST-  ".        RW1044.2
018600     02 ID-AGAIN PICTURE IS X(9).                                 RW1044.2
018700     02 FILLER PICTURE X(45) VALUE IS                             RW1044.2
018800     " NTIS DISTRIBUTION COBOL 74".                               RW1044.2
018900 01  CCVS-E-2.                                                    RW1044.2
019000     02  FILLER                   PICTURE X(31)  VALUE            RW1044.2
019100     SPACE.                                                       RW1044.2
019200     02  FILLER                   PICTURE X(21)  VALUE SPACE.     RW1044.2
019300     02 CCVS-E-2-2.                                               RW1044.2
019400         03 ERROR-TOTAL PICTURE IS XXX VALUE IS SPACE.            RW1044.2
019500         03 FILLER PICTURE IS X VALUE IS SPACE.                   RW1044.2
019600         03 ENDER-DESC PIC X(44) VALUE "ERRORS ENCOUNTERED".      RW1044.2
019700 01  CCVS-E-3.                                                    RW1044.2
019800     02  FILLER PICTURE X(22) VALUE                               RW1044.2
019900     " FOR OFFICIAL USE ONLY".                                    RW1044.2
020000     02  FILLER PICTURE X(12) VALUE SPACE.                        RW1044.2
020100     02  FILLER PICTURE X(58) VALUE                               RW1044.2
020200     "ON-SITE VALIDATION, NATIONAL INSTITUTE OF STD & TECH.     ".RW1044.2
020300     02  FILLER PICTURE X(13) VALUE SPACE.                        RW1044.2
020400     02 FILLER PIC X(15) VALUE " COPYRIGHT 1974".                 RW1044.2
020500 01  CCVS-E-4.                                                    RW1044.2
020600     02 CCVS-E-4-1 PIC XXX VALUE SPACE.                           RW1044.2
020700     02 FILLER PIC XXXX VALUE " OF ".                             RW1044.2
020800     02 CCVS-E-4-2 PIC XXX VALUE SPACE.                           RW1044.2
020900     02 FILLER PIC X(40) VALUE                                    RW1044.2
021000      "  TESTS WERE EXECUTED SUCCESSFULLY".                       RW1044.2
021100 01  XXINFO.                                                      RW1044.2
021200     02 FILLER PIC X(30) VALUE "        *** INFORMATION  ***".    RW1044.2
021300     02 INFO-TEXT.                                                RW1044.2
021400     04 FILLER PIC X(20) VALUE SPACE.                             RW1044.2
021500     04 XXCOMPUTED PIC X(20).                                     RW1044.2
021600     04 FILLER PIC X(5) VALUE SPACE.                              RW1044.2
021700     04 XXCORRECT PIC X(20).                                      RW1044.2
021800 01  HYPHEN-LINE.                                                 RW1044.2
021900     02 FILLER PICTURE IS X VALUE IS SPACE.                       RW1044.2
022000     02 FILLER PICTURE IS X(65) VALUE IS "************************RW1044.2
022100-    "*****************************************".                 RW1044.2
022200     02 FILLER PICTURE IS X(54) VALUE IS "************************RW1044.2
022300-    "******************************".                            RW1044.2
022400 01  CCVS-PGM-ID PIC X(6) VALUE                                   RW1044.2
022500     "RW104A".                                                    RW1044.2
022600 REPORT SECTION.                                                  RW1044.2
022700 RD  RW-FS4-REPORT-1                                              RW1044.2
022800     PAGE LIMITS ARE 30 LINES                                     RW1044.2
022900     HEADING 1                                                    RW1044.2
023000     FIRST DETAIL 6                                               RW1044.2
023100     LAST DETAIL 25                                               RW1044.2
023200     FOOTING 29.                                                  RW1044.2
023300 01  RW-FS4-HEADING                                               RW1044.2
023400     LINE NUMBER 1                                                RW1044.2
023500     TYPE PH.                                                     RW1044.2
023600     03  PIC X(36)   COLUMN 20                                    RW1044.2
023700         VALUE "U.S. NAVY COBOL AUDIT ROUTINE RW104A".            RW1044.2
023800     03  PIC X(5)  COLUMN NUMBER 60  VALUE "LINE ".               RW1044.2
023900     03  PIC 9  COLUMN NUMBER IS 65  SOURCE LINE-COUNTER.         RW1044.2
024000     03  COLUMN NUMBER 70  PIC X(5)  VALUE "PAGE ".               RW1044.2
024100     03  SOURCE PAGE-COUNTER PIC 9 COLUMN NUMBER IS 75.           RW1044.2
024200 01  RW-FS4-DETAIL                                                RW1044.2
024300     LINE NUMBER PLUS 1                                           RW1044.2
024400     TYPE DE.                                                     RW1044.2
024500     03  VALUE "DETAIL LINE "  COLUMN 20    PIC X(12).            RW1044.2
024600     03  PIC 99  COLUMN 32  SOURCE IS WS-COUNTER.                 RW1044.2
024700     03  PIC X(13)    COLUMN 36   VALUE "PAGE-COUNTER ".          RW1044.2
024800     03  PIC 9   COLUMN 49  SOURCE PAGE-COUNTER.                  RW1044.2
024900     03  PIC X(13)   COLUMN 55   VALUE "LINE-COUNTER ".           RW1044.2
025000     03  PIC 99   COLUMN 68   SOURCE LINE-COUNTER.                RW1044.2
025100 01  RW-FS4-FOOTING                                               RW1044.2
025200     LINE NUMBER 30                                               RW1044.2
025300     TYPE IS PAGE FOOTING.                                        RW1044.2
025400     05  PICTURE X(36)   COLUMN 20                                RW1044.2
025500         VALUE "PAGE FOOTING ROUTINE RW104     LINE ".            RW1044.2
025600     05  PIC 99 COLUMN 56 SOURCE LINE-COUNTER.                    RW1044.2
025700     05  PIC X(5)  COLUMN 70   VALUE "PAGE ".                     RW1044.2
025800     05  PIC 9   COLUMN 75    SOURCE PAGE-COUNTER.                RW1044.2
025900*                                                                         
026000*                                                                         
026100*                                                                         
026200*                                                                         
026300*                                                                         
026400 PROCEDURE DIVISION.                                              RW1044.2
026500 CCVS1 SECTION.                                                   RW1044.2
026600 OPEN-FILES.                                                      RW1044.2
026700     OPEN     OUTPUT PRINT-FILE.                                  RW1044.2
026800     MOVE CCVS-PGM-ID TO TEST-ID. MOVE CCVS-PGM-ID TO ID-AGAIN.   RW1044.2
026900     MOVE    SPACE TO TEST-RESULTS.                               RW1044.2
027000     PERFORM  HEAD-ROUTINE THRU COLUMN-NAMES-ROUTINE.             RW1044.2
027100     GO TO CCVS1-EXIT.                                            RW1044.2
027200 CLOSE-FILES.                                                     RW1044.2
027300     PERFORM END-ROUTINE THRU END-ROUTINE-13. CLOSE PRINT-FILE.   RW1044.2
027400 TERMINATE-CCVS.                                                  RW1044.2
027700     STOP     RUN.                                                RW1044.2
027800 INSPT. MOVE "INSPT" TO P-OR-F. ADD 1 TO INSPECT-COUNTER.         RW1044.2
027900 PASS.  MOVE "PASS " TO P-OR-F.  ADD 1 TO PASS-COUNTER.           RW1044.2
028000 FAIL.  MOVE "FAIL*" TO P-OR-F.  ADD 1 TO ERROR-COUNTER.          RW1044.2
028100 DE-LETE.  MOVE "*****" TO P-OR-F.  ADD 1 TO DELETE-CNT.          RW1044.2
028200     MOVE "****TEST DELETED****" TO RE-MARK.                      RW1044.2
028300 PRINT-DETAIL.                                                    RW1044.2
028400     IF REC-CT NOT EQUAL TO ZERO                                  RW1044.2
028500             MOVE "." TO PARDOT-X                                 RW1044.2
028600             MOVE REC-CT TO DOTVALUE.                             RW1044.2
028700     MOVE     TEST-RESULTS TO PRINT-REC. PERFORM WRITE-LINE.      RW1044.2
028800     IF P-OR-F EQUAL TO "FAIL*"  PERFORM WRITE-LINE               RW1044.2
028900        PERFORM FAIL-ROUTINE THRU FAIL-ROUTINE-EX                 RW1044.2
029000          ELSE PERFORM BAIL-OUT THRU BAIL-OUT-EX.                 RW1044.2
029100     MOVE SPACE TO P-OR-F. MOVE SPACE TO COMPUTED-X.              RW1044.2
029200     MOVE SPACE TO CORRECT-X.                                     RW1044.2
029300     IF     REC-CT EQUAL TO ZERO  MOVE SPACE TO PAR-NAME.         RW1044.2
029400     MOVE     SPACE TO RE-MARK.                                   RW1044.2
029500 HEAD-ROUTINE.                                                    RW1044.2
029600     MOVE CCVS-H-1 TO DUMMY-RECORD. PERFORM WRITE-LINE 2 TIMES.   RW1044.2
029700     MOVE CCVS-H-2 TO DUMMY-RECORD. PERFORM WRITE-LINE 5 TIMES.   RW1044.2
029800     MOVE CCVS-H-3 TO DUMMY-RECORD. PERFORM WRITE-LINE 3 TIMES.   RW1044.2
029900 COLUMN-NAMES-ROUTINE.                                            RW1044.2
030000     MOVE CCVS-C-1 TO DUMMY-RECORD. PERFORM WRITE-LINE.           RW1044.2
030100     MOVE CCVS-C-2 TO DUMMY-RECORD. PERFORM WRITE-LINE 2 TIMES.   RW1044.2
030200     MOVE HYPHEN-LINE TO DUMMY-RECORD. PERFORM WRITE-LINE.        RW1044.2
030300 END-ROUTINE.                                                     RW1044.2
030400     MOVE HYPHEN-LINE TO DUMMY-RECORD. PERFORM WRITE-LINE 5 TIMES.RW1044.2
030500 END-RTN-EXIT.                                                    RW1044.2
030600     MOVE CCVS-E-1 TO DUMMY-RECORD. PERFORM WRITE-LINE 2 TIMES.   RW1044.2
030700 END-ROUTINE-1.                                                   RW1044.2
030800      ADD ERROR-COUNTER TO ERROR-HOLD ADD INSPECT-COUNTER TO      RW1044.2
030900      ERROR-HOLD. ADD DELETE-CNT TO ERROR-HOLD.                   RW1044.2
031000      ADD PASS-COUNTER TO ERROR-HOLD.                             RW1044.2
031100*                                                                         
031200      MOVE PASS-COUNTER TO CCVS-E-4-1.                            RW1044.2
031300      MOVE ERROR-HOLD TO CCVS-E-4-2.                              RW1044.2
031400      MOVE CCVS-E-4 TO CCVS-E-2-2.                                RW1044.2
031500      MOVE CCVS-E-2 TO DUMMY-RECORD PERFORM WRITE-LINE.           RW1044.2
031600  END-ROUTINE-12.                                                 RW1044.2
031700      MOVE "TEST(S) FAILED" TO ENDER-DESC.                        RW1044.2
031800     IF       ERROR-COUNTER IS EQUAL TO ZERO                      RW1044.2
031900         MOVE "NO " TO ERROR-TOTAL                                RW1044.2
032000         ELSE                                                     RW1044.2
032100         MOVE ERROR-COUNTER TO ERROR-TOTAL.                       RW1044.2
032200     MOVE     CCVS-E-2 TO DUMMY-RECORD.                           RW1044.2
032300     PERFORM WRITE-LINE.                                          RW1044.2
032400 END-ROUTINE-13.                                                  RW1044.2
032500     IF DELETE-CNT IS EQUAL TO ZERO                               RW1044.2
032600         MOVE "NO " TO ERROR-TOTAL  ELSE                          RW1044.2
032700         MOVE DELETE-CNT TO ERROR-TOTAL.                          RW1044.2
032800     MOVE "TEST(S) DELETED     " TO ENDER-DESC.                   RW1044.2
032900     MOVE CCVS-E-2 TO DUMMY-RECORD. PERFORM WRITE-LINE.           RW1044.2
033000      IF   INSPECT-COUNTER EQUAL TO ZERO                          RW1044.2
033100          MOVE "NO " TO ERROR-TOTAL                               RW1044.2
033200      ELSE MOVE INSPECT-COUNTER TO ERROR-TOTAL.                   RW1044.2
033300      MOVE "TEST(S) REQUIRE INSPECTION" TO ENDER-DESC.            RW1044.2
033400      MOVE CCVS-E-2 TO DUMMY-RECORD. PERFORM WRITE-LINE.          RW1044.2
033500     MOVE CCVS-E-3 TO DUMMY-RECORD. PERFORM WRITE-LINE.           RW1044.2
033600 WRITE-LINE.                                                      RW1044.2
033700     ADD 1 TO RECORD-COUNT.                                       RW1044.2
033800     IF RECORD-COUNT GREATER 50                                   RW1044.2
033900         MOVE DUMMY-RECORD TO DUMMY-HOLD                          RW1044.2
034000         MOVE SPACE TO DUMMY-RECORD                               RW1044.2
034100         WRITE DUMMY-RECORD AFTER ADVANCING PAGE                  RW1044.2
034200         MOVE CCVS-C-1 TO DUMMY-RECORD PERFORM WRT-LN             RW1044.2
034300         MOVE CCVS-C-2 TO DUMMY-RECORD PERFORM WRT-LN 2 TIMES     RW1044.2
034400         MOVE HYPHEN-LINE TO DUMMY-RECORD PERFORM WRT-LN          RW1044.2
034500         MOVE DUMMY-HOLD TO DUMMY-RECORD                          RW1044.2
034600         MOVE ZERO TO RECORD-COUNT.                               RW1044.2
034700     PERFORM WRT-LN.                                              RW1044.2
034800 WRT-LN.                                                          RW1044.2
034900     WRITE    DUMMY-RECORD AFTER ADVANCING 1 LINES.               RW1044.2
035000     MOVE SPACE TO DUMMY-RECORD.                                  RW1044.2
035100 BLANK-LINE-PRINT.                                                RW1044.2
035200     PERFORM WRT-LN.                                              RW1044.2
035300 FAIL-ROUTINE.                                                    RW1044.2
035400     IF COMPUTED-X NOT EQUAL TO SPACE GO TO FAIL-ROUTINE-WRITE.   RW1044.2
035500     IF CORRECT-X NOT EQUAL TO SPACE GO TO FAIL-ROUTINE-WRITE.    RW1044.2
035600     MOVE "NO FURTHER INFORMATION, SEE PROGRAM." TO INFO-TEXT.    RW1044.2
035700     MOVE XXINFO TO DUMMY-RECORD. PERFORM WRITE-LINE 2 TIMES.     RW1044.2
035800     GO TO FAIL-ROUTINE-EX.                                       RW1044.2
035900 FAIL-ROUTINE-WRITE.                                              RW1044.2
036000     MOVE TEST-COMPUTED TO PRINT-REC PERFORM WRITE-LINE           RW1044.2
036100     MOVE TEST-CORRECT TO PRINT-REC PERFORM WRITE-LINE 2 TIMES.   RW1044.2
036200 FAIL-ROUTINE-EX. EXIT.                                           RW1044.2
036300 BAIL-OUT.                                                        RW1044.2
036400     IF COMPUTED-A NOT EQUAL TO SPACE GO TO BAIL-OUT-WRITE.       RW1044.2
036500     IF CORRECT-A EQUAL TO SPACE GO TO BAIL-OUT-EX.               RW1044.2
036600 BAIL-OUT-WRITE.                                                  RW1044.2
036700     MOVE CORRECT-A TO XXCORRECT. MOVE COMPUTED-A TO XXCOMPUTED.  RW1044.2
036800     MOVE XXINFO TO DUMMY-RECORD. PERFORM WRITE-LINE 2 TIMES.     RW1044.2
036900 BAIL-OUT-EX. EXIT.                                               RW1044.2
037000 CCVS1-EXIT.                                                      RW1044.2
037100     EXIT.                                                        RW1044.2
037200 SECT-RW104-0001 SECTION.                                         RW1044.2
037300 RW104-INIT.                                                      RW1044.2
037400     OPEN OUTPUT RW-FS4.                                          RW1044.2
037500 INIT-TEST-05.                                                    RW1044.2
037600     INITIATE RW-FS4-REPORT-1.                                    RW1044.2
037700*                                                                         
037800*                                                                         
037900*                                                                         
038000*                                                                         
038100*                                                                         
038200*                                                                         
038300 INIT-TEST-05-01.                                                 RW1044.2
038400     IF LINE-COUNTER IS EQUAL TO ZERO                             RW1044.2
038500         PERFORM PASS                                             RW1044.2
038600         GO TO INIT-WRITE-05-01.                                  RW1044.2
038700 INIT-FAIL-05-01.                                                 RW1044.2
038800     PERFORM FAIL.                                                RW1044.2
038900     MOVE ZERO TO CORRECT-18V0.                                   RW1044.2
039000     MOVE LINE-COUNTER TO COMPUTED-18V0.                          RW1044.2
039100     MOVE "LINE-COUNTER AFTER INITIATE" TO RE-MARK.               RW1044.2
039200 INIT-WRITE-05-01.                                                RW1044.2
039300     MOVE "INIT-TEST-05" TO PAR-NAME.                             RW1044.2
039400     MOVE 1 TO REC-CT.                                            RW1044.2
039500     MOVE "INITIATE REPORT" TO FEATURE.                           RW1044.2
039600     PERFORM PRINT-DETAIL.                                        RW1044.2
039700 INIT-TEST-05-02.                                                 RW1044.2
039800     IF PAGE-COUNTER IS EQUAL TO 1                                RW1044.2
039900         PERFORM PASS                                             RW1044.2
040000         GO TO INIT-WRITE-05-02.                                  RW1044.2
040100 INIT-FAIL-05-02.                                                 RW1044.2
040200     PERFORM FAIL.                                                RW1044.2
040300     MOVE 1 TO CORRECT-18V0.                                      RW1044.2
040400     MOVE PAGE-COUNTER TO COMPUTED-18V0.                          RW1044.2
040500     MOVE "PAGE-COUNTER AFTER INITIATE" TO RE-MARK.               RW1044.2
040600 INIT-WRITE-05-02.                                                RW1044.2
040700     MOVE 2 TO REC-CT.                                            RW1044.2
040800     PERFORM PRINT-DETAIL.                                        RW1044.2
040900 GENER-TEST-14.                                                   RW1044.2
041000*                                                                         
041100*                                                                         
041200*                                                                         
041300*                                                                         
041400     ADD 1 TO WS-COUNTER.                                         RW1044.2
041500     GENERATE RW-FS4-DETAIL.                                      RW1044.2
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
043000 GENER-TEST-14-01.                                                RW1044.2
043100     IF LINE-COUNTER IS EQUAL TO 6                                RW1044.2
043200         PERFORM PASS                                             RW1044.2
043300         GO TO GENER-WRITE-14-01.                                 RW1044.2
043400*                                                                         
043500*                                                                         
043600*                                                                         
043700*                                                                         
043800*                                                                         
043900*                                                                         
044000 GENER-FAIL-14-01.                                                RW1044.2
044100     PERFORM FAIL.                                                RW1044.2
044200     MOVE 6 TO CORRECT-18V0.                                      RW1044.2
044300     MOVE LINE-COUNTER TO COMPUTED-18V0.                          RW1044.2
044400     MOVE "LINE-COUNTER AFTER FIRST GENER" TO RE-MARK.            RW1044.2
044500 GENER-WRITE-14-01.                                               RW1044.2
044600     MOVE "GENR-WRITE-14" TO PAR-NAME.                            RW1044.2
044700     MOVE "FIRST GENERATE" TO FEATURE.                            RW1044.2
044800     MOVE 1 TO REC-CT.                                            RW1044.2
044900     PERFORM PRINT-DETAIL.                                        RW1044.2
045000 GENER-TEST-14-02.                                                RW1044.2
045100     IF PAGE-COUNTER EQUAL TO 1                                   RW1044.2
045200         PERFORM PASS                                             RW1044.2
045300         GO TO GENER-WRITE-14-02.                                 RW1044.2
045400*                                                                         
045500*                                                                         
045600*                                                                         
045700*                                                                         
045800*                                                                         
045900*                                                                         
046000 GENER-FAIL-14-02.                                                RW1044.2
046100     PERFORM FAIL.                                                RW1044.2
046200     MOVE 1 TO CORRECT-18V0.                                      RW1044.2
046300     MOVE PAGE-COUNTER TO COMPUTED-18V0.                          RW1044.2
046400     MOVE "PAGE-COUNTER AFTER FIRST GENER" TO RE-MARK.            RW1044.2
046500 GENER-WRITE-14-02.                                               RW1044.2
046600     MOVE 2 TO REC-CT.                                            RW1044.2
046700     PERFORM PRINT-DETAIL.                                        RW1044.2
046800 GENER-TEST-15.                                                   RW1044.2
046900*                                                                         
047000*                                                                         
047100*                                                                         
047200*                                                                         
047300     PERFORM GENER-DETAIL-LINE 19 TIMES.                          RW1044.2
047400*                                                                         
047500*                                                                         
047600*                                                                         
047700*                                                                         
047800*                                                                         
047900*                                                                         
048000     GO TO GENER-TEST-15-01.                                      RW1044.2
048100 GENER-DETAIL-LINE.                                               RW1044.2
048200     ADD 1 TO WS-COUNTER.                                         RW1044.2
048300     GENERATE RW-FS4-DETAIL.                                      RW1044.2
048400     MOVE WS-COUNTER TO TEMP-COMP.                                RW1044.2
048500     ADD 5 TO TEMP-COMP.                                          RW1044.2
048600     IF LINE-COUNTER NOT EQUAL TO TEMP-COMP                       RW1044.2
048700         ADD 1 TO LC-ERRORS.                                      RW1044.2
048800*                                                                         
048900*                                                                         
049000*                                                                         
049100*                                                                         
049200*                                                                         
049300*                                                                         
049400*                                                                         
049500     IF PAGE-COUNTER NOT EQUAL TO PAGENO                          RW1044.2
049600         ADD 1 TO PC-ERRORS.                                      RW1044.2
049700*                                                                         
049800*                                                                         
049900*                                                                         
050000*                                                                         
050100*                                                                         
050200 GENER-TEST-15-01.                                                RW1044.2
050300     IF LC-ERRORS EQUAL TO ZERO                                   RW1044.2
050400         PERFORM PASS                                             RW1044.2
050500        GO TO GENER-WRITE-15-01.                                  RW1044.2
050600 GENER-FAIL-15-01.                                                RW1044.2
050700     PERFORM FAIL.                                                RW1044.2
050800     MOVE LC-ERRORS TO COMPUTED-18V0.                             RW1044.2
050900     MOVE ZERO TO CORRECT-18V0.                                   RW1044.2
051000     MOVE  "NUMBER OF LINE-COUNTER ERRORS" TO RE-MARK.            RW1044.2
051100 GENER-WRITE-15-01.                                               RW1044.2
051200     MOVE "GENR-TEST-15" TO PAR-NAME.                             RW1044.2
051300     MOVE "GENERATE 19 LINES" TO FEATURE.                         RW1044.2
051400     MOVE 1 TO REC-CT.                                            RW1044.2
051500     PERFORM PRINT-DETAIL.                                        RW1044.2
051600 GENER-TEST-15-02.                                                RW1044.2
051700     IF PC-ERRORS EQUAL TO ZERO                                   RW1044.2
051800         PERFORM PASS                                             RW1044.2
051900        GO TO GENER-WRITE-15-02.                                  RW1044.2
052000 GENER-FAIL-15-02.                                                RW1044.2
052100     PERFORM FAIL.                                                RW1044.2
052200     MOVE PC-ERRORS TO COMPUTED-18V0.                             RW1044.2
052300     MOVE ZERO TO CORRECT-18V0.                                   RW1044.2
052400     MOVE "NUMBER OF PAGE-COUNTER ERRORS" TO RE-MARK.             RW1044.2
052500 GENER-WRITE-15-02.                                               RW1044.2
052600     MOVE 2 TO REC-CT.                                            RW1044.2
052700     PERFORM PRINT-DETAIL.                                        RW1044.2
052800 GENER-TEST-16.                                                   RW1044.2
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
054100     MOVE 1 TO WS-COUNTER.                                        RW1044.2
054200     GENERATE RW-FS4-DETAIL.                                      RW1044.2
054300 GENER-TEST-16-01.                                                RW1044.2
054400     IF LINE-COUNTER EQUAL TO 6                                   RW1044.2
054500         PERFORM PASS                                             RW1044.2
054600         GO TO GENER-WRITE-16-01.                                 RW1044.2
054700*                                                                         
054800*                                                                         
054900*                                                                         
055000*                                                                         
055100*                                                                         
055200*                                                                         
055300*                                                                         
055400 GENER-FAIL-16-01.                                                RW1044.2
055500     PERFORM FAIL.                                                RW1044.2
055600     MOVE 6 TO CORRECT-18V0.                                      RW1044.2
055700     MOVE LINE-COUNTER TO COMPUTED-18V0.                          RW1044.2
055800     MOVE "LINE-COUNTER AFTER PAGE ADVANCE" TO RE-MARK.           RW1044.2
055900 GENER-WRITE-16-01.                                               RW1044.2
056000     MOVE "GENR-TEST-16" TO PAR-NAME.                             RW1044.2
056100     MOVE "PAGE ADVANCE" TO FEATURE.                              RW1044.2
056200     MOVE 1 TO REC-CT.                                            RW1044.2
056300     PERFORM PRINT-DETAIL.                                        RW1044.2
056400 GENER-TEST-16-02.                                                RW1044.2
056500     IF PAGE-COUNTER EQUAL TO 2                                   RW1044.2
056600         PERFORM PASS                                             RW1044.2
056700         GO TO GENER-WRITE-16-02.                                 RW1044.2
056800*                                                                         
056900*                                                                         
057000*                                                                         
057100*                                                                         
057200*                                                                         
057300 GENER-FAIL-16-02.                                                RW1044.2
057400     PERFORM FAIL.                                                RW1044.2
057500     MOVE 2 TO CORRECT-18V0.                                      RW1044.2
057600     MOVE PAGE-COUNTER TO COMPUTED-18V0.                          RW1044.2
057700     MOVE "PAGE-COUNTER AFTER PAGE ADVANCE" TO RE-MARK.           RW1044.2
057800 GENER-WRITE-16-02.                                               RW1044.2
057900     MOVE 2 TO REC-CT.                                            RW1044.2
058000     PERFORM PRINT-DETAIL.                                        RW1044.2
058100 GENER-TEST-17.                                                   RW1044.2
058200*                                                                         
058300*                                                                         
058400*                                                                         
058500*                                                                         
058600*                                                                         
058700*                                                                         
058800*                                                                         
058900     MOVE 2 TO PAGENO.                                            RW1044.2
059000     MOVE ZERO TO LC-ERRORS  PC-ERRORS.                           RW1044.2
059100     PERFORM GENER-DETAIL-LINE 19 TIMES.                          RW1044.2
059200 GENER-TEST-17-01.                                                RW1044.2
059300     IF LC-ERRORS EQUAL TO ZERO                                   RW1044.2
059400         PERFORM PASS                                             RW1044.2
059500         GO TO GENER-WRITE-17-01.                                 RW1044.2
059600 GENER-FAIL-17-01.                                                RW1044.2
059700     PERFORM FAIL.                                                RW1044.2
059800     MOVE LC-ERRORS TO COMPUTED-18V0.                             RW1044.2
059900     MOVE ZERO TO CORRECT-18V0.                                   RW1044.2
060000     MOVE "NUMBER OF LINE-COUNTER ERRORS" TO RE-MARK.             RW1044.2
060100 GENER-WRITE-17-01.                                               RW1044.2
060200     MOVE "GENR-TEST-17" TO PAR-NAME.                             RW1044.2
060300     MOVE 1 TO REC-CT.                                            RW1044.2
060400     MOVE "GENERATE 19 LINES" TO FEATURE.                         RW1044.2
060500     PERFORM PRINT-DETAIL.                                        RW1044.2
060600 GENER-TEST-17-02.                                                RW1044.2
060700     IF PC-ERRORS EQUAL TO ZERO                                   RW1044.2
060800         PERFORM PASS                                             RW1044.2
060900         GO TO GENER-WRITE-17-02.                                 RW1044.2
061000 GENER-FAIL-17-02.                                                RW1044.2
061100     PERFORM FAIL.                                                RW1044.2
061200     MOVE PC-ERRORS TO COMPUTED-18V0.                             RW1044.2
061300     MOVE ZERO TO CORRECT-18V0.                                   RW1044.2
061400     MOVE "NUMBER OF PAGE-COUNTER ERRORS" TO RE-MARK.             RW1044.2
061500 GENER-WRITE-17-02.                                               RW1044.2
061600     MOVE 2 TO REC-CT.                                            RW1044.2
061700     PERFORM PRINT-DETAIL.                                        RW1044.2
061800 GENER-TEST-18.                                                   RW1044.2
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
063000     MOVE 1 TO WS-COUNTER.                                        RW1044.2
063100     GENERATE RW-FS4-DETAIL.                                      RW1044.2
063200 GENER-TEST-18-01.                                                RW1044.2
063300     IF LINE-COUNTER EQUAL TO 6                                   RW1044.2
063400         PERFORM PASS                                             RW1044.2
063500         GO TO GENER-WRITE-18-01.                                 RW1044.2
063600*                                                                         
063700*                                                                         
063800*                                                                         
063900*                                                                         
064000*                                                                         
064100*                                                                         
064200*                                                                         
064300 GENER-FAIL-18-01.                                                RW1044.2
064400     PERFORM FAIL.                                                RW1044.2
064500     MOVE 6 TO CORRECT-18V0.                                      RW1044.2
064600     MOVE LINE-COUNTER TO COMPUTED-18V0.                          RW1044.2
064700     MOVE "LINE-COUNTER AFTER PAGE ADVANCE" TO RE-MARK.           RW1044.2
064800 GENER-WRITE-18-01.                                               RW1044.2
064900     MOVE "GENR-TEST-18" TO PAR-NAME.                             RW1044.2
065000     MOVE "PAGE ADVANCE" TO FEATURE.                              RW1044.2
065100     MOVE 1 TO REC-CT.                                            RW1044.2
065200     PERFORM PRINT-DETAIL.                                        RW1044.2
065300 GENER-TEST-18-02.                                                RW1044.2
065400         IF PAGE-COUNTER EQUAL TO 3                               RW1044.2
065500         PERFORM PASS                                             RW1044.2
065600         GO TO GENER-WRITE-18-02.                                 RW1044.2
065700*                                                                         
065800*                                                                         
065900*                                                                         
066000*                                                                         
066100*                                                                         
066200 GENER-FAIL-18-02.                                                RW1044.2
066300     PERFORM FAIL.                                                RW1044.2
066400     MOVE 3 TO CORRECT-18V0.                                      RW1044.2
066500     MOVE PAGE-COUNTER TO COMPUTED-18V0.                          RW1044.2
066600     MOVE "PAGE-COUNTER AFTER PAGE ADVANCE" TO RE-MARK.           RW1044.2
066700 GENER-WRITE-18-02.                                               RW1044.2
066800     MOVE 2 TO REC-CT.                                            RW1044.2
066900     PERFORM PRINT-DETAIL.                                        RW1044.2
067000 GENER-TEST-19.                                                   RW1044.2
067100*                                                                         
067200*                                                                         
067300*                                                                         
067400*                                                                         
067500*                                                                         
067600*                                                                         
067700*                                                                         
067800     MOVE 3 TO PAGENO.                                            RW1044.2
067900     MOVE ZERO TO LC-ERRORS.                                      RW1044.2
068000     MOVE ZERO TO PC-ERRORS.                                      RW1044.2
068100     PERFORM GENER-DETAIL-LINE 19 TIMES.                          RW1044.2
068200 GENER-TEST-19-01.                                                RW1044.2
068300     IF LC-ERRORS EQUAL TO ZERO                                   RW1044.2
068400         PERFORM PASS                                             RW1044.2
068500         GO TO GENER-WRITE-19-01.                                 RW1044.2
068600 GENER-FAIL-19-01.                                                RW1044.2
068700     PERFORM FAIL.                                                RW1044.2
068800     MOVE LC-ERRORS TO COMPUTED-18V0.                             RW1044.2
068900     MOVE ZERO TO CORRECT-18V0.                                   RW1044.2
069000     MOVE "NUMBER OF LINE-COUNTER ERRORS" TO RE-MARK.             RW1044.2
069100 GENER-WRITE-19-01.                                               RW1044.2
069200     MOVE "GENR-TEST-19" TO PAR-NAME.                             RW1044.2
069300     MOVE 1 TO REC-CT.                                            RW1044.2
069400     MOVE "GENERATE 19 LINES" TO FEATURE.                         RW1044.2
069500     PERFORM PRINT-DETAIL.                                        RW1044.2
069600 GENER-TEST-19-02.                                                RW1044.2
069700     IF PC-ERRORS EQUAL TO ZERO                                   RW1044.2
069800         PERFORM PASS                                             RW1044.2
069900         GO TO GENER-WRITE-19-02.                                 RW1044.2
070000 GENER-FAIL-19-02.                                                RW1044.2
070100     PERFORM FAIL.                                                RW1044.2
070200     MOVE PC-ERRORS TO COMPUTED-18V0.                             RW1044.2
070300     MOVE ZERO TO CORRECT-18V0.                                   RW1044.2
070400     MOVE "NUMBER OF PAGE-COUNTER ERRORS" TO RE-MARK.             RW1044.2
070500 GENER-WRITE-19-02.                                               RW1044.2
070600     MOVE 2 TO REC-CT.                                            RW1044.2
070700     PERFORM PRINT-DETAIL.                                        RW1044.2
070800 TERM-TEST-04.                                                    RW1044.2
070900*                                                                         
071000*                                                                         
071100*                                                                         
071200*                                                                         
071300*                                                                         
071400     TERMINATE RW-FS4-REPORT-1.                                   RW1044.2
071500     MOVE ZERO TO REC-CT.                                         RW1044.2
071600 TERM-WRITE-04.                                                   RW1044.2
071700     MOVE "TERMINATE REPORT" TO FEATURE.                          RW1044.2
071800     MOVE "TERM-TEST-04" TO PAR-NAME.                             RW1044.2
071900     MOVE "3 PAGE REPORT" TO COMPUTED-A.                          RW1044.2
072000     MOVE "20 DE LINES PER PAGE" TO CORRECT-A.                    RW1044.2
072100     MOVE "CHECK RWCS OUTPUT REPORT" TO RE-MARK.                  RW1044.2
072200     PERFORM PRINT-DETAIL.                                        RW1044.2
072300 CLOSE-RW-FS4.                                                    RW1044.2
072400         CLOSE RW-FS4.                                            RW1044.2
072500 EXIT-RW104.                                                      RW1044.2
072600     EXIT.                                                        RW1044.2
072700 CCVS-EXIT SECTION.                                               RW1044.2
072800 CCVS-999999.                                                     RW1044.2
072900     GO TO CLOSE-FILES.                                           RW1044.2
