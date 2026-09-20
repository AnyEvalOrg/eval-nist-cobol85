000100 IDENTIFICATION DIVISION.                                         OBIC24.2
000200 PROGRAM-ID.                                                      OBIC24.2
000300     OBIC2A.                                                      OBIC24.2
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
003200 ENVIRONMENT DIVISION.                                            OBIC24.2
003300 CONFIGURATION SECTION.                                           OBIC24.2
003400 SOURCE-COMPUTER.                                                 OBIC24.2
003500     GNU-Linux.                                                   OBIC24.2
003600 OBJECT-COMPUTER.                                                 OBIC24.2
003700     GNU-Linux.                                                   OBIC24.2
003800 INPUT-OUTPUT SECTION.                                            OBIC24.2
003900 FILE-CONTROL.                                                    OBIC24.2
004000     SELECT ST-FS1 ASSIGN TO                                      OBIC24.2
004100     "XXXXX027".                                                  OBIC24.2
004200 DATA DIVISION.                                                   OBIC24.2
004300 FILE SECTION.                                                    OBIC24.2
004400 SD  ST-FS1                                                       OBIC24.2
004500     DATA RECORD IS ST-FS1R1-F-G-126.                             OBIC24.2
004600 01  ST-FS1R1-F-G-126.                                            OBIC24.2
004700     02  ST-FS1-1-120.                                            OBIC24.2
004800         03  FILLER          PICTURE X(34).                       OBIC24.2
004900         03  ST-FS1-REC-NO   PICTURE 9(6).                        OBIC24.2
005000         03  FILLER          PICTURE X(80).                       OBIC24.2
005100     02  ST-FS1-121-124      PICTURE X(4).                        OBIC24.2
005200     02  ST-FS1-125-126      PICTURE 99.                          OBIC24.2
005300 WORKING-STORAGE SECTION.                                         OBIC24.2
005400 01  TEMP1               PICTURE X(4).                            OBIC24.2
005500 01  TEMP2               PICTURE 999.                             OBIC24.2
005600 01  TEMP3               PICTURE 999.                             OBIC24.2
005700 01  TEMP4               PICTURE 9(6).                            OBIC24.2
005800 01  FAIL-COUNT          PICTURE 999    VALUE ZERO.               OBIC24.2
005900 01  EOF-FLAG            PICTURE 9    VALUE ZERO.                 OBIC24.2
006000 01  PRINT-LINE-VALUES.                                           OBIC24.2
006100     02  PASS-OR-FAIL        PICTURE X(5).                        OBIC24.2
006200     02  R-COUNT             PICTURE 99.                          OBIC24.2
006300     02  FEATURE-TESTED      PICTURE X(20).                       OBIC24.2
006400     02  COMPUTED-SORT-KEY.                                       OBIC24.2
006500         03  COMPUTED-1-4    PICTURE X(4).                        OBIC24.2
006600         03  COMPUTED-5-6    PICTURE 99.                          OBIC24.2
006700         03  COMPUTED-7-12   PICTURE 9(6).                        OBIC24.2
006800         03  FILLER          PICTURE X(8)  VALUE SPACE.           OBIC24.2
006900     02  CORRECT-SORT-KEY.                                        OBIC24.2
007000         03  CORRECT-1-4     PICTURE X(4).                        OBIC24.2
007100         03  CORRECT-5-6     PICTURE 99.                          OBIC24.2
007200         03  CORRECT-7-12    PICTURE 9(6).                        OBIC24.2
007300         03  FILLER          PICTURE X(8)   VALUE SPACE.          OBIC24.2
007400     02  PARAGRAPH-NAME      PICTURE X(12).                       OBIC24.2
007500 01  PRINT-FLAG              PICTURE 9.                           OBIC24.2
007600 01  FILE-RECORD-INFORMATION-REC.                                 OBIC24.2
007700     03 FILE-RECORD-INFO-SKELETON.                                OBIC24.2
007800        05 FILLER                 PICTURE X(48)       VALUE       OBIC24.2
007900             "FILE=      ,RECORD=      /0,RECNO=000000,UPDT=00".  OBIC24.2
008000        05 FILLER                 PICTURE X(46)       VALUE       OBIC24.2
008100             ",ODO=0000,PGM=     ,LRECL=000000,BLKSIZ  =0000".    OBIC24.2
008200        05 FILLER                 PICTURE X(26)       VALUE       OBIC24.2
008300             ",LFIL=000000,ORG=  ,LBLR= ".                        OBIC24.2
008400        05 FILLER                 PICTURE X(37)       VALUE       OBIC24.2
008500             ",RECKEY=                             ".             OBIC24.2
008600        05 FILLER                 PICTURE X(38)       VALUE       OBIC24.2
008700             ",ALTKEY1=                             ".            OBIC24.2
008800        05 FILLER                 PICTURE X(38)       VALUE       OBIC24.2
008900             ",ALTKEY2=                             ".            OBIC24.2
009000        05 FILLER                 PICTURE X(7)        VALUE SPACE.OBIC24.2
009100     03 FILE-RECORD-INFO          OCCURS  10  TIMES.              OBIC24.2
009200        05 FILE-RECORD-INFO-P1-120.                               OBIC24.2
009300           07 FILLER              PIC X(5).                       OBIC24.2
009400           07 XFILE-NAME           PIC X(6).                      OBIC24.2
009500           07 FILLER              PIC X(8).                       OBIC24.2
009600           07 XRECORD-NAME         PIC X(6).                      OBIC24.2
009700           07 FILLER              PIC X(1).                       OBIC24.2
009800           07 REELUNIT-NUMBER     PIC 9(1).                       OBIC24.2
009900           07 FILLER              PIC X(7).                       OBIC24.2
010000           07 XRECORD-NUMBER       PIC 9(6).                      OBIC24.2
010100           07 FILLER              PIC X(6).                       OBIC24.2
010200           07 UPDATE-NUMBER       PIC 9(2).                       OBIC24.2
010300           07 FILLER              PIC X(5).                       OBIC24.2
010400           07 ODO-NUMBER          PIC 9(4).                       OBIC24.2
010500           07 FILLER              PIC X(5).                       OBIC24.2
010600           07 XPROGRAM-NAME        PIC X(5).                      OBIC24.2
010700           07 FILLER              PIC X(7).                       OBIC24.2
010800           07 XRECORD-LENGTH       PIC 9(6).                      OBIC24.2
010900           07 FILLER              PIC X(7).                       OBIC24.2
011000           07 CHARS-OR-RECORDS    PIC X(2).                       OBIC24.2
011100           07 FILLER              PIC X(1).                       OBIC24.2
011200           07 XBLOCK-SIZE          PIC 9(4).                      OBIC24.2
011300           07 FILLER              PIC X(6).                       OBIC24.2
011400           07 RECORDS-IN-FILE     PIC 9(6).                       OBIC24.2
011500           07 FILLER              PIC X(5).                       OBIC24.2
011600           07 XFILE-ORGANIZATION   PIC X(2).                      OBIC24.2
011700           07 FILLER              PIC X(6).                       OBIC24.2
011800           07 XLABEL-TYPE          PIC X(1).                      OBIC24.2
011900        05 FILE-RECORD-INFO-P121-240.                             OBIC24.2
012000           07 FILLER              PIC X(8).                       OBIC24.2
012100           07 XRECORD-KEY          PIC X(29).                     OBIC24.2
012200           07 FILLER              PIC X(9).                       OBIC24.2
012300           07 ALTERNATE-KEY1      PIC X(29).                      OBIC24.2
012400           07 FILLER              PIC X(9).                       OBIC24.2
012500           07 ALTERNATE-KEY2      PIC X(29).                      OBIC24.2
012600           07 FILLER              PIC X(7).                       OBIC24.2
012700 LINKAGE SECTION.                                                 OBIC24.2
012800 01  SORT-LINK           PICTURE 9.                               OBIC24.2
012900 PROCEDURE DIVISION USING SORT-LINK.                              OBIC24.2
013000 SECT-IC219-0001 SECTION 30.                                      OBIC24.2
013100*                                                                         
013200*                                                                         
013300*                                                                         
013400*                                                                         
013500*                                                                         
013600 SORT-PARAGRAPH.                                                  OBIC24.2
013700     SORT ST-FS1                                                  OBIC24.2
013800         ASCENDING KEY ST-FS1-121-124                             OBIC24.2
013900         ASCENDING KEY ST-FS1-125-126                             OBIC24.2
014000         ASCENDING KEY ST-FS1-REC-NO                              OBIC24.2
014100             INPUT PROCEDURE IS SECT-IC219-0002                   OBIC24.2
014200             OUTPUT PROCEDURE IS SECT-IC219-0003.                 OBIC24.2
014300     STOP RUN.                                                    OBIC24.2
014400 SECT-IC219-0002 SECTION 60.                                      OBIC24.2
014500*                                                                         
014600*                                                                         
014700*                                                                         
014800*                                                                         
014900*                                                                         
015000*                                                                         
015100*                                                                         
015200*                                                                         
015300*                                                                         
015400*                                                                         
015500*                                                                         
015600*                                                                         
015700*                                                                         
015800*                                                                         
015900 SORT-INPUT-PROCEDURE.                                            OBIC24.2
016000     MOVE 1 TO SORT-LINK.                                         OBIC24.2
016100     MOVE FILE-RECORD-INFO-SKELETON TO FILE-RECORD-INFO (1).      OBIC24.2
016200     PERFORM RECORD-AREA-INIT.                                    OBIC24.2
016300     MOVE "ABCD" TO TEMP1.                                        OBIC24.2
016400     MOVE 0 TO TEMP2.                                             OBIC24.2
016500     PERFORM RELEASE-RECORD 100 TIMES.                            OBIC24.2
016600     MOVE "AAAA" TO TEMP1.                                        OBIC24.2
016700     MOVE 0 TO TEMP2.                                             OBIC24.2
016800     PERFORM RELEASE-RECORD 100 TIMES.                            OBIC24.2
016900     MOVE "ABCD" TO TEMP1.                                        OBIC24.2
017000     MOVE 0 TO TEMP2.                                             OBIC24.2
017100     PERFORM RELEASE-RECORD 100 TIMES.                            OBIC24.2
017200     MOVE "UVWY" TO TEMP1.                                        OBIC24.2
017300     MOVE 0 TO TEMP2.                                             OBIC24.2
017400     PERFORM RELEASE-RECORD 100 TIMES.                            OBIC24.2
017500     MOVE "UVWX" TO TEMP1.                                        OBIC24.2
017600     MOVE 0 TO TEMP2.                                             OBIC24.2
017700     PERFORM RELEASE-RECORD 100 TIMES.                            OBIC24.2
017800     GO TO SECT-IC219-0002-EXIT.                                  OBIC24.2
017900 RECORD-AREA-INIT.                                                OBIC24.2
018000     MOVE "ST-FS1" TO XFILE-NAME (1).                             OBIC24.2
018100     MOVE "R1-F-G" TO XRECORD-NAME (1).                           OBIC24.2
018200     MOVE "IC219" TO XPROGRAM-NAME (1).                           OBIC24.2
018300     MOVE 126 TO XRECORD-LENGTH (1).                              OBIC24.2
018400     MOVE "RC" TO CHARS-OR-RECORDS (1).                           OBIC24.2
018500     MOVE 0001 TO XBLOCK-SIZE (1).                                OBIC24.2
018600     MOVE 500 TO RECORDS-IN-FILE (1).                             OBIC24.2
018700     MOVE "NA" TO XFILE-ORGANIZATION (1).                         OBIC24.2
018800     MOVE "N" TO XLABEL-TYPE (1).                                 OBIC24.2
018900     MOVE 1 TO XRECORD-NUMBER (1).                                OBIC24.2
019000 RELEASE-RECORD.                                                  OBIC24.2
019100     MOVE FILE-RECORD-INFO-P1-120 (1) TO ST-FS1-1-120.            OBIC24.2
019200     MOVE TEMP1 TO ST-FS1-121-124.                                OBIC24.2
019300     MOVE TEMP2 TO ST-FS1-125-126.                                OBIC24.2
019400     RELEASE ST-FS1R1-F-G-126.                                    OBIC24.2
019500     ADD 1 TO XRECORD-NUMBER (1).                                 OBIC24.2
019600     ADD 1 TO TEMP2.                                              OBIC24.2
019700 SECT-IC219-0002-EXIT.                                            OBIC24.2
019800     EXIT.                                                        OBIC24.2
019900 SECT-IC219-0003 SECTION 80.                                      OBIC24.2
020000*                                                                         
020100*                                                                         
020200*                                                                         
020300*                                                                         
020400*                                                                         
020500*                                                                         
020600*                                                                         
020700*                                                                         
020800*                                                                         
020900*                                                                         
021000*                                                                         
021100*                                                                         
021200*                                                                         
021300*                                                                         
021400*                                                                         
021500*                                                                         
021600*                                                                         
021700*                                                                         
021800*                                                                         
021900*                                                                         
022000*                                                                         
022100 SORT-OUTPUT-INIT.                                                OBIC24.2
022200     MOVE 2 TO SORT-LINK.                                         OBIC24.2
022300     MOVE 1 TO PRINT-FLAG.                                        OBIC24.2
022400     CALL "OBIC3A" USING PRINT-LINE-VALUES  PRINT-FLAG.           OBIC24.2
022500     MOVE "SORT IN SUBPROGRAM" TO FEATURE-TESTED.                 OBIC24.2
022600     MOVE "IC-SORT-TEST" TO PARAGRAPH-NAME.                       OBIC24.2
022700     MOVE 0 TO R-COUNT.                                           OBIC24.2
022800 CHECK-OUTPUT-FROM-SORT.                                          OBIC24.2
022900     MOVE "AAAA" TO TEMP1.                                        OBIC24.2
023000     MOVE 0 TO TEMP3.                                             OBIC24.2
023100     MOVE 100 TO TEMP4.                                           OBIC24.2
023200     PERFORM CHECK-RECORD 100 TIMES.                              OBIC24.2
023300     MOVE "ABCD" TO TEMP1.                                        OBIC24.2
023400     MOVE 0 TO TEMP3.                                             OBIC24.2
023500     MOVE 0 TO TEMP4.                                             OBIC24.2
023600     PERFORM CHECK-ABCD-RECORDS 100 TIMES.                        OBIC24.2
023700     MOVE "UVWX" TO TEMP1.                                        OBIC24.2
023800     MOVE 0 TO TEMP3.                                             OBIC24.2
023900     MOVE 400 TO TEMP4.                                           OBIC24.2
024000     PERFORM CHECK-RECORD 100 TIMES.                              OBIC24.2
024100     MOVE "UVWY" TO TEMP1.                                        OBIC24.2
024200     MOVE 0 TO TEMP3.                                             OBIC24.2
024300     MOVE 300 TO TEMP4.                                           OBIC24.2
024400     PERFORM CHECK-RECORD 100 TIMES.                              OBIC24.2
024500 CHECK-RESULTS.                                                   OBIC24.2
024600     IF EOF-FLAG EQUAL TO 1                                       OBIC24.2
024700         MOVE "PREMATURE EOF" TO COMPUTED-SORT-KEY                OBIC24.2
024800         MOVE "DATA RECORD EXPECTED" TO CORRECT-SORT-KEY          OBIC24.2
024900         GO TO FAIL-WRITE.                                        OBIC24.2
025000     RETURN ST-FS1 AT END GO TO CHECK-FAIL-COUNT.                 OBIC24.2
025100     MOVE "NO EOF - 500 READ" TO COMPUTED-SORT-KEY.               OBIC24.2
025200     MOVE "EOF EXPECTED" TO CORRECT-SORT-KEY.                     OBIC24.2
025300     GO TO FAIL-WRITE.                                            OBIC24.2
025400 CHECK-FAIL-COUNT.                                                OBIC24.2
025500     IF FAIL-COUNT EQUAL TO ZERO                                  OBIC24.2
025600         MOVE "PASS " TO PASS-OR-FAIL                             OBIC24.2
025700         GO TO WRITE-RESULTS.                                     OBIC24.2
025800     MOVE "SORT ERRORS" TO COMPUTED-SORT-KEY.                     OBIC24.2
025900     MOVE SPACE TO CORRECT-SORT-KEY.                              OBIC24.2
026000 FAIL-WRITE.                                                      OBIC24.2
026100     MOVE "FAIL " TO PASS-OR-FAIL.                                OBIC24.2
026200 WRITE-RESULTS.                                                   OBIC24.2
026300     MOVE 0 TO R-COUNT.                                           OBIC24.2
026400     MOVE 2 TO PRINT-FLAG.                                        OBIC24.2
026500     CALL "OBIC3A" USING PRINT-LINE-VALUES  PRINT-FLAG.           OBIC24.2
026600 WRAPUP-OUTPUT-PROC.                                              OBIC24.2
026700     MOVE 3 TO PRINT-FLAG.                                        OBIC24.2
026800     CALL "OBIC3A" USING PRINT-LINE-VALUES  PRINT-FLAG.           OBIC24.2
026900     GO TO SECT-IC219-0003-EXIT.                                  OBIC24.2
027000 CHECK-RECORD.                                                    OBIC24.2
027100     PERFORM RETURN-RECORD THROUGH RETURN-EXIT.                   OBIC24.2
027200     ADD 1 TO TEMP4.                                              OBIC24.2
027300     PERFORM COMPARE-VALUES THROUGH COMPARE-EXIT.                 OBIC24.2
027400     ADD 1 TO TEMP3.                                              OBIC24.2
027500 RETURN-RECORD.                                                   OBIC24.2
027600     IF EOF-FLAG EQUAL TO 1                                       OBIC24.2
027700         GO TO RETURN-EXIT.                                       OBIC24.2
027800     RETURN ST-FS1  AT END  MOVE 1 TO EOF-FLAG.                   OBIC24.2
027900 RETURN-EXIT.                                                     OBIC24.2
028000     EXIT.                                                        OBIC24.2
028100 CHECK-ABCD-RECORDS.                                              OBIC24.2
028200     PERFORM CHECK-RECORD.                                        OBIC24.2
028300     SUBTRACT 1 FROM TEMP3.                                       OBIC24.2
028400     ADD 199 TO TEMP4.                                            OBIC24.2
028500     PERFORM CHECK-RECORD.                                        OBIC24.2
028600     SUBTRACT 200 FROM TEMP4.                                     OBIC24.2
028700 COMPARE-VALUES.                                                  OBIC24.2
028800     IF TEMP1 NOT EQUAL TO ST-FS1-121-124                         OBIC24.2
028900         GO TO SORT-FAIL.                                         OBIC24.2
029000     IF TEMP3 NOT EQUAL TO ST-FS1-125-126                         OBIC24.2
029100         GO TO SORT-FAIL.                                         OBIC24.2
029200     IF TEMP4 NOT EQUAL TO ST-FS1-REC-NO                          OBIC24.2
029300         GO TO SORT-FAIL.                                         OBIC24.2
029400     GO TO COMPARE-EXIT.                                          OBIC24.2
029500 SORT-FAIL.                                                       OBIC24.2
029600     MOVE "FAIL " TO PASS-OR-FAIL.                                OBIC24.2
029700     ADD 1 TO R-COUNT.                                            OBIC24.2
029800     MOVE TEMP1 TO CORRECT-1-4.                                   OBIC24.2
029900     MOVE TEMP3 TO CORRECT-5-6.                                   OBIC24.2
030000     MOVE TEMP4 TO CORRECT-7-12.                                  OBIC24.2
030100     MOVE ST-FS1-121-124 TO COMPUTED-1-4.                         OBIC24.2
030200     MOVE ST-FS1-125-126 TO COMPUTED-5-6.                         OBIC24.2
030300     MOVE ST-FS1-REC-NO TO COMPUTED-7-12.                         OBIC24.2
030400     MOVE 2 TO PRINT-FLAG.                                        OBIC24.2
030500     CALL "OBIC3A" USING PRINT-LINE-VALUES  PRINT-FLAG.           OBIC24.2
030600     ADD 1 TO FAIL-COUNT.                                         OBIC24.2
030700 COMPARE-EXIT.                                                    OBIC24.2
030800     EXIT.                                                        OBIC24.2
030900 SECT-IC219-0003-EXIT.                                            OBIC24.2
031000     EXIT.                                                        OBIC24.2
