000100 IDENTIFICATION DIVISION.                                         NC3024.2
000200 PROGRAM-ID.                                                      NC3024.2
000300     NC302M.                                                      NC3024.2
000400*                                                                         
000500*                                                                         
000600 AUTHOR. DAVID G BAMBER.                                          NC3024.2
000700*                                                                         
000800 INSTALLATION. NCC.                                               NC3024.2
000900*                                                                         
001000 DATE-WRITTEN. 19TH AUG 1988.                                     NC3024.2
001100*                                                                         
001200 SECURITY. NO SECURITY.                                           NC3024.2
001300*                                                                         
001400 ENVIRONMENT DIVISION.                                            NC3024.2
001500 CONFIGURATION SECTION.                                           NC3024.2
001600 SOURCE-COMPUTER.                                                 NC3024.2
001700     GNU-Linux.                                                   NC3024.2
001800 OBJECT-COMPUTER.                                                 NC3024.2
001900     GNU-Linux                                                    NC3024.2
002000     MEMORY SIZE                                                  NC3024.2
002100     64000                                                        NC3024.2
002200     CHARACTERS.                                                  NC3024.2
002300*                                                                         
002400                                                                  NC3024.2
002500                                                                  NC3024.2
002600 DATA DIVISION.                                                   NC3024.2
002700 PROCEDURE DIVISION.                                              NC3024.2
002800                                                                  NC3024.2
002900 NC302M-CONTROL.                                                  NC3024.2
003000     PERFORM NC302M-ALTER THRU NC302M-STOP.                       NC3024.2
003100     STOP RUN.                                                    NC3024.2
003200                                                                  NC3024.2
003300 NC302M-ALTER.                                                    NC3024.2
003400     ALTER NC302M-PROC1 TO NC302M-PROC2.                          NC3024.2
003500*                                                                         
003600                                                                  NC3024.2
003700 NC302M-PROC1.                                                    NC3024.2
003800     GO TO NC302M-PROC2.                                          NC3024.2
003900                                                                  NC3024.2
004000 NC302M-PROC2.                                                    NC3024.2
004100     DISPLAY "DUMMY PROCEDURE".                                   NC3024.2
004200                                                                  NC3024.2
004300                                                                  NC3024.2
004400                                                                  NC3024.2
004500                                                                  NC3024.2
004600 NC302M-STOP.                                                     NC3024.2
004700     STOP "FNC302".                                               NC3024.2
004800*                                                                         
004900                                                                  NC3024.2
005000                                                                  NC3024.2
005100*                                                                         
