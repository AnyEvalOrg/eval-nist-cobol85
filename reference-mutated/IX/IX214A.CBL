000100 IDENTIFICATION DIVISION.                                         IX2144.2
000200 PROGRAM-ID.                                                      IX2144.2
000300     IX214A.                                                      IX2144.2
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
008500*                                                                         
008600*                                                                         
008700*                                                                         
008800*                                                                         
008900*                                                                         
009000*                                                                         
009100*                                                                         
009200*                                                                         
009300*                                                                         
009400*                                                                         
009500*                                                                         
009600*                                                                         
009700*                                                                         
009800*                                                                         
009900*                                                                         
010000*                                                                         
010100*                                                                         
010200*                                                                         
010300*                                                                         
010400*                                                                         
010500*                                                                         
010600*                                                                         
010700*                                                                         
010800*                                                                         
010900*                                                                         
011000*                                                                         
011100*                                                                         
011200*                                                                         
011300*                                                                         
011400*                                                                         
011500*                                                                         
011600*                                                                         
011700*                                                                         
011800*                                                                         
011900*                                                                         
012000*                                                                         
012100*                                                                         
012200*                                                                         
012300*                                                                         
012400*                                                                         
012500*                                                                         
012600*                                                                         
012700*                                                                         
012800*                                                                         
012900*                                                                         
013000*                                                                         
013100*                                                                         
013200*                                                                         
013300*                                                                         
013400*                                                                         
013500*                                                                         
013600*                                                                         
013700*                                                                         
013800*                                                                         
013900*                                                                         
014000*                                                                         
014100*                                                                         
014200*                                                                         
014300*                                                                         
014400*                                                                         
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
015900*                                                                         
016000*                                                                         
016100*                                                                         
016200*                                                                         
016300*                                                                         
016400*                                                                         
016500*                                                                         
016600*                                                                         
016700*                                                                         
016800*                                                                         
016900*                                                                         
017000*                                                                         
017100*                                                                         
017200*                                                                         
017300*                                                                         
017400*                                                                         
017500*                                                                         
017600*                                                                         
017700*                                                                         
017800*                                                                         
017900*                                                                         
018000 ENVIRONMENT DIVISION.                                            IX2144.2
018100 CONFIGURATION SECTION.                                           IX2144.2
018200 SOURCE-COMPUTER.                                                 IX2144.2
018300     GNU-Linux.                                                   IX2144.2
018400 OBJECT-COMPUTER.                                                 IX2144.2
018500     GNU-Linux                                                    IX2144.2
018600          PROGRAM COLLATING SEQUENCE IS FOR-INX-START-TEST.       IX2144.2
018700 SPECIAL-NAMES.                                                   IX2144.2
018800     ALPHABET                                                     IX2144.2
018900     FOR-INX-START-TEST IS "WVUTSRJIHGFEDCB".                     IX2144.2
019000 INPUT-OUTPUT SECTION.                                            IX2144.2
019100 FILE-CONTROL.                                                    IX2144.2
019700     SELECT PRINT-FILE ASSIGN TO                                  IX2144.2
019800     "REPORT".                                                    IX2144.2
019900     SELECT  IX-FS1                                               IX2144.2
020000     ASSIGN TO                                                    IX2144.2
020100     "XXXXX024"                                                   IX2144.2
020300        ACCESS MODE IS SEQUENTIAL                                 IX2144.2
020400        ORGANIZATION IS INDEXED                                   IX2144.2
020500        RECORD KEY IS IX-FS1-KEY                                  IX2144.2
020600        ALTERNATE RECORD KEY IS IX-FS1-ALTKEY1                    IX2144.2
020700        ALTERNATE RECORD KEY IS IX-FS1-ALTKEY2 WITH DUPLICATES    IX2144.2
020800        FILE STATUS IS FS1-STATUS.                                IX2144.2
020900 DATA DIVISION.                                                   IX2144.2
021000 FILE SECTION.                                                    IX2144.2
022700 FD  PRINT-FILE.                                                  IX2144.2
022800 01  PRINT-REC PICTURE X(120).                                    IX2144.2
022900 01  DUMMY-RECORD PICTURE X(120).                                 IX2144.2
023000 FD  IX-FS1                                                       IX2144.2
023300     RECORD CONTAINS 240 CHARACTERS.                              IX2144.2
023400 01  IX-FS1R1-F-G-240.                                            IX2144.2
023500     05 IX-FS1-REC-120           PICTURE X(120).                  IX2144.2
023600     05 IX-FS1-REC-121-240.                                       IX2144.2
023700        10 FILLER                PICTURE X(8).                    IX2144.2
023800        10 IX-REC-KEY-AREA.                                       IX2144.2
023900           15 IX-FS1-KEY.                                         IX2144.2
024000              20 IX-FS1-KEY-1-10.                                 IX2144.2
024100                 25 IX-FS1-KEY-1-5      PICTURE X(5).             IX2144.2
024200                 25 IX-FS1-KEY-6-10     PICTURE X(5).             IX2144.2
024300               20 IX-FS1-KEY-11-13      PICTURE X(3).             IX2144.2
024400           15 IX-REDF-RECKEY REDEFINES IX-FS1-KEY.                IX2144.2
024500              20 R-RECKEY-1-7    PICTURE X(7).                    IX2144.2
024600              20 R-RECKEY-8-13   PICTURE X(6).                    IX2144.2
024700           15 FILLER             PICTURE X(16).                   IX2144.2
024800        10 FILLER                PICTURE X(9).                    IX2144.2
024900        10 IX-ALT-KEY1-AREA.                                      IX2144.2
025000           15 IX-FS1-ALTKEY1.                                     IX2144.2
025100              20 IX-FS1-ALTKEY1-1-10.                             IX2144.2
025200                 25 IX-FS1-ALTKEY1-1-5  PICTURE X(5).             IX2144.2
025300                 25 IX-FS1-ALTKEY1-6-10 PICTURE X(5).             IX2144.2
025400              20 IX-FS1-ALTKEY1-11-13   PICTURE X(3).             IX2144.2
025500              20 IX-FS1-ALTKEY1-14-20   PICTURE X(7).             IX2144.2
025600           15 IX-REDF-ALTKEY1 REDEFINES IX-FS1-ALTKEY1.           IX2144.2
025700              20 R-ALTKEY1-1-6   PICTURE X(6).                    IX2144.2
025800              20 R-ALTKEY1-7-10  PICTURE X(4).                    IX2144.2
025900              20 R-ALTKEY1-11-20 PICTURE X(10).                   IX2144.2
026000           15 FILLER             PICTURE X(9).                    IX2144.2
026100        10 FILLER                PICTURE X(9).                    IX2144.2
026200        10 IX-ALT-KEY2-AREA.                                      IX2144.2
026300           15 IX-FS1-ALTKEY2.                                     IX2144.2
026400              20 IX-FS1-ALTKEY2-1-10.                             IX2144.2
026500                 25 IX-FS1-ALTKEY2-1-5  PICTURE X(5).             IX2144.2
026600                 25 IX-FS1-ALTKEY2-6-10 PICTURE X(5).             IX2144.2
026700              20 IX-FS1-ALTKEY2-11-13   PICTURE X(3).             IX2144.2
026800              20 IX-FS1-ALTKEY2-14-20   PICTURE X(7).             IX2144.2
026900           15 FILLER             PICTURE X(9).                    IX2144.2
027000        10 FILLER                PICTURE X(7).                    IX2144.2
027100 WORKING-STORAGE SECTION.                                         IX2144.2
027200 01  WRK-FS1-RECKEY.                                              IX2144.2
027300     05 FS1-RECKEY-1-13.                                          IX2144.2
027400        10 FS1-RECKEY-1-10       PICTURE X(10).                   IX2144.2
027500        10 FS1-RECKEY-11-13      PICTURE 9(3).                    IX2144.2
027600     05 FILLER                   PICTURE X(16)  VALUE SPACE.      IX2144.2
027700 01  WRK-FS1-ALTKEY1.                                             IX2144.2
027800      05 FS1-ALTKEY1-1-20.                                        IX2144.2
027900       10  FS1-ALTKEY1-1-10.                                      IX2144.2
028000        15 FS1-ALTKEY1-1-5       PICTURE X(5).                    IX2144.2
028100        15 FS1-ALTKEY1-6-10      PICTURE X(5).                    IX2144.2
028200       10 FS1-ALTKEY1-11-13      PICTURE 9(3).                    IX2144.2
028300       10 FS1-ALTKEY1-14-20      PICTURE X(7).                    IX2144.2
028400     05 FILLER                   PICTURE X(9)  VALUE SPACE.       IX2144.2
028500 01  WRK-FS1-ALTKEY2.                                             IX2144.2
028600     05 FS1-ALTKEY2-1-20.                                         IX2144.2
028700        10 FS1-ALTKEY2-1-10.                                      IX2144.2
028800           15 FS1-ALTKEY2-1-5    PICTURE X(5).                    IX2144.2
028900           15 FS1-ALTKEY2-6-10   PICTURE X(5).                    IX2144.2
029000        10 FS1-ALTKEY2-11-13     PICTURE 9(3).                    IX2144.2
029100        10 FS1-ALTKEY2-14-20     PICTURE X(7).                    IX2144.2
029200     05 FILLER                   PICTURE X(9) VALUE SPACE.        IX2144.2
029300 01  RECNO                       PICTURE 9(5)  VALUE ZERO.        IX2144.2
029400 01  FS1-STATUS                  PICTURE XX   VALUE SPACE.        IX2144.2
029500 01  EXCUT-COUNTER-06V00         PICTURE 9(6) VALUE ZERO.         IX2144.2
029600 01  KEYSUB                      PICTURE 9(3) COMPUTATIONAL.      IX2144.2
029700 01  INVKEY-COUNTER              PICTURE 9(3) COMPUTATIONAL.      IX2144.2
029800 01  RECORDS-WRITTEN             PICTURE 9(3).                    IX2144.2
029900 01  RECKEY-NUM                  PICTURE 9(3).                    IX2144.2
030000 01  ALTKEY1-NUM                 PICTURE 9(3).                    IX2144.2
030100 01  ALTKEY2-NUM                 PICTURE 9(3).                    IX2144.2
030200 01  RECORD-KEY-CONTENT.                                          IX2144.2
030300     05 FILLER PIC X(53) VALUE                                    IX2144.2
030400          "BBBBBBBBBC002EEEEEEEEEF002ALTKEY1WWWWWWWWWV398ALTKEY2".IX2144.2
030500     05 FILLER PIC X(53) VALUE                                    IX2144.2
030600          "BBBBBBBBCC004EEEEEEEEFF004ALTKEY1WWWWWWWWVV396ALTKEY2".IX2144.2
030700     05 FILLER PIC X(53) VALUE                                    IX2144.2
030800          "BBBBBBBCCC006EEEEEEEFFF006ALTKEY1WWWWWWWVVV394ALTKEY2".IX2144.2
030900     05 FILLER PIC X(53) VALUE                                    IX2144.2
031000          "BBBBBBCCCC008EEEEEEFFFF008ALTKEY1WWWWWWVVVV392ALTKEY2".IX2144.2
031100     05 FILLER PIC X(53) VALUE                                    IX2144.2
031200          "BBBBBCCCCC010EEEEEFFFFF010ALTKEY1WWWWWVVVVV390ALTKEY2".IX2144.2
031300     05 FILLER PIC X(53) VALUE                                    IX2144.2
031400          "BBBBCCCCCC012EEEEFFFFFF012ALTKEY1WWWWVVVVVV388ALTKEY2".IX2144.2
031500     05 FILLER PIC X(53) VALUE                                    IX2144.2
031600          "BBBCCCCCCC014EEEFFFFFFF014ALTKEY1WWWVVVVVVV386ALTKEY2".IX2144.2
031700     05 FILLER PIC X(53) VALUE                                    IX2144.2
031800          "BBCCCCCCCC016EEFFFFFFFF016ALTKEY1WWVVVVVVVV384ALTKEY2".IX2144.2
031900     05 FILLER PIC X(53) VALUE                                    IX2144.2
032000          "BCCCCCCCCC018EFFFFFFFFF018ALTKEY1WVVVVVVVVV382ALTKEY2".IX2144.2
032100     05 FILLER PIC X(53) VALUE                                    IX2144.2
032200          "CCCCCCCCCC020FFFFFFFFFF020ALTKEY1VVVVVVVVVV380ALTKEY2".IX2144.2
032300     05 FILLER PIC X(53) VALUE                                    IX2144.2
032400          "CCCCCCCCCD022FFFFFFFFFG022ALTKEY1VVVVVVVVVV380ALTKEY2".IX2144.2
032500     05 FILLER PIC X(53) VALUE                                    IX2144.2
032600          "CCCCCCCCDD024FFFFFFFFGG024ALTKEY1VVVVVVVVUU376ALTKEY2".IX2144.2
032700     05 FILLER PIC X(53) VALUE                                    IX2144.2
032800          "CCCCCCCDDD026FFFFFFFGGG026ALTKEY1VVVVVVVUUU374ALTKEY2".IX2144.2
032900     05 FILLER PIC X(53) VALUE                                    IX2144.2
033000          "CCCCCCDDDD028FFFFFFGGGG028ALTKEY1VVVVVVUUUU372ALTKEY2".IX2144.2
033100     05 FILLER PIC X(53) VALUE                                    IX2144.2
033200          "CCCCCDDDDD030FFFFFGGGGG030ALTKEY1VVVVVUUUUU370ALTKEY2".IX2144.2
033300     05 FILLER PIC X(53) VALUE                                    IX2144.2
033400          "CCCCDDDDDD032FFFFGGGGGG032ALTKEY1VVVVUUUUUU368ALTKEY2".IX2144.2
033500     05 FILLER PIC X(53) VALUE                                    IX2144.2
033600          "CCCDDDDDDD034FFFGGGGGGG034ALTKEY1VVVUUUUUUU366ALTKEY2".IX2144.2
033700     05 FILLER PIC X(53) VALUE                                    IX2144.2
033800          "CCDDDDDDDD036FFGGGGGGGG036ALTKEY1VVUUUUUUUU364ALTKEY2".IX2144.2
033900     05 FILLER PIC X(53) VALUE                                    IX2144.2
034000          "CDDDDDDDDD038FGGGGGGGGG038ALTKEY1VUUUUUUUUU362ALTKEY2".IX2144.2
034100     05 FILLER PIC X(53) VALUE                                    IX2144.2
034200          "DDDDDDDDDD040GGGGGGGGGG040ALTKEY1UUUUUUUUUU360ALTKEY2".IX2144.2
034300     05 FILLER PIC X(53) VALUE                                    IX2144.2
034400          "DDDDDDDDDE042GGGGGGGGGH042ALTKEY1UUUUUUUUUU360ALTKEY2".IX2144.2
034500     05 FILLER PIC X(53) VALUE                                    IX2144.2
034600          "DDDDDDDDEE044GGGGGGGGHH044ALTKEY1UUUUUUUUTT356ALTKEY2".IX2144.2
034700     05 FILLER PIC X(53) VALUE                                    IX2144.2
034800          "DDDDDDDEEE046GGGGGGGHHH046ALTKEY1UUUUUUUTTT354ALTKEY2".IX2144.2
034900     05 FILLER PIC X(53) VALUE                                    IX2144.2
035000          "DDDDDDEEEE048GGGGGGHHHH048ALTKEY1UUUUUUTTTT352ALTKEY2".IX2144.2
035100     05 FILLER PIC X(53) VALUE                                    IX2144.2
035200          "DDDDDEEEEE050GGGGGHHHHH050ALTKEY1UUUUUTTTTT350ALTKEY2".IX2144.2
035300     05 FILLER PIC X(53) VALUE                                    IX2144.2
035400          "DDDDEEEEEE052GGGGHHHHHH052ALTKEY1UUUUTTTTTT348ALTKEY2".IX2144.2
035500     05 FILLER PIC X(53) VALUE                                    IX2144.2
035600          "DDDEEEEEEE054GGGHHHHHHH054ALTKEY1UUUTTTTTTT346ALTKEY2".IX2144.2
035700     05 FILLER PIC X(53) VALUE                                    IX2144.2
035800          "DDEEEEEEEE056GGHHHHHHHH056ALTKEY1UUTTTTTTTT344ALTKEY2".IX2144.2
035900     05 FILLER PIC X(53) VALUE                                    IX2144.2
036000          "DEEEEEEEEE058GHHHHHHHHH058ALTKEY1UTTTTTTTTT342ALTKEY2".IX2144.2
036100     05 FILLER PIC X(53) VALUE                                    IX2144.2
036200          "EEEEEEEEEE060HHHHHHHHHH060ALTKEY1TTTTTTTTTT340ALTKEY2".IX2144.2
036300     05 FILLER PIC X(53) VALUE                                    IX2144.2
036400          "EEEEEEEEEF062HHHHHHHHHI062ALTKEY1TTTTTTTTTT340ALTKEY2".IX2144.2
036500     05 FILLER PIC X(53) VALUE                                    IX2144.2
036600          "EEEEEEEEFF064HHHHHHHHII064ALTKEY1TTTTTTTTSS336ALTKEY2".IX2144.2
036700     05 FILLER PIC X(53) VALUE                                    IX2144.2
036800          "EEEEEEEFFF066HHHHHHHIII066ALTKEY1TTTTTTTSSS334ALTKEY2".IX2144.2
036900     05 FILLER PIC X(53) VALUE                                    IX2144.2
037000          "EEEEEEFFFF068HHHHHHIIII068ALTKEY1TTTTTTSSSS332ALTKEY2".IX2144.2
037100     05 FILLER PIC X(53) VALUE                                    IX2144.2
037200          "EEEEEFFFFF070HHHHHIIIII070ALTKEY1TTTTTSSSSS330ALTKEY2".IX2144.2
037300     05 FILLER PIC X(53) VALUE                                    IX2144.2
037400          "EEEEFFFFFF072HHHHIIIIII072ALTKEY1TTTTSSSSSS328ALTKEY2".IX2144.2
037500     05 FILLER PIC X(53) VALUE                                    IX2144.2
037600          "EEEFFFFFFF074HHHIIIIIII074ALTKEY1TTTSSSSSSS326ALTKEY2".IX2144.2
037700     05 FILLER PIC X(53) VALUE                                    IX2144.2
037800          "EEFFFFFFFF076HHIIIIIIII076ALTKEY1TTSSSSSSSS324ALTKEY2".IX2144.2
037900     05 FILLER PIC X(53) VALUE                                    IX2144.2
038000          "EFFFFFFFFF078HIIIIIIIII078ALTKEY1TSSSSSSSSS322ALTKEY2".IX2144.2
038100     05 FILLER PIC X(53) VALUE                                    IX2144.2
038200          "FFFFFFFFFF080IIIIIIIIII080ALTKEY1SSSSSSSSSS320ALTKEY2".IX2144.2
038300     05 FILLER PIC X(53) VALUE                                    IX2144.2
038400          "FFFFFFFFFG082IIIIIIIIIJ082ALTKEY1SSSSSSSSSS320ALTKEY2".IX2144.2
038500     05 FILLER PIC X(53) VALUE                                    IX2144.2
038600          "FFFFFFFFGG084IIIIIIIIJJ084ALTKEY1SSSSSSSSRR316ALTKEY2".IX2144.2
038700     05 FILLER PIC X(53) VALUE                                    IX2144.2
038800          "FFFFFFFGGG086IIIIIIIJJJ086ALTKEY1SSSSSSSRRR314ALTKEY2".IX2144.2
038900     05 FILLER PIC X(53) VALUE                                    IX2144.2
039000          "FFFFFFGGGG088IIIIIIJJJJ088ALTKEY1SSSSSSRRRR312ALTKEY2".IX2144.2
039100     05 FILLER PIC X(53) VALUE                                    IX2144.2
039200          "FFFFFGGGGG090IIIIIJJJJJ090ALTKEY1SSSSSRRRRR310ALTKEY2".IX2144.2
039300     05 FILLER PIC X(53) VALUE                                    IX2144.2
039400          "FFFFGGGGGG092IIIIJJJJJJ092ALTKEY1SSSSRRRRRR308ALTKEY2".IX2144.2
039500     05 FILLER PIC X(53) VALUE                                    IX2144.2
039600          "FFFGGGGGGG094IIIJJJJJJJ094ALTKEY1SSSRRRRRRR306ALTKEY2".IX2144.2
039700     05 FILLER PIC X(53) VALUE                                    IX2144.2
039800          "FFGGGGGGGG096IIJJJJJJJJ096ALTKEY1SSRRRRRRRR304ALTKEY2".IX2144.2
039900     05 FILLER PIC X(53) VALUE                                    IX2144.2
040000          "FGGGGGGGGG098IJJJJJJJJJ098ALTKEY1SRRRRRRRRR302ALTKEY2".IX2144.2
040100     05 FILLER PIC X(53) VALUE                                    IX2144.2
040200          "GGGGGGGGGG100JJJJJJJJJJ100ALTKEY1RRRRRRRRRR300ALTKEY2".IX2144.2
040300     05 FILLER PIC X(53) VALUE                                    IX2144.2
040400          "RRRRSSSSSS352VVVVWWWWWW352ALTKEY1GGGGFFFFFF048ALTKEY2".IX2144.2
040500     05 FILLER PIC X(53) VALUE                                    IX2144.2
040600          "RRRSSSSSSS354VVVWWWWWWW354ALTKEY1GGGFFFFFFF046ALTKEY2".IX2144.2
040700     05 FILLER PIC X(53) VALUE                                    IX2144.2
040800          "RRSSSSSSSS356VVWWWWWWWW356ALTKEY1GGFFFFFFFF044ALTKEY2".IX2144.2
040900     05 FILLER PIC X(53) VALUE                                    IX2144.2
041000          "RSSSSSSSSS358VWWWWWWWWW358ALTKEY1GFFFFFFFFF042ALTKEY2".IX2144.2
041100     05 FILLER PIC X(53) VALUE                                    IX2144.2
041200          "SSSSSSSSSS360WWWWWWWWWW360ALTKEY1FFFFFFFFFF040ALTKEY2".IX2144.2
041300     05 FILLER PIC X(53) VALUE                                    IX2144.2
041400          "SSSSSSSSST362WWWWWWWWWX362ALTKEY1FFFFFFFFFF040ALTKEY2".IX2144.2
041500     05 FILLER PIC X(53) VALUE                                    IX2144.2
041600          "SSSSSSSSTT364WWWWWWWWXX364ALTKEY1FFFFFFFFEE036ALTKEY2".IX2144.2
041700     05 FILLER PIC X(53) VALUE                                    IX2144.2
041800          "SSSSSSSTTT366WWWWWWWXXX366ALTKEY1FFFFFFFEEE034ALTKEY2".IX2144.2
041900     05 FILLER PIC X(53) VALUE                                    IX2144.2
042000          "SSSSSSTTTT368WWWWWWXXXX368ALTKEY1FFFFFFEEEE032ALTKEY2".IX2144.2
042100     05 FILLER PIC X(53) VALUE                                    IX2144.2
042200          "SSSSSTTTTT370WWWWWXXXXX370ALTKEY1FFFFFEEEEE030ALTKEY2".IX2144.2
042300     05 FILLER PIC X(53) VALUE                                    IX2144.2
042400          "SSSSTTTTTT372WWWWXXXXXX372ALTKEY1FFFFEEEEEE028ALTKEY2".IX2144.2
042500     05 FILLER PIC X(53) VALUE                                    IX2144.2
042600          "SSSTTTTTTT374WWWXXXXXXX374ALTKEY1FFFEEEEEEE026ALTKEY2".IX2144.2
042700     05 FILLER PIC X(53) VALUE                                    IX2144.2
042800          "SSTTTTTTTT376WWXXXXXXXX376ALTKEY1FFEEEEEEEE024ALTKEY2".IX2144.2
042900     05 FILLER PIC X(53) VALUE                                    IX2144.2
043000          "STTTTTTTTT378WXXXXXXXXX378ALTKEY1FEEEEEEEEE022ALTKEY2".IX2144.2
043100     05 FILLER PIC X(53) VALUE                                    IX2144.2
043200          "TTTTTTTTTT380XXXXXXXXXX380ALTKEY1EEEEEEEEEE020ALTKEY2".IX2144.2
043300     05 FILLER PIC X(53) VALUE                                    IX2144.2
043400          "TTTTTTTTTU382XXXXXXXXXY382ALTKEY1EEEEEEEEEE020ALTKEY2".IX2144.2
043500     05 FILLER PIC X(53) VALUE                                    IX2144.2
043600          "TTTTTTTTUU384XXXXXXXXYY384ALTKEY1EEEEEEEEDD016ALTKEY2".IX2144.2
043700     05 FILLER PIC X(53) VALUE                                    IX2144.2
043800          "TTTTTTTUUU386XXXXXXXYYY386ALTKEY1EEEEEEEDDD014ALTKEY2".IX2144.2
043900     05 FILLER PIC X(53) VALUE                                    IX2144.2
044000          "TTTTTTUUUU388XXXXXXYYYY388ALTKEY1EEEEEEDDDD012ALTKEY2".IX2144.2
044100     05 FILLER PIC X(53) VALUE                                    IX2144.2
044200          "TTTTTUUUUU390XXXXXYYYYY390ALTKEY1EEEEEDDDDD010ALTKEY2".IX2144.2
044300     05 FILLER PIC X(53) VALUE                                    IX2144.2
044400          "TTTTUUUUUU392XXXXYYYYYY392ALTKEY1EEEEDDDDDD008ALTKEY2".IX2144.2
044500     05 FILLER PIC X(53) VALUE                                    IX2144.2
044600          "TTTUUUUUUU394XXXYYYYYYY394ALTKEY1EEEDDDDDDD006ALTKEY2".IX2144.2
044700     05 FILLER PIC X(53) VALUE                                    IX2144.2
044800          "TTUUUUUUUU396XXYYYYYYYY396ALTKEY1EEDDDDDDDD004ALTKEY2".IX2144.2
044900     05 FILLER PIC X(53) VALUE                                    IX2144.2
045000          "TUUUUUUUUU398XYYYYYYYYY398ALTKEY1EDDDDDDDDD002ALTKEY2".IX2144.2
045100     05 FILLER PIC X(53) VALUE                                    IX2144.2
045200          "UUUUUUUUUU400YYYYYYYYYY400ALTKEY1DDDDDDDDDD000ALTKEY2".IX2144.2
045300 01  RECORD-KEY-DATA   REDEFINES  RECORD-KEY-CONTENT.             IX2144.2
045400     05 KEY-VALUES                  OCCURS 75  TIMES.             IX2144.2
045500       10 RECKEY-VALUE           PICTURE X(13).                   IX2144.2
045600       10 ALTKEY1-VALUE          PICTURE X(20).                   IX2144.2
045700       10 ALTKEY2-VALUE          PICTURE X(20).                   IX2144.2
045800 01  INIT-FLAG                   PICTURE 9.                       IX2144.2
045900 01  HOLD-FILESTATUS-RECORD.                                      IX2144.2
046000     05 FILESTATUS               PICTURE XX  OCCURS 10 TIMES.     IX2144.2
046100 01  FILE-RECORD-INFORMATION-REC.                                 IX2144.2
046200     03 FILE-RECORD-INFO-SKELETON.                                IX2144.2
046300        05 FILLER                 PICTURE X(48)       VALUE       IX2144.2
046400             "FILE=      ,RECORD=      /0,RECNO=000000,UPDT=00".  IX2144.2
046500        05 FILLER                 PICTURE X(46)       VALUE       IX2144.2
046600             ",ODO=0000,PGM=     ,LRECL=000000,BLKSIZ  =0000".    IX2144.2
046700        05 FILLER                 PICTURE X(26)       VALUE       IX2144.2
046800             ",LFIL=000000,ORG=  ,LBLR= ".                        IX2144.2
046900        05 FILLER                 PICTURE X(37)       VALUE       IX2144.2
047000             ",RECKEY=                             ".             IX2144.2
047100        05 FILLER                 PICTURE X(38)       VALUE       IX2144.2
047200             ",ALTKEY1=                             ".            IX2144.2
047300        05 FILLER                 PICTURE X(38)       VALUE       IX2144.2
047400             ",ALTKEY2=                             ".            IX2144.2
047500        05 FILLER                 PICTURE X(7)        VALUE SPACE.IX2144.2
047600     03 FILE-RECORD-INFO          OCCURS  10  TIMES.              IX2144.2
047700        05 FILE-RECORD-INFO-P1-120.                               IX2144.2
047800           07 FILLER              PIC X(5).                       IX2144.2
047900           07 XFILE-NAME           PIC X(6).                      IX2144.2
048000           07 FILLER              PIC X(8).                       IX2144.2
048100           07 XRECORD-NAME         PIC X(6).                      IX2144.2
048200           07 FILLER              PIC X(1).                       IX2144.2
048300           07 REELUNIT-NUMBER     PIC 9(1).                       IX2144.2
048400           07 FILLER              PIC X(7).                       IX2144.2
048500           07 XRECORD-NUMBER       PIC 9(6).                      IX2144.2
048600           07 FILLER              PIC X(6).                       IX2144.2
048700           07 UPDATE-NUMBER       PIC 9(2).                       IX2144.2
048800           07 FILLER              PIC X(5).                       IX2144.2
048900           07 ODO-NUMBER          PIC 9(4).                       IX2144.2
049000           07 FILLER              PIC X(5).                       IX2144.2
049100           07 XPROGRAM-NAME        PIC X(5).                      IX2144.2
049200           07 FILLER              PIC X(7).                       IX2144.2
049300           07 XRECORD-LENGTH       PIC 9(6).                      IX2144.2
049400           07 FILLER              PIC X(7).                       IX2144.2
049500           07 CHARS-OR-RECORDS    PIC X(2).                       IX2144.2
049600           07 FILLER              PIC X(1).                       IX2144.2
049700           07 XBLOCK-SIZE          PIC 9(4).                      IX2144.2
049800           07 FILLER              PIC X(6).                       IX2144.2
049900           07 RECORDS-IN-FILE     PIC 9(6).                       IX2144.2
050000           07 FILLER              PIC X(5).                       IX2144.2
050100           07 XFILE-ORGANIZATION   PIC X(2).                      IX2144.2
050200           07 FILLER              PIC X(6).                       IX2144.2
050300           07 XLABEL-TYPE          PIC X(1).                      IX2144.2
050400        05 FILE-RECORD-INFO-P121-240.                             IX2144.2
050500           07 FILLER              PIC X(8).                       IX2144.2
050600           07 XRECORD-KEY          PIC X(29).                     IX2144.2
050700           07 FILLER              PIC X(9).                       IX2144.2
050800           07 ALTERNATE-KEY1      PIC X(29).                      IX2144.2
050900           07 FILLER              PIC X(9).                       IX2144.2
051000           07 ALTERNATE-KEY2      PIC X(29).                      IX2144.2
051100           07 FILLER              PIC X(7).                       IX2144.2
051200 01  TEST-RESULTS.                                                IX2144.2
051300     02 FILLER                   PIC X      VALUE SPACE.          IX2144.2
051400     02 FEATURE                  PIC X(20)  VALUE SPACE.          IX2144.2
051500     02 FILLER                   PIC X      VALUE SPACE.          IX2144.2
051600     02 P-OR-F                   PIC X(5)   VALUE SPACE.          IX2144.2
051700     02 FILLER                   PIC X      VALUE SPACE.          IX2144.2
051800     02  PAR-NAME.                                                IX2144.2
051900       03 FILLER                 PIC X(19)  VALUE SPACE.          IX2144.2
052000       03  PARDOT-X              PIC X      VALUE SPACE.          IX2144.2
052100       03 DOTVALUE               PIC 99     VALUE ZERO.           IX2144.2
052200     02 FILLER                   PIC X(8)   VALUE SPACE.          IX2144.2
052300     02 RE-MARK                  PIC X(61).                       IX2144.2
052400 01  TEST-COMPUTED.                                               IX2144.2
052500     02 FILLER                   PIC X(30)  VALUE SPACE.          IX2144.2
052600     02 FILLER                   PIC X(17)  VALUE                 IX2144.2
052700            "       COMPUTED=".                                   IX2144.2
052800     02 COMPUTED-X.                                               IX2144.2
052900     03 COMPUTED-A               PIC X(20)  VALUE SPACE.          IX2144.2
053000     03 COMPUTED-N               REDEFINES COMPUTED-A             IX2144.2
053100                                 PIC -9(9).9(9).                  IX2144.2
053200     03 COMPUTED-0V18 REDEFINES COMPUTED-A   PIC -.9(18).         IX2144.2
053300     03 COMPUTED-4V14 REDEFINES COMPUTED-A   PIC -9(4).9(14).     IX2144.2
053400     03 COMPUTED-14V4 REDEFINES COMPUTED-A   PIC -9(14).9(4).     IX2144.2
053500     03       CM-18V0 REDEFINES COMPUTED-A.                       IX2144.2
053600         04 COMPUTED-18V0                    PIC -9(18).          IX2144.2
053700         04 FILLER                           PIC X.               IX2144.2
053800     03 FILLER PIC X(50) VALUE SPACE.                             IX2144.2
053900 01  TEST-CORRECT.                                                IX2144.2
054000     02 FILLER PIC X(30) VALUE SPACE.                             IX2144.2
054100     02 FILLER PIC X(17) VALUE "       CORRECT =".                IX2144.2
054200     02 CORRECT-X.                                                IX2144.2
054300     03 CORRECT-A                  PIC X(20) VALUE SPACE.         IX2144.2
054400     03 CORRECT-N    REDEFINES CORRECT-A     PIC -9(9).9(9).      IX2144.2
054500     03 CORRECT-0V18 REDEFINES CORRECT-A     PIC -.9(18).         IX2144.2
054600     03 CORRECT-4V14 REDEFINES CORRECT-A     PIC -9(4).9(14).     IX2144.2
054700     03 CORRECT-14V4 REDEFINES CORRECT-A     PIC -9(14).9(4).     IX2144.2
054800     03      CR-18V0 REDEFINES CORRECT-A.                         IX2144.2
054900         04 CORRECT-18V0                     PIC -9(18).          IX2144.2
055000         04 FILLER                           PIC X.               IX2144.2
055100     03 FILLER PIC X(2) VALUE SPACE.                              IX2144.2
055200     03 COR-ANSI-REFERENCE             PIC X(48) VALUE SPACE.     IX2144.2
055300 01  CCVS-C-1.                                                    IX2144.2
055400     02 FILLER  PIC IS X(99)    VALUE IS " FEATURE              PAIX2144.2
055500-    "SS  PARAGRAPH-NAME                                          IX2144.2
055600-    "       REMARKS".                                            IX2144.2
055700     02 FILLER                     PIC X(20)    VALUE SPACE.      IX2144.2
055800 01  CCVS-C-2.                                                    IX2144.2
055900     02 FILLER                     PIC X        VALUE SPACE.      IX2144.2
056000     02 FILLER                     PIC X(6)     VALUE "TESTED".   IX2144.2
056100     02 FILLER                     PIC X(15)    VALUE SPACE.      IX2144.2
056200     02 FILLER                     PIC X(4)     VALUE "FAIL".     IX2144.2
056300     02 FILLER                     PIC X(94)    VALUE SPACE.      IX2144.2
056400 01  REC-SKL-SUB                   PIC 9(2)     VALUE ZERO.       IX2144.2
056500 01  REC-CT                        PIC 99       VALUE ZERO.       IX2144.2
056600 01  DELETE-COUNTER                PIC 999      VALUE ZERO.       IX2144.2
056700 01  ERROR-COUNTER                 PIC 999      VALUE ZERO.       IX2144.2
056800 01  INSPECT-COUNTER               PIC 999      VALUE ZERO.       IX2144.2
056900 01  PASS-COUNTER                  PIC 999      VALUE ZERO.       IX2144.2
057000 01  TOTAL-ERROR                   PIC 999      VALUE ZERO.       IX2144.2
057100 01  ERROR-HOLD                    PIC 999      VALUE ZERO.       IX2144.2
057200 01  DUMMY-HOLD                    PIC X(120)   VALUE SPACE.      IX2144.2
057300 01  RECORD-COUNT                  PIC 9(5)     VALUE ZERO.       IX2144.2
057400 01  ANSI-REFERENCE                PIC X(48)    VALUE SPACES.     IX2144.2
057500 01  CCVS-H-1.                                                    IX2144.2
057600     02  FILLER                    PIC X(39)    VALUE SPACES.     IX2144.2
057700     02  FILLER                    PIC X(42)    VALUE             IX2144.2
057800     "OFFICIAL COBOL COMPILER VALIDATION SYSTEM".                 IX2144.2
057900     02  FILLER                    PIC X(39)    VALUE SPACES.     IX2144.2
058000 01  CCVS-H-2A.                                                   IX2144.2
058100   02  FILLER                        PIC X(40)  VALUE SPACE.      IX2144.2
058200   02  FILLER                        PIC X(7)   VALUE "CCVS85 ".  IX2144.2
058300   02  FILLER                        PIC XXXX   VALUE             IX2144.2
058400     "4.2 ".                                                      IX2144.2
058500   02  FILLER                        PIC X(28)  VALUE             IX2144.2
058600            " COPY - NOT FOR DISTRIBUTION".                       IX2144.2
058700   02  FILLER                        PIC X(41)  VALUE SPACE.      IX2144.2
058800                                                                  IX2144.2
058900 01  CCVS-H-2B.                                                   IX2144.2
059000   02  FILLER                        PIC X(15)  VALUE             IX2144.2
059100            "TEST RESULT OF ".                                    IX2144.2
059200   02  TEST-ID                       PIC X(9).                    IX2144.2
059300   02  FILLER                        PIC X(4)   VALUE             IX2144.2
059400            " IN ".                                               IX2144.2
059500   02  FILLER                        PIC X(12)  VALUE             IX2144.2
059600     " HIGH       ".                                              IX2144.2
059700   02  FILLER                        PIC X(22)  VALUE             IX2144.2
059800            " LEVEL VALIDATION FOR ".                             IX2144.2
059900   02  FILLER                        PIC X(58)  VALUE             IX2144.2
060000     "ON-SITE VALIDATION, NATIONAL INSTITUTE OF STD & TECH.     ".IX2144.2
060100 01  CCVS-H-3.                                                    IX2144.2
060200     02  FILLER                      PIC X(34)  VALUE             IX2144.2
060300            " FOR OFFICIAL USE ONLY    ".                         IX2144.2
060400     02  FILLER                      PIC X(58)  VALUE             IX2144.2
060500     "COBOL 85 VERSION 4.2, Apr  1993 SSVG                      ".IX2144.2
060600     02  FILLER                      PIC X(28)  VALUE             IX2144.2
060700            "  COPYRIGHT   1985 ".                                IX2144.2
060800 01  CCVS-E-1.                                                    IX2144.2
060900     02 FILLER                       PIC X(52)  VALUE SPACE.      IX2144.2
061000     02 FILLER  PIC X(14) VALUE IS "END OF TEST-  ".              IX2144.2
061100     02 ID-AGAIN                     PIC X(9).                    IX2144.2
061200     02 FILLER                       PIC X(45)  VALUE SPACES.     IX2144.2
061300 01  CCVS-E-2.                                                    IX2144.2
061400     02  FILLER                      PIC X(31)  VALUE SPACE.      IX2144.2
061500     02  FILLER                      PIC X(21)  VALUE SPACE.      IX2144.2
061600     02 CCVS-E-2-2.                                               IX2144.2
061700         03 ERROR-TOTAL              PIC XXX    VALUE SPACE.      IX2144.2
061800         03 FILLER                   PIC X      VALUE SPACE.      IX2144.2
061900         03 ENDER-DESC               PIC X(44)  VALUE             IX2144.2
062000            "ERRORS ENCOUNTERED".                                 IX2144.2
062100 01  CCVS-E-3.                                                    IX2144.2
062200     02  FILLER                      PIC X(22)  VALUE             IX2144.2
062300            " FOR OFFICIAL USE ONLY".                             IX2144.2
062400     02  FILLER                      PIC X(12)  VALUE SPACE.      IX2144.2
062500     02  FILLER                      PIC X(58)  VALUE             IX2144.2
062600     "ON-SITE VALIDATION, NATIONAL INSTITUTE OF STD & TECH.     ".IX2144.2
062700     02  FILLER                      PIC X(13)  VALUE SPACE.      IX2144.2
062800     02 FILLER                       PIC X(15)  VALUE             IX2144.2
062900             " COPYRIGHT 1985".                                   IX2144.2
063000 01  CCVS-E-4.                                                    IX2144.2
063100     02 CCVS-E-4-1                   PIC XXX    VALUE SPACE.      IX2144.2
063200     02 FILLER                       PIC X(4)   VALUE " OF ".     IX2144.2
063300     02 CCVS-E-4-2                   PIC XXX    VALUE SPACE.      IX2144.2
063400     02 FILLER                       PIC X(40)  VALUE             IX2144.2
063500      "  TESTS WERE EXECUTED SUCCESSFULLY".                       IX2144.2
063600 01  XXINFO.                                                      IX2144.2
063700     02 FILLER                       PIC X(19)  VALUE             IX2144.2
063800            "*** INFORMATION ***".                                IX2144.2
063900     02 INFO-TEXT.                                                IX2144.2
064000       04 FILLER                     PIC X(8)   VALUE SPACE.      IX2144.2
064100       04 XXCOMPUTED                 PIC X(20).                   IX2144.2
064200       04 FILLER                     PIC X(5)   VALUE SPACE.      IX2144.2
064300       04 XXCORRECT                  PIC X(20).                   IX2144.2
064400     02 INF-ANSI-REFERENCE           PIC X(48).                   IX2144.2
064500 01  HYPHEN-LINE.                                                 IX2144.2
064600     02 FILLER  PIC IS X VALUE IS SPACE.                          IX2144.2
064700     02 FILLER  PIC IS X(65)    VALUE IS "************************IX2144.2
064800-    "*****************************************".                 IX2144.2
064900     02 FILLER  PIC IS X(54)    VALUE IS "************************IX2144.2
065000-    "******************************".                            IX2144.2
065100 01  CCVS-PGM-ID                     PIC X(9)   VALUE             IX2144.2
065200     "IX214A".                                                    IX2144.2
065300 PROCEDURE DIVISION.                                              IX2144.2
065400 CCVS1 SECTION.                                                   IX2144.2
065500 OPEN-FILES.                                                      IX2144.2
066600     OPEN    OUTPUT PRINT-FILE.                                   IX2144.2
066700     MOVE  CCVS-PGM-ID TO TEST-ID. MOVE CCVS-PGM-ID TO ID-AGAIN.  IX2144.2
066800     MOVE    SPACE TO TEST-RESULTS.                               IX2144.2
066900     PERFORM HEAD-ROUTINE THRU COLUMN-NAMES-ROUTINE.              IX2144.2
067000     MOVE    ZERO TO REC-SKL-SUB.                                 IX2144.2
067100     PERFORM CCVS-INIT-FILE 9 TIMES.                              IX2144.2
067200 CCVS-INIT-FILE.                                                  IX2144.2
067300     ADD     1 TO REC-SKL-SUB.                                    IX2144.2
067400     MOVE    FILE-RECORD-INFO-SKELETON                            IX2144.2
067500          TO FILE-RECORD-INFO (REC-SKL-SUB).                      IX2144.2
067600 CCVS-INIT-EXIT.                                                  IX2144.2
067700     GO TO CCVS1-EXIT.                                            IX2144.2
067800 CLOSE-FILES.                                                     IX2144.2
069100     PERFORM END-ROUTINE THRU END-ROUTINE-13. CLOSE PRINT-FILE.   IX2144.2
069200 TERMINATE-CCVS.                                                  IX2144.2
069500     STOP     RUN.                                                IX2144.2
069600 INSPT. MOVE "INSPT" TO P-OR-F. ADD 1 TO INSPECT-COUNTER.         IX2144.2
069700 PASS.  MOVE "PASS " TO P-OR-F.  ADD 1 TO PASS-COUNTER.           IX2144.2
069800 FAIL.  MOVE "FAIL*" TO P-OR-F.  ADD 1 TO ERROR-COUNTER.          IX2144.2
069900 DE-LETE.  MOVE "*****" TO P-OR-F.  ADD 1 TO DELETE-COUNTER.      IX2144.2
070000     MOVE "****TEST DELETED****" TO RE-MARK.                      IX2144.2
070100 PRINT-DETAIL.                                                    IX2144.2
070200     IF REC-CT NOT EQUAL TO ZERO                                  IX2144.2
070300             MOVE "." TO PARDOT-X                                 IX2144.2
070400             MOVE REC-CT TO DOTVALUE.                             IX2144.2
070500     MOVE     TEST-RESULTS TO PRINT-REC. PERFORM WRITE-LINE.      IX2144.2
070600     IF P-OR-F EQUAL TO "FAIL*"  PERFORM WRITE-LINE               IX2144.2
070700        PERFORM FAIL-ROUTINE THRU FAIL-ROUTINE-EX                 IX2144.2
070800          ELSE PERFORM BAIL-OUT THRU BAIL-OUT-EX.                 IX2144.2
070900     MOVE SPACE TO P-OR-F. MOVE SPACE TO COMPUTED-X.              IX2144.2
071000     MOVE SPACE TO CORRECT-X.                                     IX2144.2
071100     IF     REC-CT EQUAL TO ZERO  MOVE SPACE TO PAR-NAME.         IX2144.2
071200     MOVE     SPACE TO RE-MARK.                                   IX2144.2
071300 HEAD-ROUTINE.                                                    IX2144.2
071400     MOVE CCVS-H-1  TO DUMMY-RECORD. PERFORM WRITE-LINE 2 TIMES.  IX2144.2
071500     MOVE CCVS-H-2A TO DUMMY-RECORD. PERFORM WRITE-LINE 2 TIMES.  IX2144.2
071600     MOVE CCVS-H-2B TO DUMMY-RECORD. PERFORM WRITE-LINE 3 TIMES.  IX2144.2
071700     MOVE CCVS-H-3  TO DUMMY-RECORD. PERFORM WRITE-LINE 3 TIMES.  IX2144.2
071800 COLUMN-NAMES-ROUTINE.                                            IX2144.2
071900     MOVE CCVS-C-1 TO DUMMY-RECORD. PERFORM WRITE-LINE.           IX2144.2
072000     MOVE CCVS-C-2 TO DUMMY-RECORD. PERFORM WRITE-LINE 2 TIMES.   IX2144.2
072100     MOVE HYPHEN-LINE TO DUMMY-RECORD. PERFORM WRITE-LINE.        IX2144.2
072200 END-ROUTINE.                                                     IX2144.2
072300     MOVE HYPHEN-LINE TO DUMMY-RECORD. PERFORM WRITE-LINE 5 TIMES.IX2144.2
072400 END-RTN-EXIT.                                                    IX2144.2
072500     MOVE CCVS-E-1 TO DUMMY-RECORD. PERFORM WRITE-LINE 2 TIMES.   IX2144.2
072600 END-ROUTINE-1.                                                   IX2144.2
072700      ADD ERROR-COUNTER TO ERROR-HOLD ADD INSPECT-COUNTER TO      IX2144.2
072800      ERROR-HOLD. ADD DELETE-COUNTER TO ERROR-HOLD.               IX2144.2
072900      ADD PASS-COUNTER TO ERROR-HOLD.                             IX2144.2
073000*                                                                         
073100      MOVE PASS-COUNTER TO CCVS-E-4-1.                            IX2144.2
073200      MOVE ERROR-HOLD TO CCVS-E-4-2.                              IX2144.2
073300      MOVE CCVS-E-4 TO CCVS-E-2-2.                                IX2144.2
073400      MOVE CCVS-E-2 TO DUMMY-RECORD PERFORM WRITE-LINE.           IX2144.2
073500  END-ROUTINE-12.                                                 IX2144.2
073600      MOVE "TEST(S) FAILED" TO ENDER-DESC.                        IX2144.2
073700     IF       ERROR-COUNTER IS EQUAL TO ZERO                      IX2144.2
073800         MOVE "NO " TO ERROR-TOTAL                                IX2144.2
073900         ELSE                                                     IX2144.2
074000         MOVE ERROR-COUNTER TO ERROR-TOTAL.                       IX2144.2
074100     MOVE     CCVS-E-2 TO DUMMY-RECORD.                           IX2144.2
074200     PERFORM WRITE-LINE.                                          IX2144.2
074300 END-ROUTINE-13.                                                  IX2144.2
074400     IF DELETE-COUNTER IS EQUAL TO ZERO                           IX2144.2
074500         MOVE "NO " TO ERROR-TOTAL  ELSE                          IX2144.2
074600         MOVE DELETE-COUNTER TO ERROR-TOTAL.                      IX2144.2
074700     MOVE "TEST(S) DELETED     " TO ENDER-DESC.                   IX2144.2
074800     MOVE CCVS-E-2 TO DUMMY-RECORD. PERFORM WRITE-LINE.           IX2144.2
074900      IF   INSPECT-COUNTER EQUAL TO ZERO                          IX2144.2
075000          MOVE "NO " TO ERROR-TOTAL                               IX2144.2
075100      ELSE MOVE INSPECT-COUNTER TO ERROR-TOTAL.                   IX2144.2
075200      MOVE "TEST(S) REQUIRE INSPECTION" TO ENDER-DESC.            IX2144.2
075300      MOVE CCVS-E-2 TO DUMMY-RECORD. PERFORM WRITE-LINE.          IX2144.2
075400     MOVE CCVS-E-3 TO DUMMY-RECORD. PERFORM WRITE-LINE.           IX2144.2
075500 WRITE-LINE.                                                      IX2144.2
075600     ADD 1 TO RECORD-COUNT.                                       IX2144.2
075700     IF RECORD-COUNT GREATER 42                                   IX2144.2
075800         MOVE DUMMY-RECORD TO DUMMY-HOLD                          IX2144.2
075900         MOVE SPACE TO DUMMY-RECORD                               IX2144.2
076000         WRITE DUMMY-RECORD AFTER ADVANCING PAGE                  IX2144.2
076100         MOVE CCVS-H-1  TO DUMMY-RECORD PERFORM WRT-LN 2 TIMES    IX2144.2
076200         MOVE CCVS-H-2A TO DUMMY-RECORD PERFORM WRT-LN 2 TIMES    IX2144.2
076300         MOVE CCVS-H-2B TO DUMMY-RECORD PERFORM WRT-LN 3 TIMES    IX2144.2
076400         MOVE CCVS-H-3  TO DUMMY-RECORD PERFORM WRT-LN 3 TIMES    IX2144.2
076500         MOVE CCVS-C-1  TO DUMMY-RECORD PERFORM WRT-LN            IX2144.2
076600         MOVE CCVS-C-2  TO DUMMY-RECORD PERFORM WRT-LN            IX2144.2
076700         MOVE HYPHEN-LINE TO DUMMY-RECORD PERFORM WRT-LN          IX2144.2
076800         MOVE DUMMY-HOLD TO DUMMY-RECORD                          IX2144.2
076900         MOVE ZERO TO RECORD-COUNT.                               IX2144.2
077000     PERFORM WRT-LN.                                              IX2144.2
077100 WRT-LN.                                                          IX2144.2
077200     WRITE    DUMMY-RECORD AFTER ADVANCING 1 LINES.               IX2144.2
077300     MOVE SPACE TO DUMMY-RECORD.                                  IX2144.2
077400 BLANK-LINE-PRINT.                                                IX2144.2
077500     PERFORM WRT-LN.                                              IX2144.2
077600 FAIL-ROUTINE.                                                    IX2144.2
077700     IF     COMPUTED-X NOT EQUAL TO SPACE                         IX2144.2
077800            GO TO   FAIL-ROUTINE-WRITE.                           IX2144.2
077900     IF     CORRECT-X NOT EQUAL TO SPACE GO TO FAIL-ROUTINE-WRITE.IX2144.2
078000     MOVE   ANSI-REFERENCE TO INF-ANSI-REFERENCE.                 IX2144.2
078100     MOVE  "NO FURTHER INFORMATION, SEE PROGRAM." TO INFO-TEXT.   IX2144.2
078200     MOVE   XXINFO TO DUMMY-RECORD. PERFORM WRITE-LINE 2 TIMES.   IX2144.2
078300     MOVE   SPACES TO INF-ANSI-REFERENCE.                         IX2144.2
078400     GO TO  FAIL-ROUTINE-EX.                                      IX2144.2
078500 FAIL-ROUTINE-WRITE.                                              IX2144.2
078600     MOVE   TEST-COMPUTED TO PRINT-REC PERFORM WRITE-LINE         IX2144.2
078700     MOVE   ANSI-REFERENCE TO COR-ANSI-REFERENCE.                 IX2144.2
078800     MOVE   TEST-CORRECT TO PRINT-REC PERFORM WRITE-LINE 2 TIMES. IX2144.2
078900     MOVE   SPACES TO COR-ANSI-REFERENCE.                         IX2144.2
079000 FAIL-ROUTINE-EX. EXIT.                                           IX2144.2
079100 BAIL-OUT.                                                        IX2144.2
079200     IF     COMPUTED-A NOT EQUAL TO SPACE GO TO BAIL-OUT-WRITE.   IX2144.2
079300     IF     CORRECT-A EQUAL TO SPACE GO TO BAIL-OUT-EX.           IX2144.2
079400 BAIL-OUT-WRITE.                                                  IX2144.2
079500     MOVE CORRECT-A TO XXCORRECT. MOVE COMPUTED-A TO XXCOMPUTED.  IX2144.2
079600     MOVE   ANSI-REFERENCE TO INF-ANSI-REFERENCE.                 IX2144.2
079700     MOVE   XXINFO TO DUMMY-RECORD. PERFORM WRITE-LINE 2 TIMES.   IX2144.2
079800     MOVE   SPACES TO INF-ANSI-REFERENCE.                         IX2144.2
079900 BAIL-OUT-EX. EXIT.                                               IX2144.2
080000 CCVS1-EXIT.                                                      IX2144.2
080100     EXIT.                                                        IX2144.2
080200 SECT-0001-IX214A SECTION.                                        IX2144.2
080300 WRITE-INT-GF-01.                                                 IX2144.2
080400     OPEN    OUTPUT IX-FS1.                                       IX2144.2
080500     MOVE    "IX-FS1" TO XFILE-NAME           (1).                IX2144.2
080600     MOVE    "R1-F-G" TO  XRECORD-NAME        (1).                IX2144.2
080700     MOVE    ZERO     TO  XRECORD-NUMBER      (1).                IX2144.2
080800     MOVE    "RC"     TO  CHARS-OR-RECORDS    (1).                IX2144.2
080900     MOVE "IX214A"    TO  XPROGRAM-NAME       (1).                IX2144.2
081000     MOVE    240      TO  XRECORD-LENGTH      (1).                IX2144.2
081100     MOVE    001      TO  XBLOCK-SIZE         (1).                IX2144.2
081200     MOVE    "IX"     TO  XFILE-ORGANIZATION  (1).                IX2144.2
081300     MOVE    "S"      TO  XLABEL-TYPE         (1).                IX2144.2
081400     MOVE    200      TO  RECORDS-IN-FILE     (1).                IX2144.2
081500     MOVE    "CREATE-FILE-FS1" TO FEATURE.                        IX2144.2
081600     MOVE    "WRITE-TEST-GF-01" TO PAR-NAME.                      IX2144.2
081700     MOVE    ZERO TO KEYSUB.                                      IX2144.2
081800     MOVE    ZERO TO INVKEY-COUNTER.                              IX2144.2
081900 WRITE-INIT-GF-01-01.                                             IX2144.2
082000     PERFORM WRITE-TEST-GF-01-R1 50 TIMES.                        IX2144.2
082100     PERFORM WRITE-TEST-GF-01-R2 125 TIMES.                       IX2144.2
082200     PERFORM WRITE-TEST-GF-01-R1 25 TIMES.                        IX2144.2
082300     GO TO   WRITE-TEST-GF-01.                                    IX2144.2
082400 WRITE-TEST-GF-01-R1.                                             IX2144.2
082500     ADD     001  TO XRECORD-NUMBER (1).                          IX2144.2
082600     ADD     001  TO  KEYSUB.                                     IX2144.2
082700     MOVE    RECKEY-VALUE (KEYSUB) TO FS1-RECKEY-1-13.            IX2144.2
082800     MOVE    ALTKEY1-VALUE (KEYSUB) TO FS1-ALTKEY1-1-20.          IX2144.2
082900     MOVE    ALTKEY2-VALUE (KEYSUB) TO FS1-ALTKEY2-1-20.          IX2144.2
083000     MOVE    WRK-FS1-RECKEY   TO    XRECORD-KEY (1).              IX2144.2
083100     MOVE    WRK-FS1-ALTKEY1  TO ALTERNATE-KEY1 (1).              IX2144.2
083200     MOVE    WRK-FS1-ALTKEY2  TO ALTERNATE-KEY2 (1).              IX2144.2
083300     MOVE    FILE-RECORD-INFO (1)  TO IX-FS1R1-F-G-240.           IX2144.2
083400     WRITE   IX-FS1R1-F-G-240                                     IX2144.2
083500                        INVALID KEY ADD 001 TO INVKEY-COUNTER.    IX2144.2
083600     ADD     001 TO  EXCUT-COUNTER-06V00.                         IX2144.2
083700 WRITE-TEST-GF-01-R2.                                             IX2144.2
083800     ADD     002  TO FS1-RECKEY-11-13.                            IX2144.2
083900     ADD     002 TO FS1-ALTKEY1-11-13.                            IX2144.2
084000     SUBTRACT  002 FROM FS1-ALTKEY2-11-13.                        IX2144.2
084100     ADD     001  TO XRECORD-NUMBER (1).                          IX2144.2
084200     MOVE    WRK-FS1-RECKEY   TO    XRECORD-KEY (1).              IX2144.2
084300     MOVE    WRK-FS1-ALTKEY1  TO ALTERNATE-KEY1 (1).              IX2144.2
084400     MOVE    WRK-FS1-ALTKEY2  TO ALTERNATE-KEY2 (1).              IX2144.2
084500     MOVE    FILE-RECORD-INFO (1) TO IX-FS1R1-F-G-240.            IX2144.2
084600     WRITE   IX-FS1R1-F-G-240                                     IX2144.2
084700                        INVALID KEY ADD 001 TO INVKEY-COUNTER.    IX2144.2
084800     ADD     001 TO EXCUT-COUNTER-06V00.                          IX2144.2
084900 WRITE-TEST-GF-01.                                                IX2144.2
085000     SUBTRACT INVKEY-COUNTER FROM EXCUT-COUNTER-06V00             IX2144.2
085100             GIVING RECORDS-WRITTEN.                              IX2144.2
085200     MOVE    200  TO CORRECT-18V0.                                IX2144.2
085300     MOVE    RECORDS-WRITTEN TO COMPUTED-18V0.                    IX2144.2
085400     IF      RECORDS-WRITTEN EQUAL TO 200                         IX2144.2
085500             PERFORM  PASS                                        IX2144.2
085600             ELSE                                                 IX2144.2
085700             PERFORM FAIL.                                        IX2144.2
085800     MOVE    "RECORDS IN FILE" TO RE-MARK.                        IX2144.2
085900     GO TO   WRITE-TEST-GF-01-END.                                IX2144.2
086000 WRITE-DELETE-GF-01.                                              IX2144.2
086100     PERFORM DE-LETE.                                             IX2144.2
086200 WRITE-TEST-GF-01-END.                                            IX2144.2
086300     PERFORM  PRINT-DETAIL.                                       IX2144.2
086400     CLOSE   IX-FS1.                                              IX2144.2
086500                                                                  IX2144.2
086600                                                                  IX2144.2
086700 READ-INIT-F1-01.                                                 IX2144.2
086800     OPEN    INPUT  IX-FS1.                                       IX2144.2
086900     MOVE    "READ-TEST-F1-01" TO PAR-NAME.                       IX2144.2
087000     MOVE    "READ FILE IX-FS1" TO FEATURE.                       IX2144.2
087100     MOVE    ZERO TO EXCUT-COUNTER-06V00.                         IX2144.2
087200     MOVE    02   TO RECKEY-NUM.                                  IX2144.2
087300     MOVE    002 TO ALTKEY1-NUM.                                  IX2144.2
087400 READ-TEST-F1-01-R1.                                              IX2144.2
087500     READ    IX-FS1  AT END  GO TO READ-TEST-F1-01.               IX2144.2
087600     MOVE    IX-REC-KEY-AREA TO WRK-FS1-RECKEY.                   IX2144.2
087700     MOVE    IX-ALT-KEY1-AREA TO WRK-FS1-ALTKEY1.                 IX2144.2
087800     IF      FS1-RECKEY-11-13 EQUAL TO RECKEY-NUM                 IX2144.2
087900             AND FS1-ALTKEY1-11-13 EQUAL TO ALTKEY1-NUM           IX2144.2
088000             NEXT SENTENCE                                        IX2144.2
088100             ELSE                                                 IX2144.2
088200             PERFORM  READ-FAIL-F1-01.                            IX2144.2
088300     IF      EXCUT-COUNTER-06V00 NOT LESS THAN 200                IX2144.2
088400             GO TO READ-TEST-F1-01.                               IX2144.2
088500     ADD     001  TO EXCUT-COUNTER-06V00.                         IX2144.2
088600     ADD     002  TO RECKEY-NUM                                   IX2144.2
088700     ADD     002  TO ALTKEY1-NUM.                                 IX2144.2
088800     GO TO   READ-TEST-F1-01-R1.                                  IX2144.2
088900 READ-TEST-F1-01.                                                 IX2144.2
089000     IF      EXCUT-COUNTER-06V00 EQUAL TO 200                     IX2144.2
089100             PERFORM PASS ELSE                                    IX2144.2
089200             PERFORM FAIL.                                        IX2144.2
089300     MOVE    EXCUT-COUNTER-06V00 TO  COMPUTED-18V0.               IX2144.2
089400     MOVE    200  TO  CORRECT-18V0.                               IX2144.2
089500     MOVE    "RECORDS IN FILE" TO RE-MARK.                        IX2144.2
089600     GO TO   READ-WRITE-F1-01.                                    IX2144.2
089700 READ-FAIL-F1-01.                                                 IX2144.2
089800     PERFORM FAIL.                                                IX2144.2
089900     MOVE    FS1-RECKEY-11-13  TO COMPUTED-18V0.                  IX2144.2
090000     MOVE    RECKEY-NUM  TO CORRECT-18V0.                         IX2144.2
090100     MOVE    "NUM EMBEDDED IN RECKEY"  TO RE-MARK.                IX2144.2
090200 READ-WRITE-F1-01.                                                IX2144.2
090300     PERFORM PRINT-DETAIL.                                        IX2144.2
090400     CLOSE   IX-FS1.                                              IX2144.2
090500 START-INIT.                                                      IX2144.2
090600     OPEN    INPUT  IX-FS1.                                       IX2144.2
090700     MOVE    "START NLT RECKEY " TO FEATURE.                      IX2144.2
090800     MOVE "START-TEST-GF-01" TO PAR-NAME.                         IX2144.2
090900     MOVE    SPACE TO HOLD-FILESTATUS-RECORD.                     IX2144.2
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
093300*                                                                         
093400*                                                                         
093500*                                                                         
093600*                                                                         
093700*                                                                         
093800*                                                                         
093900*                                                                         
094000*                                                                         
094100*                                                                         
094200*                                                                         
094300 START-INIT-GF-01.                                                IX2144.2
094400     PERFORM START-INITIALIZE-RECORD.                             IX2144.2
094500     IF      INIT-FLAG NOT EQUAL ZERO                             IX2144.2
094600             PERFORM START-INIT-ERROR                             IX2144.2
094700             GO TO START-DELETE-GF-01.                            IX2144.2
094800     MOVE    "CCCCCCCCCD022" TO FS1-RECKEY-1-13.                  IX2144.2
094900     MOVE    "EEEEEFFFFF022ALTKEY1"  TO FS1-ALTKEY1-1-20.         IX2144.2
095000     MOVE    "EEEEEFFFFF022ALTKEY2" TO FS1-ALTKEY2-1-20.          IX2144.2
095100     MOVE    WRK-FS1-RECKEY TO IX-REC-KEY-AREA.                   IX2144.2
095200     MOVE    WRK-FS1-ALTKEY1 TO IX-ALT-KEY1-AREA.                 IX2144.2
095300     MOVE    WRK-FS1-ALTKEY2 TO IX-ALT-KEY2-AREA.                 IX2144.2
095400 START-TEST-GF-01.                                                IX2144.2
095500*                                                                         
095600*                                                                         
095700*                                                                         
095800*                                                                         
095900*                                                                         
096000     START   IX-FS1                                               IX2144.2
096100                    KEY IS NOT LESS THAN IX-FS1-KEY               IX2144.2
096200       INVALID KEY     MOVE FS1-STATUS TO FILESTATUS (1)          IX2144.2
096300                     MOVE  "INVALID KEY ON START" TO COMPUTED-A   IX2144.2
096400                        GO TO START-FAIL-GF-01.                   IX2144.2
096500     MOVE    FS1-STATUS TO FILESTATUS (1).                        IX2144.2
096600     READ    IX-FS1  AT END                                       IX2144.2
096700                     MOVE  "AT END ON READ" TO COMPUTED-A         IX2144.2
096800                     GO TO START-FAIL-GF-01.                      IX2144.2
096900     MOVE    IX-FS1R1-F-G-240  TO  FILE-RECORD-INFO (1).          IX2144.2
097000     IF      XRECORD-NUMBER (1)  EQUAL TO 11                      IX2144.2
097100             PERFORM PASS                                         IX2144.2
097200             MOVE SPACE TO RE-MARK                                IX2144.2
097300             GO TO START-WRITE-GF-01.                             IX2144.2
097400     MOVE    11  TO RECNO.                                        IX2144.2
097500     PERFORM DISPLAY-RECORD-KEYS.                                 IX2144.2
097600     MOVE     XRECORD-NUMBER (1)  TO COMPUTED-18V0.               IX2144.2
097700 START-FAIL-GF-01.                                                IX2144.2
097800     PERFORM FAIL.                                                IX2144.2
097900     MOVE    11  TO CORRECT-18V0.                                 IX2144.2
098000     MOVE "IX-36; IX-6: INVALID KEY PATH TAKEN OR AT END ON READ" IX2144.2
098100           TO RE-MARK.                                            IX2144.2
098200     GO TO   START-WRITE-GF-01.                                   IX2144.2
098300 START-DELETE-GF-01.                                              IX2144.2
098400     PERFORM DE-LETE.                                             IX2144.2
098500 START-WRITE-GF-01.                                               IX2144.2
098600     PERFORM PRINT-DETAIL.                                        IX2144.2
098700 START-INIT-GF-02.                                                IX2144.2
098800     PERFORM START-INITIALIZE-RECORD.                             IX2144.2
098900     MOVE "START-TEST-GF-02" TO PAR-NAME.                         IX2144.2
099000     IF      INIT-FLAG NOT EQUAL ZERO                             IX2144.2
099100             PERFORM START-INIT-ERROR                             IX2144.2
099200             GO TO START-DELETE-GF-02.                            IX2144.2
099300     MOVE    "EEEEEEEFFF067" TO FS1-RECKEY-1-13.                  IX2144.2
099400     MOVE    "HHHHHHHHII064ALTKEY1"  TO FS1-ALTKEY1-1-20.         IX2144.2
099500     MOVE    "TTTTTTTTSS336ALTKEY2" TO FS1-ALTKEY2-1-20.          IX2144.2
099600     MOVE    WRK-FS1-RECKEY TO IX-REC-KEY-AREA.                   IX2144.2
099700     MOVE    WRK-FS1-ALTKEY1 TO IX-ALT-KEY1-AREA.                 IX2144.2
099800     MOVE    WRK-FS1-ALTKEY2 TO IX-ALT-KEY2-AREA.                 IX2144.2
099900 START-TEST-GF-02.                                                IX2144.2
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
101000     START   IX-FS1                                               IX2144.2
101100                    KEY NOT LESS THAN IX-FS1-KEY                  IX2144.2
101200        INVALID KEY    MOVE FS1-STATUS TO FILESTATUS (2)          IX2144.2
101300                     MOVE  "INVALID KEY ON START" TO COMPUTED-A   IX2144.2
101400                        GO TO START-FAIL-GF-02.                   IX2144.2
101500     MOVE    FS1-STATUS TO FILESTATUS (2).                        IX2144.2
101600     READ    IX-FS1  AT END                                       IX2144.2
101700                     MOVE  "AT END ON READ" TO COMPUTED-A         IX2144.2
101800                     GO TO START-FAIL-GF-02.                      IX2144.2
101900     MOVE    IX-FS1R1-F-G-240  TO  FILE-RECORD-INFO (1).          IX2144.2
102000     IF      XRECORD-NUMBER (1) EQUAL TO 34                       IX2144.2
102100             PERFORM PASS                                         IX2144.2
102200             MOVE SPACE TO RE-MARK                                IX2144.2
102300             GO TO START-WRITE-GF-02.                             IX2144.2
102400     MOVE    34  TO RECNO.                                        IX2144.2
102500     PERFORM DISPLAY-RECORD-KEYS.                                 IX2144.2
102600     MOVE     XRECORD-NUMBER (1)  TO COMPUTED-18V0.               IX2144.2
102700 START-FAIL-GF-02.                                                IX2144.2
102800     PERFORM FAIL.                                                IX2144.2
102900     MOVE    34   TO CORRECT-18V0.                                IX2144.2
103000     MOVE "IX-36; IX-6: INVALID KEY PATH TAKEN OR AT END ON READ" IX2144.2
103100           TO RE-MARK.                                            IX2144.2
103200     GO TO   START-WRITE-GF-02.                                   IX2144.2
103300 START-DELETE-GF-02.                                              IX2144.2
103400     PERFORM DE-LETE.                                             IX2144.2
103500 START-WRITE-GF-02.                                               IX2144.2
103600     PERFORM PRINT-DETAIL.                                        IX2144.2
103700 START-INIT-GF-03.                                                IX2144.2
103800     PERFORM START-INITIALIZE-RECORD.                             IX2144.2
103900     MOVE "START-TEST-GF-03" TO PAR-NAME.                         IX2144.2
104000     IF      INIT-FLAG NOT EQUAL ZERO                             IX2144.2
104100             PERFORM START-INIT-ERROR                             IX2144.2
104200             GO TO START-DELETE-GF-03.                            IX2144.2
104300     MOVE    "BBBBBBBBBC001" TO FS1-RECKEY-1-13.                  IX2144.2
104400     MOVE    "EEEEEEEEEF003ALTKEY1"  TO FS1-ALTKEY1-1-20.         IX2144.2
104500     MOVE    "WWWWWWWWWV399ALTKEY2" TO FS1-ALTKEY2-1-20.          IX2144.2
104600     MOVE    WRK-FS1-RECKEY TO IX-REC-KEY-AREA.                   IX2144.2
104700     MOVE    WRK-FS1-ALTKEY1 TO IX-ALT-KEY1-AREA.                 IX2144.2
104800     MOVE    WRK-FS1-ALTKEY2 TO IX-ALT-KEY2-AREA.                 IX2144.2
104900 START-TEST-GF-03.                                                IX2144.2
105000*                                                                         
105100*                                                                         
105200*                                                                         
105300*                                                                         
105400*                                                                         
105500*                                                                         
105600*                                                                         
105700*                                                                         
105800*                                                                         
105900     START   IX-FS1                                               IX2144.2
106000                    KEY IS NOT LESS THAN IX-FS1-KEY               IX2144.2
106100       INVALID KEY      MOVE FS1-STATUS TO FILESTATUS (3)         IX2144.2
106200                     MOVE  "INVALID KEY ON START" TO COMPUTED-A   IX2144.2
106300                        GO TO START-FAIL-GF-03.                   IX2144.2
106400     MOVE    FS1-STATUS TO FILESTATUS (3).                        IX2144.2
106500     READ    IX-FS1  AT END                                       IX2144.2
106600                     MOVE  "AT END ON READ" TO COMPUTED-A         IX2144.2
106700                     GO TO START-FAIL-GF-03.                      IX2144.2
106800     MOVE    IX-FS1R1-F-G-240  TO  FILE-RECORD-INFO (1).          IX2144.2
106900     IF      XRECORD-NUMBER (1) EQUAL TO 01                       IX2144.2
107000             PERFORM PASS                                         IX2144.2
107100             MOVE SPACE TO RE-MARK                                IX2144.2
107200             GO TO START-WRITE-GF-03.                             IX2144.2
107300     MOVE    01  TO RECNO.                                        IX2144.2
107400     PERFORM DISPLAY-RECORD-KEYS.                                 IX2144.2
107500     MOVE     XRECORD-NUMBER (1)  TO COMPUTED-18V0.               IX2144.2
107600 START-FAIL-GF-03.                                                IX2144.2
107700     PERFORM FAIL.                                                IX2144.2
107800     MOVE    01   TO CORRECT-18V0.                                IX2144.2
107900     MOVE "IX-36; IX-6: INVALID KEY PATH TAKEN OR AT END ON READ" IX2144.2
108000           TO RE-MARK.                                            IX2144.2
108100     GO TO   START-WRITE-GF-03.                                   IX2144.2
108200 START-DELETE-GF-03.                                              IX2144.2
108300     PERFORM DE-LETE.                                             IX2144.2
108400 START-WRITE-GF-03.                                               IX2144.2
108500     PERFORM PRINT-DETAIL.                                        IX2144.2
108600 START-INIT-GF-04.                                                IX2144.2
108700     PERFORM START-INITIALIZE-RECORD.                             IX2144.2
108800     MOVE "START-TEST-GF-04" TO PAR-NAME.                         IX2144.2
108900     IF      INIT-FLAG NOT EQUAL ZERO                             IX2144.2
109000             PERFORM START-INIT-ERROR                             IX2144.2
109100             GO TO START-DELETE-GF-04.                            IX2144.2
109200     MOVE    "UUUUUUUUUU401"  TO FS1-RECKEY-1-13.                 IX2144.2
109300     MOVE    "YYYYYYYYYY400ALTKEY1"  TO FS1-ALTKEY1-1-20.         IX2144.2
109400     MOVE    "DDDDDDDDDD000ALTKEY2"  TO FS1-ALTKEY2-1-20.         IX2144.2
109500     MOVE    WRK-FS1-RECKEY   TO IX-REC-KEY-AREA.                 IX2144.2
109600     MOVE    WRK-FS1-ALTKEY1  TO IX-ALT-KEY1-AREA.                IX2144.2
109700     MOVE    WRK-FS1-ALTKEY2  TO IX-ALT-KEY2-AREA.                IX2144.2
109800 START-TEST-GF-04.                                                IX2144.2
109900*                                                                         
110000*                                                                         
110100*                                                                         
110200*                                                                         
110300*                                                                         
110400*                                                                         
110500*                                                                         
110600*                                                                         
110700*                                                                         
110800     START   IX-FS1                                               IX2144.2
110900                    KEY IS NOT LESS THAN IX-FS1-KEY               IX2144.2
111000          INVALID KEY    MOVE  FS1-STATUS TO FILESTATUS (4)       IX2144.2
111100                         GO TO START-PASS-GF-04.                  IX2144.2
111200     MOVE    FS1-STATUS TO FILESTATUS (4).                        IX2144.2
111300     READ    IX-FS1 AT END                                        IX2144.2
111400                     MOVE  "AT END PATH TAKEN ON READ" TO RE-MARK.IX2144.2
111500     MOVE    IX-FS1R1-F-G-240 TO FILE-RECORD-INFO (1).            IX2144.2
111600     PERFORM FAIL.                                                IX2144.2
111700     MOVE    XRECORD-KEY (1) TO COMPUTED-A.                       IX2144.2
111800     MOVE    "INVALID KEY" TO CORRECT-A.                          IX2144.2
111900     MOVE "IX-36 INVALID KEY PATH NOT BE TAKEN OR AT END ON READ" IX2144.2
112000           TO RE-MARK.                                            IX2144.2
112100     GO TO   START-WRITE-GF-04.                                   IX2144.2
112200 START-PASS-GF-04.                                                IX2144.2
112300     PERFORM  PASS.                                               IX2144.2
112400     MOVE     "INVALID KEY"  TO RE-MARK.                          IX2144.2
112500     GO TO   START-WRITE-GF-04.                                   IX2144.2
112600 START-DELETE-GF-04.                                              IX2144.2
112700     PERFORM DE-LETE.                                             IX2144.2
112800 START-WRITE-GF-04.                                               IX2144.2
112900     PERFORM PRINT-DETAIL.                                        IX2144.2
113000 START-INIT-GF-05.                                                IX2144.2
113100     PERFORM START-INITIALIZE-RECORD.                             IX2144.2
113200     MOVE "START-TEST-GF-05" TO PAR-NAME.                         IX2144.2
113300     IF      INIT-FLAG NOT EQUAL ZERO                             IX2144.2
113400             PERFORM START-INIT-ERROR                             IX2144.2
113500             GO TO START-DELETE-GF-05.                            IX2144.2
113600     MOVE    "CDDDDDDDDD039" TO FS1-RECKEY-1-13.                  IX2144.2
113700     MOVE    "IIIIIIIIJJ083ALTKEY1"  TO FS1-ALTKEY1-1-20.         IX2144.2
113800     MOVE    "ABCXXXXXXX400ALTKEY2" TO FS1-ALTKEY2-1-20.          IX2144.2
113900     MOVE    WRK-FS1-RECKEY   TO IX-REC-KEY-AREA.                 IX2144.2
114000     MOVE    WRK-FS1-ALTKEY1  TO IX-ALT-KEY1-AREA.                IX2144.2
114100     MOVE    WRK-FS1-ALTKEY2  TO IX-ALT-KEY2-AREA.                IX2144.2
114200 START-TEST-GF-05.                                                IX2144.2
114300*                                                                         
114400*                                                                         
114500*                                                                         
114600*                                                                         
114700*                                                                         
114800*                                                                         
114900*                                                                         
115000*                                                                         
115100*                                                                         
115200*                                                                         
115300*                                                                         
115400*                                                                         
115500     START   IX-FS1                                               IX2144.2
115600                    KEY IS NOT LESS THAN R-RECKEY-1-7             IX2144.2
115700          INVALID KEY    MOVE  FS1-STATUS TO FILESTATUS (5)       IX2144.2
115800                     MOVE  "INVALID KEY ON START" TO COMPUTED-A   IX2144.2
115900                     GO TO START-FAIL-GF-05.                      IX2144.2
116000     MOVE    FS1-STATUS TO FILESTATUS (5).                        IX2144.2
116100     READ    IX-FS1  AT END                                       IX2144.2
116200                     MOVE  "AT END ON READ" TO COMPUTED-A         IX2144.2
116300                     GO TO  START-FAIL-GF-05.                     IX2144.2
116400     MOVE    IX-FS1R1-F-G-240 TO FILE-RECORD-INFO (1).            IX2144.2
116500     IF      XRECORD-NUMBER (1) EQUAL TO 19                       IX2144.2
116600             PERFORM  PASS                                        IX2144.2
116700             MOVE  "SUBORDINATE DATA ITEM OF KEY" TO RE-MARK      IX2144.2
116800             GO TO START-WRITE-GF-05.                             IX2144.2
116900     MOVE    19  TO RECNO.                                        IX2144.2
117000     PERFORM DISPLAY-RECORD-KEYS.                                 IX2144.2
117100     MOVE    XRECORD-NUMBER (1)  TO COMPUTED-18V0.                IX2144.2
117200 START-FAIL-GF-05.                                                IX2144.2
117300     PERFORM  FAIL.                                               IX2144.2
117400     MOVE    19  TO CORRECT-18V0.                                 IX2144.2
117500     MOVE "IX-36; IX-6: INVALID KEY PATH TAKEN OR AT END ON READ" IX2144.2
117600           TO RE-MARK.                                            IX2144.2
117700     GO TO   START-WRITE-GF-05.                                   IX2144.2
117800 START-DELETE-GF-05.                                              IX2144.2
117900     PERFORM DE-LETE.                                             IX2144.2
118000 START-WRITE-GF-05.                                               IX2144.2
118100     PERFORM PRINT-DETAIL.                                        IX2144.2
118200 START-INIT-GF-06.                                                IX2144.2
118300     PERFORM START-INITIALIZE-RECORD.                             IX2144.2
118400     MOVE "START-TEST-GF-06" TO PAR-NAME.                         IX2144.2
118500     IF      INIT-FLAG NOT EQUAL ZERO                             IX2144.2
118600             PERFORM START-INIT-ERROR                             IX2144.2
118700             GO TO START-DELETE-GF-06.                            IX2144.2
118800     MOVE    "TTTTTUUUUU390"  TO FS1-RECKEY-1-13.                 IX2144.2
118900     MOVE    "XYYYYYYYYY399ALTKEY1"  TO FS1-ALTKEY1-1-20.         IX2144.2
119000     MOVE    "WWWWWWWWWV399ALTKEY2"  TO FS1-ALTKEY2-1-20.         IX2144.2
119100     MOVE    WRK-FS1-RECKEY   TO IX-REC-KEY-AREA.                 IX2144.2
119200     MOVE    WRK-FS1-ALTKEY1  TO IX-ALT-KEY1-AREA.                IX2144.2
119300     MOVE    WRK-FS1-ALTKEY2  TO IX-ALT-KEY2-AREA.                IX2144.2
119400 START-TEST-GF-06.                                                IX2144.2
119500*                                                                         
119600*                                                                         
119700*                                                                         
119800*                                                                         
119900*                                                                         
120000*                                                                         
120100*                                                                         
120200*                                                                         
120300*                                                                         
120400*                                                                         
120500*                                                                         
120600*                                                                         
120700*                                                                         
120800*                                                                         
120900*                                                                         
121000*                                                                         
121100*                                                                         
121200     START   IX-FS1                                               IX2144.2
121300                    KEY IS NOT LESS THAN IX-FS1-KEY-1-5           IX2144.2
121400                INVALID KEY  MOVE  FS1-STATUS TO FILESTATUS (6)   IX2144.2
121500                     MOVE  "INVALID KEY ON START"  TO COMPUTED-A  IX2144.2
121600                     GO TO START-FAIL-GF-06.                      IX2144.2
121700     MOVE    FS1-STATUS TO FILESTATUS (6).                        IX2144.2
121800     READ    IX-FS1  AT END                                       IX2144.2
121900                     MOVE "AT END ON READ" TO COMPUTED-A          IX2144.2
122000                     GO TO START-FAIL-GF-06.                      IX2144.2
122100     MOVE    IX-FS1R1-F-G-240 TO FILE-RECORD-INFO (1).            IX2144.2
122200     IF      XRECORD-NUMBER (1) EQUAL TO 190                      IX2144.2
122300             PERFORM  PASS                                        IX2144.2
122400             MOVE  "SUBORDINATE DATA ITEM IN KEY"  TO RE-MARK     IX2144.2
122500             GO TO START-WRITE-GF-06.                             IX2144.2
122600     MOVE    65  TO RECNO.                                        IX2144.2
122700     PERFORM DISPLAY-RECORD-KEYS.                                 IX2144.2
122800     MOVE    XRECORD-NUMBER (1)  TO COMPUTED-18V0.                IX2144.2
122900 START-FAIL-GF-06.                                                IX2144.2
123000     PERFORM  FAIL.                                               IX2144.2
123100     MOVE    190  TO CORRECT-18V0.                                IX2144.2
123200     MOVE "IX-36; IX-6: INVALID KEY PATH TAKEN OR AT END ON READ" IX2144.2
123300           TO RE-MARK.                                            IX2144.2
123400     GO TO   START-WRITE-GF-06.                                   IX2144.2
123500 START-DELETE-GF-06.                                              IX2144.2
123600     PERFORM DE-LETE.                                             IX2144.2
123700 START-WRITE-GF-06.                                               IX2144.2
123800     PERFORM PRINT-DETAIL.                                        IX2144.2
123900 START-INIT-GF-07.                                                IX2144.2
124000     PERFORM START-INITIALIZE-RECORD.                             IX2144.2
124100     MOVE "START-TEST-GF-07" TO PAR-NAME.                         IX2144.2
124200     IF      INIT-FLAG NOT EQUAL ZERO                             IX2144.2
124300             PERFORM START-INIT-ERROR                             IX2144.2
124400             GO TO START-DELETE-GF-07.                            IX2144.2
124500     MOVE    "UUUUUUVUUU410"  TO FS1-RECKEY-1-13.                 IX2144.2
124600     MOVE    "FFFFFFFFFG022ALTKEY1"  TO FS1-ALTKEY1-1-20.         IX2144.2
124700     MOVE    "VVVVVVVVVV380ALTKEY2"  TO FS1-ALTKEY2-1-20.         IX2144.2
124800     MOVE    WRK-FS1-RECKEY   TO IX-REC-KEY-AREA.                 IX2144.2
124900     MOVE    WRK-FS1-ALTKEY1  TO IX-ALT-KEY1-AREA.                IX2144.2
125000     MOVE    WRK-FS1-ALTKEY2  TO IX-ALT-KEY2-AREA.                IX2144.2
125100 START-TEST-GF-07.                                                IX2144.2
125200*                                                                         
125300*                                                                         
125400*                                                                         
125500*                                                                         
125600*                                                                         
125700*                                                                         
125800*                                                                         
125900*                                                                         
126000*                                                                         
126100*                                                                         
126200*                                                                         
126300*                                                                         
126400     START  IX-FS1                                                IX2144.2
126500                   KEY IS NOT LESS THAN R-RECKEY-1-7              IX2144.2
126600          INVALID KEY    MOVE  FS1-STATUS TO FILESTATUS (7)       IX2144.2
126700                     GO TO START-PASS-GF-07.                      IX2144.2
126800     MOVE    FS1-STATUS TO FILESTATUS (7).                        IX2144.2
126900     READ    IX-FS1  AT END                                       IX2144.2
127000                     MOVE  "AT END PATH TAKEN ON READ" TO RE-MARK.IX2144.2
127100     MOVE    IX-FS1R1-F-G-240 TO FILE-RECORD-INFO (1).            IX2144.2
127200     PERFORM FAIL.                                                IX2144.2
127300     MOVE    XRECORD-KEY (1) TO COMPUTED-A.                       IX2144.2
127400     MOVE    "INVALID KEY" TO CORRECT-A.                          IX2144.2
127500     MOVE "IX-36 INVALID KEY PATH NOT BE TAKEN OR AT END ON READ" IX2144.2
127600           TO RE-MARK.                                            IX2144.2
127700     GO TO   START-WRITE-GF-07.                                   IX2144.2
127800 START-PASS-GF-07.                                                IX2144.2
127900     PERFORM PASS.                                                IX2144.2
128000     MOVE    "INVALID KEY"  TO RE-MARK.                           IX2144.2
128100     GO TO   START-WRITE-GF-07.                                   IX2144.2
128200 START-DELETE-GF-07.                                              IX2144.2
128300     PERFORM DE-LETE.                                             IX2144.2
128400 START-WRITE-GF-07.                                               IX2144.2
128500     PERFORM PRINT-DETAIL.                                        IX2144.2
128600 START-INIT-GF-08.                                                IX2144.2
128700     PERFORM START-INITIALIZE-RECORD.                             IX2144.2
128800     MOVE "START-TEST-GF-08" TO PAR-NAME.                         IX2144.2
128900     IF      INIT-FLAG NOT EQUAL ZERO                             IX2144.2
129000             PERFORM START-INIT-ERROR                             IX2144.2
129100             GO TO START-DELETE-GF-08.                            IX2144.2
129200     MOVE    "ABBBBBBBBC002"  TO FS1-RECKEY-1-13.                 IX2144.2
129300     MOVE    "XYYYYYYYYY399ALTKEY1"  TO FS1-ALTKEY1-1-20.         IX2144.2
129400     MOVE    "WWWWWWWWWV399ALTKEY2"  TO FS1-ALTKEY2-1-20.         IX2144.2
129500     MOVE    WRK-FS1-RECKEY   TO IX-REC-KEY-AREA.                 IX2144.2
129600     MOVE    WRK-FS1-ALTKEY1  TO IX-ALT-KEY1-AREA.                IX2144.2
129700     MOVE    WRK-FS1-ALTKEY2  TO IX-ALT-KEY2-AREA.                IX2144.2
129800 START-TEST-GF-08.                                                IX2144.2
129900*                                                                         
130000*                                                                         
130100*                                                                         
130200*                                                                         
130300*                                                                         
130400*                                                                         
130500*                                                                         
130600*                                                                         
130700*                                                                         
130800*                                                                         
130900*                                                                         
131000*                                                                         
131100*                                                                         
131200     START   IX-FS1                                               IX2144.2
131300                    KEY IS NOT LESS THAN R-RECKEY-1-7             IX2144.2
131400          INVALID KEY    MOVE  FS1-STATUS TO FILESTATUS (8)       IX2144.2
131500                     MOVE  "INVALID KEY ON START"  TO COMPUTED-A  IX2144.2
131600                     GO TO START-FAIL-GF-08.                      IX2144.2
131700     MOVE    FS1-STATUS TO FILESTATUS (8).                        IX2144.2
131800     READ    IX-FS1  AT END                                       IX2144.2
131900                     MOVE "AT END ON READ" TO COMPUTED-A          IX2144.2
132000                     GO TO START-FAIL-GF-08.                      IX2144.2
132100     MOVE    IX-FS1R1-F-G-240 TO FILE-RECORD-INFO (1).            IX2144.2
132200     IF      XRECORD-NUMBER (1) EQUAL TO 001                      IX2144.2
132300             PERFORM  PASS                                        IX2144.2
132400             MOVE  "SUBORDINATE DATA ITEM IN KEY"  TO RE-MARK     IX2144.2
132500             GO TO START-WRITE-GF-08.                             IX2144.2
132600     MOVE    01  TO RECNO.                                        IX2144.2
132700     PERFORM DISPLAY-RECORD-KEYS.                                 IX2144.2
132800     MOVE    XRECORD-NUMBER (1)  TO COMPUTED-18V0.                IX2144.2
132900 START-FAIL-GF-08.                                                IX2144.2
133000     PERFORM  FAIL.                                               IX2144.2
133100     MOVE    001   TO CORRECT-18V0.                               IX2144.2
133200     MOVE "IX-36; IX-6: INVALID KEY PATH TAKEN OR AT END ON READ" IX2144.2
133300           TO RE-MARK.                                            IX2144.2
133400     GO TO   START-WRITE-GF-08.                                   IX2144.2
133500 START-DELETE-GF-08.                                              IX2144.2
133600     PERFORM DE-LETE.                                             IX2144.2
133700 START-WRITE-GF-08.                                               IX2144.2
133800     PERFORM PRINT-DETAIL.                                        IX2144.2
133900 START-INIT-GF-09.                                                IX2144.2
134000     PERFORM START-INITIALIZE-RECORD.                             IX2144.2
134100     MOVE "START-TEST-GF-09" TO PAR-NAME.                         IX2144.2
134200     IF      INIT-FLAG NOT EQUAL ZERO                             IX2144.2
134300             PERFORM START-INIT-ERROR                             IX2144.2
134400             GO TO START-DELETE-GF-09.                            IX2144.2
134500     MOVE    "UUUUUUVVVV400"  TO FS1-RECKEY-1-13.                 IX2144.2
134600     MOVE    "EEEEEEEEEF002ALTKEY1"  TO FS1-ALTKEY1-1-20.         IX2144.2
134700     MOVE    "WWWWWWWWWV398ALTKEY2"  TO FS1-ALTKEY2-1-20.         IX2144.2
134800     MOVE    WRK-FS1-RECKEY   TO IX-REC-KEY-AREA.                 IX2144.2
134900     MOVE    WRK-FS1-ALTKEY1  TO IX-ALT-KEY1-AREA.                IX2144.2
135000     MOVE    WRK-FS1-ALTKEY2  TO IX-ALT-KEY2-AREA.                IX2144.2
135100 START-TEST-GF-09.                                                IX2144.2
135200*                                                                         
135300*                                                                         
135400*                                                                         
135500*                                                                         
135600*                                                                         
135700*                                                                         
135800*                                                                         
135900*                                                                         
136000*                                                                         
136100*                                                                         
136200*                                                                         
136300*                                                                         
136400*                                                                         
136500     START   IX-FS1                                               IX2144.2
136600                    KEY IS NOT LESS THAN R-RECKEY-1-7             IX2144.2
136700          INVALID KEY    MOVE  FS1-STATUS TO FILESTATUS (9)       IX2144.2
136800                     GO TO START-PASS-GF-09.                      IX2144.2
136900     MOVE    FS1-STATUS TO FILESTATUS (9).                        IX2144.2
137000     READ    IX-FS1  AT END                                       IX2144.2
137100                     MOVE  "AT END PATH TAKEN ON READ" TO RE-MARK.IX2144.2
137200     MOVE    IX-FS1R1-F-G-240 TO FILE-RECORD-INFO (1).            IX2144.2
137300     PERFORM FAIL.                                                IX2144.2
137400     MOVE    XRECORD-KEY (1)  TO COMPUTED-A.                      IX2144.2
137500     MOVE     "INVALID KEY" TO CORRECT-A.                         IX2144.2
137600     MOVE "IX-36 INVALID KEY PATH NOT BE TAKEN OR AT END ON READ" IX2144.2
137700           TO RE-MARK.                                            IX2144.2
137800     GO TO   START-WRITE-GF-09.                                   IX2144.2
137900 START-PASS-GF-09.                                                IX2144.2
138000     PERFORM PASS.                                                IX2144.2
138100     MOVE    "INVALID KEY"  TO RE-MARK.                           IX2144.2
138200     GO TO   START-WRITE-GF-09.                                   IX2144.2
138300 START-DELETE-GF-09.                                              IX2144.2
138400     PERFORM DE-LETE.                                             IX2144.2
138500 START-WRITE-GF-09.                                               IX2144.2
138600     PERFORM PRINT-DETAIL.                                        IX2144.2
138700     CLOSE   IX-FS1.                                              IX2144.2
138800                                                                  IX2144.2
138900*                                                                         
139000*                                                                         
139100*                                                                         
139200*                                                                         
139300 START-TEST-GF-10.                                                IX2144.2
139400     MOVE              "FILE STATUS START:??"  TO FEATURE.        IX2144.2
139500     MOVE "START-TEST-GF-10" TO PAR-NAME.                         IX2144.2
139600     IF      FILESTATUS (1)  EQUAL TO "**"                        IX2144.2
139700             PERFORM DE-LETE                                      IX2144.2
139800             MOVE "FROM START-TEST-GF-01"  TO CORRECT-A           IX2144.2
139900             GO TO  START-TEST-GF-10A.                            IX2144.2
140000*                                                                         
140100*                                                                         
140200*                                                                         
140300*                                                                         
140400*                                                                         
140500     IF      FILESTATUS (1)  EQUAL TO "00"                        IX2144.2
140600             PERFORM PASS                                         IX2144.2
140700     ELSE                                                         IX2144.2
140800         MOVE "IX-3; 1.3.4 (1) A;FROM START-TEST-GF-01" TO RE-MARKIX2144.2
140900             PERFORM  FAIL                                        IX2144.2
141000             MOVE  "00"  TO CORRECT-A                             IX2144.2
141100             MOVE   FILESTATUS (1)  TO COMPUTED-A.                IX2144.2
141200 START-TEST-GF-10A.                                               IX2144.2
141300     PERFORM  PRINT-DETAIL.                                       IX2144.2
141400 START-TEST-GF-11.                                                IX2144.2
141500     MOVE              "FILE STATUS START:??"  TO FEATURE.        IX2144.2
141600     MOVE "START-TEST-GF-11" TO PAR-NAME.                         IX2144.2
141700     IF      FILESTATUS (2)  EQUAL TO "**"                        IX2144.2
141800             PERFORM DE-LETE                                      IX2144.2
141900             MOVE "FROM START-TEST-GF-02"  TO CORRECT-A           IX2144.2
142000             GO TO  START-TEST-GF-11A.                            IX2144.2
142100*                                                                         
142200*                                                                         
142300*                                                                         
142400*                                                                         
142500*                                                                         
142600     IF      FILESTATUS (2) EQUAL TO "00"                         IX2144.2
142700             PERFORM  PASS                                        IX2144.2
142800             ELSE  PERFORM  FAIL                                  IX2144.2
142900         MOVE "IX-3; 1.3.4 (1) A;FROM START-TEST-GF-02" TO RE-MARKIX2144.2
143000             MOVE    "00"  TO CORRECT-A                           IX2144.2
143100             MOVE   FILESTATUS (2)  TO COMPUTED-A.                IX2144.2
143200 START-TEST-GF-11A.                                               IX2144.2
143300     PERFORM  PRINT-DETAIL.                                       IX2144.2
143400 START-TEST-GF-12.                                                IX2144.2
143500     MOVE "START-TEST-GF-12" TO PAR-NAME.                         IX2144.2
143600     IF      FILESTATUS (3)  EQUAL TO "**"                        IX2144.2
143700             PERFORM DE-LETE                                      IX2144.2
143800             MOVE "FROM START-TEST-GF-03"  TO CORRECT-A           IX2144.2
143900             GO TO  START-TEST-GF-12A.                            IX2144.2
144000*                                                                         
144100*                                                                         
144200*                                                                         
144300*                                                                         
144400*                                                                         
144500     IF      FILESTATUS (3) EQUAL TO "00"                         IX2144.2
144600             PERFORM  PASS                                        IX2144.2
144700             ELSE  PERFORM  FAIL                                  IX2144.2
144800         MOVE "IX-3; 1.3.4 (1) A;FROM START-TEST-GF-03" TO RE-MARKIX2144.2
144900             MOVE    "00"  TO CORRECT-A                           IX2144.2
145000             MOVE   FILESTATUS (3)  TO COMPUTED-A.                IX2144.2
145100 START-TEST-GF-12A.                                               IX2144.2
145200     PERFORM  PRINT-DETAIL.                                       IX2144.2
145300 START-TEST-GF-13.                                                IX2144.2
145400     MOVE              "FILE STATUS START:??"  TO FEATURE.        IX2144.2
145500     MOVE "START-TEST-GF-13" TO PAR-NAME.                         IX2144.2
145600     IF      FILESTATUS (4)  EQUAL TO "**"                        IX2144.2
145700             PERFORM DE-LETE                                      IX2144.2
145800             MOVE "FROM START-TEST-GF-04"  TO CORRECT-A           IX2144.2
145900             GO TO  START-TEST-GF-13A.                            IX2144.2
146000*                                                                         
146100*                                                                         
146200*                                                                         
146300*                                                                         
146400*                                                                         
146500     IF      FILESTATUS (4)  EQUAL TO "23"                        IX2144.2
146600             PERFORM  PASS                                        IX2144.2
146700             ELSE  PERFORM  FAIL                                  IX2144.2
146800         MOVE "FROM START-TEST-GF-04; IX-4 1.3.4 (3) C" TO RE-MARKIX2144.2
146900             MOVE    "23"  TO CORRECT-A                           IX2144.2
147000             MOVE   FILESTATUS (4)  TO COMPUTED-A.                IX2144.2
147100 START-TEST-GF-13A.                                               IX2144.2
147200     PERFORM  PRINT-DETAIL.                                       IX2144.2
147300 START-TEST-GF-14.                                                IX2144.2
147400     MOVE              "FILE STATUS START:??"  TO FEATURE.        IX2144.2
147500     MOVE "START-TEST-GF-14" TO PAR-NAME.                         IX2144.2
147600     IF      FILESTATUS (5)  EQUAL TO "**"                        IX2144.2
147700             PERFORM DE-LETE                                      IX2144.2
147800             MOVE "FROM START-TEST-GF-05"  TO CORRECT-A           IX2144.2
147900             GO TO  START-TEST-GF-14A.                            IX2144.2
148000*                                                                         
148100*                                                                         
148200*                                                                         
148300*                                                                         
148400*                                                                         
148500     IF      FILESTATUS (5)  EQUAL TO "00"                        IX2144.2
148600             PERFORM  PASS                                        IX2144.2
148700             ELSE  PERFORM  FAIL                                  IX2144.2
148800         MOVE "IX-3; 1.3.4 (1) A;FROM START-TEST-GF-05" TO RE-MARKIX2144.2
148900             MOVE    "00"  TO CORRECT-A                           IX2144.2
149000             MOVE   FILESTATUS (5)  TO COMPUTED-A.                IX2144.2
149100 START-TEST-GF-14A.                                               IX2144.2
149200     PERFORM  PRINT-DETAIL.                                       IX2144.2
149300 START-TEST-GF-15.                                                IX2144.2
149400     MOVE "START-TEST-GF-15" TO PAR-NAME.                         IX2144.2
149500     IF      FILESTATUS (6)  EQUAL TO "**"                        IX2144.2
149600             PERFORM DE-LETE                                      IX2144.2
149700             MOVE "FROM START-TEST-GF-06"  TO CORRECT-A           IX2144.2
149800             GO TO  START-TEST-GF-15A.                            IX2144.2
149900*                                                                         
150000*                                                                         
150100*                                                                         
150200*                                                                         
150300*                                                                         
150400     IF      FILESTATUS (6)  EQUAL TO "00"                        IX2144.2
150500             PERFORM  PASS                                        IX2144.2
150600             ELSE  PERFORM  FAIL                                  IX2144.2
150700         MOVE "IX-3; 1.3.4 (1) A;FROM START-TEST-GF-06" TO RE-MARKIX2144.2
150800             MOVE   "00"  TO CORRECT-A                            IX2144.2
150900             MOVE   FILESTATUS (6)  TO COMPUTED-A.                IX2144.2
151000 START-TEST-GF-15A.                                               IX2144.2
151100     PERFORM  PRINT-DETAIL.                                       IX2144.2
151200 START-TEST-GF-16.                                                IX2144.2
151300     MOVE              "FILE STATUS START:??"  TO FEATURE.        IX2144.2
151400     MOVE "START-TEST-GF-16" TO PAR-NAME.                         IX2144.2
151500     IF      FILESTATUS (7)  EQUAL TO "**"                        IX2144.2
151600             PERFORM DE-LETE                                      IX2144.2
151700             MOVE "FROM START-TEST-GF-07"  TO CORRECT-A           IX2144.2
151800             GO TO  START-TEST-GF-16A.                            IX2144.2
151900*                                                                         
152000*                                                                         
152100*                                                                         
152200*                                                                         
152300*                                                                         
152400     IF      FILESTATUS (7)  EQUAL TO "26"                        IX2144.2
152500             PERFORM  PASS                                        IX2144.2
152600             ELSE  PERFORM  FAIL                                  IX2144.2
152700         MOVE "FROM START-TEST-GF-07; IX-4 1.3.4 (3) C" TO RE-MARKIX2144.2
152800             MOVE    "26"  TO CORRECT-A                           IX2144.2
152900             MOVE   FILESTATUS (7)  TO COMPUTED-A.                IX2144.2
153000 START-TEST-GF-16A.                                               IX2144.2
153100     PERFORM  PRINT-DETAIL.                                       IX2144.2
153200 START-TEST-GF-17.                                                IX2144.2
153300     MOVE              "FILE STATUS START:??"  TO FEATURE.        IX2144.2
153400     MOVE "START-TEST-GF-17" TO PAR-NAME.                         IX2144.2
153500     IF      FILESTATUS (8)  EQUAL TO "**"                        IX2144.2
153600             PERFORM DE-LETE                                      IX2144.2
153700             MOVE "FROM START-TEST-GF-08"  TO CORRECT-A           IX2144.2
153800             GO TO  START-TEST-GF-17A.                            IX2144.2
153900*                                                                         
154000*                                                                         
154100*                                                                         
154200*                                                                         
154300*                                                                         
154400     IF      FILESTATUS (8) EQUAL TO "00"                         IX2144.2
154500             PERFORM  PASS                                        IX2144.2
154600             ELSE  PERFORM  FAIL                                  IX2144.2
154700         MOVE "IX-3; 1.3.4 (1) A;FROM START-TEST-GF-08" TO RE-MARKIX2144.2
154800             MOVE    "00"  TO CORRECT-A                           IX2144.2
154900             MOVE   FILESTATUS (8)  TO COMPUTED-A.                IX2144.2
155000 START-TEST-GF-17A.                                               IX2144.2
155100     PERFORM  PRINT-DETAIL.                                       IX2144.2
155200 START-TEST-GF-18.                                                IX2144.2
155300     MOVE              "FILE STATUS START:??"  TO FEATURE.        IX2144.2
155400     MOVE "START-TEST-GF-18" TO PAR-NAME.                         IX2144.2
155500     IF      FILESTATUS (9)  EQUAL TO "**"                        IX2144.2
155600             PERFORM DE-LETE                                      IX2144.2
155700             MOVE "FROM START-TEST-GF-09"  TO CORRECT-A           IX2144.2
155800             GO TO  START-TEST-GF-18A.                            IX2144.2
155900*                                                                         
156000*                                                                         
156100*                                                                         
156200*                                                                         
156300*                                                                         
156400     IF      FILESTATUS (9)  EQUAL TO "93"                        IX2144.2
156500             PERFORM PASS                                         IX2144.2
156600     ELSE    PERFORM FAIL                                         IX2144.2
156700         MOVE "FROM START-TEST-GF-09; IX-4 1.3.4 (3) C" TO RE-MARKIX2144.2
156800             MOVE  "93"  TO CORRECT-A                             IX2144.2
156900             MOVE   FILESTATUS (9)  TO COMPUTED-A.                IX2144.2
157000 START-TEST-GF-18A.                                               IX2144.2
157100     PERFORM  PRINT-DETAIL.                                       IX2144.2
157200                                                                  IX2144.2
157300                                                                  IX2144.2
157400*                                                                         
157500     OPEN    INPUT  IX-FS1.                                       IX2144.2
157600     MOVE    "STR NLT ALTKY W/O DUP" TO FEATURE.                  IX2144.2
157700     MOVE    SPACE TO HOLD-FILESTATUS-RECORD.                     IX2144.2
157800*                                                                         
157900*                                                                         
158000*                                                                         
158100*                                                                         
158200*                                                                         
158300*                                                                         
158400*                                                                         
158500*                                                                         
158600*                                                                         
158700*                                                                         
158800*                                                                         
158900*                                                                         
159000*                                                                         
159100*                                                                         
159200*                                                                         
159300*                                                                         
159400*                                                                         
159500*                                                                         
159600*                                                                         
159700*                                                                         
159800*                                                                         
159900*                                                                         
160000*                                                                         
160100*                                                                         
160200*                                                                         
160300*                                                                         
160400*                                                                         
160500*                                                                         
160600*                                                                         
160700*                                                                         
160800*                                                                         
160900*                                                                         
161000*                                                                         
161100 START-INIT-GF-19.                                                IX2144.2
161200     PERFORM START-INITIALIZE-RECORD.                             IX2144.2
161300     MOVE "START-TEST-GF-19"  TO PAR-NAME.                        IX2144.2
161400     IF      INIT-FLAG NOT EQUAL ZERO                             IX2144.2
161500             PERFORM START-INIT-ERROR                             IX2144.2
161600             GO TO START-DELETE-GF-19.                            IX2144.2
161700     MOVE    "CCCCCDDDDD022"  TO FS1-RECKEY-1-13.                 IX2144.2
161800     MOVE    "XXXXXXXXYY384ALTKEY1"  TO FS1-ALTKEY1-1-20.         IX2144.2
161900     MOVE    "EEEEEFFFFF022ALTKEY2" TO FS1-ALTKEY2-1-20.          IX2144.2
162000     MOVE    WRK-FS1-RECKEY TO IX-REC-KEY-AREA.                   IX2144.2
162100     MOVE    WRK-FS1-ALTKEY1 TO IX-ALT-KEY1-AREA.                 IX2144.2
162200     MOVE    WRK-FS1-ALTKEY2 TO IX-ALT-KEY2-AREA.                 IX2144.2
162300 START-TEST-GF-19.                                                IX2144.2
162400*                                                                         
162500*                                                                         
162600*                                                                         
162700*                                                                         
162800*                                                                         
162900     START   IX-FS1                                               IX2144.2
163000                    KEY IS NOT LESS THAN IX-FS1-ALTKEY1           IX2144.2
163100                INVALID KEY  MOVE FS1-STATUS TO FILESTATUS (1)    IX2144.2
163200                     MOVE  "INVALID KEY ON START" TO COMPUTED-A   IX2144.2
163300                        GO TO START-FAIL-GF-19.                   IX2144.2
163400     MOVE    FS1-STATUS TO FILESTATUS (1).                        IX2144.2
163500     READ    IX-FS1  AT END                                       IX2144.2
163600                     MOVE  "AT END ON READ" TO COMPUTED-A         IX2144.2
163700                     GO TO START-FAIL-GF-19.                      IX2144.2
163800     MOVE    IX-FS1R1-F-G-240  TO  FILE-RECORD-INFO (1).          IX2144.2
163900     IF      XRECORD-NUMBER (1)  EQUAL TO 192                     IX2144.2
164000             PERFORM PASS                                         IX2144.2
164100             MOVE SPACE TO RE-MARK                                IX2144.2
164200             GO TO START-WRITE-GF-19.                             IX2144.2
164300     MOVE    67  TO RECNO.                                        IX2144.2
164400     PERFORM DISPLAY-ALTERNATE-KEY1.                              IX2144.2
164500     MOVE     XRECORD-NUMBER (1)  TO COMPUTED-18V0.               IX2144.2
164600 START-FAIL-GF-19.                                                IX2144.2
164700     PERFORM FAIL.                                                IX2144.2
164800     MOVE    192  TO CORRECT-18V0.                                IX2144.2
164900     MOVE "IX-36; IX-6: INVALID KEY PATH TAKEN OR AT END ON READ" IX2144.2
165000           TO RE-MARK.                                            IX2144.2
165100     GO TO   START-WRITE-GF-19.                                   IX2144.2
165200 START-DELETE-GF-19.                                              IX2144.2
165300     PERFORM DE-LETE.                                             IX2144.2
165400 START-WRITE-GF-19.                                               IX2144.2
165500     PERFORM PRINT-DETAIL.                                        IX2144.2
165600 START-INIT-GF-20.                                                IX2144.2
165700     PERFORM START-INITIALIZE-RECORD.                             IX2144.2
165800     MOVE "START-TEST-GF-20"  TO PAR-NAME.                        IX2144.2
165900     IF      INIT-FLAG NOT EQUAL ZERO                             IX2144.2
166000             PERFORM START-INIT-ERROR                             IX2144.2
166100             GO TO START-DELETE-GF-20.                            IX2144.2
166200     MOVE    "CCCCCDDDDD022"  TO FS1-RECKEY-1-13.                 IX2144.2
166300     MOVE    "HHHHHHHIII67ALTKEY1"  TO FS1-ALTKEY1-1-20.          IX2144.2
166400     MOVE    "EEEEEFFFFF022ALTKEY2" TO FS1-ALTKEY2-1-20.          IX2144.2
166500     MOVE    WRK-FS1-RECKEY TO IX-REC-KEY-AREA.                   IX2144.2
166600     MOVE    WRK-FS1-ALTKEY1 TO IX-ALT-KEY1-AREA.                 IX2144.2
166700     MOVE    WRK-FS1-ALTKEY2 TO IX-ALT-KEY2-AREA.                 IX2144.2
166800 START-TEST-GF-20.                                                IX2144.2
166900*                                                                         
167000*                                                                         
167100*                                                                         
167200*                                                                         
167300*                                                                         
167400*                                                                         
167500*                                                                         
167600*                                                                         
167700     START   IX-FS1                                               IX2144.2
167800                    KEY IS NOT LESS THAN IX-FS1-ALTKEY1           IX2144.2
167900                INVALID KEY  MOVE FS1-STATUS TO FILESTATUS (2)    IX2144.2
168000                     MOVE  "INVALID KEY ON START" TO COMPUTED-A   IX2144.2
168100                        GO TO START-FAIL-GF-20.                   IX2144.2
168200     MOVE    FS1-STATUS TO FILESTATUS (2).                        IX2144.2
168300     READ    IX-FS1  AT END                                       IX2144.2
168400                     MOVE  "AT END ON READ" TO COMPUTED-A         IX2144.2
168500                     GO TO START-FAIL-GF-20.                      IX2144.2
168600     MOVE    IX-FS1R1-F-G-240  TO  FILE-RECORD-INFO (1).          IX2144.2
168700     IF      XRECORD-NUMBER (1)  EQUAL TO 034                     IX2144.2
168800             PERFORM PASS                                         IX2144.2
168900             MOVE SPACE TO RE-MARK                                IX2144.2
169000             GO TO START-WRITE-GF-20.                             IX2144.2
169100     MOVE    34  TO RECNO.                                        IX2144.2
169200     PERFORM DISPLAY-ALTERNATE-KEY1.                              IX2144.2
169300     MOVE     XRECORD-NUMBER (1)  TO COMPUTED-18V0.               IX2144.2
169400 START-FAIL-GF-20.                                                IX2144.2
169500     PERFORM FAIL.                                                IX2144.2
169600     MOVE    034  TO CORRECT-18V0.                                IX2144.2
169700     MOVE "IX-36; IX-6: INVALID KEY PATH TAKEN OR AT END ON READ" IX2144.2
169800           TO RE-MARK.                                            IX2144.2
169900     GO TO   START-WRITE-GF-20.                                   IX2144.2
170000 START-DELETE-GF-20.                                              IX2144.2
170100     PERFORM DE-LETE.                                             IX2144.2
170200 START-WRITE-GF-20.                                               IX2144.2
170300     PERFORM PRINT-DETAIL.                                        IX2144.2
170400 START-INIT-GF-21.                                                IX2144.2
170500     PERFORM START-INITIALIZE-RECORD.                             IX2144.2
170600     MOVE "START-TEST-GF-21"  TO PAR-NAME.                        IX2144.2
170700     IF      INIT-FLAG NOT EQUAL ZERO                             IX2144.2
170800             PERFORM START-INIT-ERROR                             IX2144.2
170900             GO TO START-DELETE-GF-21.                            IX2144.2
171000     MOVE    "CCCCCDDDDD022"  TO FS1-RECKEY-1-13.                 IX2144.2
171100     MOVE    "EEEEEEEEEF001ALTKEY1"  TO FS1-ALTKEY1-1-20.         IX2144.2
171200     MOVE    "EEEEEFFFFF022ALTKEY2" TO FS1-ALTKEY2-1-20.          IX2144.2
171300     MOVE    WRK-FS1-RECKEY TO IX-REC-KEY-AREA.                   IX2144.2
171400     MOVE    WRK-FS1-ALTKEY1 TO IX-ALT-KEY1-AREA.                 IX2144.2
171500     MOVE    WRK-FS1-ALTKEY2 TO IX-ALT-KEY2-AREA.                 IX2144.2
171600 START-TEST-GF-21.                                                IX2144.2
171700*                                                                         
171800*                                                                         
171900*                                                                         
172000*                                                                         
172100*                                                                         
172200*                                                                         
172300*                                                                         
172400*                                                                         
172500*                                                                         
172600     START   IX-FS1                                               IX2144.2
172700                    KEY IS NOT LESS THAN IX-FS1-ALTKEY1           IX2144.2
172800                INVALID KEY  MOVE FS1-STATUS TO FILESTATUS (3)    IX2144.2
172900                     MOVE  "INVALID KEY ON START" TO COMPUTED-A   IX2144.2
173000                        GO TO START-FAIL-GF-21.                   IX2144.2
173100     MOVE    FS1-STATUS TO FILESTATUS (3).                        IX2144.2
173200     READ    IX-FS1  AT END                                       IX2144.2
173300                     MOVE  "AT END ON READ" TO COMPUTED-A         IX2144.2
173400                     GO TO START-FAIL-GF-21.                      IX2144.2
173500     MOVE    IX-FS1R1-F-G-240  TO  FILE-RECORD-INFO (1).          IX2144.2
173600     IF      XRECORD-NUMBER (1)  EQUAL TO 001                     IX2144.2
173700             PERFORM PASS                                         IX2144.2
173800             MOVE SPACE TO RE-MARK                                IX2144.2
173900             GO TO START-WRITE-GF-21.                             IX2144.2
174000     MOVE    01  TO RECNO.                                        IX2144.2
174100     PERFORM DISPLAY-ALTERNATE-KEY1.                              IX2144.2
174200     MOVE     XRECORD-NUMBER (1)  TO COMPUTED-18V0.               IX2144.2
174300 START-FAIL-GF-21.                                                IX2144.2
174400     PERFORM FAIL.                                                IX2144.2
174500     MOVE    001  TO CORRECT-18V0.                                IX2144.2
174600     MOVE "IX-36; IX-6: INVALID KEY PATH TAKEN OR AT END ON READ" IX2144.2
174700           TO RE-MARK.                                            IX2144.2
174800     GO TO   START-WRITE-GF-21.                                   IX2144.2
174900 START-DELETE-GF-21.                                              IX2144.2
175000     PERFORM DE-LETE.                                             IX2144.2
175100 START-WRITE-GF-21.                                               IX2144.2
175200     PERFORM PRINT-DETAIL.                                        IX2144.2
175300 START-INIT-GF-22.                                                IX2144.2
175400     PERFORM START-INITIALIZE-RECORD.                             IX2144.2
175500     MOVE "START-TEST-GF-22"  TO PAR-NAME.                        IX2144.2
175600     IF      INIT-FLAG NOT EQUAL ZERO                             IX2144.2
175700             PERFORM START-INIT-ERROR                             IX2144.2
175800             GO TO START-DELETE-GF-22.                            IX2144.2
175900     MOVE    "UUUUUUUUUU400"  TO FS1-RECKEY-1-13.                 IX2144.2
176000     MOVE    "YYYYYYYYYY401ALTKEY1"  TO FS1-ALTKEY1-1-20.         IX2144.2
176100     MOVE    "DDDDDDDDDD000ALTKEY2" TO FS1-ALTKEY2-1-20.          IX2144.2
176200     MOVE    WRK-FS1-RECKEY   TO IX-REC-KEY-AREA.                 IX2144.2
176300     MOVE    WRK-FS1-ALTKEY1  TO IX-ALT-KEY1-AREA.                IX2144.2
176400     MOVE    WRK-FS1-ALTKEY2  TO IX-ALT-KEY2-AREA.                IX2144.2
176500 START-TEST-GF-22.                                                IX2144.2
176600*                                                                         
176700*                                                                         
176800*                                                                         
176900*                                                                         
177000*                                                                         
177100*                                                                         
177200*                                                                         
177300*                                                                         
177400*                                                                         
177500     START   IX-FS1                                               IX2144.2
177600                    KEY IS NOT LESS THAN IX-FS1-ALTKEY1           IX2144.2
177700                INVALID KEY  MOVE  FS1-STATUS TO FILESTATUS (4)   IX2144.2
177800                         GO TO START-PASS-GF-22.                  IX2144.2
177900     MOVE    FS1-STATUS TO FILESTATUS (4).                        IX2144.2
178000     READ    IX-FS1 AT END                                        IX2144.2
178100                     MOVE  "AT END PATH TAKEN ON READ" TO RE-MARK.IX2144.2
178200     MOVE    IX-FS1R1-F-G-240 TO FILE-RECORD-INFO (1).            IX2144.2
178300     PERFORM FAIL.                                                IX2144.2
178400     MOVE    ALTERNATE-KEY1 (1) TO COMPUTED-A.                    IX2144.2
178500     MOVE    "INVALID KEY" TO CORRECT-A.                          IX2144.2
178600     MOVE "IX-36 INVALID KEY PATH NOT BE TAKEN OR AT END ON READ" IX2144.2
178700           TO RE-MARK.                                            IX2144.2
178800     GO TO   START-WRITE-GF-22.                                   IX2144.2
178900 START-PASS-GF-22.                                                IX2144.2
179000     PERFORM  PASS.                                               IX2144.2
179100     MOVE     "INVALID KEY"  TO RE-MARK.                          IX2144.2
179200     GO TO   START-WRITE-GF-22.                                   IX2144.2
179300 START-DELETE-GF-22.                                              IX2144.2
179400     PERFORM DE-LETE.                                             IX2144.2
179500 START-WRITE-GF-22.                                               IX2144.2
179600     PERFORM PRINT-DETAIL.                                        IX2144.2
179700 START-INIT-GF-23.                                                IX2144.2
179800     PERFORM START-INITIALIZE-RECORD.                             IX2144.2
179900     MOVE "START-TEST-GF-23"  TO PAR-NAME.                        IX2144.2
180000     IF      INIT-FLAG NOT EQUAL ZERO                             IX2144.2
180100             PERFORM START-INIT-ERROR                             IX2144.2
180200             GO TO START-DELETE-GF-23.                            IX2144.2
180300     MOVE    "CDDDDDDDDD039"  TO FS1-RECKEY-1-13.                 IX2144.2
180400     MOVE    "GGGGHHHHHH100ALTKEY1"  TO FS1-ALTKEY1-1-20.         IX2144.2
180500     MOVE    "ABCXXXXXXX400ALTKEY2"  TO FS1-ALTKEY2-1-20.         IX2144.2
180600     MOVE    WRK-FS1-RECKEY   TO IX-REC-KEY-AREA.                 IX2144.2
180700     MOVE    WRK-FS1-ALTKEY1  TO IX-ALT-KEY1-AREA.                IX2144.2
180800     MOVE    WRK-FS1-ALTKEY2  TO IX-ALT-KEY2-AREA.                IX2144.2
180900 START-TEST-GF-23.                                                IX2144.2
181000*                                                                         
181100*                                                                         
181200*                                                                         
181300*                                                                         
181400*                                                                         
181500*                                                                         
181600*                                                                         
181700*                                                                         
181800*                                                                         
181900*                                                                         
182000*                                                                         
182100*                                                                         
182200*                                                                         
182300*                                                                         
182400*                                                                         
182500     START   IX-FS1                                               IX2144.2
182600                    KEY IS NOT LESS THAN R-ALTKEY1-1-6            IX2144.2
182700          INVALID KEY    MOVE  FS1-STATUS TO FILESTATUS (5)       IX2144.2
182800                     MOVE  "INVALID KEY ON START" TO COMPUTED-A   IX2144.2
182900                     GO TO START-FAIL-GF-23.                      IX2144.2
183000     MOVE    FS1-STATUS TO FILESTATUS (5).                        IX2144.2
183100     READ    IX-FS1  AT END                                       IX2144.2
183200                     MOVE  "AT END ON READ" TO COMPUTED-A         IX2144.2
183300                     GO TO  START-FAIL-GF-23.                     IX2144.2
183400     MOVE    IX-FS1R1-F-G-240 TO FILE-RECORD-INFO (1).            IX2144.2
183500     IF      XRECORD-NUMBER (1)  EQUAL TO 26                      IX2144.2
183600             PERFORM  PASS                                        IX2144.2
183700             MOVE  "SUBORDINATE DATA ITEM OF KEY" TO RE-MARK      IX2144.2
183800             GO TO START-WRITE-GF-23.                             IX2144.2
183900     MOVE    26  TO RECNO.                                        IX2144.2
184000     PERFORM DISPLAY-ALTERNATE-KEY1.                              IX2144.2
184100     MOVE    XRECORD-NUMBER (1)  TO COMPUTED-18V0.                IX2144.2
184200 START-FAIL-GF-23.                                                IX2144.2
184300     PERFORM  FAIL.                                               IX2144.2
184400     MOVE    26  TO CORRECT-18V0.                                 IX2144.2
184500     MOVE "IX-36; IX-6: INVALID KEY PATH TAKEN OR AT END ON READ" IX2144.2
184600           TO RE-MARK.                                            IX2144.2
184700     GO TO   START-WRITE-GF-23.                                   IX2144.2
184800 START-DELETE-GF-23.                                              IX2144.2
184900     PERFORM DE-LETE.                                             IX2144.2
185000 START-WRITE-GF-23.                                               IX2144.2
185100     PERFORM PRINT-DETAIL.                                        IX2144.2
185200 START-INIT-GF-24.                                                IX2144.2
185300     PERFORM START-INITIALIZE-RECORD.                             IX2144.2
185400     MOVE "START-TEST-GF-24"  TO PAR-NAME.                        IX2144.2
185500     IF      INIT-FLAG NOT EQUAL ZERO                             IX2144.2
185600             PERFORM START-INIT-ERROR                             IX2144.2
185700             GO TO START-DELETE-GF-24.                            IX2144.2
185800     MOVE    "YYYYYUUUUU390"  TO FS1-RECKEY-1-13.                 IX2144.2
185900     MOVE    "XXXXXYYYYY390ALTKEY1" TO FS1-ALTKEY1-1-20.          IX2144.2
186000     MOVE    "WWWWWWWWWV399ALTKEY2"  TO FS1-ALTKEY2-1-20.         IX2144.2
186100     MOVE    WRK-FS1-RECKEY   TO IX-REC-KEY-AREA.                 IX2144.2
186200     MOVE    WRK-FS1-ALTKEY1  TO IX-ALT-KEY1-AREA.                IX2144.2
186300     MOVE    WRK-FS1-ALTKEY2  TO IX-ALT-KEY2-AREA.                IX2144.2
186400 START-TEST-GF-24.                                                IX2144.2
186500*                                                                         
186600*                                                                         
186700*                                                                         
186800*                                                                         
186900*                                                                         
187000*                                                                         
187100*                                                                         
187200*                                                                         
187300*                                                                         
187400*                                                                         
187500*                                                                         
187600*                                                                         
187700*                                                                         
187800*                                                                         
187900*                                                                         
188000*                                                                         
188100*                                                                         
188200     START   IX-FS1                                               IX2144.2
188300                    KEY IS NOT LESS THAN IX-FS1-ALTKEY1-1-5       IX2144.2
188400                     INVALID KEY                                  IX2144.2
188500                         MOVE  FS1-STATUS TO FILESTATUS (6)       IX2144.2
188600                     MOVE  "INVALID KEY ON START"  TO COMPUTED-A  IX2144.2
188700                     GO TO START-FAIL-GF-24.                      IX2144.2
188800     MOVE    FS1-STATUS TO FILESTATUS (6).                        IX2144.2
188900     READ    IX-FS1  AT END                                       IX2144.2
189000                     MOVE "AT END ON READ" TO COMPUTED-A          IX2144.2
189100                     GO TO START-FAIL-GF-24.                      IX2144.2
189200     MOVE    IX-FS1R1-F-G-240 TO FILE-RECORD-INFO (1).            IX2144.2
189300     IF      XRECORD-NUMBER (1) EQUAL TO 190                      IX2144.2
189400             PERFORM  PASS                                        IX2144.2
189500             MOVE  "SUBORDINATE DATA ITEM IN KEY"  TO RE-MARK     IX2144.2
189600             GO TO START-WRITE-GF-24.                             IX2144.2
189700     MOVE    65  TO RECNO.                                        IX2144.2
189800     PERFORM DISPLAY-ALTERNATE-KEY1.                              IX2144.2
189900     MOVE    XRECORD-NUMBER (1)  TO COMPUTED-18V0.                IX2144.2
190000 START-FAIL-GF-24.                                                IX2144.2
190100     PERFORM  FAIL.                                               IX2144.2
190200     MOVE    190  TO CORRECT-18V0.                                IX2144.2
190300     MOVE "IX-36; IX-6: INVALID KEY PATH TAKEN OR AT END ON READ" IX2144.2
190400           TO RE-MARK.                                            IX2144.2
190500     GO TO   START-WRITE-GF-24.                                   IX2144.2
190600 START-DELETE-GF-24.                                              IX2144.2
190700     PERFORM DE-LETE.                                             IX2144.2
190800 START-WRITE-GF-24.                                               IX2144.2
190900     PERFORM PRINT-DETAIL.                                        IX2144.2
191000 START-INIT-GF-25.                                                IX2144.2
191100     PERFORM START-INITIALIZE-RECORD.                             IX2144.2
191200     MOVE "START-TEST-GF-25"  TO PAR-NAME.                        IX2144.2
191300     IF      INIT-FLAG NOT EQUAL ZERO                             IX2144.2
191400             PERFORM START-INIT-ERROR                             IX2144.2
191500             GO TO START-DELETE-GF-25.                            IX2144.2
191600     MOVE    "CCCCCCCCCD022"  TO FS1-RECKEY-1-13.                 IX2144.2
191700     MOVE    "YYYYYZYYYY410ALTKEY1"  TO FS1-ALTKEY1-1-20.         IX2144.2
191800     MOVE    "VVVVVVVVVV380ALTKEY2"  TO FS1-ALTKEY2-1-20.         IX2144.2
191900     MOVE    WRK-FS1-RECKEY   TO IX-REC-KEY-AREA.                 IX2144.2
192000     MOVE    WRK-FS1-ALTKEY1  TO IX-ALT-KEY1-AREA.                IX2144.2
192100     MOVE    WRK-FS1-ALTKEY2  TO IX-ALT-KEY2-AREA.                IX2144.2
192200 START-TEST-GF-25.                                                IX2144.2
192300*                                                                         
192400*                                                                         
192500*                                                                         
192600*                                                                         
192700*                                                                         
192800*                                                                         
192900*                                                                         
193000*                                                                         
193100*                                                                         
193200*                                                                         
193300*                                                                         
193400*                                                                         
193500     START   IX-FS1                                               IX2144.2
193600                    KEY IS NOT LESS THAN R-ALTKEY1-1-6            IX2144.2
193700          INVALID KEY    MOVE  FS1-STATUS TO FILESTATUS (7)       IX2144.2
193800                     GO TO START-PASS-GF-25.                      IX2144.2
193900     MOVE    FS1-STATUS TO FILESTATUS (7).                        IX2144.2
194000     READ    IX-FS1  AT END                                       IX2144.2
194100                     MOVE  "AT END PATH TAKEN ON READ" TO RE-MARK.IX2144.2
194200     MOVE    IX-FS1R1-F-G-240 TO FILE-RECORD-INFO (1).            IX2144.2
194300     PERFORM FAIL.                                                IX2144.2
194400     MOVE    XRECORD-KEY (1) TO COMPUTED-A.                       IX2144.2
194500     MOVE    "INVALID KEY" TO CORRECT-A.                          IX2144.2
194600     MOVE "IX-36 INVALID KEY PATH NOT BE TAKEN OR AT END ON READ" IX2144.2
194700           TO RE-MARK.                                            IX2144.2
194800     GO TO   START-WRITE-GF-25.                                   IX2144.2
194900 START-PASS-GF-25.                                                IX2144.2
195000     PERFORM PASS.                                                IX2144.2
195100     MOVE    "INVALID KEY"  TO RE-MARK.                           IX2144.2
195200     GO TO   START-WRITE-GF-25.                                   IX2144.2
195300 START-DELETE-GF-25.                                              IX2144.2
195400     PERFORM DE-LETE.                                             IX2144.2
195500 START-WRITE-GF-25.                                               IX2144.2
195600     PERFORM PRINT-DETAIL.                                        IX2144.2
195700 START-INIT-GF-26.                                                IX2144.2
195800     PERFORM START-INITIALIZE-RECORD.                             IX2144.2
195900     MOVE "START-TEST-GF-26"  TO PAR-NAME.                        IX2144.2
196000     IF      INIT-FLAG NOT EQUAL ZERO                             IX2144.2
196100             PERFORM START-INIT-ERROR                             IX2144.2
196200             GO TO START-DELETE-GF-26.                            IX2144.2
196300     MOVE    "YYYYYUUUUU390"  TO FS1-RECKEY-1-13.                 IX2144.2
196400     MOVE    "EEEEDEEEEE002ALTKEY1"  TO FS1-ALTKEY1-1-20.         IX2144.2
196500     MOVE    "WWWWWWWWWV399ALTKEY2"  TO FS1-ALTKEY2-1-20.         IX2144.2
196600     MOVE    WRK-FS1-RECKEY   TO IX-REC-KEY-AREA.                 IX2144.2
196700     MOVE    WRK-FS1-ALTKEY1  TO IX-ALT-KEY1-AREA.                IX2144.2
196800     MOVE    WRK-FS1-ALTKEY2  TO IX-ALT-KEY2-AREA.                IX2144.2
196900 START-TEST-GF-26.                                                IX2144.2
197000*                                                                         
197100*                                                                         
197200*                                                                         
197300*                                                                         
197400*                                                                         
197500*                                                                         
197600*                                                                         
197700*                                                                         
197800*                                                                         
197900*                                                                         
198000*                                                                         
198100*                                                                         
198200*                                                                         
198300*                                                                         
198400     START   IX-FS1                                               IX2144.2
198500                    KEY IS NOT LESS THAN R-ALTKEY1-1-6            IX2144.2
198600          INVALID KEY    MOVE  FS1-STATUS TO FILESTATUS (8)       IX2144.2
198700                     MOVE  "INVALID KEY ON START"  TO COMPUTED-A  IX2144.2
198800                     GO TO START-FAIL-GF-26.                      IX2144.2
198900     MOVE    FS1-STATUS TO FILESTATUS (8).                        IX2144.2
199000     READ    IX-FS1  AT END                                       IX2144.2
199100                     MOVE "AT END ON READ" TO COMPUTED-A          IX2144.2
199200                     GO TO START-FAIL-GF-26.                      IX2144.2
199300     MOVE    IX-FS1R1-F-G-240 TO FILE-RECORD-INFO (1).            IX2144.2
199400     IF      XRECORD-NUMBER (1) EQUAL TO 001                      IX2144.2
199500             PERFORM  PASS                                        IX2144.2
199600             MOVE  "SUBORDINATE DATA ITEM IN KEY"  TO RE-MARK     IX2144.2
199700             GO TO START-WRITE-GF-26.                             IX2144.2
199800     MOVE    01  TO RECNO.                                        IX2144.2
199900     PERFORM DISPLAY-ALTERNATE-KEY1.                              IX2144.2
200000     MOVE    XRECORD-NUMBER (1)  TO COMPUTED-18V0.                IX2144.2
200100 START-FAIL-GF-26.                                                IX2144.2
200200     PERFORM  FAIL.                                               IX2144.2
200300     MOVE    001   TO CORRECT-18V0.                               IX2144.2
200400     MOVE "IX-36; IX-6: INVALID KEY PATH TAKEN OR AT END ON READ" IX2144.2
200500           TO RE-MARK.                                            IX2144.2
200600     GO TO   START-WRITE-GF-26.                                   IX2144.2
200700 START-DELETE-GF-26.                                              IX2144.2
200800     PERFORM DE-LETE.                                             IX2144.2
200900 START-WRITE-GF-26.                                               IX2144.2
201000     PERFORM PRINT-DETAIL.                                        IX2144.2
201100 START-INIT-GF-27.                                                IX2144.2
201200     PERFORM START-INITIALIZE-RECORD.                             IX2144.2
201300     MOVE "START-TEST-GF-27"  TO PAR-NAME.                        IX2144.2
201400     IF      INIT-FLAG NOT EQUAL ZERO                             IX2144.2
201500             PERFORM START-INIT-ERROR                             IX2144.2
201600             GO TO START-DELETE-GF-27.                            IX2144.2
201700     MOVE    "UUUUUUUUUU400"  TO FS1-RECKEY-1-13.                 IX2144.2
201800     MOVE    "YYYYYZYYYY400ALTKEY1"  TO FS1-ALTKEY1-1-20.         IX2144.2
201900     MOVE    "WWWWWWWWWV398ALTKEY2"  TO FS1-ALTKEY2-1-20.         IX2144.2
202000     MOVE    WRK-FS1-RECKEY   TO IX-REC-KEY-AREA.                 IX2144.2
202100     MOVE    WRK-FS1-ALTKEY1  TO IX-ALT-KEY1-AREA.                IX2144.2
202200     MOVE    WRK-FS1-ALTKEY2  TO IX-ALT-KEY2-AREA.                IX2144.2
202300 START-TEST-GF-27.                                                IX2144.2
202400*                                                                         
202500*                                                                         
202600*                                                                         
202700*                                                                         
202800*                                                                         
202900*                                                                         
203000*                                                                         
203100*                                                                         
203200*                                                                         
203300*                                                                         
203400*                                                                         
203500*                                                                         
203600*                                                                         
203700     START   IX-FS1                                               IX2144.2
203800                    KEY IS NOT LESS THAN IX-FS1-ALTKEY1-1-10      IX2144.2
203900                                 INVALID KEY                      IX2144.2
204000                         MOVE  FS1-STATUS TO FILESTATUS (9)       IX2144.2
204100                     GO TO START-PASS-GF-27.                      IX2144.2
204200     MOVE    FS1-STATUS TO FILESTATUS (9).                        IX2144.2
204300     READ    IX-FS1  AT END                                       IX2144.2
204400                     MOVE  "AT END PATH TAKEN ON READ" TO RE-MARK.IX2144.2
204500     MOVE    IX-FS1R1-F-G-240 TO FILE-RECORD-INFO (1).            IX2144.2
204600     PERFORM FAIL.                                                IX2144.2
204700     MOVE    XRECORD-KEY (1)  TO COMPUTED-A.                      IX2144.2
204800     MOVE     "INVALID KEY" TO CORRECT-A.                         IX2144.2
204900     MOVE "IX-36 INVALID KEY PATH NOT BE TAKEN OR AT END ON READ" IX2144.2
205000           TO RE-MARK.                                            IX2144.2
205100     GO TO   START-WRITE-GF-27.                                   IX2144.2
205200 START-PASS-GF-27.                                                IX2144.2
205300     PERFORM PASS.                                                IX2144.2
205400     MOVE    "INVALID KEY"  TO RE-MARK.                           IX2144.2
205500     GO TO   START-WRITE-GF-27.                                   IX2144.2
205600 START-DELETE-GF-27.                                              IX2144.2
205700     PERFORM DE-LETE.                                             IX2144.2
205800 START-WRITE-GF-27.                                               IX2144.2
205900     PERFORM PRINT-DETAIL.                                        IX2144.2
206000     CLOSE   IX-FS1.                                              IX2144.2
206100                                                                  IX2144.2
206200*                                                                         
206300*                                                                         
206400*                                                                         
206500*                                                                         
206600 START-TEST-GF-28.                                                IX2144.2
206700     MOVE              "FILE STATUS START:??" TO FEATURE.         IX2144.2
206800     MOVE "START-TEST-GF-28" TO PAR-NAME.                         IX2144.2
206900     IF      FILESTATUS (1)  EQUAL TO "**"                        IX2144.2
207000             PERFORM DE-LETE                                      IX2144.2
207100             MOVE "FROM START-TEST-GF-19"  TO CORRECT-A           IX2144.2
207200             GO TO  START-TEST-GF-28A.                            IX2144.2
207300*                                                                         
207400*                                                                         
207500*                                                                         
207600*                                                                         
207700*                                                                         
207800     IF      FILESTATUS (1)  EQUAL TO "00"                        IX2144.2
207900             PERFORM PASS                                         IX2144.2
208000     ELSE                                                         IX2144.2
208100         MOVE "IX-3; 1.3.4 (1) A;FROM START-TEST-GF-19" TO RE-MARKIX2144.2
208200             PERFORM  FAIL                                        IX2144.2
208300             MOVE  "00"  TO CORRECT-A                             IX2144.2
208400             MOVE   FILESTATUS (1)  TO COMPUTED-A.                IX2144.2
208500 START-TEST-GF-28A.                                               IX2144.2
208600     PERFORM  PRINT-DETAIL.                                       IX2144.2
208700 START-TEST-GF-29.                                                IX2144.2
208800     MOVE "START-TEST-GF-20" TO PAR-NAME.                         IX2144.2
208900     IF      FILESTATUS (2)  EQUAL TO "**"                        IX2144.2
209000             PERFORM DE-LETE                                      IX2144.2
209100             MOVE "FROM START-TEST-GF-20"  TO CORRECT-A           IX2144.2
209200             GO TO  START-TEST-GF-29A.                            IX2144.2
209300*                                                                         
209400*                                                                         
209500*                                                                         
209600*                                                                         
209700*                                                                         
209800     IF      FILESTATUS (2) EQUAL TO "80"                         IX2144.2
209900             PERFORM  PASS                                        IX2144.2
210000             ELSE  PERFORM  FAIL                                  IX2144.2
210100         MOVE "IX-3; 1.3.4 (1) A;FROM START-TEST-GF-20" TO RE-MARKIX2144.2
210200             MOVE    "80"  TO CORRECT-A                           IX2144.2
210300             MOVE   FILESTATUS (2)  TO COMPUTED-A.                IX2144.2
210400 START-TEST-GF-29A.                                               IX2144.2
210500     PERFORM  PRINT-DETAIL.                                       IX2144.2
210600 START-TEST-GF-30.                                                IX2144.2
210700     MOVE "START-TEST-GF-30" TO PAR-NAME.                         IX2144.2
210800     IF      FILESTATUS (3)  EQUAL TO "**"                        IX2144.2
210900             PERFORM DE-LETE                                      IX2144.2
211000             MOVE "FROM START-TEST-GF.21"  TO CORRECT-A           IX2144.2
211100             GO TO  START-TEST-GF-30A.                            IX2144.2
211200*                                                                         
211300*                                                                         
211400*                                                                         
211500*                                                                         
211600*                                                                         
211700     IF      FILESTATUS (3) EQUAL TO "00"                         IX2144.2
211800             PERFORM  PASS                                        IX2144.2
211900             ELSE  PERFORM  FAIL                                  IX2144.2
212000         MOVE "IX-3; 1.3.4 (1) A;FROM START-TEST-GF-21" TO RE-MARKIX2144.2
212100             MOVE    "00"  TO CORRECT-A                           IX2144.2
212200             MOVE   FILESTATUS (3)  TO COMPUTED-A.                IX2144.2
212300 START-TEST-GF-30A.                                               IX2144.2
212400     PERFORM  PRINT-DETAIL.                                       IX2144.2
212500 START-TEST-GF-31.                                                IX2144.2
212600     MOVE              "FILE STATUS START:??" TO FEATURE.         IX2144.2
212700     MOVE "START-TEST-GF-31" TO PAR-NAME.                         IX2144.2
212800     IF      FILESTATUS (4)  EQUAL TO "**"                        IX2144.2
212900             PERFORM DE-LETE                                      IX2144.2
213000             MOVE "FROM START-TEST-GF-22"  TO CORRECT-A           IX2144.2
213100             GO TO  START-TEST-GF-31A.                            IX2144.2
213200*                                                                         
213300*                                                                         
213400*                                                                         
213500*                                                                         
213600*                                                                         
213700     IF      FILESTATUS (4)  EQUAL TO "25"                        IX2144.2
213800             PERFORM  PASS                                        IX2144.2
213900             ELSE  PERFORM  FAIL                                  IX2144.2
214000         MOVE "FROM START-TEST-GF-04; IX-4 1.3.4 (3) C" TO RE-MARKIX2144.2
214100             MOVE    "25"  TO CORRECT-A                           IX2144.2
214200             MOVE   FILESTATUS (4)  TO COMPUTED-A.                IX2144.2
214300 START-TEST-GF-31A.                                               IX2144.2
214400     PERFORM  PRINT-DETAIL.                                       IX2144.2
214500 START-TEST-GF-32.                                                IX2144.2
214600     MOVE              "FILE STATUS START:??" TO FEATURE.         IX2144.2
214700     MOVE "START-TEST-GF-32" TO PAR-NAME.                         IX2144.2
214800     IF      FILESTATUS (5)  EQUAL TO "**"                        IX2144.2
214900             PERFORM DE-LETE                                      IX2144.2
215000             MOVE "FROM START-TEST-GF-23"  TO CORRECT-A           IX2144.2
215100             GO TO  START-TEST-GF-32A.                            IX2144.2
215200*                                                                         
215300*                                                                         
215400*                                                                         
215500*                                                                         
215600*                                                                         
215700     IF      FILESTATUS (5)  EQUAL TO "00"                        IX2144.2
215800             PERFORM  PASS                                        IX2144.2
215900             ELSE  PERFORM  FAIL                                  IX2144.2
216000         MOVE "IX-3; 1.3.4 (1) A;FROM START-TEST-GF-23" TO RE-MARKIX2144.2
216100             MOVE    "00"  TO CORRECT-A                           IX2144.2
216200             MOVE   FILESTATUS (5)  TO COMPUTED-A.                IX2144.2
216300 START-TEST-GF-32A.                                               IX2144.2
216400     PERFORM  PRINT-DETAIL.                                       IX2144.2
216500 START-TEST-GF-33.                                                IX2144.2
216600     MOVE              "FILE STATUS START:??" TO FEATURE.         IX2144.2
216700     MOVE "START-TEST-GF-33" TO PAR-NAME.                         IX2144.2
216800     IF      FILESTATUS (6)  EQUAL TO "**"                        IX2144.2
216900             PERFORM DE-LETE                                      IX2144.2
217000             MOVE "FROM START-TEST-GF-24"  TO CORRECT-A           IX2144.2
217100             GO TO  START-TEST-GF-33A.                            IX2144.2
217200*                                                                         
217300*                                                                         
217400*                                                                         
217500*                                                                         
217600*                                                                         
217700     IF      FILESTATUS (6)  EQUAL TO "08"                        IX2144.2
217800             PERFORM  PASS                                        IX2144.2
217900             ELSE  PERFORM  FAIL                                  IX2144.2
218000         MOVE "IX-3; 1.3.4 (1) A;FROM START-TEST-GF-24" TO RE-MARKIX2144.2
218100             MOVE   "08"  TO CORRECT-A                            IX2144.2
218200             MOVE   FILESTATUS (6)  TO COMPUTED-A.                IX2144.2
218300 START-TEST-GF-33A.                                               IX2144.2
218400     PERFORM  PRINT-DETAIL.                                       IX2144.2
218500 START-TEST-GF-34.                                                IX2144.2
218600     MOVE              "FILE STATUS START:??" TO FEATURE.         IX2144.2
218700     MOVE "START-TEST-GF-34" TO PAR-NAME.                         IX2144.2
218800     IF      FILESTATUS (7)  EQUAL TO "**"                        IX2144.2
218900             PERFORM DE-LETE                                      IX2144.2
219000             MOVE "FROM START-TEST-GF-25" TO CORRECT-A            IX2144.2
219100             GO TO  START-TEST-GF-34A.                            IX2144.2
219200*                                                                         
219300*                                                                         
219400*                                                                         
219500*                                                                         
219600*                                                                         
219700     IF      FILESTATUS (7)  EQUAL TO "23"                        IX2144.2
219800             PERFORM  PASS                                        IX2144.2
219900             ELSE  PERFORM  FAIL                                  IX2144.2
220000         MOVE "FROM START-TEST-GF-25; IX-4 1.3.4 (3) C" TO RE-MARKIX2144.2
220100             MOVE    "23"  TO CORRECT-A                           IX2144.2
220200             MOVE   FILESTATUS (7)  TO COMPUTED-A.                IX2144.2
220300 START-TEST-GF-34A.                                               IX2144.2
220400     PERFORM  PRINT-DETAIL.                                       IX2144.2
220500 START-TEST-GF-35.                                                IX2144.2
220600     MOVE              "FILE STATUS START:??" TO FEATURE.         IX2144.2
220700     MOVE "START-TEST-GF-35" TO PAR-NAME.                         IX2144.2
220800     IF      FILESTATUS (8)  EQUAL TO "**"                        IX2144.2
220900             PERFORM DE-LETE                                      IX2144.2
221000             MOVE "FROM START-TEST-GF-26" TO CORRECT-A            IX2144.2
221100             GO TO  START-TEST-GF-35A.                            IX2144.2
221200*                                                                         
221300*                                                                         
221400*                                                                         
221500*                                                                         
221600*                                                                         
221700     IF      FILESTATUS (8) EQUAL TO "00"                         IX2144.2
221800             PERFORM  PASS                                        IX2144.2
221900             ELSE  PERFORM  FAIL                                  IX2144.2
222000         MOVE "IX-3; 1.3.4 (1) A;FROM START-TEST-GF-26" TO RE-MARKIX2144.2
222100             MOVE    "00"  TO CORRECT-A                           IX2144.2
222200             MOVE   FILESTATUS (8)  TO COMPUTED-A.                IX2144.2
222300 START-TEST-GF-35A.                                               IX2144.2
222400     PERFORM  PRINT-DETAIL.                                       IX2144.2
222500 START-TEST-GF-36.                                                IX2144.2
222600     MOVE              "FILE STATUS START:??" TO FEATURE.         IX2144.2
222700     MOVE "START-TEST-GF-36" TO PAR-NAME.                         IX2144.2
222800     IF      FILESTATUS (9)  EQUAL TO "**"                        IX2144.2
222900             PERFORM DE-LETE                                      IX2144.2
223000             MOVE "FROM START-TEST-GF-27"  TO CORRECT-A           IX2144.2
223100             GO TO  START-TEST-GF-36A.                            IX2144.2
223200*                                                                         
223300*                                                                         
223400*                                                                         
223500*                                                                         
223600*                                                                         
223700     IF      FILESTATUS (9)  EQUAL TO "23"                        IX2144.2
223800             PERFORM PASS                                         IX2144.2
223900     ELSE    PERFORM FAIL                                         IX2144.2
224000         MOVE "FROM START-TEST-GF-27; IX-4 1.3.4 (3) C" TO RE-MARKIX2144.2
224100             MOVE  "23"  TO CORRECT-A                             IX2144.2
224200             MOVE   FILESTATUS (9)  TO COMPUTED-A.                IX2144.2
224300 START-TEST-GF-36A.                                               IX2144.2
224400     PERFORM  PRINT-DETAIL.                                       IX2144.2
224500                                                                  IX2144.2
224600                                                                  IX2144.2
224700                                                                  IX2144.2
224800 START-INIT-GF-37.                                                IX2144.2
224900     OPEN  I-O   IX-FS1.                                          IX2144.2
225000     MOVE     "START SERIES" TO FEATURE.                          IX2144.2
225100     MOVE    "START-TEST-GF-37" TO PAR-NAME.                      IX2144.2
225200     MOVE    ZERO TO INVKEY-COUNTER.                              IX2144.2
225300*                                                                         
225400*                                                                         
225500*                                                                         
225600*                                                                         
225700*                                                                         
225800*                                                                         
225900*                                                                         
226000*                                                                         
226100*                                                                         
226200 START-TEST-GF-37.                                                IX2144.2
226300     MOVE    "FGGGGGGGGG098"  TO FS1-RECKEY-1-13.                 IX2144.2
226400     MOVE    "WWWWWWWXXX366ALTKEY1"  TO FS1-ALTKEY1-1-20.         IX2144.2
226500     MOVE    "RRRRRRRRRR300ALTKEY2"  TO FS1-ALTKEY2-1-20.         IX2144.2
226600     MOVE    WRK-FS1-RECKEY TO IX-REC-KEY-AREA.                   IX2144.2
226700     MOVE    WRK-FS1-ALTKEY1 TO IX-ALT-KEY1-AREA.                 IX2144.2
226800     MOVE    WRK-FS1-ALTKEY2 TO IX-ALT-KEY2-AREA.                 IX2144.2
226900     START   IX-FS1                                               IX2144.2
227000                     KEY IS EQUAL TO IX-FS1-ALTKEY2               IX2144.2
227100                       INVALID KEY ADD 1  TO INVKEY-COUNTER.      IX2144.2
227200     START   IX-FS1   INVALID KEY  ADD  01  TO INVKEY-COUNTER.    IX2144.2
227300     START   IX-FS1                                               IX2144.2
227400                    KEY IS NOT LESS THAN R-ALTKEY1-1-6            IX2144.2
227500                       INVALID KEY ADD 1  TO INVKEY-COUNTER.      IX2144.2
227600     START   IX-FS1                                               IX2144.2
227700                     KEY IS NOT LESS THAN IX-FS1-ALTKEY2-1-5      IX2144.2
227800                       INVALID KEY ADD 1  TO INVKEY-COUNTER.      IX2144.2
227900     READ    IX-FS1  AT END                                       IX2144.2
228000                     MOVE  "AT END ON READ"  TO COMPUTED-A        IX2144.2
228100                     GO TO  START-FAIL-GF-37.                     IX2144.2
228200     MOVE    IX-FS1R1-F-G-240 TO FILE-RECORD-INFO (1).            IX2144.2
228300     IF      XRECORD-NUMBER (1) EQUAL TO 175                      IX2144.2
228400             PERFORM  PASS                                        IX2144.2
228500             MOVE    "MULTIPLE STARTS BEFORE READ " TO RE-MARK    IX2144.2
228600             GO TO  START-WRITE-GF-37.                            IX2144.2
228700     MOVE    "RRRRRRRRRR050ALTKEY2" TO CORRECT-A.                 IX2144.2
228800     MOVE    ALTERNATE-KEY2 (1) TO WRK-FS1-ALTKEY2.               IX2144.2
228900     MOVE    FS1-ALTKEY2-1-20 TO COMPUTED-A.                      IX2144.2
229000     MOVE    SPACE TO P-OR-F.                                     IX2144.2
229100     MOVE    "ALTERNATE RECORD KEY2 VALUES" TO RE-MARK.           IX2144.2
229200     PERFORM PRINT-DETAIL.                                        IX2144.2
229300     MOVE    XRECORD-NUMBER (1) TO COMPUTED-18V0.                 IX2144.2
229400 START-FAIL-GF-37.                                                IX2144.2
229500     PERFORM FAIL.                                                IX2144.2
229600     MOVE    175 TO CORRECT-18V0.                                 IX2144.2
229700     MOVE "WRONG RECORD NUMBER; IX-28 OR IX-36" TO RE-MARK.       IX2144.2
229800     GO TO START-WRITE-GF-37.                                     IX2144.2
229900 START-DELETE-GF-37.                                              IX2144.2
230000     PERFORM DE-LETE.                                             IX2144.2
230100 START-WRITE-GF-37.                                               IX2144.2
230200     PERFORM  PRINT-DETAIL.                                       IX2144.2
230300                                                                  IX2144.2
230400     CLOSE   IX-FS1.                                              IX2144.2
230500     GO TO  CCVS-EXIT.                                            IX2144.2
230600                                                                  IX2144.2
230700                                                                  IX2144.2
230800 START-INITIALIZE-RECORD.                                         IX2144.2
230900     MOVE    "**"  TO FS1-STATUS.                                 IX2144.2
231000     MOVE    "GGGGGGGGGG200" TO  FS1-RECKEY-1-13.                 IX2144.2
231100     MOVE    ZERO  TO INIT-FLAG.                                  IX2144.2
231200     MOVE    9999  TO XRECORD-NUMBER (1).                         IX2144.2
231300     MOVE    SPACE TO IX-FS1R1-F-G-240.                           IX2144.2
231400     MOVE    WRK-FS1-RECKEY TO IX-REC-KEY-AREA.                   IX2144.2
231500     START   IX-FS1                                               IX2144.2
231600                     KEY IS EQUAL TO IX-FS1-KEY                   IX2144.2
231700         INVALID KEY MOVE  "INVALID KEY ON START" TO COMPUTED-A   IX2144.2
231800                     MOVE 01 TO INIT-FLAG.                        IX2144.2
231900     READ    IX-FS1  INTO  FILE-RECORD-INFO (1)                   IX2144.2
232000                     AT END  MOVE  "AT END ON READ" TO COMPUTED-A IX2144.2
232100                     MOVE 01 TO INIT-FLAG.                        IX2144.2
232200     IF      XRECORD-NUMBER (1) NOT EQUAL TO 100                  IX2144.2
232300             MOVE 02 TO INIT-FLAG.                                IX2144.2
232400     MOVE    SPACE TO FS1-STATUS.                                 IX2144.2
232500 START-INIT-ERROR.                                                IX2144.2
232600     MOVE    "TEST IMPROPERLY INITIALIZED" TO RE-MARK.            IX2144.2
232700     MOVE    "GGGGGGGGGG200" TO CORRECT-A.                        IX2144.2
232800     IF      INIT-FLAG NOT EQUAL 01                               IX2144.2
232900             MOVE    XRECORD-KEY (1)  TO WRK-FS1-RECKEY           IX2144.2
233000             MOVE    FS1-RECKEY-1-13  TO COMPUTED-A.              IX2144.2
233100     PERFORM PRINT-DETAIL.                                        IX2144.2
233200     MOVE    "**" TO FILESTATUS (REC-CT).                         IX2144.2
233300 DISPLAY-RECORD-KEYS.                                             IX2144.2
233400     MOVE    XRECORD-KEY (1)  TO WRK-FS1-RECKEY.                  IX2144.2
233500     MOVE    FS1-RECKEY-1-13  TO COMPUTED-A.                      IX2144.2
233600     MOVE    RECKEY-VALUE (RECNO)  TO CORRECT-A.                  IX2144.2
233700     MOVE    SPACE TO P-OR-F.                                     IX2144.2
233800     MOVE    "RECORD KEY VALUES" TO RE-MARK.                      IX2144.2
233900     PERFORM PRINT-DETAIL.                                        IX2144.2
234000 DISPLAY-ALTERNATE-KEY1.                                          IX2144.2
234100     MOVE    ALTERNATE-KEY1 (1)  TO WRK-FS1-ALTKEY1.              IX2144.2
234200     MOVE    FS1-ALTKEY1-1-20  TO COMPUTED-A.                     IX2144.2
234300     MOVE    ALTKEY1-VALUE (RECNO)  TO CORRECT-A.                 IX2144.2
234400     MOVE    SPACE TO P-OR-F.                                     IX2144.2
234500     MOVE    "ALTERNATE RECORD KEY1 VALUES"  TO RE-MARK.          IX2144.2
234600     PERFORM PRINT-DETAIL.                                        IX2144.2
234700 DISPLAY-ALTERNATE-KEY2.                                          IX2144.2
234800     MOVE    ALTERNATE-KEY2 (1) TO WRK-FS1-ALTKEY2.               IX2144.2
234900     MOVE    FS1-ALTKEY2-1-20  TO COMPUTED-A.                     IX2144.2
235000     MOVE    ALTKEY2-VALUE (RECNO)  TO CORRECT-A.                 IX2144.2
235100     MOVE    SPACE TO P-OR-F.                                     IX2144.2
235200     MOVE    "ALTERNATE RECORD KEY2 VALUES"  TO RE-MARK.          IX2144.2
235300     PERFORM PRINT-DETAIL.                                        IX2144.2
235400                                                                  IX2144.2
235500                                                                  IX2144.2
235600 CCVS-EXIT SECTION.                                               IX2144.2
235700 CCVS-999999.                                                     IX2144.2
235800     GO TO CLOSE-FILES.                                           IX2144.2
