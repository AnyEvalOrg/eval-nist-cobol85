000100 IDENTIFICATION DIVISION.                                         IF4034.2
000200 PROGRAM-ID.                                                      IF4034.2
000300      IF403M.                                                     IF4034.2
000400                                                                  IF4034.2
000500                                                                  IF4034.2
000600*                                                                         
000700*                                                                         
000800*                                                                         
000900*                                                                         
001000*                                                                         
001100*                                                                         
001200*                                                                         
001300*                                                                         
001400                                                                  IF4034.2
001500 ENVIRONMENT DIVISION.                                            IF4034.2
001600 CONFIGURATION SECTION.                                           IF4034.2
001700 SOURCE-COMPUTER.                                                 IF4034.2
001800     GNU-Linux.                                                   IF4034.2
001900 OBJECT-COMPUTER.                                                 IF4034.2
002000     GNU-Linux.                                                   IF4034.2
002100                                                                  IF4034.2
002200 DATA DIVISION.                                                   IF4034.2
002300 FILE SECTION.                                                    IF4034.2
002400 WORKING-STORAGE SECTION.                                         IF4034.2
002500 01  WS-AN-TEMP   PICTURE    X(21).                               IF4034.2
002600                                                                  IF4034.2
002700 PROCEDURE DIVISION.                                              IF4034.2
002800 IF403M-PRESENT-VALUE.                                            IF4034.2
002900     IF FUNCTION PRESENT-VALUE (0, 23, 12, 9) =                   IF4034.2
003000        FUNCTION PRESENT-VALUE (0, 23, 12, 9)                     IF4034.2
003100                 CONTINUE.                                        IF4034.2
003200*                                                                         
003300                                                                  IF4034.2
003400 IF403M-RANDOM.                                                   IF4034.2
003500     IF FUNCTION RANDOM (1) = FUNCTION RANDOM (1)                 IF4034.2
003600                 CONTINUE.                                        IF4034.2
003700*                                                                         
003800                                                                  IF4034.2
003900 IF403M-RANGE.                                                    IF4034.2
004000     IF FUNCTION RANGE (5, -2, -14, 0) =                          IF4034.2
004100        FUNCTION RANGE (5, -2, -14, 0)                            IF4034.2
004200                 CONTINUE.                                        IF4034.2
004300*                                                                         
004400                                                                  IF4034.2
004500 IF403M-REM.                                                      IF4034.2
004600     IF FUNCTION REM (0, 20) = FUNCTION REM (0, 20)               IF4034.2
004700                 CONTINUE.                                        IF4034.2
004800*                                                                         
004900                                                                  IF4034.2
005000 IF403M-REVERSE.                                                  IF4034.2
005100     MOVE FUNCTION REVERSE ("ABC") TO WS-AN-TEMP.                 IF4034.2
005200*                                                                         
005300                                                                  IF4034.2
005400 IF403M-SIN.                                                      IF4034.2
005500     IF FUNCTION SIN (1.0) = FUNCTION SIN (1.0)                   IF4034.2
005600                 CONTINUE.                                        IF4034.2
005700*                                                                         
005800                                                                  IF4034.2
005900 IF403M-SQRT.                                                     IF4034.2
006000     IF FUNCTION SQRT (0) = FUNCTION SQRT (0)                     IF4034.2
006100                 CONTINUE.                                        IF4034.2
006200*                                                                         
006300                                                                  IF4034.2
006400 IF403M-STANDARD-DEVIATION.                                       IF4034.2
006500     IF FUNCTION STANDARD-DEVIATION (5, -2, -14, 0) =             IF4034.2
006600        FUNCTION STANDARD-DEVIATION (5, -2, -14, 0)               IF4034.2
006700                 CONTINUE.                                        IF4034.2
006800*                                                                         
006900                                                                  IF4034.2
007000 IF403M-SUM.                                                      IF4034.2
007100     IF FUNCTION SUM (5, -2, -14, 0) =                            IF4034.2
007200        FUNCTION SUM (5, -2, -14, 0)                              IF4034.2
007300                 CONTINUE.                                        IF4034.2
007400*                                                                         
007500                                                                  IF4034.2
007600 IF403M-TAN.                                                      IF4034.2
007700     IF FUNCTION TAN (1.0) = FUNCTION TAN (1.0)                   IF4034.2
007800                 CONTINUE.                                        IF4034.2
007900*                                                                         
008000                                                                  IF4034.2
008100 IF403M-UPPER-CASE.                                               IF4034.2
008200     MOVE FUNCTION UPPER-CASE ("abc") TO WS-AN-TEMP.              IF4034.2
008300*                                                                         
008400                                                                  IF4034.2
008500 IF403M-VARIANCE.                                                 IF4034.2
008600     IF FUNCTION VARIANCE (5, -2, -14, 0) =                       IF4034.2
008700        FUNCTION VARIANCE (5, -2, -14, 0)                         IF4034.2
008800                 CONTINUE.                                        IF4034.2
008900*                                                                         
009000                                                                  IF4034.2
009100 IF403M-WHEN-COMPILED.                                            IF4034.2
009200     MOVE FUNCTION WHEN-COMPILED TO WS-AN-TEMP.                   IF4034.2
009300*                                                                         
009400                                                                  IF4034.2
009500 IF403M-END.                                                      IF4034.2
009600                                                                  IF4034.2
009700*                                                                         
