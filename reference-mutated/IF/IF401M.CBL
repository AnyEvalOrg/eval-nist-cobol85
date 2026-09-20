000100 IDENTIFICATION DIVISION.                                         IF4014.2
000200 PROGRAM-ID.                                                      IF4014.2
000300      IF401M.                                                     IF4014.2
000400                                                                  IF4014.2
000500                                                                  IF4014.2
000600*                                                                         
000700*                                                                         
000800*                                                                         
000900*                                                                         
001000*                                                                         
001100*                                                                         
001200*                                                                         
001300*                                                                         
001400*                                                                         
001500                                                                  IF4014.2
001600 ENVIRONMENT DIVISION.                                            IF4014.2
001700 CONFIGURATION SECTION.                                           IF4014.2
001800 SOURCE-COMPUTER.                                                 IF4014.2
001900     GNU-Linux.                                                   IF4014.2
002000 OBJECT-COMPUTER.                                                 IF4014.2
002100     GNU-Linux.                                                   IF4014.2
002200                                                                  IF4014.2
002300 DATA DIVISION.                                                   IF4014.2
002400 FILE SECTION.                                                    IF4014.2
002500 WORKING-STORAGE SECTION.                                         IF4014.2
002600 01  TEMP1        PICTURE    X(21).                               IF4014.2
002700 01  WS-ANUM      PICTURE    X.                                   IF4014.2
002800                                                                  IF4014.2
002900 PROCEDURE DIVISION.                                              IF4014.2
003000 IF401M-ACOS.                                                     IF4014.2
003100     IF FUNCTION ACOS (1.0) = FUNCTION ACOS (1.0)                 IF4014.2
003200                 CONTINUE.                                        IF4014.2
003300*                                                                         
003400                                                                  IF4014.2
003500 IF401M-ANNUITY.                                                  IF4014.2
003600     IF FUNCTION ANNUITY (0, 4) = FUNCTION ANNUITY (0, 4)         IF4014.2
003700                 CONTINUE.                                        IF4014.2
003800*                                                                         
003900                                                                  IF4014.2
004000 IF401M-ASIN.                                                     IF4014.2
004100     IF FUNCTION ASIN (1.0) = FUNCTION ASIN (1.0)                 IF4014.2
004200                 CONTINUE.                                        IF4014.2
004300*                                                                         
004400                                                                  IF4014.2
004500 IF401M-ATAN.                                                     IF4014.2
004600     IF FUNCTION ATAN (1.0) = FUNCTION ATAN (1.0)                 IF4014.2
004700                 CONTINUE.                                        IF4014.2
004800*                                                                         
004900                                                                  IF4014.2
005000 IF401M-CHAR.                                                     IF4014.2
005100     MOVE FUNCTION CHAR (37) TO WS-ANUM.                          IF4014.2
005200*                                                                         
005300                                                                  IF4014.2
005400 IF401M-COS.                                                      IF4014.2
005500     IF FUNCTION COS (1.0) = FUNCTION COS (1.0)                   IF4014.2
005600                 CONTINUE.                                        IF4014.2
005700*                                                                         
005800                                                                  IF4014.2
005900 IF401M-CURRENT-DATE.                                             IF4014.2
006000     MOVE FUNCTION CURRENT-DATE TO TEMP1.                         IF4014.2
006100*                                                                         
006200                                                                  IF4014.2
006300 IF401M-DATE-OF-INTEGER.                                          IF4014.2
006400     IF FUNCTION DATE-OF-INTEGER (1) =                            IF4014.2
006500        FUNCTION DATE-OF-INTEGER (1)                              IF4014.2
006600                 CONTINUE.                                        IF4014.2
006700*                                                                         
006800                                                                  IF4014.2
006900 IF401M-DAY-OF-INTEGER.                                           IF4014.2
007000     IF FUNCTION DAY-OF-INTEGER (1) = FUNCTION DAY-OF-INTEGER (1) IF4014.2
007100                 CONTINUE.                                        IF4014.2
007200*                                                                         
007300                                                                  IF4014.2
007400 IF401M-FACTORIAL.                                                IF4014.2
007500     IF FUNCTION FACTORIAL (1) = FUNCTION FACTORIAL (1)           IF4014.2
007600                 CONTINUE.                                        IF4014.2
007700*                                                                         
007800                                                                  IF4014.2
007900 IF401M-INTEGER.                                                  IF4014.2
008000     IF FUNCTION INTEGER (1.0) = FUNCTION INTEGER (1.0)           IF4014.2
008100                 CONTINUE.                                        IF4014.2
008200*                                                                         
008300                                                                  IF4014.2
008400 IF401M-INTEGER-OF-DATE.                                          IF4014.2
008500     IF FUNCTION INTEGER-OF-DATE (16010101) =                     IF4014.2
008600        FUNCTION INTEGER-OF-DATE (16010101)                       IF4014.2
008700                 CONTINUE.                                        IF4014.2
008800*                                                                         
008900                                                                  IF4014.2
009000 IF401M-INTEGER-OF-DAY.                                           IF4014.2
009100     IF FUNCTION INTEGER-OF-DAY (1601001) =                       IF4014.2
009200        FUNCTION INTEGER-OF-DAY (1601001)                         IF4014.2
009300                 CONTINUE.                                        IF4014.2
009400*                                                                         
009500                                                                  IF4014.2
009600 IF401M-INTEGER-PART.                                             IF4014.2
009700     IF FUNCTION INTEGER-PART (4.578) =                           IF4014.2
009800        FUNCTION INTEGER-PART (4.578)                             IF4014.2
009900                 CONTINUE.                                        IF4014.2
010000*                                                                         
010100                                                                  IF4014.2
010200 IF401M-END.                                                      IF4014.2
010300                                                                  IF4014.2
010400*                                                                         
