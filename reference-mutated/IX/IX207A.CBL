000100 IDENTIFICATION DIVISION.                                         IX2074.2
000200 PROGRAM-ID.                                                      IX2074.2
000300     IX207A.                                                      IX2074.2
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
007700 ENVIRONMENT DIVISION.                                            IX2074.2
007800 CONFIGURATION SECTION.                                           IX2074.2
007900 SOURCE-COMPUTER.                                                 IX2074.2
008000     GNU-Linux.                                                   IX2074.2
008100 OBJECT-COMPUTER.                                                 IX2074.2
008200     GNU-Linux.                                                   IX2074.2
008300 INPUT-OUTPUT SECTION.                                            IX2074.2
008400 FILE-CONTROL.                                                    IX2074.2
009000     SELECT PRINT-FILE ASSIGN TO                                  IX2074.2
009100     "REPORT".                                                    IX2074.2
009200                                                                  IX2074.2
009300     SELECT   IX-FS1                                              IX2074.2
009400     ACCESS MODE IS  SEQUENTIAL                                   IX2074.2
009500     ALTERNATE RECORD  IX-FS1-ALTKEY1                             IX2074.2
009600              WITH  DUPLICATES                                    IX2074.2
009700     FILE STATUS FS1-STATUS                                       IX2074.2
009800     RECORD KEY IS  IX-FS1-KEY                                    IX2074.2
009900     ORGANIZATION  IS INDEXED                                     IX2074.2
010000     ASSIGN TO                                                    IX2074.2
010200     "XXXXX024".                                                  IX2074.2
010300                                                                  IX2074.2
010400     SELECT   IX-FS2                                              IX2074.2
010500     ASSIGN  TO                                                   IX2074.2
010600     "XXXXX025"                                                   IX2074.2
010800     ORGANIZATION IS INDEXED                                      IX2074.2
010900     ALTERNATE  RECORD KEY  IX-FS2-ALTKEY1                        IX2074.2
011000              DUPLICATES                                          IX2074.2
011100     RECORD  KEY  IS  IX-FS2-KEY.                                 IX2074.2
011200                                                                  IX2074.2
011300 DATA DIVISION.                                                   IX2074.2
011400 FILE SECTION.                                                    IX2074.2
013100 FD  PRINT-FILE.                                                  IX2074.2
013200 01  PRINT-REC PICTURE X(120).                                    IX2074.2
013300 01  DUMMY-RECORD PICTURE X(120).                                 IX2074.2
013400 FD  IX-FS1                                                       IX2074.2
013700     RECORD CONTAINS  240 CHARACTERS.                             IX2074.2
013800 01  IX-FS1R1-F-G-240.                                            IX2074.2
013900     05 IX-FS1-REC-120           PIC X(120).                      IX2074.2
014000     05 IX-FS1-REC-121-240.                                       IX2074.2
014100        10 FILLER                 PIC X(8).                       IX2074.2
014200        10 IX-FS1-KEY.                                            IX2074.2
014300           15 IX-FS1-KEYNUM       PIC 9(5).                       IX2074.2
014400           15 FILLER              PIC X(24).                      IX2074.2
014600        10 FILLER                 PIC X(9).                       IX2074.2
014700        10 IX-FS1-ALTKEY1.                                        IX2074.2
014800           15 FILLER              PIC X(24).                      IX2074.2
014900           15 IX-FS1-ALTKEY1NUM   PIC 9(5).                       IX2074.2
015100        10 FILLER                 PIC X(45).                      IX2074.2
015200 FD  IX-FS2                                                       IX2074.2
015500     RECORD CONTAINS 240 CHARACTERS.                              IX2074.2
015600 01  IX-FS2R1-F-G-240.                                            IX2074.2
015700     05 IX-FS2-REC-120            PIC X(120).                     IX2074.2
015800     05 IX-FS2-REC-121-240.                                       IX2074.2
015900        10 FILLER                 PIC X(8).                       IX2074.2
016000        10 IX-FS2-KEY.                                            IX2074.2
016100           15 IX-FS2-KEYNUM       PIC 9(5).                       IX2074.2
016200           15 FILLER              PIC A(24).                      IX2074.2
016400        10 FILLER                 PIC X(9).                       IX2074.2
016500        10 IX-FS2-ALTKEY1.                                        IX2074.2
016600           15 FILLER              PIC X(24).                      IX2074.2
016700           15 IX-FS2-ALTKEY1NUM   PIC 9(5).                       IX2074.2
016900        10 FILLER                 PIC X(45).                      IX2074.2
017000 WORKING-STORAGE SECTION.                                         IX2074.2
017100 01  IX-FS1-FILESIZE              PIC 9(6)  VALUE 300.            IX2074.2
017200 01  IX-FS2-FILESIZE              PIC 9(6)  VALUE 300.            IX2074.2
017300 01  WRK-FS1-RECKEY.                                              IX2074.2
017400     03 WRK-DU-05V00-001          PIC 9(5) VALUE ZERO.            IX2074.2
017500     03 WRK-XN-24V00-001          PIC X(24) VALUE                 IX2074.2
017600              "123456789009876543211234".                         IX2074.2
017700 01  WRK-FS2-RECKEY.                                              IX2074.2
017800     03 WRK-DU-05V00-002          PIC 9(5) VALUE  ZERO.           IX2074.2
017900     03 WRK-XN-24V00-002          PIC A(24) VALUE                 IX2074.2
018000              "ABCDEFGHIJKLMNOPQRSTUVWX".                         IX2074.2
018100 01  WRK-FS1-ALTKEY.                                              IX2074.2
018200     03 WRK-XN-24V00-003          PIC X(24) VALUE                 IX2074.2
018300              "+-*/=$,;.(()><""<>()).;,$".                        IX2074.2
018400*                                                                         
018500*                                                                         
018600*                                                                         
018700*                                                                         
018800     03 WRK-DU-05V00-003          PIC 9(5)  VALUE ZERO.           IX2074.2
018900 01  WRK-FS2-ALTKEY.                                              IX2074.2
019000     03 WRK-XN-24V00-003          PIC X(24) VALUE                 IX2074.2
019100              "AB12CD34EF56GH78IJ90KL*,".                         IX2074.2
019200     03 WRK-DU-05V00-004          PIC 9(5)  VALUE ZERO.           IX2074.2
019300 01  WRK-DS-05V00-005             PIC S9(5) VALUE  ZERO.          IX2074.2
019400 01  WRK-DS-05V00-006             PIC S9(5) VALUE  ZERO.          IX2074.2
019500 01  WRK-DS-05V00-007             PIC S9(5) VALUE  ZERO.          IX2074.2
019600 01  WRK-DS-05V00-008             PIC S9(5) VALUE  ZERO.          IX2074.2
019700 01  WRK-DS-04V00-001             PIC S9(4) VALUE  ZERO.          IX2074.2
019800 01  WRK-DS-04V00-002             PIC S9(4) VALUE  ZERO.          IX2074.2
019900 01  FS1-STATUS                   PIC XX  VALUE SPACE.            IX2074.2
020000 01  FILE-RECORD-INFORMATION-REC.                                 IX2074.2
020100     03 FILE-RECORD-INFO-SKELETON.                                IX2074.2
020200        05 FILLER                 PICTURE X(48)       VALUE       IX2074.2
020300             "FILE=      ,RECORD=      /0,RECNO=000000,UPDT=00".  IX2074.2
020400        05 FILLER                 PICTURE X(46)       VALUE       IX2074.2
020500             ",ODO=0000,PGM=     ,LRECL=000000,BLKSIZ  =0000".    IX2074.2
020600        05 FILLER                 PICTURE X(26)       VALUE       IX2074.2
020700             ",LFIL=000000,ORG=  ,LBLR= ".                        IX2074.2
020800        05 FILLER                 PICTURE X(37)       VALUE       IX2074.2
020900             ",RECKEY=                             ".             IX2074.2
021000        05 FILLER                 PICTURE X(38)       VALUE       IX2074.2
021100             ",ALTKEY1=                             ".            IX2074.2
021200        05 FILLER                 PICTURE X(38)       VALUE       IX2074.2
021300             ",ALTKEY2=                             ".            IX2074.2
021400        05 FILLER                 PICTURE X(7)        VALUE SPACE.IX2074.2
021500     03 FILE-RECORD-INFO          OCCURS  10  TIMES.              IX2074.2
021600        05 FILE-RECORD-INFO-P1-120.                               IX2074.2
021700           07 FILLER              PIC X(5).                       IX2074.2
021800           07 XFILE-NAME           PIC X(6).                      IX2074.2
021900           07 FILLER              PIC X(8).                       IX2074.2
022000           07 XRECORD-NAME         PIC X(6).                      IX2074.2
022100           07 FILLER              PIC X(1).                       IX2074.2
022200           07 REELUNIT-NUMBER     PIC 9(1).                       IX2074.2
022300           07 FILLER              PIC X(7).                       IX2074.2
022400           07 XRECORD-NUMBER       PIC 9(6).                      IX2074.2
022500           07 FILLER              PIC X(6).                       IX2074.2
022600           07 UPDATE-NUMBER       PIC 9(2).                       IX2074.2
022700           07 FILLER              PIC X(5).                       IX2074.2
022800           07 ODO-NUMBER          PIC 9(4).                       IX2074.2
022900           07 FILLER              PIC X(5).                       IX2074.2
023000           07 XPROGRAM-NAME        PIC X(5).                      IX2074.2
023100           07 FILLER              PIC X(7).                       IX2074.2
023200           07 XRECORD-LENGTH       PIC 9(6).                      IX2074.2
023300           07 FILLER              PIC X(7).                       IX2074.2
023400           07 CHARS-OR-RECORDS    PIC X(2).                       IX2074.2
023500           07 FILLER              PIC X(1).                       IX2074.2
023600           07 XBLOCK-SIZE          PIC 9(4).                      IX2074.2
023700           07 FILLER              PIC X(6).                       IX2074.2
023800           07 RECORDS-IN-FILE     PIC 9(6).                       IX2074.2
023900           07 FILLER              PIC X(5).                       IX2074.2
024000           07 XFILE-ORGANIZATION   PIC X(2).                      IX2074.2
024100           07 FILLER              PIC X(6).                       IX2074.2
024200           07 XLABEL-TYPE          PIC X(1).                      IX2074.2
024300        05 FILE-RECORD-INFO-P121-240.                             IX2074.2
024400           07 FILLER              PIC X(8).                       IX2074.2
024500           07 XRECORD-KEY          PIC X(29).                     IX2074.2
024600           07 FILLER              PIC X(9).                       IX2074.2
024700           07 ALTERNATE-KEY1      PIC X(29).                      IX2074.2
024800           07 FILLER              PIC X(9).                       IX2074.2
024900           07 ALTERNATE-KEY2      PIC X(29).                      IX2074.2
025000           07 FILLER              PIC X(7).                       IX2074.2
025100 01  TEST-RESULTS.                                                IX2074.2
025200     02 FILLER                   PIC X      VALUE SPACE.          IX2074.2
025300     02 FEATURE                  PIC X(20)  VALUE SPACE.          IX2074.2
025400     02 FILLER                   PIC X      VALUE SPACE.          IX2074.2
025500     02 P-OR-F                   PIC X(5)   VALUE SPACE.          IX2074.2
025600     02 FILLER                   PIC X      VALUE SPACE.          IX2074.2
025700     02  PAR-NAME.                                                IX2074.2
025800       03 FILLER                 PIC X(19)  VALUE SPACE.          IX2074.2
025900       03  PARDOT-X              PIC X      VALUE SPACE.          IX2074.2
026000       03 DOTVALUE               PIC 99     VALUE ZERO.           IX2074.2
026100     02 FILLER                   PIC X(8)   VALUE SPACE.          IX2074.2
026200     02 RE-MARK                  PIC X(61).                       IX2074.2
026300 01  TEST-COMPUTED.                                               IX2074.2
026400     02 FILLER                   PIC X(30)  VALUE SPACE.          IX2074.2
026500     02 FILLER                   PIC X(17)  VALUE                 IX2074.2
026600            "       COMPUTED=".                                   IX2074.2
026700     02 COMPUTED-X.                                               IX2074.2
026800     03 COMPUTED-A               PIC X(20)  VALUE SPACE.          IX2074.2
026900     03 COMPUTED-N               REDEFINES COMPUTED-A             IX2074.2
027000                                 PIC -9(9).9(9).                  IX2074.2
027100     03 COMPUTED-0V18 REDEFINES COMPUTED-A   PIC -.9(18).         IX2074.2
027200     03 COMPUTED-4V14 REDEFINES COMPUTED-A   PIC -9(4).9(14).     IX2074.2
027300     03 COMPUTED-14V4 REDEFINES COMPUTED-A   PIC -9(14).9(4).     IX2074.2
027400     03       CM-18V0 REDEFINES COMPUTED-A.                       IX2074.2
027500         04 COMPUTED-18V0                    PIC -9(18).          IX2074.2
027600         04 FILLER                           PIC X.               IX2074.2
027700     03 FILLER PIC X(50) VALUE SPACE.                             IX2074.2
027800 01  TEST-CORRECT.                                                IX2074.2
027900     02 FILLER PIC X(30) VALUE SPACE.                             IX2074.2
028000     02 FILLER PIC X(17) VALUE "       CORRECT =".                IX2074.2
028100     02 CORRECT-X.                                                IX2074.2
028200     03 CORRECT-A                  PIC X(20) VALUE SPACE.         IX2074.2
028300     03 CORRECT-N    REDEFINES CORRECT-A     PIC -9(9).9(9).      IX2074.2
028400     03 CORRECT-0V18 REDEFINES CORRECT-A     PIC -.9(18).         IX2074.2
028500     03 CORRECT-4V14 REDEFINES CORRECT-A     PIC -9(4).9(14).     IX2074.2
028600     03 CORRECT-14V4 REDEFINES CORRECT-A     PIC -9(14).9(4).     IX2074.2
028700     03      CR-18V0 REDEFINES CORRECT-A.                         IX2074.2
028800         04 CORRECT-18V0                     PIC -9(18).          IX2074.2
028900         04 FILLER                           PIC X.               IX2074.2
029000     03 FILLER PIC X(2) VALUE SPACE.                              IX2074.2
029100     03 COR-ANSI-REFERENCE             PIC X(48) VALUE SPACE.     IX2074.2
029200 01  CCVS-C-1.                                                    IX2074.2
029300     02 FILLER  PIC IS X(99)    VALUE IS " FEATURE              PAIX2074.2
029400-    "SS  PARAGRAPH-NAME                                          IX2074.2
029500-    "       REMARKS".                                            IX2074.2
029600     02 FILLER                     PIC X(20)    VALUE SPACE.      IX2074.2
029700 01  CCVS-C-2.                                                    IX2074.2
029800     02 FILLER                     PIC X        VALUE SPACE.      IX2074.2
029900     02 FILLER                     PIC X(6)     VALUE "TESTED".   IX2074.2
030000     02 FILLER                     PIC X(15)    VALUE SPACE.      IX2074.2
030100     02 FILLER                     PIC X(4)     VALUE "FAIL".     IX2074.2
030200     02 FILLER                     PIC X(94)    VALUE SPACE.      IX2074.2
030300 01  REC-SKL-SUB                   PIC 9(2)     VALUE ZERO.       IX2074.2
030400 01  REC-CT                        PIC 99       VALUE ZERO.       IX2074.2
030500 01  DELETE-COUNTER                PIC 999      VALUE ZERO.       IX2074.2
030600 01  ERROR-COUNTER                 PIC 999      VALUE ZERO.       IX2074.2
030700 01  INSPECT-COUNTER               PIC 999      VALUE ZERO.       IX2074.2
030800 01  PASS-COUNTER                  PIC 999      VALUE ZERO.       IX2074.2
030900 01  TOTAL-ERROR                   PIC 999      VALUE ZERO.       IX2074.2
031000 01  ERROR-HOLD                    PIC 999      VALUE ZERO.       IX2074.2
031100 01  DUMMY-HOLD                    PIC X(120)   VALUE SPACE.      IX2074.2
031200 01  RECORD-COUNT                  PIC 9(5)     VALUE ZERO.       IX2074.2
031300 01  ANSI-REFERENCE                PIC X(48)    VALUE SPACES.     IX2074.2
031400 01  CCVS-H-1.                                                    IX2074.2
031500     02  FILLER                    PIC X(39)    VALUE SPACES.     IX2074.2
031600     02  FILLER                    PIC X(42)    VALUE             IX2074.2
031700     "OFFICIAL COBOL COMPILER VALIDATION SYSTEM".                 IX2074.2
031800     02  FILLER                    PIC X(39)    VALUE SPACES.     IX2074.2
031900 01  CCVS-H-2A.                                                   IX2074.2
032000   02  FILLER                        PIC X(40)  VALUE SPACE.      IX2074.2
032100   02  FILLER                        PIC X(7)   VALUE "CCVS85 ".  IX2074.2
032200   02  FILLER                        PIC XXXX   VALUE             IX2074.2
032300     "4.2 ".                                                      IX2074.2
032400   02  FILLER                        PIC X(28)  VALUE             IX2074.2
032500            " COPY - NOT FOR DISTRIBUTION".                       IX2074.2
032600   02  FILLER                        PIC X(41)  VALUE SPACE.      IX2074.2
032700                                                                  IX2074.2
032800 01  CCVS-H-2B.                                                   IX2074.2
032900   02  FILLER                        PIC X(15)  VALUE             IX2074.2
033000            "TEST RESULT OF ".                                    IX2074.2
033100   02  TEST-ID                       PIC X(9).                    IX2074.2
033200   02  FILLER                        PIC X(4)   VALUE             IX2074.2
033300            " IN ".                                               IX2074.2
033400   02  FILLER                        PIC X(12)  VALUE             IX2074.2
033500     " HIGH       ".                                              IX2074.2
033600   02  FILLER                        PIC X(22)  VALUE             IX2074.2
033700            " LEVEL VALIDATION FOR ".                             IX2074.2
033800   02  FILLER                        PIC X(58)  VALUE             IX2074.2
033900     "ON-SITE VALIDATION, NATIONAL INSTITUTE OF STD & TECH.     ".IX2074.2
034000 01  CCVS-H-3.                                                    IX2074.2
034100     02  FILLER                      PIC X(34)  VALUE             IX2074.2
034200            " FOR OFFICIAL USE ONLY    ".                         IX2074.2
034300     02  FILLER                      PIC X(58)  VALUE             IX2074.2
034400     "COBOL 85 VERSION 4.2, Apr  1993 SSVG                      ".IX2074.2
034500     02  FILLER                      PIC X(28)  VALUE             IX2074.2
034600            "  COPYRIGHT   1985 ".                                IX2074.2
034700 01  CCVS-E-1.                                                    IX2074.2
034800     02 FILLER                       PIC X(52)  VALUE SPACE.      IX2074.2
034900     02 FILLER  PIC X(14) VALUE IS "END OF TEST-  ".              IX2074.2
035000     02 ID-AGAIN                     PIC X(9).                    IX2074.2
035100     02 FILLER                       PIC X(45)  VALUE SPACES.     IX2074.2
035200 01  CCVS-E-2.                                                    IX2074.2
035300     02  FILLER                      PIC X(31)  VALUE SPACE.      IX2074.2
035400     02  FILLER                      PIC X(21)  VALUE SPACE.      IX2074.2
035500     02 CCVS-E-2-2.                                               IX2074.2
035600         03 ERROR-TOTAL              PIC XXX    VALUE SPACE.      IX2074.2
035700         03 FILLER                   PIC X      VALUE SPACE.      IX2074.2
035800         03 ENDER-DESC               PIC X(44)  VALUE             IX2074.2
035900            "ERRORS ENCOUNTERED".                                 IX2074.2
036000 01  CCVS-E-3.                                                    IX2074.2
036100     02  FILLER                      PIC X(22)  VALUE             IX2074.2
036200            " FOR OFFICIAL USE ONLY".                             IX2074.2
036300     02  FILLER                      PIC X(12)  VALUE SPACE.      IX2074.2
036400     02  FILLER                      PIC X(58)  VALUE             IX2074.2
036500     "ON-SITE VALIDATION, NATIONAL INSTITUTE OF STD & TECH.     ".IX2074.2
036600     02  FILLER                      PIC X(13)  VALUE SPACE.      IX2074.2
036700     02 FILLER                       PIC X(15)  VALUE             IX2074.2
036800             " COPYRIGHT 1985".                                   IX2074.2
036900 01  CCVS-E-4.                                                    IX2074.2
037000     02 CCVS-E-4-1                   PIC XXX    VALUE SPACE.      IX2074.2
037100     02 FILLER                       PIC X(4)   VALUE " OF ".     IX2074.2
037200     02 CCVS-E-4-2                   PIC XXX    VALUE SPACE.      IX2074.2
037300     02 FILLER                       PIC X(40)  VALUE             IX2074.2
037400      "  TESTS WERE EXECUTED SUCCESSFULLY".                       IX2074.2
037500 01  XXINFO.                                                      IX2074.2
037600     02 FILLER                       PIC X(19)  VALUE             IX2074.2
037700            "*** INFORMATION ***".                                IX2074.2
037800     02 INFO-TEXT.                                                IX2074.2
037900       04 FILLER                     PIC X(8)   VALUE SPACE.      IX2074.2
038000       04 XXCOMPUTED                 PIC X(20).                   IX2074.2
038100       04 FILLER                     PIC X(5)   VALUE SPACE.      IX2074.2
038200       04 XXCORRECT                  PIC X(20).                   IX2074.2
038300     02 INF-ANSI-REFERENCE           PIC X(48).                   IX2074.2
038400 01  HYPHEN-LINE.                                                 IX2074.2
038500     02 FILLER  PIC IS X VALUE IS SPACE.                          IX2074.2
038600     02 FILLER  PIC IS X(65)    VALUE IS "************************IX2074.2
038700-    "*****************************************".                 IX2074.2
038800     02 FILLER  PIC IS X(54)    VALUE IS "************************IX2074.2
038900-    "******************************".                            IX2074.2
039000 01  CCVS-PGM-ID                     PIC X(9)   VALUE             IX2074.2
039100     "IX207A".                                                    IX2074.2
039200 PROCEDURE DIVISION.                                              IX2074.2
039300 DECLARATIVES.                                                    IX2074.2
039400 USE-IX207A-TEST SECTION.                                         IX2074.2
039500     USE     AFTER STANDARD EXCEPTION PROCEDURE                   IX2074.2
039600              IX-FS1, IX-FS2.                                     IX2074.2
039700 USE-PAR-001.                                                     IX2074.2
039800     ADD      00001  TO WRK-DS-05V00-006.                         IX2074.2
039900     IF       WRK-DS-05V00-005 LESS THAN 301                      IX2074.2
040000              GO TO USE-PAR-EXIT.                                 IX2074.2
040100 USE-PAR-002.                                                     IX2074.2
040200     IF       WRK-DS-05V00-006 EQUAL TO 0001                      IX2074.2
040300             MOVE  "PASS"  TO P-OR-F.                             IX2074.2
040400     ADD     1 TO DOTVALUE.                                       IX2074.2
040500     MOVE    "EXCEPTION PROCEDURE EXECUTED" TO RE-MARK.           IX2074.2
040600     MOVE     TEST-RESULTS TO  PRINT-REC.                         IX2074.2
040700     WRITE    PRINT-REC.                                          IX2074.2
040800 USE-PAR-EXIT.                                                    IX2074.2
040900     EXIT.                                                        IX2074.2
041000 END DECLARATIVES.                                                IX2074.2
041100 CCVS1 SECTION.                                                   IX2074.2
041200 OPEN-FILES.                                                      IX2074.2
042300     OPEN    OUTPUT PRINT-FILE.                                   IX2074.2
042400     MOVE  CCVS-PGM-ID TO TEST-ID. MOVE CCVS-PGM-ID TO ID-AGAIN.  IX2074.2
042500     MOVE    SPACE TO TEST-RESULTS.                               IX2074.2
042600     PERFORM HEAD-ROUTINE THRU COLUMN-NAMES-ROUTINE.              IX2074.2
042700     MOVE    ZERO TO REC-SKL-SUB.                                 IX2074.2
042800     PERFORM CCVS-INIT-FILE 9 TIMES.                              IX2074.2
042900 CCVS-INIT-FILE.                                                  IX2074.2
043000     ADD     1 TO REC-SKL-SUB.                                    IX2074.2
043100     MOVE    FILE-RECORD-INFO-SKELETON                            IX2074.2
043200          TO FILE-RECORD-INFO (REC-SKL-SUB).                      IX2074.2
043300 CCVS-INIT-EXIT.                                                  IX2074.2
043400     GO TO CCVS1-EXIT.                                            IX2074.2
043500 CLOSE-FILES.                                                     IX2074.2
044800     PERFORM END-ROUTINE THRU END-ROUTINE-13. CLOSE PRINT-FILE.   IX2074.2
044900 TERMINATE-CCVS.                                                  IX2074.2
045200     STOP     RUN.                                                IX2074.2
045300 INSPT. MOVE "INSPT" TO P-OR-F. ADD 1 TO INSPECT-COUNTER.         IX2074.2
045400 PASS.  MOVE "PASS " TO P-OR-F.  ADD 1 TO PASS-COUNTER.           IX2074.2
045500 FAIL.  MOVE "FAIL*" TO P-OR-F.  ADD 1 TO ERROR-COUNTER.          IX2074.2
045600 DE-LETE.  MOVE "*****" TO P-OR-F.  ADD 1 TO DELETE-COUNTER.      IX2074.2
045700     MOVE "****TEST DELETED****" TO RE-MARK.                      IX2074.2
045800 PRINT-DETAIL.                                                    IX2074.2
045900     IF REC-CT NOT EQUAL TO ZERO                                  IX2074.2
046000             MOVE "." TO PARDOT-X                                 IX2074.2
046100             MOVE REC-CT TO DOTVALUE.                             IX2074.2
046200     MOVE     TEST-RESULTS TO PRINT-REC. PERFORM WRITE-LINE.      IX2074.2
046300     IF P-OR-F EQUAL TO "FAIL*"  PERFORM WRITE-LINE               IX2074.2
046400        PERFORM FAIL-ROUTINE THRU FAIL-ROUTINE-EX                 IX2074.2
046500          ELSE PERFORM BAIL-OUT THRU BAIL-OUT-EX.                 IX2074.2
046600     MOVE SPACE TO P-OR-F. MOVE SPACE TO COMPUTED-X.              IX2074.2
046700     MOVE SPACE TO CORRECT-X.                                     IX2074.2
046800     IF     REC-CT EQUAL TO ZERO  MOVE SPACE TO PAR-NAME.         IX2074.2
046900     MOVE     SPACE TO RE-MARK.                                   IX2074.2
047000 HEAD-ROUTINE.                                                    IX2074.2
047100     MOVE CCVS-H-1  TO DUMMY-RECORD. PERFORM WRITE-LINE 2 TIMES.  IX2074.2
047200     MOVE CCVS-H-2A TO DUMMY-RECORD. PERFORM WRITE-LINE 2 TIMES.  IX2074.2
047300     MOVE CCVS-H-2B TO DUMMY-RECORD. PERFORM WRITE-LINE 3 TIMES.  IX2074.2
047400     MOVE CCVS-H-3  TO DUMMY-RECORD. PERFORM WRITE-LINE 3 TIMES.  IX2074.2
047500 COLUMN-NAMES-ROUTINE.                                            IX2074.2
047600     MOVE CCVS-C-1 TO DUMMY-RECORD. PERFORM WRITE-LINE.           IX2074.2
047700     MOVE CCVS-C-2 TO DUMMY-RECORD. PERFORM WRITE-LINE 2 TIMES.   IX2074.2
047800     MOVE HYPHEN-LINE TO DUMMY-RECORD. PERFORM WRITE-LINE.        IX2074.2
047900 END-ROUTINE.                                                     IX2074.2
048000     MOVE HYPHEN-LINE TO DUMMY-RECORD. PERFORM WRITE-LINE 5 TIMES.IX2074.2
048100 END-RTN-EXIT.                                                    IX2074.2
048200     MOVE CCVS-E-1 TO DUMMY-RECORD. PERFORM WRITE-LINE 2 TIMES.   IX2074.2
048300 END-ROUTINE-1.                                                   IX2074.2
048400      ADD ERROR-COUNTER TO ERROR-HOLD ADD INSPECT-COUNTER TO      IX2074.2
048500      ERROR-HOLD. ADD DELETE-COUNTER TO ERROR-HOLD.               IX2074.2
048600      ADD PASS-COUNTER TO ERROR-HOLD.                             IX2074.2
048700*                                                                         
048800      MOVE PASS-COUNTER TO CCVS-E-4-1.                            IX2074.2
048900      MOVE ERROR-HOLD TO CCVS-E-4-2.                              IX2074.2
049000      MOVE CCVS-E-4 TO CCVS-E-2-2.                                IX2074.2
049100      MOVE CCVS-E-2 TO DUMMY-RECORD PERFORM WRITE-LINE.           IX2074.2
049200  END-ROUTINE-12.                                                 IX2074.2
049300      MOVE "TEST(S) FAILED" TO ENDER-DESC.                        IX2074.2
049400     IF       ERROR-COUNTER IS EQUAL TO ZERO                      IX2074.2
049500         MOVE "NO " TO ERROR-TOTAL                                IX2074.2
049600         ELSE                                                     IX2074.2
049700         MOVE ERROR-COUNTER TO ERROR-TOTAL.                       IX2074.2
049800     MOVE     CCVS-E-2 TO DUMMY-RECORD.                           IX2074.2
049900     PERFORM WRITE-LINE.                                          IX2074.2
050000 END-ROUTINE-13.                                                  IX2074.2
050100     IF DELETE-COUNTER IS EQUAL TO ZERO                           IX2074.2
050200         MOVE "NO " TO ERROR-TOTAL  ELSE                          IX2074.2
050300         MOVE DELETE-COUNTER TO ERROR-TOTAL.                      IX2074.2
050400     MOVE "TEST(S) DELETED     " TO ENDER-DESC.                   IX2074.2
050500     MOVE CCVS-E-2 TO DUMMY-RECORD. PERFORM WRITE-LINE.           IX2074.2
050600      IF   INSPECT-COUNTER EQUAL TO ZERO                          IX2074.2
050700          MOVE "NO " TO ERROR-TOTAL                               IX2074.2
050800      ELSE MOVE INSPECT-COUNTER TO ERROR-TOTAL.                   IX2074.2
050900      MOVE "TEST(S) REQUIRE INSPECTION" TO ENDER-DESC.            IX2074.2
051000      MOVE CCVS-E-2 TO DUMMY-RECORD. PERFORM WRITE-LINE.          IX2074.2
051100     MOVE CCVS-E-3 TO DUMMY-RECORD. PERFORM WRITE-LINE.           IX2074.2
051200 WRITE-LINE.                                                      IX2074.2
051300     ADD 1 TO RECORD-COUNT.                                       IX2074.2
051400     IF RECORD-COUNT GREATER 42                                   IX2074.2
051500         MOVE DUMMY-RECORD TO DUMMY-HOLD                          IX2074.2
051600         MOVE SPACE TO DUMMY-RECORD                               IX2074.2
051700         WRITE DUMMY-RECORD AFTER ADVANCING PAGE                  IX2074.2
051800         MOVE CCVS-H-1  TO DUMMY-RECORD PERFORM WRT-LN 2 TIMES    IX2074.2
051900         MOVE CCVS-H-2A TO DUMMY-RECORD PERFORM WRT-LN 2 TIMES    IX2074.2
052000         MOVE CCVS-H-2B TO DUMMY-RECORD PERFORM WRT-LN 3 TIMES    IX2074.2
052100         MOVE CCVS-H-3  TO DUMMY-RECORD PERFORM WRT-LN 3 TIMES    IX2074.2
052200         MOVE CCVS-C-1  TO DUMMY-RECORD PERFORM WRT-LN            IX2074.2
052300         MOVE CCVS-C-2  TO DUMMY-RECORD PERFORM WRT-LN            IX2074.2
052400         MOVE HYPHEN-LINE TO DUMMY-RECORD PERFORM WRT-LN          IX2074.2
052500         MOVE DUMMY-HOLD TO DUMMY-RECORD                          IX2074.2
052600         MOVE ZERO TO RECORD-COUNT.                               IX2074.2
052700     PERFORM WRT-LN.                                              IX2074.2
052800 WRT-LN.                                                          IX2074.2
052900     WRITE    DUMMY-RECORD AFTER ADVANCING 1 LINES.               IX2074.2
053000     MOVE SPACE TO DUMMY-RECORD.                                  IX2074.2
053100 BLANK-LINE-PRINT.                                                IX2074.2
053200     PERFORM WRT-LN.                                              IX2074.2
053300 FAIL-ROUTINE.                                                    IX2074.2
053400     IF     COMPUTED-X NOT EQUAL TO SPACE                         IX2074.2
053500            GO TO   FAIL-ROUTINE-WRITE.                           IX2074.2
053600     IF     CORRECT-X NOT EQUAL TO SPACE GO TO FAIL-ROUTINE-WRITE.IX2074.2
053700     MOVE   ANSI-REFERENCE TO INF-ANSI-REFERENCE.                 IX2074.2
053800     MOVE  "NO FURTHER INFORMATION, SEE PROGRAM." TO INFO-TEXT.   IX2074.2
053900     MOVE   XXINFO TO DUMMY-RECORD. PERFORM WRITE-LINE 2 TIMES.   IX2074.2
054000     MOVE   SPACES TO INF-ANSI-REFERENCE.                         IX2074.2
054100     GO TO  FAIL-ROUTINE-EX.                                      IX2074.2
054200 FAIL-ROUTINE-WRITE.                                              IX2074.2
054300     MOVE   TEST-COMPUTED TO PRINT-REC PERFORM WRITE-LINE         IX2074.2
054400     MOVE   ANSI-REFERENCE TO COR-ANSI-REFERENCE.                 IX2074.2
054500     MOVE   TEST-CORRECT TO PRINT-REC PERFORM WRITE-LINE 2 TIMES. IX2074.2
054600     MOVE   SPACES TO COR-ANSI-REFERENCE.                         IX2074.2
054700 FAIL-ROUTINE-EX. EXIT.                                           IX2074.2
054800 BAIL-OUT.                                                        IX2074.2
054900     IF     COMPUTED-A NOT EQUAL TO SPACE GO TO BAIL-OUT-WRITE.   IX2074.2
055000     IF     CORRECT-A EQUAL TO SPACE GO TO BAIL-OUT-EX.           IX2074.2
055100 BAIL-OUT-WRITE.                                                  IX2074.2
055200     MOVE CORRECT-A TO XXCORRECT. MOVE COMPUTED-A TO XXCOMPUTED.  IX2074.2
055300     MOVE   ANSI-REFERENCE TO INF-ANSI-REFERENCE.                 IX2074.2
055400     MOVE   XXINFO TO DUMMY-RECORD. PERFORM WRITE-LINE 2 TIMES.   IX2074.2
055500     MOVE   SPACES TO INF-ANSI-REFERENCE.                         IX2074.2
055600 BAIL-OUT-EX. EXIT.                                               IX2074.2
055700 CCVS1-EXIT.                                                      IX2074.2
055800     EXIT.                                                        IX2074.2
055900 SECT-IX207A-0001 SECTION.                                        IX2074.2
056000 WRITE-INT-GF-01.                                                 IX2074.2
056100     OPEN     OUTPUT  IX-FS1.                                     IX2074.2
056200     MOVE     "IX-FS1"  TO XFILE-NAME (1).                        IX2074.2
056300     MOVE     "R1-F-G"  TO XRECORD-NAME (1).                      IX2074.2
056400     MOVE     ZERO      TO XRECORD-NUMBER (1).                    IX2074.2
056500     MOVE     CCVS-PGM-ID TO XPROGRAM-NAME (1).                   IX2074.2
056600     MOVE     000240    TO XRECORD-LENGTH (1).                    IX2074.2
056700     MOVE     0001      TO XBLOCK-SIZE (1).                       IX2074.2
056800     MOVE     "RC"      TO CHARS-OR-RECORDS (1).                  IX2074.2
056900     MOVE     "IX"      TO XFILE-ORGANIZATION (1).                IX2074.2
057000     MOVE     "S"       TO XLABEL-TYPE (1).                       IX2074.2
057100     MOVE     000300    TO IX-FS1-FILESIZE                        IX2074.2
057200     MOVE     000300    TO RECORDS-IN-FILE (1).                   IX2074.2
057300     MOVE     ZERO      TO WRK-DS-05V00-005.                      IX2074.2
057400     MOVE     ZERO      TO WRK-DS-04V00-001.                      IX2074.2
057500     MOVE     ZERO      TO WRK-DS-04V00-002.                      IX2074.2
057600     MOVE     00001 TO  WRK-DU-05V00-001.                         IX2074.2
057700     MOVE     IX-FS1-FILESIZE     TO WRK-DU-05V00-003.            IX2074.2
057800     MOVE     ZERO      TO WRK-DS-05V00-006.                      IX2074.2
057900     MOVE     00001     TO WRK-DS-05V00-007.                      IX2074.2
058000     MOVE "TESTED FEATURES:                                      "IX2074.2
058100                        TO PRINT-REC.   PERFORM WRITE-LINE.       IX2074.2
058200     MOVE "ORDERING OF CLAUSES IN SELECT STATEMENT IX-8 2.3.3 (1)"IX2074.2
058300                        TO PRINT-REC.   PERFORM WRITE-LINE.       IX2074.2
058400     MOVE "ALERNATE RECORD KEY WITH DUPLICATES; IX-11            "IX2074.2
058500                        TO PRINT-REC.   PERFORM WRITE-LINE.       IX2074.2
058600     MOVE "USE AFTER STANDARD EXECPTION; IX-39                   "IX2074.2
058700                        TO PRINT-REC.   PERFORM WRITE-LINE.       IX2074.2
058800     MOVE "FILE STATUS;                  IX-3                    "IX2074.2
058900                        TO PRINT-REC.   PERFORM WRITE-LINE.       IX2074.2
059000     PERFORM  BLANK-LINE-PRINT.                                   IX2074.2
059100*                                                                         
059200*                                                                         
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
060400*                                                                         
060500*                                                                         
060600*                                                                         
060700*                                                                         
060800*                                                                         
060900*                                                                         
061000*                                                                         
061100*                                                                         
061200*                                                                         
061300*                                                                         
061400*                                                                         
061500*                                                                         
061600*                                                                         
061700*                                                                         
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
063700 WRITE-TEST-GF-01-R1.                                             IX2074.2
063800     ADD      000001    TO XRECORD-NUMBER (1).                    IX2074.2
063900     MOVE     WRK-FS1-RECKEY  TO XRECORD-KEY (1).                 IX2074.2
064000     MOVE     WRK-FS1-ALTKEY  TO ALTERNATE-KEY1 (1).              IX2074.2
064100     WRITE   IX-FS1R1-F-G-240 FROM FILE-RECORD-INFO (1)           IX2074.2
064200              INVALID KEY                                         IX2074.2
064300               SUBTRACT   0001  FROM WRK-DS-04V00-001.            IX2074.2
064400     ADD      0001  TO WRK-DS-04V00-001.                          IX2074.2
064500     ADD      0001   TO WRK-DS-05V00-005.                         IX2074.2
064600     ADD      00001  TO WRK-DS-05V00-007.                         IX2074.2
064700     IF       WRK-DS-05V00-007 GREATER THAN  50                   IX2074.2
064800              MOVE  0001 TO WRK-DS-05V00-007                      IX2074.2
064900              ELSE                                                IX2074.2
065000              SUBTRACT   WRK-DU-05V00-001 FROM IX-FS1-FILESIZE    IX2074.2
065100                  GIVING WRK-DU-05V00-003.                        IX2074.2
065200*                                                                         
065300*                                                                         
065400*                                                                         
065500     ADD      00001  TO WRK-DU-05V00-001.                         IX2074.2
065600     IF       WRK-DS-05V00-005     LESS THAN IX-FS1-FILESIZE      IX2074.2
065700              GO TO     WRITE-TEST-GF-01-R1.                      IX2074.2
065800     CLOSE    IX-FS1.                                             IX2074.2
065900 WRITE-TEST-GF-01.                                                IX2074.2
066000     MOVE     "WRITE"   TO FEATURE.                               IX2074.2
066100     MOVE     "WRITE-TEST-GF-01" TO PAR-NAME.                     IX2074.2
066200     IF       WRK-DS-04V00-001 NOT EQUAL TO IX-FS1-FILESIZE       IX2074.2
066300              PERFORM  FAIL                                       IX2074.2
066400              MOVE      WRK-DS-04V00-001 TO COMPUTED-N            IX2074.2
066500              MOVE      IX-FS1-FILESIZE  TO  CORRECT-N            IX2074.2
066600        ELSE                                                      IX2074.2
066700              PERFORM  PASS.                                      IX2074.2
066800     PERFORM   PRINT-DETAIL.                                      IX2074.2
066900*                                                                         
067000*                                                                         
067100 READ-INIT-F1-01.                                                 IX2074.2
067200     MOVE     001   TO  WRK-DS-05V00-008.                         IX2074.2
067300     MOVE     ZERO   TO  WRK-DS-05V00-006.                        IX2074.2
067400     MOVE     ZERO  TO  WRK-DS-05V00-005.                         IX2074.2
067500     OPEN     INPUT  IX-FS1.                                      IX2074.2
067600 READ-TEST-F1-01-R2.                                              IX2074.2
067700     READ     IX-FS1  RECORD  AT END                              IX2074.2
067800              GO TO READ-TEST-F1-01.                              IX2074.2
067900     MOVE     IX-FS1R1-F-G-240  TO FILE-RECORD-INFO (1).          IX2074.2
068000     ADD      0001      TO WRK-DS-05V00-005.                      IX2074.2
068100     IF       WRK-DS-05V00-008  NOT EQUAL TO XRECORD-NUMBER (1)   IX2074.2
068200              ADD       00001  TO WRK-DS-05V00-006.               IX2074.2
068300     ADD       00001  TO WRK-DS-05V00-008.                        IX2074.2
068400     IF       WRK-DS-05V00-005  LESS   THAN  IX-FS1-FILESIZE      IX2074.2
068500              GO TO     READ-TEST-F1-01-R2.                       IX2074.2
068600 READ-TEST-F1-01.                                                 IX2074.2
068700     MOVE "READ RECORD KEY     " TO FEATURE.                      IX2074.2
068800     MOVE "READ-TEST-F1-01     " TO PAR-NAME.                     IX2074.2
068900     CLOSE    IX-FS1.                                             IX2074.2
069000     SUBTRACT  IX-FS1-FILESIZE  FROM WRK-DS-05V00-005.            IX2074.2
069100     ADD      WRK-DS-05V00-005  TO WRK-DS-05V00-006.              IX2074.2
069200     IF       WRK-DS-05V00-006  NOT EQUAL TO ZERO                 IX2074.2
069300              PERFORM   FAIL                                      IX2074.2
069400              MOVE      ZERO TO CORRECT-N                         IX2074.2
069500              MOVE      WRK-DS-05V00-006  TO COMPUTED-N           IX2074.2
069600        ELSE                                                      IX2074.2
069700              PERFORM  PASS.                                      IX2074.2
069800     PERFORM   PRINT-DETAIL.                                      IX2074.2
069900*                                                                         
070000*                                                                         
070100 READ-INT-F1-02.                                                  IX2074.2
070200     MOVE    00020 TO   WRK-DS-05V00-006.                         IX2074.2
070300     MOVE    00241 TO   WRK-DS-05V00-008.                         IX2074.2
070400     MOVE     ZERO TO   WRK-DS-05V00-005.                         IX2074.2
070500     MOVE    00060 TO   WRK-DU-05V00-003.                         IX2074.2
070600     OPEN     INPUT  IX-FS1.                                      IX2074.2
070700     MOVE     WRK-FS1-ALTKEY  TO  IX-FS1-ALTKEY1.                 IX2074.2
070800     START    IX-FS1  KEY IS EQUAL TO                             IX2074.2
070900                  IX-FS1-ALTKEY1                                  IX2074.2
071000            INVALID KEY                                           IX2074.2
071100              ADD        1000  TO WRK-DS-05V00-006.               IX2074.2
071200 READ-TEST-F1-02-R3.                                              IX2074.2
071300     READ     IX-FS1  RECORD  AT END                              IX2074.2
071400              ADD  10000  TO WRK-DS-05V00-006                     IX2074.2
071500              GO TO     READ-TEST-F1-02.                          IX2074.2
071600     MOVE     IX-FS1R1-F-G-240  TO FILE-RECORD-INFO (1).          IX2074.2
071700     ADD      00001     TO  WRK-DS-05V00-005.                     IX2074.2
071800     IF       WRK-DS-05V00-008  EQUAL TO XRECORD-NUMBER (1)       IX2074.2
071900              SUBTRACT  00001  FROM  WRK-DS-05V00-006.            IX2074.2
072000     IF       WRK-DS-05V00-005  LESS   THAN 20                    IX2074.2
072100              SUBTRACT   00001  FROM WRK-DS-05V00-008             IX2074.2
072200              GO  TO    READ-TEST-F1-02-R3.                       IX2074.2
072300 READ-TEST-F1-02.                                                 IX2074.2
072400     MOVE "READ ALTERNATE KEY  " TO FEATURE.                      IX2074.2
072500     MOVE "READ-TEST-F1-02     " TO PAR-NAME.                     IX2074.2
072600     CLOSE    IX-FS1.                                             IX2074.2
072700     MOVE     "READ ALTERNATE KEY" TO FEATURE.                    IX2074.2
072800     IF      WRK-DS-05V00-006  NOT EQUAL TO ZERO                  IX2074.2
072900              PERFORM   FAIL                                      IX2074.2
073000             MOVE    WRK-DS-05V00-006 TO COMPUTED-N               IX2074.2
073100              MOVE      ZERO TO  CORRECT-N                        IX2074.2
073200              MOVE      "SEE  PROGRAM"  TO  RE-MARK               IX2074.2
073300              ELSE                                                IX2074.2
073400              PERFORM  PASS.                                      IX2074.2
073500*                                                                         
073600*                                                                         
073700*                                                                         
073800*                                                                         
073900*                                                                         
074000*                                                                         
074100*                                                                         
074200*                                                                         
074300*                                                                         
074400*                                                                         
074500*                                                                         
074600*                                                                         
074700     PERFORM  PRINT-DETAIL.                                       IX2074.2
074800*                                                                         
074900*                                                                         
075000*                                                                         
075100 READ-INIT-F1-03.                                                 IX2074.2
075200     MOVE     00060  TO WRK-DS-05V00-006.                         IX2074.2
075300     MOVE     00001  TO WRK-DU-05V00-003.                         IX2074.2
075400     MOVE     00300  TO WRK-DS-05V00-008.                         IX2074.2
075500     MOVE     ZERO   TO WRK-DS-05V00-005.                         IX2074.2
075600     OPEN     INPUT    IX-FS1.                                    IX2074.2
075700     MOVE     WRK-FS1-ALTKEY TO  IX-FS1-ALTKEY1.                  IX2074.2
075800     START    IX-FS1  KEY IS EQUAL TO                             IX2074.2
075900                    IX-FS1-ALTKEY1                                IX2074.2
076000            INVALID KEY                                           IX2074.2
076100              ADD       01000  TO WRK-DS-05V00-006.               IX2074.2
076200 READ-TEST-F1-03-R4.                                              IX2074.2
076300     READ     IX-FS1    RECORD  AT  END                           IX2074.2
076400              ADD   10000  TO WRK-DS-05V00-006                    IX2074.2
076500              GO TO     READ-TEST-F1-03.                          IX2074.2
076600     MOVE     IX-FS1R1-F-G-240  TO FILE-RECORD-INFO (1).          IX2074.2
076700     IF       WRK-DS-05V00-008  EQUAL TO XRECORD-NUMBER (1)       IX2074.2
076800         SUBTRACT  00001  FROM WRK-DS-05V00-006.                  IX2074.2
076900     ADD       00001  TO WRK-DS-05V00-005.                        IX2074.2
077000     IF      WRK-DS-05V00-005  EQUAL TO 50 AND                    IX2074.2
077100             XRECORD-NUMBER (1) EQUAL TO 250                      IX2074.2
077200             SUBTRACT  00001  FROM WRK-DS-05V00-006.              IX2074.2
077300     IF      WRK-DS-05V00-005  EQUAL TO 51   AND                  IX2074.2
077400             XRECORD-NUMBER (1) EQUAL TO 251                      IX2074.2
077500             SUBTRACT  00001  FROM WRK-DS-05V00-006.              IX2074.2
077600     SUBTRACT     00001  FROM WRK-DS-05V00-008.                   IX2074.2
077700     IF       WRK-DS-05V00-005 LESS THAN  60                      IX2074.2
077800              GO TO READ-TEST-F1-03-R4.                           IX2074.2
077900 READ-TEST-F1-03.                                                 IX2074.2
078000     MOVE "READ DUPLICATE KEY  " TO FEATURE.                      IX2074.2
078100     MOVE "READ-TEST-F1-03     " TO PAR-NAME.                     IX2074.2
078200     CLOSE    IX-FS1.                                             IX2074.2
078300     IF       WRK-DS-05V00-006  NOT EQUAL TO  ZERO                IX2074.2
078400              PERFORM   FAIL                                      IX2074.2
078500              MOVE      WRK-DS-05V00-006  TO COMPUTED-N           IX2074.2
078600              MOVE      ZERO  TO  CORRECT-N                       IX2074.2
078700             MOVE     "SEE  PROGRAM"  TO RE-MARK                  IX2074.2
078800              ELSE                                                IX2074.2
078900              PERFORM   PASS.                                     IX2074.2
079000*                                                                         
079100*                                                                         
079200*                                                                         
079300*                                                                         
079400*                                                                         
079500*                                                                         
079600*                                                                         
079700*                                                                         
079800*                                                                         
079900*                                                                         
080000*                                                                         
080100*                                                                         
080200*                                                                         
080300*                                                                         
080400*                                                                         
080500*                                                                         
080600*                                                                         
080700*                                                                         
080800*                                                                         
080900*                                                                         
081000*                                                                         
081100*                                                                         
081200*                                                                         
081300*                                                                         
081400*                                                                         
081500*                                                                         
081600*                                                                         
081700*                                                                         
081800     PERFORM  PRINT-DETAIL.                                       IX2074.2
081900*                                                                         
082000*                                                                         
082100 READ-INIT-F1-04.                                                 IX2074.2
082200     MOVE     20300 TO  WRK-DS-05V00-006.                         IX2074.2
082300     MOVE     ZERO   TO WRK-DS-05V00-005.                         IX2074.2
082400     MOVE     00001  TO WRK-DU-05V00-003.                         IX2074.2
082500     MOVE     ZERO   TO WRK-DS-04V00-001.                         IX2074.2
082600     MOVE     ZERO   TO WRK-DS-04V00-002                          IX2074.2
082700     OPEN     INPUT     IX-FS1.                                   IX2074.2
082800     MOVE     WRK-FS1-ALTKEY  TO  IX-FS1-ALTKEY1.                 IX2074.2
082900     START    IX-FS1    KEY IS EQUAL TO                           IX2074.2
083000                IX-FS1-ALTKEY1                                    IX2074.2
083100              INVALID  KEY                                        IX2074.2
083200              ADD  01000  TO  WRK-DS-05V00-006.                   IX2074.2
083300     MOVE      IX-FS1-FILESIZE  TO  WRK-DS-05V00-008.             IX2074.2
083400     MOVE     "44"   TO  FS1-STATUS.                              IX2074.2
083500*                                                                         
083600*                                                                         
083700*                                                                         
083800*                                                                         
083900*                                                                         
084000*                                                                         
084100*                                                                         
084200*                                                                         
084300*                                                                         
084400*                                                                         
084500 READ-TEST-F1-04-R5.                                              IX2074.2
084600     READ     IX-FS1    RECORD  AT  END                           IX2074.2
084700              SUBTRACT  20000  FROM WRK-DS-05V00-006              IX2074.2
084800              GO TO     READ-TEST-F1-04.                          IX2074.2
084900     MOVE     IX-FS1R1-F-G-240  TO  FILE-RECORD-INFO (1).         IX2074.2
085000     ADD      00001   TO WRK-DS-05V00-005.                        IX2074.2
085100     IF      FS1-STATUS  EQUAL TO "00"                            IX2074.2
085200             ADD  0001  TO WRK-DS-04V00-001.                      IX2074.2
085300     IF      FS1-STATUS  EQUAL TO "02"                            IX2074.2
085400             ADD  1  TO WRK-DS-04V00-002.                         IX2074.2
085500     IF      WRK-DS-05V00-005  GREATER THAN WRK-DS-05V00-008      IX2074.2
085600              ADD   00001  TO  WRK-DS-05V00-006                   IX2074.2
085700              ELSE                                                IX2074.2
085800              GO  TO    READ-TEST-F1-04-R5.                       IX2074.2
085900 READ-TEST-F1-04.                                                 IX2074.2
086000     MOVE "READ-TEST-F1-04     " TO PAR-NAME.                     IX2074.2
086100     MOVE     "FILE STATUS"  TO FEATURE.                          IX2074.2
086200     IF       FS1-STATUS   NOT EQUAL TO  "10"                     IX2074.2
086300              ADD   10000 TO WRK-DS-05V00-006.                    IX2074.2
086400     SUBTRACT  WRK-DS-04V00-001 FROM WRK-DS-05V00-006.            IX2074.2
086500     SUBTRACT  WRK-DS-04V00-002 FROM WRK-DS-05V00-006.            IX2074.2
086600     IF       WRK-DS-05V00-006  NOT EQUAL TO ZERO                 IX2074.2
086700              PERFORM   FAIL                                      IX2074.2
086800              MOVE      WRK-DS-05V00-006 TO COMPUTED-N            IX2074.2
086900              MOVE      ZERO TO  CORRECT-N                        IX2074.2
087000             MOVE     "SEE PROGRAM"  TO RE-MARK                   IX2074.2
087100              ELSE                                                IX2074.2
087200              PERFORM   PASS.                                     IX2074.2
087300*                                                                         
087400*                                                                         
087500*                                                                         
087600*                                                                         
087700*                                                                         
087800*                                                                         
087900*                                                                         
088000*                                                                         
088100*                                                                         
088200*                                                                         
088300*                                                                         
088400     PERFORM  PRINT-DETAIL.                                       IX2074.2
088500     CLOSE    IX-FS1.                                             IX2074.2
088600*                                                                         
088700*                                                                         
088800 SECTION-IX207A-0002 SECTION.                                     IX2074.2
088900 WRITE-INIT-GF-02.                                                IX2074.2
089000     OPEN     OUTPUT    IX-FS2.                                   IX2074.2
089100     MOVE     "IX-FS2"  TO XFILE-NAME (2).                        IX2074.2
089200     MOVE     "R1-F-G"  TO XRECORD-NAME (2).                      IX2074.2
089300     MOVE     ZERO      TO XRECORD-NUMBER (2).                    IX2074.2
089400     MOVE     CCVS-PGM-ID  TO XPROGRAM-NAME  (2).                 IX2074.2
089500     MOVE     000240    TO XRECORD-LENGTH (2).                    IX2074.2
089600     MOVE     0001      TO XBLOCK-SIZE  (2).                      IX2074.2
089700     MOVE     "RC"      TO CHARS-OR-RECORDS (2).                  IX2074.2
089800     MOVE     "IX"      TO XFILE-ORGANIZATION (2).                IX2074.2
089900     MOVE     "S"       TO XLABEL-TYPE (2).                       IX2074.2
090000     MOVE     000300    TO RECORDS-IN-FILE (2).                   IX2074.2
090100     MOVE     000300    TO IX-FS2-FILESIZE.                       IX2074.2
090200     MOVE     ZERO      TO WRK-DS-05V00-005.                      IX2074.2
090300     MOVE    ZERO      TO WRK-DS-04V00-001.                       IX2074.2
090400     MOVE     ZERO      TO WRK-DS-04V00-002.                      IX2074.2
090500     MOVE     00001 TO WRK-DU-05V00-002.                          IX2074.2
090600     MOVE     IX-FS2-FILESIZE     TO WRK-DU-05V00-004.            IX2074.2
090700     MOVE     ZERO      TO WRK-DS-05V00-006.                      IX2074.2
090800     MOVE     00001     TO WRK-DS-05V00-007.                      IX2074.2
090900*                                                                         
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
092100*                                                                         
092200*                                                                         
092300*                                                                         
092400*                                                                         
092500*                                                                         
092600*                                                                         
092700*                                                                         
092800*                                                                         
092900*                                                                         
093000*                                                                         
093100*                                                                         
093200*                                                                         
093300     PERFORM  BLANK-LINE-PRINT.                                   IX2074.2
093400     MOVE     "SELECT ENTRY  -  ACCESS MODE NOT PRESENT - ACCESS  IX2074.2
093500-    "MODE SEQUENTIAL IS ASSUMED" TO PRINT-REC.                   IX2074.2
093600     PERFORM  WRITE-LINE.                                         IX2074.2
093700     PERFORM  BLANK-LINE-PRINT.                                   IX2074.2
093800 WRITE-TEST-GF-02-R1.                                             IX2074.2
093900     ADD      000001    TO XRECORD-NUMBER (2).                    IX2074.2
094000     MOVE     WRK-FS2-RECKEY TO XRECORD-KEY (2).                  IX2074.2
094100     MOVE     WRK-FS2-ALTKEY TO ALTERNATE-KEY1 (2).               IX2074.2
094200     WRITE   IX-FS2R1-F-G-240  FROM FILE-RECORD-INFO (2)          IX2074.2
094300              INVALID KEY                                         IX2074.2
094400              ADD   0001  TO  WRK-DS-04V00-001.                   IX2074.2
094500     ADD      00001     TO  WRK-DS-05V00-005.                     IX2074.2
094600*                                                                         
094700     ADD      00001     TO WRK-DS-05V00-007.                      IX2074.2
094800     IF       WRK-DS-05V00-007  GREATER THAN 50                   IX2074.2
094900              MOVE  00001 TO WRK-DS-05V00-007                     IX2074.2
095000              ELSE                                                IX2074.2
095100              SUBTRACT  WRK-DU-05V00-002  FROM IX-FS2-FILESIZE    IX2074.2
095200                   GIVING  WRK-DU-05V00-004.                      IX2074.2
095300*                                                                         
095400*                                                                         
095500*                                                                         
095600     ADD      00001  TO  WRK-DU-05V00-002.                        IX2074.2
095700     IF       WRK-DS-05V00-005  LESS THAN IX-FS2-FILESIZE         IX2074.2
095800              GO TO     WRITE-TEST-GF-02-R1.                      IX2074.2
095900 WRITE-TEST-GF-02.                                                IX2074.2
096000     MOVE "WRITE IX-FS2        " TO FEATURE.                      IX2074.2
096100     MOVE "WRITE-TEST-GF-02    " TO PAR-NAME.                     IX2074.2
096200     CLOSE    IX-FS2.                                             IX2074.2
096300     ADD      WRK-DS-04V00-001 WRK-DS-05V00-005                   IX2074.2
096400                        GIVING    WRK-DS-05V00-006.               IX2074.2
096500     IF       WRK-DS-05V00-006 NOT EQUAL TO 00300                 IX2074.2
096600              PERFORM   FAIL                                      IX2074.2
096700              MOVE      WRK-DS-05V00-006 TO  COMPUTED-N           IX2074.2
096800              MOVE      300  TO CORRECT-N                         IX2074.2
096900        ELSE                                                      IX2074.2
097000              PERFORM  PASS.                                      IX2074.2
097100     PERFORM   PRINT-DETAIL.                                      IX2074.2
097200*                                                                         
097300*                                                                         
097400 READ-INIT-F1-04.                                                 IX2074.2
097500     MOVE     ZERO TO   WRK-DS-04V00-001.                         IX2074.2
097600     MOVE     ZERO TO   WRK-DS-04V00-002.                         IX2074.2
097700     MOVE     ZERO TO   WRK-DS-05V00-005.                         IX2074.2
097800     MOVE    00120 TO  WRK-DS-05V00-006.                          IX2074.2
097900     MOVE     ZERO  TO  WRK-DS-05V00-007.                         IX2074.2
098000     MOVE     300  TO  WRK-DS-05V00-008.                          IX2074.2
098100     MOVE    0001  TO WRK-DU-05V00-004.                           IX2074.2
098200     OPEN     INPUT IX-FS2.                                       IX2074.2
098300     MOVE    WRK-FS2-ALTKEY TO IX-FS2-ALTKEY1.                    IX2074.2
098400     START    IX-FS2  KEY IS EQUAL TO                             IX2074.2
098500                IX-FS2-ALTKEY1                                    IX2074.2
098600           INVALID KEY                                            IX2074.2
098700              ADD       01000 TO  WRK-DS-05V00-006.               IX2074.2
098800 READ-TEST-F1-04-R2.                                              IX2074.2
098900     READ     IX-FS2 RECORD AT END                                IX2074.2
099000              ADD  10000 TO  WRK-DS-05V00-006                     IX2074.2
099100              GO TO READ-TEST-F1-04-R3.                           IX2074.2
099200     MOVE     IX-FS2R1-F-G-240 TO FILE-RECORD-INFO (2).           IX2074.2
099300     ADD      00001  TO WRK-DS-05V00-005.                         IX2074.2
099400     IF      WRK-DS-05V00-005  EQUAL TO 50 AND                    IX2074.2
099500             XRECORD-NUMBER (2) EQUAL TO 250                      IX2074.2
099600             SUBTRACT  00001  FROM WRK-DS-05V00-006.              IX2074.2
099700     IF      WRK-DS-05V00-005  EQUAL TO 51     AND                IX2074.2
099800             XRECORD-NUMBER (2) EQUAL TO 251                      IX2074.2
099900             SUBTRACT  00001  FROM WRK-DS-05V00-006.              IX2074.2
100000     IF      WRK-DS-05V00-005  EQUAL TO 100  AND                  IX2074.2
100100              XRECORD-NUMBER (2)  EQUAL TO 200                    IX2074.2
100200              SUBTRACT  00001  FROM WRK-DS-05V00-006.             IX2074.2
100300     IF      WRK-DS-05V00-005  EQUAL TO 101  AND                  IX2074.2
100400              XRECORD-NUMBER (2) EQUAL TO 201                     IX2074.2
100500              SUBTRACT  00001  FROM WRK-DS-05V00-006.             IX2074.2
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
101700     IF       WRK-DS-05V00-008  EQUAL TO XRECORD-NUMBER (2)       IX2074.2
101800          SUBTRACT  00001  FROM WRK-DS-05V00-006.                 IX2074.2
101900     SUBTRACT   00001  FROM  WRK-DS-05V00-008.                    IX2074.2
102000     IF       WRK-DS-05V00-005  LESS THAN 120                     IX2074.2
102100              GO TO  READ-TEST-F1-04-R2.                          IX2074.2
102200 READ-TEST-F1-04-R3.                                              IX2074.2
102300     MOVE "READ ALTERNATE KEY  " TO FEATURE.                      IX2074.2
102400     MOVE "READ-TEST-F1-04-R3. " TO PAR-NAME.                     IX2074.2
102500     CLOSE    IX-FS2.                                             IX2074.2
102600     IF       WRK-DS-05V00-006    NOT EQUAL TO  ZERO              IX2074.2
102700              PERFORM   FAIL                                      IX2074.2
102800              MOVE      WRK-DS-05V00-006 TO COMPUTED-N            IX2074.2
102900              MOVE      ZERO TO   CORRECT-N                       IX2074.2
103000              MOVE      "SEE PROGRAM" TO RE-MARK                  IX2074.2
103100              ELSE                                                IX2074.2
103200              PERFORM   PASS.                                     IX2074.2
103300*                                                                         
103400*                                                                         
103500*                                                                         
103600*                                                                         
103700*                                                                         
103800*                                                                         
103900*                                                                         
104000*                                                                         
104100     PERFORM  PRINT-DETAIL.                                       IX2074.2
104200*                                                                         
104300*                                                                         
104400 READ-INIT-F1-05.                                                 IX2074.2
104500     MOVE     00301   TO WRK-DS-05V00-006.                        IX2074.2
104600     MOVE     ZERO  TO WRK-DS-05V00-005.                          IX2074.2
104700     MOVE     ZERO   TO WRK-DS-05V00-007.                         IX2074.2
104800     MOVE     ZERO   TO WRK-DS-05V00-008.                         IX2074.2
104900     MOVE     ZERO   TO WRK-DS-04V00-001.                         IX2074.2
105000     MOVE     ZERO   TO WRK-DS-04V00-002.                         IX2074.2
105100     OPEN     INPUT IX-FS1.                                       IX2074.2
105200     OPEN     INPUT IX-FS2.                                       IX2074.2
105300 READ-TEST-F1-05-R3.                                              IX2074.2
105400     READ     IX-FS1.                                             IX2074.2
105500     READ     IX-FS2.                                             IX2074.2
105600     ADD      0001 TO   WRK-DS-05V00-005.                         IX2074.2
105700     IF       WRK-DS-05V00-005 LESS THAN  301                     IX2074.2
105800             GO TO   READ-TEST-F1-05-R3.                          IX2074.2
105900 READ-TEST-F1-05.                                                 IX2074.2
106000     MOVE "USE                 " TO FEATURE.                      IX2074.2
106100     MOVE "READ-TEST-F1-05     " TO PAR-NAME.                     IX2074.2
106200     CLOSE   IX-FS1.                                              IX2074.2
106300     SUBTRACT  WRK-DS-05V00-005 FROM  WRK-DS-05V00-006.           IX2074.2
106400     IF      WRK-DS-05V00-006  NOT EQUAL TO 00002                 IX2074.2
106500              PERFORM   FAIL                                      IX2074.2
106600              MOVE      WRK-DS-05V00-006 TO COMPUTED-N            IX2074.2
106700              MOVE      00002 TO CORRECT-N                        IX2074.2
106800              ELSE                                                IX2074.2
106900              PERFORM   PASS.                                     IX2074.2
107000*                                                                         
107100*                                                                         
107200*                                                                         
107300     PERFORM  PRINT-DETAIL.                                       IX2074.2
107400*                                                                         
107500*                                                                         
107600     CLOSE    IX-FS2.                                             IX2074.2
107700                                                                  IX2074.2
107800                                                                  IX2074.2
107900 CCVS-EXIT SECTION.                                               IX2074.2
108000 CCVS-999999.                                                     IX2074.2
108100     GO TO CLOSE-FILES.                                           IX2074.2
