000100 IDENTIFICATION DIVISION.                                         IC2084.2
000200 PROGRAM-ID.                                                      IC2084.2
000300     IC208A.                                                      IC2084.2
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
002900 ENVIRONMENT DIVISION.                                            IC2084.2
003000 CONFIGURATION SECTION.                                           IC2084.2
003100 SOURCE-COMPUTER.                                                 IC2084.2
003200     GNU-Linux.                                                   IC2084.2
003300 OBJECT-COMPUTER.                                                 IC2084.2
003400     GNU-Linux.                                                   IC2084.2
003500 DATA DIVISION.                                                   IC2084.2
003600 LINKAGE SECTION.                                                 IC2084.2
003700 77  INDEX-1 USAGE IS INDEX.                                      IC2084.2
003800 77  DN3 PICTURE 99.                                              IC2084.2
003900 01  TABLE-01.                                                    IC2084.2
004000     02  DN1 PICTURE X                                            IC2084.2
004100             OCCURS 1 TO 15 TIMES                                 IC2084.2
004200             DEPENDING ON DN3                                     IC2084.2
004300             INDEXED BY IN1.                                      IC2084.2
004400         88  CN1 VALUE "A".                                       IC2084.2
004500         88  CN2 VALUE "H".                                       IC2084.2
004600         88  CN3 VALUE "O".                                       IC2084.2
004700 01  TABLE-02.                                                    IC2084.2
004800     02  DN2 PICTURE X                                            IC2084.2
004900             OCCURS 8 TIMES.                                      IC2084.2
005000 PROCEDURE DIVISION USING TABLE-01, TABLE-02, INDEX-1, DN3.       IC2084.2
005100 SECT-IC208-0001 SECTION.                                         IC2084.2
005200 LINK-TEST-01.                                                    IC2084.2
005300*                                                                         
005400*                                                                         
005500     SET IN1 TO INDEX-1.                                          IC2084.2
005600     MOVE DN1 (IN1) TO DN2 (1).                                   IC2084.2
005700*                                                                         
005800*                                                                         
005900*                                                                         
006000 LINK-TEST-02-01.                                                 IC2084.2
006100     SET IN1 TO 1.                                                IC2084.2
006200     SEARCH DN1 VARYING IN1                                       IC2084.2
006300         AT END MOVE "Z" TO DN2 (2)                               IC2084.2
006400         WHEN DN1 (IN1) EQUAL TO "D"                              IC2084.2
006500             MOVE "D" TO DN2 (2).                                 IC2084.2
006600 LINK-TEST-02-02.                                                 IC2084.2
006700     SET IN1 TO 1.                                                IC2084.2
006800     SEARCH DN1 VARYING IN1                                       IC2084.2
006900         AT END MOVE "Y" TO DN2 (3)                               IC2084.2
007000         WHEN DN1 (IN1) EQUAL TO "B"                              IC2084.2
007100             MOVE "B" TO DN2 (3).                                 IC2084.2
007200 LINK-TEST-02-03.                                                 IC2084.2
007300     MOVE 7 TO DN3.                                               IC2084.2
007400     SET IN1 TO 1.                                                IC2084.2
007500     SEARCH DN1 VARYING IN1                                       IC2084.2
007600         AT END MOVE "X" TO DN2 (4)                               IC2084.2
007700         WHEN DN1 (IN1) EQUAL TO "H"                              IC2084.2
007800             MOVE "H" TO DN2 (4).                                 IC2084.2
007900 LINK-TEST-02-04.                                                 IC2084.2
008000     SET IN1 TO 1.                                                IC2084.2
008100     SEARCH DN1 VARYING IN1                                       IC2084.2
008200         AT END MOVE "W" TO DN2 (5)                               IC2084.2
008300         WHEN DN1 (IN1) EQUAL TO "G"                              IC2084.2
008400             MOVE "G" TO DN2 (5).                                 IC2084.2
008500 LINK-TEST-03.                                                    IC2084.2
008600     MOVE 10 TO DN3.                                              IC2084.2
008700*                                                                         
008800*                                                                         
008900 LINK-TEST-03-01.                                                 IC2084.2
009000     IF CN1 (1)  MOVE "A" TO DN2 (6).                             IC2084.2
009100 LINK-TEST-03-02.                                                 IC2084.2
009200     IF CN1 (5)  MOVE "N" TO DN2 (7)                              IC2084.2
009300         ELSE MOVE "V" TO DN2 (7).                                IC2084.2
009400 LINK-TEST-03-03.                                                 IC2084.2
009500     IF CN2 (8) MOVE "H" TO DN2 (8).                              IC2084.2
009600 LINK-TEST-04.                                                    IC2084.2
009700*                                                                         
009800*                                                                         
009900     SET IN1 TO 2.                                                IC2084.2
010000     SET INDEX-1 TO IN1.                                          IC2084.2
010100     MOVE 9 TO DN3.                                               IC2084.2
010200 EXIT-IC208.                                                      IC2084.2
010300     EXIT PROGRAM.                                                IC2084.2
