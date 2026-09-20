000100 IDENTIFICATION DIVISION.                                         NC3034.2
000200 PROGRAM-ID.                                                      NC3034.2
000300     NC303M.                                                      NC3034.2
000400*                                                                         
000500*                                                                         
000600 DATE-COMPILED.  22ND AUG 1988.                                   NC3034.2
000700*                                                                         
000800 ENVIRONMENT DIVISION.                                            NC3034.2
000900 CONFIGURATION SECTION.                                           NC3034.2
001000 SOURCE-COMPUTER.                                                 NC3034.2
001100     GNU-Linux.                                                   NC3034.2
001200 OBJECT-COMPUTER.                                                 NC3034.2
001300     GNU-Linux.                                                   NC3034.2
001400                                                                  NC3034.2
001500                                                                  NC3034.2
001600 PROCEDURE DIVISION.                                              NC3034.2
001700                                                                  NC3034.2
001800 NC303M-CONTROL.                                                  NC3034.2
001900     ALTER NC303M-GOTO TO PROCEED TO NC303M-GOTO-2,               NC3034.2
002000         NC303M-GOTO-2 TO PROCEED TO NC303M-CONTROL.              NC3034.2
002100*                                                                         
002200     STOP RUN.                                                    NC3034.2
002300                                                                  NC3034.2
002400 NC303M-GOTO.                                                     NC3034.2
002500     GO TO.                                                       NC3034.2
002600*                                                                         
002700                                                                  NC3034.2
002800 NC303M-GOTO-2.                                                   NC3034.2
002900     GO TO.                                                       NC3034.2
003000*                                                                         
003100                                                                  NC3034.2
003200*                                                                         
