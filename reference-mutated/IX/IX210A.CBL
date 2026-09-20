000100 IDENTIFICATION DIVISION.                                         IX2104.2
000200 PROGRAM-ID.                                                      IX2104.2
000300     IX210A.                                                      IX2104.2
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
017700 ENVIRONMENT DIVISION.                                            IX2104.2
017800 CONFIGURATION SECTION.                                           IX2104.2
017900 SOURCE-COMPUTER.                                                 IX2104.2
018000     GNU-Linux.                                                   IX2104.2
018100 OBJECT-COMPUTER.                                                 IX2104.2
018200     GNU-Linux                                                    IX2104.2
018300          PROGRAM COLLATING SEQUENCE IS FOR-INX-START-TEST.       IX2104.2
018400 SPECIAL-NAMES.                                                   IX2104.2
018500     ALPHABET                                                     IX2104.2
018600     FOR-INX-START-TEST IS "WVUTSRJIHGFEDCB".                     IX2104.2
018700 INPUT-OUTPUT SECTION.                                            IX2104.2
018800 FILE-CONTROL.                                                    IX2104.2
019400     SELECT PRINT-FILE ASSIGN TO                                  IX2104.2
019500     "REPORT".                                                    IX2104.2
019600     SELECT  IX-FS1                                               IX2104.2
019700     ASSIGN TO                                                    IX2104.2
019800     "XXXXX024"                                                   IX2104.2
020000        ACCESS MODE IS SEQUENTIAL                                 IX2104.2
020100        ORGANIZATION IS INDEXED                                   IX2104.2
020200        RECORD KEY IS IX-FS1-KEY                                  IX2104.2
020300        ALTERNATE RECORD KEY IS IX-FS1-ALTKEY1                    IX2104.2
020400        ALTERNATE RECORD KEY IS IX-FS1-ALTKEY2 WITH DUPLICATES    IX2104.2
020500        FILE STATUS IS FS1-STATUS.                                IX2104.2
020600 DATA DIVISION.                                                   IX2104.2
020700 FILE SECTION.                                                    IX2104.2
022400 FD  PRINT-FILE.                                                  IX2104.2
022500 01  PRINT-REC PICTURE X(120).                                    IX2104.2
022600 01  DUMMY-RECORD PICTURE X(120).                                 IX2104.2
022700 FD  IX-FS1                                                       IX2104.2
023000     RECORD CONTAINS 240 CHARACTERS.                              IX2104.2
023100 01  IX-FS1R1-F-G-240.                                            IX2104.2
023200     05 IX-FS1-REC-120           PICTURE X(120).                  IX2104.2
023300     05 IX-FS1-REC-121-240.                                       IX2104.2
023400        10 FILLER                PICTURE X(8).                    IX2104.2
023500        10 IX-REC-KEY-AREA.                                       IX2104.2
023600           15 IX-FS1-KEY.                                         IX2104.2
023700              20 IX-FS1-KEY-1-10.                                 IX2104.2
023800                 25 IX-FS1-KEY-1-5      PICTURE X(5).             IX2104.2
023900                 25 IX-FS1-KEY-6-10     PICTURE X(5).             IX2104.2
024000               20 IX-FS1-KEY-11-13      PICTURE X(3).             IX2104.2
024100           15 IX-REDF-RECKEY REDEFINES IX-FS1-KEY.                IX2104.2
024200              20 R-RECKEY-1-7    PICTURE X(7).                    IX2104.2
024300              20 R-RECKEY-8-13   PICTURE X(6).                    IX2104.2
024400           15 FILLER             PICTURE X(16).                   IX2104.2
024500        10 FILLER                PICTURE X(9).                    IX2104.2
024600        10 IX-ALT-KEY1-AREA.                                      IX2104.2
024700           15 IX-FS1-ALTKEY1.                                     IX2104.2
024800              20 IX-FS1-ALTKEY1-1-10.                             IX2104.2
024900                 25 IX-FS1-ALTKEY1-1-5  PICTURE X(5).             IX2104.2
025000                 25 IX-FS1-ALTKEY1-6-10 PICTURE X(5).             IX2104.2
025100              20 IX-FS1-ALTKEY1-11-13   PICTURE X(3).             IX2104.2
025200              20 IX-FS1-ALTKEY1-14-20   PICTURE X(7).             IX2104.2
025300           15 IX-REDF-ALTKEY1 REDEFINES IX-FS1-ALTKEY1.           IX2104.2
025400              20 R-ALTKEY1-1-6   PICTURE X(6).                    IX2104.2
025500              20 R-ALTKEY1-7-10  PICTURE X(4).                    IX2104.2
025600              20 R-ALTKEY1-11-20 PICTURE X(10).                   IX2104.2
025700           15 FILLER             PICTURE X(9).                    IX2104.2
025800        10 FILLER                PICTURE X(9).                    IX2104.2
025900        10 IX-ALT-KEY2-AREA.                                      IX2104.2
026000           15 IX-FS1-ALTKEY2.                                     IX2104.2
026100              20 IX-FS1-ALTKEY2-1-10.                             IX2104.2
026200                 25 IX-FS1-ALTKEY2-1-5  PICTURE X(5).             IX2104.2
026300                 25 IX-FS1-ALTKEY2-6-10 PICTURE X(5).             IX2104.2
026400              20 IX-FS1-ALTKEY2-11-13   PICTURE X(3).             IX2104.2
026500              20 IX-FS1-ALTKEY2-14-20   PICTURE X(7).             IX2104.2
026600           15 FILLER             PICTURE X(9).                    IX2104.2
026700        10 FILLER                PICTURE X(7).                    IX2104.2
026800 WORKING-STORAGE SECTION.                                         IX2104.2
026900 01  WRK-FS1-RECKEY.                                              IX2104.2
027000     05 FS1-RECKEY-1-13.                                          IX2104.2
027100        10 FS1-RECKEY-1-10       PICTURE X(10).                   IX2104.2
027200        10 FS1-RECKEY-11-13      PICTURE 9(3).                    IX2104.2
027300     05 FILLER                   PICTURE X(16)  VALUE SPACE.      IX2104.2
027400 01  WRK-FS1-ALTKEY1.                                             IX2104.2
027500      05 FS1-ALTKEY1-1-20.                                        IX2104.2
027600       10  FS1-ALTKEY1-1-10.                                      IX2104.2
027700        15 FS1-ALTKEY1-1-5       PICTURE X(5).                    IX2104.2
027800        15 FS1-ALTKEY1-6-10      PICTURE X(5).                    IX2104.2
027900       10 FS1-ALTKEY1-11-13      PICTURE 9(3).                    IX2104.2
028000       10 FS1-ALTKEY1-14-20      PICTURE X(7).                    IX2104.2
028100     05 FILLER                   PICTURE X(9)  VALUE SPACE.       IX2104.2
028200 01  WRK-FS1-ALTKEY2.                                             IX2104.2
028300     05 FS1-ALTKEY2-1-20.                                         IX2104.2
028400        10 FS1-ALTKEY2-1-10.                                      IX2104.2
028500           15 FS1-ALTKEY2-1-5    PICTURE X(5).                    IX2104.2
028600           15 FS1-ALTKEY2-6-10   PICTURE X(5).                    IX2104.2
028700        10 FS1-ALTKEY2-11-13     PICTURE 9(3).                    IX2104.2
028800        10 FS1-ALTKEY2-14-20     PICTURE X(7).                    IX2104.2
028900     05 FILLER                   PICTURE X(9) VALUE SPACE.        IX2104.2
029000 01  RECNO                       PICTURE 9(5)  VALUE ZERO.        IX2104.2
029100 01  FS1-STATUS                  PICTURE XX   VALUE SPACE.        IX2104.2
029200 01  EXCUT-COUNTER-06V00         PICTURE 9(6) VALUE ZERO.         IX2104.2
029300 01  KEYSUB                      PICTURE 9(3) COMPUTATIONAL.      IX2104.2
029400 01  INVKEY-COUNTER              PICTURE 9(3) COMPUTATIONAL.      IX2104.2
029500 01  RECORDS-WRITTEN             PICTURE 9(3).                    IX2104.2
029600 01  RECKEY-NUM                  PICTURE 9(3).                    IX2104.2
029700 01  ALTKEY1-NUM                 PICTURE 9(3).                    IX2104.2
029800 01  ALTKEY2-NUM                 PICTURE 9(3).                    IX2104.2
029900 01  RECORD-KEY-CONTENT.                                          IX2104.2
030000     05 FILLER PIC X(53) VALUE                                    IX2104.2
030100          "BBBBBBBBBC002EEEEEEEEEF002ALTKEY1WWWWWWWWWV398ALTKEY2".IX2104.2
030200     05 FILLER PIC X(53) VALUE                                    IX2104.2
030300          "BBBBBBBBCC004EEEEEEEEFF004ALTKEY1WWWWWWWWVV396ALTKEY2".IX2104.2
030400     05 FILLER PIC X(53) VALUE                                    IX2104.2
030500          "BBBBBBBCCC006EEEEEEEFFF006ALTKEY1WWWWWWWVVV394ALTKEY2".IX2104.2
030600     05 FILLER PIC X(53) VALUE                                    IX2104.2
030700          "BBBBBBCCCC008EEEEEEFFFF008ALTKEY1WWWWWWVVVV392ALTKEY2".IX2104.2
030800     05 FILLER PIC X(53) VALUE                                    IX2104.2
030900          "BBBBBCCCCC010EEEEEFFFFF010ALTKEY1WWWWWVVVVV390ALTKEY2".IX2104.2
031000     05 FILLER PIC X(53) VALUE                                    IX2104.2
031100          "BBBBCCCCCC012EEEEFFFFFF012ALTKEY1WWWWVVVVVV388ALTKEY2".IX2104.2
031200     05 FILLER PIC X(53) VALUE                                    IX2104.2
031300          "BBBCCCCCCC014EEEFFFFFFF014ALTKEY1WWWVVVVVVV386ALTKEY2".IX2104.2
031400     05 FILLER PIC X(53) VALUE                                    IX2104.2
031500          "BBCCCCCCCC016EEFFFFFFFF016ALTKEY1WWVVVVVVVV384ALTKEY2".IX2104.2
031600     05 FILLER PIC X(53) VALUE                                    IX2104.2
031700          "BCCCCCCCCC018EFFFFFFFFF018ALTKEY1WVVVVVVVVV382ALTKEY2".IX2104.2
031800     05 FILLER PIC X(53) VALUE                                    IX2104.2
031900          "CCCCCCCCCC020FFFFFFFFFF020ALTKEY1VVVVVVVVVV380ALTKEY2".IX2104.2
032000     05 FILLER PIC X(53) VALUE                                    IX2104.2
032100          "CCCCCCCCCD022FFFFFFFFFG022ALTKEY1VVVVVVVVVV380ALTKEY2".IX2104.2
032200     05 FILLER PIC X(53) VALUE                                    IX2104.2
032300          "CCCCCCCCDD024FFFFFFFFGG024ALTKEY1VVVVVVVVUU376ALTKEY2".IX2104.2
032400     05 FILLER PIC X(53) VALUE                                    IX2104.2
032500          "CCCCCCCDDD026FFFFFFFGGG026ALTKEY1VVVVVVVUUU374ALTKEY2".IX2104.2
032600     05 FILLER PIC X(53) VALUE                                    IX2104.2
032700          "CCCCCCDDDD028FFFFFFGGGG028ALTKEY1VVVVVVUUUU372ALTKEY2".IX2104.2
032800     05 FILLER PIC X(53) VALUE                                    IX2104.2
032900          "CCCCCDDDDD030FFFFFGGGGG030ALTKEY1VVVVVUUUUU370ALTKEY2".IX2104.2
033000     05 FILLER PIC X(53) VALUE                                    IX2104.2
033100          "CCCCDDDDDD032FFFFGGGGGG032ALTKEY1VVVVUUUUUU368ALTKEY2".IX2104.2
033200     05 FILLER PIC X(53) VALUE                                    IX2104.2
033300          "CCCDDDDDDD034FFFGGGGGGG034ALTKEY1VVVUUUUUUU366ALTKEY2".IX2104.2
033400     05 FILLER PIC X(53) VALUE                                    IX2104.2
033500          "CCDDDDDDDD036FFGGGGGGGG036ALTKEY1VVUUUUUUUU364ALTKEY2".IX2104.2
033600     05 FILLER PIC X(53) VALUE                                    IX2104.2
033700          "CDDDDDDDDD038FGGGGGGGGG038ALTKEY1VUUUUUUUUU362ALTKEY2".IX2104.2
033800     05 FILLER PIC X(53) VALUE                                    IX2104.2
033900          "DDDDDDDDDD040GGGGGGGGGG040ALTKEY1UUUUUUUUUU360ALTKEY2".IX2104.2
034000     05 FILLER PIC X(53) VALUE                                    IX2104.2
034100          "DDDDDDDDDE042GGGGGGGGGH042ALTKEY1UUUUUUUUUU360ALTKEY2".IX2104.2
034200     05 FILLER PIC X(53) VALUE                                    IX2104.2
034300          "DDDDDDDDEE044GGGGGGGGHH044ALTKEY1UUUUUUUUTT356ALTKEY2".IX2104.2
034400     05 FILLER PIC X(53) VALUE                                    IX2104.2
034500          "DDDDDDDEEE046GGGGGGGHHH046ALTKEY1UUUUUUUTTT354ALTKEY2".IX2104.2
034600     05 FILLER PIC X(53) VALUE                                    IX2104.2
034700          "DDDDDDEEEE048GGGGGGHHHH048ALTKEY1UUUUUUTTTT352ALTKEY2".IX2104.2
034800     05 FILLER PIC X(53) VALUE                                    IX2104.2
034900          "DDDDDEEEEE050GGGGGHHHHH050ALTKEY1UUUUUTTTTT350ALTKEY2".IX2104.2
035000     05 FILLER PIC X(53) VALUE                                    IX2104.2
035100          "DDDDEEEEEE052GGGGHHHHHH052ALTKEY1UUUUTTTTTT348ALTKEY2".IX2104.2
035200     05 FILLER PIC X(53) VALUE                                    IX2104.2
035300          "DDDEEEEEEE054GGGHHHHHHH054ALTKEY1UUUTTTTTTT346ALTKEY2".IX2104.2
035400     05 FILLER PIC X(53) VALUE                                    IX2104.2
035500          "DDEEEEEEEE056GGHHHHHHHH056ALTKEY1UUTTTTTTTT344ALTKEY2".IX2104.2
035600     05 FILLER PIC X(53) VALUE                                    IX2104.2
035700          "DEEEEEEEEE058GHHHHHHHHH058ALTKEY1UTTTTTTTTT342ALTKEY2".IX2104.2
035800     05 FILLER PIC X(53) VALUE                                    IX2104.2
035900          "EEEEEEEEEE060HHHHHHHHHH060ALTKEY1TTTTTTTTTT340ALTKEY2".IX2104.2
036000     05 FILLER PIC X(53) VALUE                                    IX2104.2
036100          "EEEEEEEEEF062HHHHHHHHHI062ALTKEY1TTTTTTTTTT340ALTKEY2".IX2104.2
036200     05 FILLER PIC X(53) VALUE                                    IX2104.2
036300          "EEEEEEEEFF064HHHHHHHHII064ALTKEY1TTTTTTTTSS336ALTKEY2".IX2104.2
036400     05 FILLER PIC X(53) VALUE                                    IX2104.2
036500          "EEEEEEEFFF066HHHHHHHIII066ALTKEY1TTTTTTTSSS334ALTKEY2".IX2104.2
036600     05 FILLER PIC X(53) VALUE                                    IX2104.2
036700          "EEEEEEFFFF068HHHHHHIIII068ALTKEY1TTTTTTSSSS332ALTKEY2".IX2104.2
036800     05 FILLER PIC X(53) VALUE                                    IX2104.2
036900          "EEEEEFFFFF070HHHHHIIIII070ALTKEY1TTTTTSSSSS330ALTKEY2".IX2104.2
037000     05 FILLER PIC X(53) VALUE                                    IX2104.2
037100          "EEEEFFFFFF072HHHHIIIIII072ALTKEY1TTTTSSSSSS328ALTKEY2".IX2104.2
037200     05 FILLER PIC X(53) VALUE                                    IX2104.2
037300          "EEEFFFFFFF074HHHIIIIIII074ALTKEY1TTTSSSSSSS326ALTKEY2".IX2104.2
037400     05 FILLER PIC X(53) VALUE                                    IX2104.2
037500          "EEFFFFFFFF076HHIIIIIIII076ALTKEY1TTSSSSSSSS324ALTKEY2".IX2104.2
037600     05 FILLER PIC X(53) VALUE                                    IX2104.2
037700          "EFFFFFFFFF078HIIIIIIIII078ALTKEY1TSSSSSSSSS322ALTKEY2".IX2104.2
037800     05 FILLER PIC X(53) VALUE                                    IX2104.2
037900          "FFFFFFFFFF080IIIIIIIIII080ALTKEY1SSSSSSSSSS320ALTKEY2".IX2104.2
038000     05 FILLER PIC X(53) VALUE                                    IX2104.2
038100          "FFFFFFFFFG082IIIIIIIIIJ082ALTKEY1SSSSSSSSSS320ALTKEY2".IX2104.2
038200     05 FILLER PIC X(53) VALUE                                    IX2104.2
038300          "FFFFFFFFGG084IIIIIIIIJJ084ALTKEY1SSSSSSSSRR316ALTKEY2".IX2104.2
038400     05 FILLER PIC X(53) VALUE                                    IX2104.2
038500          "FFFFFFFGGG086IIIIIIIJJJ086ALTKEY1SSSSSSSRRR314ALTKEY2".IX2104.2
038600     05 FILLER PIC X(53) VALUE                                    IX2104.2
038700          "FFFFFFGGGG088IIIIIIJJJJ088ALTKEY1SSSSSSRRRR312ALTKEY2".IX2104.2
038800     05 FILLER PIC X(53) VALUE                                    IX2104.2
038900          "FFFFFGGGGG090IIIIIJJJJJ090ALTKEY1SSSSSRRRRR310ALTKEY2".IX2104.2
039000     05 FILLER PIC X(53) VALUE                                    IX2104.2
039100          "FFFFGGGGGG092IIIIJJJJJJ092ALTKEY1SSSSRRRRRR308ALTKEY2".IX2104.2
039200     05 FILLER PIC X(53) VALUE                                    IX2104.2
039300          "FFFGGGGGGG094IIIJJJJJJJ094ALTKEY1SSSRRRRRRR306ALTKEY2".IX2104.2
039400     05 FILLER PIC X(53) VALUE                                    IX2104.2
039500          "FFGGGGGGGG096IIJJJJJJJJ096ALTKEY1SSRRRRRRRR304ALTKEY2".IX2104.2
039600     05 FILLER PIC X(53) VALUE                                    IX2104.2
039700          "FGGGGGGGGG098IJJJJJJJJJ098ALTKEY1SRRRRRRRRR302ALTKEY2".IX2104.2
039800     05 FILLER PIC X(53) VALUE                                    IX2104.2
039900          "GGGGGGGGGG100JJJJJJJJJJ100ALTKEY1RRRRRRRRRR300ALTKEY2".IX2104.2
040000     05 FILLER PIC X(53) VALUE                                    IX2104.2
040100          "RRRRSSSSSS352VVVVWWWWWW352ALTKEY1GGGGFFFFFF048ALTKEY2".IX2104.2
040200     05 FILLER PIC X(53) VALUE                                    IX2104.2
040300          "RRRSSSSSSS354VVVWWWWWWW354ALTKEY1GGGFFFFFFF046ALTKEY2".IX2104.2
040400     05 FILLER PIC X(53) VALUE                                    IX2104.2
040500          "RRSSSSSSSS356VVWWWWWWWW356ALTKEY1GGFFFFFFFF044ALTKEY2".IX2104.2
040600     05 FILLER PIC X(53) VALUE                                    IX2104.2
040700          "RSSSSSSSSS358VWWWWWWWWW358ALTKEY1GFFFFFFFFF042ALTKEY2".IX2104.2
040800     05 FILLER PIC X(53) VALUE                                    IX2104.2
040900          "SSSSSSSSSS360WWWWWWWWWW360ALTKEY1FFFFFFFFFF040ALTKEY2".IX2104.2
041000     05 FILLER PIC X(53) VALUE                                    IX2104.2
041100          "SSSSSSSSST362WWWWWWWWWX362ALTKEY1FFFFFFFFFF040ALTKEY2".IX2104.2
041200     05 FILLER PIC X(53) VALUE                                    IX2104.2
041300          "SSSSSSSSTT364WWWWWWWWXX364ALTKEY1FFFFFFFFEE036ALTKEY2".IX2104.2
041400     05 FILLER PIC X(53) VALUE                                    IX2104.2
041500          "SSSSSSSTTT366WWWWWWWXXX366ALTKEY1FFFFFFFEEE034ALTKEY2".IX2104.2
041600     05 FILLER PIC X(53) VALUE                                    IX2104.2
041700          "SSSSSSTTTT368WWWWWWXXXX368ALTKEY1FFFFFFEEEE032ALTKEY2".IX2104.2
041800     05 FILLER PIC X(53) VALUE                                    IX2104.2
041900          "SSSSSTTTTT370WWWWWXXXXX370ALTKEY1FFFFFEEEEE030ALTKEY2".IX2104.2
042000     05 FILLER PIC X(53) VALUE                                    IX2104.2
042100          "SSSSTTTTTT372WWWWXXXXXX372ALTKEY1FFFFEEEEEE028ALTKEY2".IX2104.2
042200     05 FILLER PIC X(53) VALUE                                    IX2104.2
042300          "SSSTTTTTTT374WWWXXXXXXX374ALTKEY1FFFEEEEEEE026ALTKEY2".IX2104.2
042400     05 FILLER PIC X(53) VALUE                                    IX2104.2
042500          "SSTTTTTTTT376WWXXXXXXXX376ALTKEY1FFEEEEEEEE024ALTKEY2".IX2104.2
042600     05 FILLER PIC X(53) VALUE                                    IX2104.2
042700          "STTTTTTTTT378WXXXXXXXXX378ALTKEY1FEEEEEEEEE022ALTKEY2".IX2104.2
042800     05 FILLER PIC X(53) VALUE                                    IX2104.2
042900          "TTTTTTTTTT380XXXXXXXXXX380ALTKEY1EEEEEEEEEE020ALTKEY2".IX2104.2
043000     05 FILLER PIC X(53) VALUE                                    IX2104.2
043100          "TTTTTTTTTU382XXXXXXXXXY382ALTKEY1EEEEEEEEEE020ALTKEY2".IX2104.2
043200     05 FILLER PIC X(53) VALUE                                    IX2104.2
043300          "TTTTTTTTUU384XXXXXXXXYY384ALTKEY1EEEEEEEEDD016ALTKEY2".IX2104.2
043400     05 FILLER PIC X(53) VALUE                                    IX2104.2
043500          "TTTTTTTUUU386XXXXXXXYYY386ALTKEY1EEEEEEEDDD014ALTKEY2".IX2104.2
043600     05 FILLER PIC X(53) VALUE                                    IX2104.2
043700          "TTTTTTUUUU388XXXXXXYYYY388ALTKEY1EEEEEEDDDD012ALTKEY2".IX2104.2
043800     05 FILLER PIC X(53) VALUE                                    IX2104.2
043900          "TTTTTUUUUU390XXXXXYYYYY390ALTKEY1EEEEEDDDDD010ALTKEY2".IX2104.2
044000     05 FILLER PIC X(53) VALUE                                    IX2104.2
044100          "TTTTUUUUUU392XXXXYYYYYY392ALTKEY1EEEEDDDDDD008ALTKEY2".IX2104.2
044200     05 FILLER PIC X(53) VALUE                                    IX2104.2
044300          "TTTUUUUUUU394XXXYYYYYYY394ALTKEY1EEEDDDDDDD006ALTKEY2".IX2104.2
044400     05 FILLER PIC X(53) VALUE                                    IX2104.2
044500          "TTUUUUUUUU396XXYYYYYYYY396ALTKEY1EEDDDDDDDD004ALTKEY2".IX2104.2
044600     05 FILLER PIC X(53) VALUE                                    IX2104.2
044700          "TUUUUUUUUU398XYYYYYYYYY398ALTKEY1EDDDDDDDDD002ALTKEY2".IX2104.2
044800     05 FILLER PIC X(53) VALUE                                    IX2104.2
044900          "UUUUUUUUUU400YYYYYYYYYY400ALTKEY1DDDDDDDDDD000ALTKEY2".IX2104.2
045000 01  RECORD-KEY-DATA   REDEFINES  RECORD-KEY-CONTENT.             IX2104.2
045100     05 KEY-VALUES                  OCCURS 75  TIMES.             IX2104.2
045200       10 RECKEY-VALUE           PICTURE X(13).                   IX2104.2
045300       10 ALTKEY1-VALUE          PICTURE X(20).                   IX2104.2
045400       10 ALTKEY2-VALUE          PICTURE X(20).                   IX2104.2
045500 01  INIT-FLAG                   PICTURE 9.                       IX2104.2
045600 01  HOLD-FILESTATUS-RECORD.                                      IX2104.2
045700     05 FILESTATUS               PICTURE XX  OCCURS 10 TIMES.     IX2104.2
045800 01  FILE-RECORD-INFORMATION-REC.                                 IX2104.2
045900     03 FILE-RECORD-INFO-SKELETON.                                IX2104.2
046000        05 FILLER                 PICTURE X(48)       VALUE       IX2104.2
046100             "FILE=      ,RECORD=      /0,RECNO=000000,UPDT=00".  IX2104.2
046200        05 FILLER                 PICTURE X(46)       VALUE       IX2104.2
046300             ",ODO=0000,PGM=     ,LRECL=000000,BLKSIZ  =0000".    IX2104.2
046400        05 FILLER                 PICTURE X(26)       VALUE       IX2104.2
046500             ",LFIL=000000,ORG=  ,LBLR= ".                        IX2104.2
046600        05 FILLER                 PICTURE X(37)       VALUE       IX2104.2
046700             ",RECKEY=                             ".             IX2104.2
046800        05 FILLER                 PICTURE X(38)       VALUE       IX2104.2
046900             ",ALTKEY1=                             ".            IX2104.2
047000        05 FILLER                 PICTURE X(38)       VALUE       IX2104.2
047100             ",ALTKEY2=                             ".            IX2104.2
047200        05 FILLER                 PICTURE X(7)        VALUE SPACE.IX2104.2
047300     03 FILE-RECORD-INFO          OCCURS  10  TIMES.              IX2104.2
047400        05 FILE-RECORD-INFO-P1-120.                               IX2104.2
047500           07 FILLER              PIC X(5).                       IX2104.2
047600           07 XFILE-NAME           PIC X(6).                      IX2104.2
047700           07 FILLER              PIC X(8).                       IX2104.2
047800           07 XRECORD-NAME         PIC X(6).                      IX2104.2
047900           07 FILLER              PIC X(1).                       IX2104.2
048000           07 REELUNIT-NUMBER     PIC 9(1).                       IX2104.2
048100           07 FILLER              PIC X(7).                       IX2104.2
048200           07 XRECORD-NUMBER       PIC 9(6).                      IX2104.2
048300           07 FILLER              PIC X(6).                       IX2104.2
048400           07 UPDATE-NUMBER       PIC 9(2).                       IX2104.2
048500           07 FILLER              PIC X(5).                       IX2104.2
048600           07 ODO-NUMBER          PIC 9(4).                       IX2104.2
048700           07 FILLER              PIC X(5).                       IX2104.2
048800           07 XPROGRAM-NAME        PIC X(5).                      IX2104.2
048900           07 FILLER              PIC X(7).                       IX2104.2
049000           07 XRECORD-LENGTH       PIC 9(6).                      IX2104.2
049100           07 FILLER              PIC X(7).                       IX2104.2
049200           07 CHARS-OR-RECORDS    PIC X(2).                       IX2104.2
049300           07 FILLER              PIC X(1).                       IX2104.2
049400           07 XBLOCK-SIZE          PIC 9(4).                      IX2104.2
049500           07 FILLER              PIC X(6).                       IX2104.2
049600           07 RECORDS-IN-FILE     PIC 9(6).                       IX2104.2
049700           07 FILLER              PIC X(5).                       IX2104.2
049800           07 XFILE-ORGANIZATION   PIC X(2).                      IX2104.2
049900           07 FILLER              PIC X(6).                       IX2104.2
050000           07 XLABEL-TYPE          PIC X(1).                      IX2104.2
050100        05 FILE-RECORD-INFO-P121-240.                             IX2104.2
050200           07 FILLER              PIC X(8).                       IX2104.2
050300           07 XRECORD-KEY          PIC X(29).                     IX2104.2
050400           07 FILLER              PIC X(9).                       IX2104.2
050500           07 ALTERNATE-KEY1      PIC X(29).                      IX2104.2
050600           07 FILLER              PIC X(9).                       IX2104.2
050700           07 ALTERNATE-KEY2      PIC X(29).                      IX2104.2
050800           07 FILLER              PIC X(7).                       IX2104.2
050900 01  TEST-RESULTS.                                                IX2104.2
051000     02 FILLER                   PIC X      VALUE SPACE.          IX2104.2
051100     02 FEATURE                  PIC X(20)  VALUE SPACE.          IX2104.2
051200     02 FILLER                   PIC X      VALUE SPACE.          IX2104.2
051300     02 P-OR-F                   PIC X(5)   VALUE SPACE.          IX2104.2
051400     02 FILLER                   PIC X      VALUE SPACE.          IX2104.2
051500     02  PAR-NAME.                                                IX2104.2
051600       03 FILLER                 PIC X(19)  VALUE SPACE.          IX2104.2
051700       03  PARDOT-X              PIC X      VALUE SPACE.          IX2104.2
051800       03 DOTVALUE               PIC 99     VALUE ZERO.           IX2104.2
051900     02 FILLER                   PIC X(8)   VALUE SPACE.          IX2104.2
052000     02 RE-MARK                  PIC X(61).                       IX2104.2
052100 01  TEST-COMPUTED.                                               IX2104.2
052200     02 FILLER                   PIC X(30)  VALUE SPACE.          IX2104.2
052300     02 FILLER                   PIC X(17)  VALUE                 IX2104.2
052400            "       COMPUTED=".                                   IX2104.2
052500     02 COMPUTED-X.                                               IX2104.2
052600     03 COMPUTED-A               PIC X(20)  VALUE SPACE.          IX2104.2
052700     03 COMPUTED-N               REDEFINES COMPUTED-A             IX2104.2
052800                                 PIC -9(9).9(9).                  IX2104.2
052900     03 COMPUTED-0V18 REDEFINES COMPUTED-A   PIC -.9(18).         IX2104.2
053000     03 COMPUTED-4V14 REDEFINES COMPUTED-A   PIC -9(4).9(14).     IX2104.2
053100     03 COMPUTED-14V4 REDEFINES COMPUTED-A   PIC -9(14).9(4).     IX2104.2
053200     03       CM-18V0 REDEFINES COMPUTED-A.                       IX2104.2
053300         04 COMPUTED-18V0                    PIC -9(18).          IX2104.2
053400         04 FILLER                           PIC X.               IX2104.2
053500     03 FILLER PIC X(50) VALUE SPACE.                             IX2104.2
053600 01  TEST-CORRECT.                                                IX2104.2
053700     02 FILLER PIC X(30) VALUE SPACE.                             IX2104.2
053800     02 FILLER PIC X(17) VALUE "       CORRECT =".                IX2104.2
053900     02 CORRECT-X.                                                IX2104.2
054000     03 CORRECT-A                  PIC X(20) VALUE SPACE.         IX2104.2
054100     03 CORRECT-N    REDEFINES CORRECT-A     PIC -9(9).9(9).      IX2104.2
054200     03 CORRECT-0V18 REDEFINES CORRECT-A     PIC -.9(18).         IX2104.2
054300     03 CORRECT-4V14 REDEFINES CORRECT-A     PIC -9(4).9(14).     IX2104.2
054400     03 CORRECT-14V4 REDEFINES CORRECT-A     PIC -9(14).9(4).     IX2104.2
054500     03      CR-18V0 REDEFINES CORRECT-A.                         IX2104.2
054600         04 CORRECT-18V0                     PIC -9(18).          IX2104.2
054700         04 FILLER                           PIC X.               IX2104.2
054800     03 FILLER PIC X(2) VALUE SPACE.                              IX2104.2
054900     03 COR-ANSI-REFERENCE             PIC X(48) VALUE SPACE.     IX2104.2
055000 01  CCVS-C-1.                                                    IX2104.2
055100     02 FILLER  PIC IS X(99)    VALUE IS " FEATURE              PAIX2104.2
055200-    "SS  PARAGRAPH-NAME                                          IX2104.2
055300-    "       REMARKS".                                            IX2104.2
055400     02 FILLER                     PIC X(20)    VALUE SPACE.      IX2104.2
055500 01  CCVS-C-2.                                                    IX2104.2
055600     02 FILLER                     PIC X        VALUE SPACE.      IX2104.2
055700     02 FILLER                     PIC X(6)     VALUE "TESTED".   IX2104.2
055800     02 FILLER                     PIC X(15)    VALUE SPACE.      IX2104.2
055900     02 FILLER                     PIC X(4)     VALUE "FAIL".     IX2104.2
056000     02 FILLER                     PIC X(94)    VALUE SPACE.      IX2104.2
056100 01  REC-SKL-SUB                   PIC 9(2)     VALUE ZERO.       IX2104.2
056200 01  REC-CT                        PIC 99       VALUE ZERO.       IX2104.2
056300 01  DELETE-COUNTER                PIC 999      VALUE ZERO.       IX2104.2
056400 01  ERROR-COUNTER                 PIC 999      VALUE ZERO.       IX2104.2
056500 01  INSPECT-COUNTER               PIC 999      VALUE ZERO.       IX2104.2
056600 01  PASS-COUNTER                  PIC 999      VALUE ZERO.       IX2104.2
056700 01  TOTAL-ERROR                   PIC 999      VALUE ZERO.       IX2104.2
056800 01  ERROR-HOLD                    PIC 999      VALUE ZERO.       IX2104.2
056900 01  DUMMY-HOLD                    PIC X(120)   VALUE SPACE.      IX2104.2
057000 01  RECORD-COUNT                  PIC 9(5)     VALUE ZERO.       IX2104.2
057100 01  ANSI-REFERENCE                PIC X(48)    VALUE SPACES.     IX2104.2
057200 01  CCVS-H-1.                                                    IX2104.2
057300     02  FILLER                    PIC X(39)    VALUE SPACES.     IX2104.2
057400     02  FILLER                    PIC X(42)    VALUE             IX2104.2
057500     "OFFICIAL COBOL COMPILER VALIDATION SYSTEM".                 IX2104.2
057600     02  FILLER                    PIC X(39)    VALUE SPACES.     IX2104.2
057700 01  CCVS-H-2A.                                                   IX2104.2
057800   02  FILLER                        PIC X(40)  VALUE SPACE.      IX2104.2
057900   02  FILLER                        PIC X(7)   VALUE "CCVS85 ".  IX2104.2
058000   02  FILLER                        PIC XXXX   VALUE             IX2104.2
058100     "4.2 ".                                                      IX2104.2
058200   02  FILLER                        PIC X(28)  VALUE             IX2104.2
058300            " COPY - NOT FOR DISTRIBUTION".                       IX2104.2
058400   02  FILLER                        PIC X(41)  VALUE SPACE.      IX2104.2
058500                                                                  IX2104.2
058600 01  CCVS-H-2B.                                                   IX2104.2
058700   02  FILLER                        PIC X(15)  VALUE             IX2104.2
058800            "TEST RESULT OF ".                                    IX2104.2
058900   02  TEST-ID                       PIC X(9).                    IX2104.2
059000   02  FILLER                        PIC X(4)   VALUE             IX2104.2
059100            " IN ".                                               IX2104.2
059200   02  FILLER                        PIC X(12)  VALUE             IX2104.2
059300     " HIGH       ".                                              IX2104.2
059400   02  FILLER                        PIC X(22)  VALUE             IX2104.2
059500            " LEVEL VALIDATION FOR ".                             IX2104.2
059600   02  FILLER                        PIC X(58)  VALUE             IX2104.2
059700     "ON-SITE VALIDATION, NATIONAL INSTITUTE OF STD & TECH.     ".IX2104.2
059800 01  CCVS-H-3.                                                    IX2104.2
059900     02  FILLER                      PIC X(34)  VALUE             IX2104.2
060000            " FOR OFFICIAL USE ONLY    ".                         IX2104.2
060100     02  FILLER                      PIC X(58)  VALUE             IX2104.2
060200     "COBOL 85 VERSION 4.2, Apr  1993 SSVG                      ".IX2104.2
060300     02  FILLER                      PIC X(28)  VALUE             IX2104.2
060400            "  COPYRIGHT   1985 ".                                IX2104.2
060500 01  CCVS-E-1.                                                    IX2104.2
060600     02 FILLER                       PIC X(52)  VALUE SPACE.      IX2104.2
060700     02 FILLER  PIC X(14) VALUE IS "END OF TEST-  ".              IX2104.2
060800     02 ID-AGAIN                     PIC X(9).                    IX2104.2
060900     02 FILLER                       PIC X(45)  VALUE SPACES.     IX2104.2
061000 01  CCVS-E-2.                                                    IX2104.2
061100     02  FILLER                      PIC X(31)  VALUE SPACE.      IX2104.2
061200     02  FILLER                      PIC X(21)  VALUE SPACE.      IX2104.2
061300     02 CCVS-E-2-2.                                               IX2104.2
061400         03 ERROR-TOTAL              PIC XXX    VALUE SPACE.      IX2104.2
061500         03 FILLER                   PIC X      VALUE SPACE.      IX2104.2
061600         03 ENDER-DESC               PIC X(44)  VALUE             IX2104.2
061700            "ERRORS ENCOUNTERED".                                 IX2104.2
061800 01  CCVS-E-3.                                                    IX2104.2
061900     02  FILLER                      PIC X(22)  VALUE             IX2104.2
062000            " FOR OFFICIAL USE ONLY".                             IX2104.2
062100     02  FILLER                      PIC X(12)  VALUE SPACE.      IX2104.2
062200     02  FILLER                      PIC X(58)  VALUE             IX2104.2
062300     "ON-SITE VALIDATION, NATIONAL INSTITUTE OF STD & TECH.     ".IX2104.2
062400     02  FILLER                      PIC X(13)  VALUE SPACE.      IX2104.2
062500     02 FILLER                       PIC X(15)  VALUE             IX2104.2
062600             " COPYRIGHT 1985".                                   IX2104.2
062700 01  CCVS-E-4.                                                    IX2104.2
062800     02 CCVS-E-4-1                   PIC XXX    VALUE SPACE.      IX2104.2
062900     02 FILLER                       PIC X(4)   VALUE " OF ".     IX2104.2
063000     02 CCVS-E-4-2                   PIC XXX    VALUE SPACE.      IX2104.2
063100     02 FILLER                       PIC X(40)  VALUE             IX2104.2
063200      "  TESTS WERE EXECUTED SUCCESSFULLY".                       IX2104.2
063300 01  XXINFO.                                                      IX2104.2
063400     02 FILLER                       PIC X(19)  VALUE             IX2104.2
063500            "*** INFORMATION ***".                                IX2104.2
063600     02 INFO-TEXT.                                                IX2104.2
063700       04 FILLER                     PIC X(8)   VALUE SPACE.      IX2104.2
063800       04 XXCOMPUTED                 PIC X(20).                   IX2104.2
063900       04 FILLER                     PIC X(5)   VALUE SPACE.      IX2104.2
064000       04 XXCORRECT                  PIC X(20).                   IX2104.2
064100     02 INF-ANSI-REFERENCE           PIC X(48).                   IX2104.2
064200 01  HYPHEN-LINE.                                                 IX2104.2
064300     02 FILLER  PIC IS X VALUE IS SPACE.                          IX2104.2
064400     02 FILLER  PIC IS X(65)    VALUE IS "************************IX2104.2
064500-    "*****************************************".                 IX2104.2
064600     02 FILLER  PIC IS X(54)    VALUE IS "************************IX2104.2
064700-    "******************************".                            IX2104.2
064800 01  CCVS-PGM-ID                     PIC X(9)   VALUE             IX2104.2
064900     "IX210A".                                                    IX2104.2
065000 PROCEDURE DIVISION.                                              IX2104.2
065100 CCVS1 SECTION.                                                   IX2104.2
065200 OPEN-FILES.                                                      IX2104.2
066300     OPEN    OUTPUT PRINT-FILE.                                   IX2104.2
066400     MOVE  CCVS-PGM-ID TO TEST-ID. MOVE CCVS-PGM-ID TO ID-AGAIN.  IX2104.2
066500     MOVE    SPACE TO TEST-RESULTS.                               IX2104.2
066600     PERFORM HEAD-ROUTINE THRU COLUMN-NAMES-ROUTINE.              IX2104.2
066700     MOVE    ZERO TO REC-SKL-SUB.                                 IX2104.2
066800     PERFORM CCVS-INIT-FILE 9 TIMES.                              IX2104.2
066900 CCVS-INIT-FILE.                                                  IX2104.2
067000     ADD     1 TO REC-SKL-SUB.                                    IX2104.2
067100     MOVE    FILE-RECORD-INFO-SKELETON                            IX2104.2
067200          TO FILE-RECORD-INFO (REC-SKL-SUB).                      IX2104.2
067300 CCVS-INIT-EXIT.                                                  IX2104.2
067400     GO TO CCVS1-EXIT.                                            IX2104.2
067500 CLOSE-FILES.                                                     IX2104.2
068800     PERFORM END-ROUTINE THRU END-ROUTINE-13. CLOSE PRINT-FILE.   IX2104.2
068900 TERMINATE-CCVS.                                                  IX2104.2
069200     STOP     RUN.                                                IX2104.2
069300 INSPT. MOVE "INSPT" TO P-OR-F. ADD 1 TO INSPECT-COUNTER.         IX2104.2
069400 PASS.  MOVE "PASS " TO P-OR-F.  ADD 1 TO PASS-COUNTER.           IX2104.2
069500 FAIL.  MOVE "FAIL*" TO P-OR-F.  ADD 1 TO ERROR-COUNTER.          IX2104.2
069600 DE-LETE.  MOVE "*****" TO P-OR-F.  ADD 1 TO DELETE-COUNTER.      IX2104.2
069700     MOVE "****TEST DELETED****" TO RE-MARK.                      IX2104.2
069800 PRINT-DETAIL.                                                    IX2104.2
069900     IF REC-CT NOT EQUAL TO ZERO                                  IX2104.2
070000             MOVE "." TO PARDOT-X                                 IX2104.2
070100             MOVE REC-CT TO DOTVALUE.                             IX2104.2
070200     MOVE     TEST-RESULTS TO PRINT-REC. PERFORM WRITE-LINE.      IX2104.2
070300     IF P-OR-F EQUAL TO "FAIL*"  PERFORM WRITE-LINE               IX2104.2
070400        PERFORM FAIL-ROUTINE THRU FAIL-ROUTINE-EX                 IX2104.2
070500          ELSE PERFORM BAIL-OUT THRU BAIL-OUT-EX.                 IX2104.2
070600     MOVE SPACE TO P-OR-F. MOVE SPACE TO COMPUTED-X.              IX2104.2
070700     MOVE SPACE TO CORRECT-X.                                     IX2104.2
070800     IF     REC-CT EQUAL TO ZERO  MOVE SPACE TO PAR-NAME.         IX2104.2
070900     MOVE     SPACE TO RE-MARK.                                   IX2104.2
071000 HEAD-ROUTINE.                                                    IX2104.2
071100     MOVE CCVS-H-1  TO DUMMY-RECORD. PERFORM WRITE-LINE 2 TIMES.  IX2104.2
071200     MOVE CCVS-H-2A TO DUMMY-RECORD. PERFORM WRITE-LINE 2 TIMES.  IX2104.2
071300     MOVE CCVS-H-2B TO DUMMY-RECORD. PERFORM WRITE-LINE 3 TIMES.  IX2104.2
071400     MOVE CCVS-H-3  TO DUMMY-RECORD. PERFORM WRITE-LINE 3 TIMES.  IX2104.2
071500 COLUMN-NAMES-ROUTINE.                                            IX2104.2
071600     MOVE CCVS-C-1 TO DUMMY-RECORD. PERFORM WRITE-LINE.           IX2104.2
071700     MOVE CCVS-C-2 TO DUMMY-RECORD. PERFORM WRITE-LINE 2 TIMES.   IX2104.2
071800     MOVE HYPHEN-LINE TO DUMMY-RECORD. PERFORM WRITE-LINE.        IX2104.2
071900 END-ROUTINE.                                                     IX2104.2
072000     MOVE HYPHEN-LINE TO DUMMY-RECORD. PERFORM WRITE-LINE 5 TIMES.IX2104.2
072100 END-RTN-EXIT.                                                    IX2104.2
072200     MOVE CCVS-E-1 TO DUMMY-RECORD. PERFORM WRITE-LINE 2 TIMES.   IX2104.2
072300 END-ROUTINE-1.                                                   IX2104.2
072400      ADD ERROR-COUNTER TO ERROR-HOLD ADD INSPECT-COUNTER TO      IX2104.2
072500      ERROR-HOLD. ADD DELETE-COUNTER TO ERROR-HOLD.               IX2104.2
072600      ADD PASS-COUNTER TO ERROR-HOLD.                             IX2104.2
072700*                                                                         
072800      MOVE PASS-COUNTER TO CCVS-E-4-1.                            IX2104.2
072900      MOVE ERROR-HOLD TO CCVS-E-4-2.                              IX2104.2
073000      MOVE CCVS-E-4 TO CCVS-E-2-2.                                IX2104.2
073100      MOVE CCVS-E-2 TO DUMMY-RECORD PERFORM WRITE-LINE.           IX2104.2
073200  END-ROUTINE-12.                                                 IX2104.2
073300      MOVE "TEST(S) FAILED" TO ENDER-DESC.                        IX2104.2
073400     IF       ERROR-COUNTER IS EQUAL TO ZERO                      IX2104.2
073500         MOVE "NO " TO ERROR-TOTAL                                IX2104.2
073600         ELSE                                                     IX2104.2
073700         MOVE ERROR-COUNTER TO ERROR-TOTAL.                       IX2104.2
073800     MOVE     CCVS-E-2 TO DUMMY-RECORD.                           IX2104.2
073900     PERFORM WRITE-LINE.                                          IX2104.2
074000 END-ROUTINE-13.                                                  IX2104.2
074100     IF DELETE-COUNTER IS EQUAL TO ZERO                           IX2104.2
074200         MOVE "NO " TO ERROR-TOTAL  ELSE                          IX2104.2
074300         MOVE DELETE-COUNTER TO ERROR-TOTAL.                      IX2104.2
074400     MOVE "TEST(S) DELETED     " TO ENDER-DESC.                   IX2104.2
074500     MOVE CCVS-E-2 TO DUMMY-RECORD. PERFORM WRITE-LINE.           IX2104.2
074600      IF   INSPECT-COUNTER EQUAL TO ZERO                          IX2104.2
074700          MOVE "NO " TO ERROR-TOTAL                               IX2104.2
074800      ELSE MOVE INSPECT-COUNTER TO ERROR-TOTAL.                   IX2104.2
074900      MOVE "TEST(S) REQUIRE INSPECTION" TO ENDER-DESC.            IX2104.2
075000      MOVE CCVS-E-2 TO DUMMY-RECORD. PERFORM WRITE-LINE.          IX2104.2
075100     MOVE CCVS-E-3 TO DUMMY-RECORD. PERFORM WRITE-LINE.           IX2104.2
075200 WRITE-LINE.                                                      IX2104.2
075300     ADD 1 TO RECORD-COUNT.                                       IX2104.2
075400     IF RECORD-COUNT GREATER 42                                   IX2104.2
075500         MOVE DUMMY-RECORD TO DUMMY-HOLD                          IX2104.2
075600         MOVE SPACE TO DUMMY-RECORD                               IX2104.2
075700         WRITE DUMMY-RECORD AFTER ADVANCING PAGE                  IX2104.2
075800         MOVE CCVS-H-1  TO DUMMY-RECORD PERFORM WRT-LN 2 TIMES    IX2104.2
075900         MOVE CCVS-H-2A TO DUMMY-RECORD PERFORM WRT-LN 2 TIMES    IX2104.2
076000         MOVE CCVS-H-2B TO DUMMY-RECORD PERFORM WRT-LN 3 TIMES    IX2104.2
076100         MOVE CCVS-H-3  TO DUMMY-RECORD PERFORM WRT-LN 3 TIMES    IX2104.2
076200         MOVE CCVS-C-1  TO DUMMY-RECORD PERFORM WRT-LN            IX2104.2
076300         MOVE CCVS-C-2  TO DUMMY-RECORD PERFORM WRT-LN            IX2104.2
076400         MOVE HYPHEN-LINE TO DUMMY-RECORD PERFORM WRT-LN          IX2104.2
076500         MOVE DUMMY-HOLD TO DUMMY-RECORD                          IX2104.2
076600         MOVE ZERO TO RECORD-COUNT.                               IX2104.2
076700     PERFORM WRT-LN.                                              IX2104.2
076800 WRT-LN.                                                          IX2104.2
076900     WRITE    DUMMY-RECORD AFTER ADVANCING 1 LINES.               IX2104.2
077000     MOVE SPACE TO DUMMY-RECORD.                                  IX2104.2
077100 BLANK-LINE-PRINT.                                                IX2104.2
077200     PERFORM WRT-LN.                                              IX2104.2
077300 FAIL-ROUTINE.                                                    IX2104.2
077400     IF     COMPUTED-X NOT EQUAL TO SPACE                         IX2104.2
077500            GO TO   FAIL-ROUTINE-WRITE.                           IX2104.2
077600     IF     CORRECT-X NOT EQUAL TO SPACE GO TO FAIL-ROUTINE-WRITE.IX2104.2
077700     MOVE   ANSI-REFERENCE TO INF-ANSI-REFERENCE.                 IX2104.2
077800     MOVE  "NO FURTHER INFORMATION, SEE PROGRAM." TO INFO-TEXT.   IX2104.2
077900     MOVE   XXINFO TO DUMMY-RECORD. PERFORM WRITE-LINE 2 TIMES.   IX2104.2
078000     MOVE   SPACES TO INF-ANSI-REFERENCE.                         IX2104.2
078100     GO TO  FAIL-ROUTINE-EX.                                      IX2104.2
078200 FAIL-ROUTINE-WRITE.                                              IX2104.2
078300     MOVE   TEST-COMPUTED TO PRINT-REC PERFORM WRITE-LINE         IX2104.2
078400     MOVE   ANSI-REFERENCE TO COR-ANSI-REFERENCE.                 IX2104.2
078500     MOVE   TEST-CORRECT TO PRINT-REC PERFORM WRITE-LINE 2 TIMES. IX2104.2
078600     MOVE   SPACES TO COR-ANSI-REFERENCE.                         IX2104.2
078700 FAIL-ROUTINE-EX. EXIT.                                           IX2104.2
078800 BAIL-OUT.                                                        IX2104.2
078900     IF     COMPUTED-A NOT EQUAL TO SPACE GO TO BAIL-OUT-WRITE.   IX2104.2
079000     IF     CORRECT-A EQUAL TO SPACE GO TO BAIL-OUT-EX.           IX2104.2
079100 BAIL-OUT-WRITE.                                                  IX2104.2
079200     MOVE CORRECT-A TO XXCORRECT. MOVE COMPUTED-A TO XXCOMPUTED.  IX2104.2
079300     MOVE   ANSI-REFERENCE TO INF-ANSI-REFERENCE.                 IX2104.2
079400     MOVE   XXINFO TO DUMMY-RECORD. PERFORM WRITE-LINE 2 TIMES.   IX2104.2
079500     MOVE   SPACES TO INF-ANSI-REFERENCE.                         IX2104.2
079600 BAIL-OUT-EX. EXIT.                                               IX2104.2
079700 CCVS1-EXIT.                                                      IX2104.2
079800     EXIT.                                                        IX2104.2
079900 SECT-0001-IX210A SECTION.                                        IX2104.2
080000 WRITE-INT-GF.                                                    IX2104.2
080100     OPEN    OUTPUT IX-FS1.                                       IX2104.2
080200     MOVE    "IX-FS1" TO XFILE-NAME           (1).                IX2104.2
080300     MOVE    "R1-F-G" TO  XRECORD-NAME        (1).                IX2104.2
080400     MOVE    ZERO     TO  XRECORD-NUMBER      (1).                IX2104.2
080500     MOVE    "RC"     TO  CHARS-OR-RECORDS    (1).                IX2104.2
080600     MOVE    CCVS-PGM-ID TO  XPROGRAM-NAME       (1).             IX2104.2
080700     MOVE    240      TO  XRECORD-LENGTH      (1).                IX2104.2
080800     MOVE    001      TO  XBLOCK-SIZE         (1).                IX2104.2
080900     MOVE    "IX"     TO  XFILE-ORGANIZATION  (1).                IX2104.2
081000     MOVE    "S"      TO  XLABEL-TYPE         (1).                IX2104.2
081100     MOVE    200      TO  RECORDS-IN-FILE     (1).                IX2104.2
081200     MOVE    "CREATE-FILE-FS1" TO FEATURE.                        IX2104.2
081300     MOVE    "WRITE-TEST-GF-1"  TO PAR-NAME.                      IX2104.2
081400     MOVE    ZERO TO KEYSUB.                                      IX2104.2
081500     MOVE    ZERO TO INVKEY-COUNTER.                              IX2104.2
081600 WRITE-INIT-GF-01.                                                IX2104.2
081700     PERFORM WRITE-TEST-GF-01  50 TIMES.                          IX2104.2
081800     PERFORM WRITE-TEST-GF-02  125 TIMES.                         IX2104.2
081900     PERFORM WRITE-TEST-GF-01  25 TIMES.                          IX2104.2
082000     GO TO   WRITE-TEST-GF-1.                                     IX2104.2
082100 WRITE-TEST-GF-01.                                                IX2104.2
082200     ADD     001  TO XRECORD-NUMBER (1).                          IX2104.2
082300     ADD     001  TO  KEYSUB.                                     IX2104.2
082400     MOVE    RECKEY-VALUE (KEYSUB) TO FS1-RECKEY-1-13.            IX2104.2
082500     MOVE    ALTKEY1-VALUE (KEYSUB) TO FS1-ALTKEY1-1-20.          IX2104.2
082600     MOVE    ALTKEY2-VALUE (KEYSUB) TO FS1-ALTKEY2-1-20.          IX2104.2
082700     MOVE    WRK-FS1-RECKEY   TO    XRECORD-KEY (1).              IX2104.2
082800     MOVE    WRK-FS1-ALTKEY1  TO ALTERNATE-KEY1 (1).              IX2104.2
082900     MOVE    WRK-FS1-ALTKEY2  TO ALTERNATE-KEY2 (1).              IX2104.2
083000     MOVE    FILE-RECORD-INFO (1)  TO IX-FS1R1-F-G-240.           IX2104.2
083100     WRITE   IX-FS1R1-F-G-240                                     IX2104.2
083200                        INVALID KEY ADD 001 TO INVKEY-COUNTER.    IX2104.2
083300     ADD     001 TO  EXCUT-COUNTER-06V00.                         IX2104.2
083400 WRITE-TEST-GF-02.                                                IX2104.2
083500     ADD     002  TO FS1-RECKEY-11-13.                            IX2104.2
083600     ADD     002 TO FS1-ALTKEY1-11-13.                            IX2104.2
083700     SUBTRACT  002 FROM FS1-ALTKEY2-11-13.                        IX2104.2
083800     ADD     001  TO XRECORD-NUMBER (1).                          IX2104.2
083900     MOVE    WRK-FS1-RECKEY   TO    XRECORD-KEY (1).              IX2104.2
084000     MOVE    WRK-FS1-ALTKEY1  TO ALTERNATE-KEY1 (1).              IX2104.2
084100     MOVE    WRK-FS1-ALTKEY2  TO ALTERNATE-KEY2 (1).              IX2104.2
084200     MOVE    FILE-RECORD-INFO (1) TO IX-FS1R1-F-G-240.            IX2104.2
084300     WRITE   IX-FS1R1-F-G-240                                     IX2104.2
084400                        INVALID KEY ADD 001 TO INVKEY-COUNTER.    IX2104.2
084500     ADD     001 TO EXCUT-COUNTER-06V00.                          IX2104.2
084600 WRITE-TEST-GF-1.                                                 IX2104.2
084700     SUBTRACT INVKEY-COUNTER FROM EXCUT-COUNTER-06V00             IX2104.2
084800             GIVING RECORDS-WRITTEN.                              IX2104.2
084900     MOVE    200  TO CORRECT-18V0.                                IX2104.2
085000     MOVE    RECORDS-WRITTEN TO COMPUTED-18V0.                    IX2104.2
085100     IF      RECORDS-WRITTEN EQUAL TO 200                         IX2104.2
085200             PERFORM  PASS                                        IX2104.2
085300             ELSE                                                 IX2104.2
085400             PERFORM FAIL.                                        IX2104.2
085500     MOVE    "RECORDS IN FILE" TO RE-MARK.                        IX2104.2
085600     GO TO   WRITE-TEST-GF-END.                                   IX2104.2
085700 WRITE-DELETE-GF-1.                                               IX2104.2
085800     PERFORM DE-LETE.                                             IX2104.2
085900 WRITE-TEST-GF-END.                                               IX2104.2
086000     PERFORM  PRINT-DETAIL.                                       IX2104.2
086100     CLOSE   IX-FS1.                                              IX2104.2
086200 READ-INIT-F1.                                                    IX2104.2
086300     OPEN    INPUT  IX-FS1.                                       IX2104.2
086400     MOVE    "READ FILE IX-FS1" TO FEATURE.                       IX2104.2
086500     MOVE    ZERO TO EXCUT-COUNTER-06V00.                         IX2104.2
086600     MOVE    02   TO RECKEY-NUM.                                  IX2104.2
086700     MOVE    002 TO ALTKEY1-NUM.                                  IX2104.2
086800 READ-TEST-F1-R1.                                                 IX2104.2
086900     READ    IX-FS1  AT END  GO TO READ-TEST-F1.                  IX2104.2
087000     MOVE    IX-REC-KEY-AREA TO WRK-FS1-RECKEY.                   IX2104.2
087100     MOVE    IX-ALT-KEY1-AREA TO WRK-FS1-ALTKEY1.                 IX2104.2
087200     IF      FS1-RECKEY-11-13 EQUAL TO RECKEY-NUM                 IX2104.2
087300             AND FS1-ALTKEY1-11-13 EQUAL TO ALTKEY1-NUM           IX2104.2
087400             NEXT SENTENCE                                        IX2104.2
087500             ELSE                                                 IX2104.2
087600             PERFORM  READ-FAIL-F1.                               IX2104.2
087700     IF      EXCUT-COUNTER-06V00 GREATER THAN 200                 IX2104.2
087800             GO TO READ-TEST-F1.                                  IX2104.2
087900     ADD     001  TO EXCUT-COUNTER-06V00.                         IX2104.2
088000     ADD     002  TO RECKEY-NUM                                   IX2104.2
088100     ADD     002  TO ALTKEY1-NUM.                                 IX2104.2
088200     GO TO   READ-TEST-F1-R1.                                     IX2104.2
088300 READ-TEST-F1.                                                    IX2104.2
088400     IF      EXCUT-COUNTER-06V00 EQUAL TO 200                     IX2104.2
088500             PERFORM PASS ELSE                                    IX2104.2
088600             PERFORM FAIL.                                        IX2104.2
088700     MOVE    EXCUT-COUNTER-06V00 TO  COMPUTED-18V0.               IX2104.2
088800     MOVE    200  TO  CORRECT-18V0.                               IX2104.2
088900     MOVE    "RECORDS IN FILE" TO RE-MARK.                        IX2104.2
089000     GO TO   READ-EXIT-F1.                                        IX2104.2
089100 READ-FAIL-F1.                                                    IX2104.2
089200     PERFORM FAIL.                                                IX2104.2
089300     MOVE    FS1-RECKEY-11-13  TO COMPUTED-18V0.                  IX2104.2
089400     MOVE    RECKEY-NUM  TO CORRECT-18V0.                         IX2104.2
089500     MOVE "NUM EMBEDDED IN RECKEY; IX-41 & IX-28"  TO RE-MARK.    IX2104.2
089600 READ-EXIT-F1.                                                    IX2104.2
089700     PERFORM PRINT-DETAIL.                                        IX2104.2
089800     CLOSE   IX-FS1.                                              IX2104.2
089900 START-INIT.                                                      IX2104.2
090000     OPEN    INPUT  IX-FS1.                                       IX2104.2
090100     MOVE    "START GT RECKEY " TO FEATURE.                       IX2104.2
090200     MOVE    "START-TEST-GF-01" TO PAR-NAME.                      IX2104.2
090300     MOVE    SPACE TO HOLD-FILESTATUS-RECORD.                     IX2104.2
090400*                                                                         
090500*                                                                         
090600*                                                                         
090700*                                                                         
090800*                                                                         
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
093300*                                                                         
093400*                                                                         
093500 START-INIT-GF-01.                                                IX2104.2
093600     MOVE    "START-TEST-GF-01" TO PAR-NAME.                      IX2104.2
093700     PERFORM START-INITIALIZE-RECORD.                             IX2104.2
093800     IF      INIT-FLAG NOT EQUAL TO ZERO                          IX2104.2
093900             MOVE   "**"  TO FILESTATUS (1)                       IX2104.2
094000             MOVE   "TEST IMPROPERLY INITIALIZED" TO RE-MARK      IX2104.2
094100             GO TO START-DELETE-GF-01.                            IX2104.2
094200     MOVE    "CCCCCCCCCD022" TO FS1-RECKEY-1-13.                  IX2104.2
094300     MOVE    "EEEEEFFFFF022ALTKEY1"  TO FS1-ALTKEY1-1-20.         IX2104.2
094400     MOVE    "EEEEEFFFFF022ALTKEY2" TO FS1-ALTKEY2-1-20.          IX2104.2
094500     MOVE    WRK-FS1-RECKEY TO IX-REC-KEY-AREA.                   IX2104.2
094600     MOVE    WRK-FS1-ALTKEY1 TO IX-ALT-KEY1-AREA.                 IX2104.2
094700     MOVE    WRK-FS1-ALTKEY2 TO IX-ALT-KEY2-AREA.                 IX2104.2
094800 START-TEST-GF-01.                                                IX2104.2
094900*                                                                         
095000*                                                                         
095100*                                                                         
095200*                                                                         
095300*                                                                         
095400     START   IX-FS1                                               IX2104.2
095500                    KEY IS GREATER THAN IX-FS1-KEY                IX2104.2
095600          INVALID KEY   MOVE FS1-STATUS TO FILESTATUS (1)         IX2104.2
095700                     MOVE  "INVALID KEY ON START" TO COMPUTED-A   IX2104.2
095800                        GO TO START-FAIL-GF-01.                   IX2104.2
095900     MOVE    FS1-STATUS TO FILESTATUS (1).                        IX2104.2
096000     READ    IX-FS1  AT END                                       IX2104.2
096100                     MOVE  "AT END ON READ" TO COMPUTED-A         IX2104.2
096200                     GO TO START-FAIL-GF-01.                      IX2104.2
096300     MOVE    IX-FS1R1-F-G-240  TO  FILE-RECORD-INFO (1).          IX2104.2
096400     IF      XRECORD-NUMBER (1)  EQUAL TO 12                      IX2104.2
096500             PERFORM PASS                                         IX2104.2
096600             MOVE SPACE TO RE-MARK                                IX2104.2
096700             GO TO START-EXIT-GF-01.                              IX2104.2
096800     MOVE    12  TO RECNO.                                        IX2104.2
096900     PERFORM DISPLAY-RECORD-KEYS.                                 IX2104.2
097000     MOVE     XRECORD-NUMBER (1)  TO COMPUTED-18V0.               IX2104.2
097100 START-FAIL-GF-01.                                                IX2104.2
097200     PERFORM FAIL.                                                IX2104.2
097300     MOVE    12  TO CORRECT-18V0.                                 IX2104.2
097400     MOVE "RECORD NUMBER; IX-36 ETC " TO RE-MARK.                 IX2104.2
097500     GO TO   START-EXIT-GF-01.                                    IX2104.2
097600 START-DELETE-GF-01.                                              IX2104.2
097700     PERFORM DE-LETE.                                             IX2104.2
097800 START-EXIT-GF-01.                                                IX2104.2
097900     PERFORM PRINT-DETAIL.                                        IX2104.2
098000 START-INIT-GF-02.                                                IX2104.2
098100     MOVE    "START GT RECKEY " TO FEATURE.                       IX2104.2
098200     MOVE    "START-TEST-GF-02" TO PAR-NAME.                      IX2104.2
098300     PERFORM START-INITIALIZE-RECORD.                             IX2104.2
098400     IF      INIT-FLAG NOT EQUAL TO ZERO                          IX2104.2
098500             MOVE   "**"  TO FILESTATUS (2)                       IX2104.2
098600             MOVE   "TEST IMPROPERLY INITIALIZED" TO RE-MARK      IX2104.2
098700             GO TO START-DELETE-GF-02.                            IX2104.2
098800     MOVE    "EEEEEEEFFF067" TO FS1-RECKEY-1-13.                  IX2104.2
098900     MOVE    "HHHHHHHHII064ALTKEY1"  TO FS1-ALTKEY1-1-20.         IX2104.2
099000     MOVE    "TTTTTTTTSS336ALTKEY2" TO FS1-ALTKEY2-1-20.          IX2104.2
099100     MOVE    WRK-FS1-RECKEY TO IX-REC-KEY-AREA.                   IX2104.2
099200     MOVE    WRK-FS1-ALTKEY1 TO IX-ALT-KEY1-AREA.                 IX2104.2
099300     MOVE    WRK-FS1-ALTKEY2 TO IX-ALT-KEY2-AREA.                 IX2104.2
099400 START-TEST-GF-02.                                                IX2104.2
099500*                                                                         
099600*                                                                         
099700*                                                                         
099800*                                                                         
099900*                                                                         
100000*                                                                         
100100*                                                                         
100200*                                                                         
100300*                                                                         
100400*                                                                         
100500     START   IX-FS1                                               IX2104.2
100600        KEY GREATER THAN OR EQUAL TO IX-FS1-KEY                   IX2104.2
100700          INVALID KEY   MOVE FS1-STATUS TO FILESTATUS (2)         IX2104.2
100800                     MOVE  "INVALID KEY ON START" TO COMPUTED-A   IX2104.2
100900                        GO TO START-FAIL-GF-02.                   IX2104.2
101000     MOVE    FS1-STATUS TO FILESTATUS (2).                        IX2104.2
101100     READ    IX-FS1  AT END                                       IX2104.2
101200                     MOVE  "AT END ON READ" TO COMPUTED-A         IX2104.2
101300                     GO TO START-FAIL-GF-02.                      IX2104.2
101400     MOVE    IX-FS1R1-F-G-240  TO  FILE-RECORD-INFO (1).          IX2104.2
101500     IF      XRECORD-NUMBER (1) EQUAL TO 34                       IX2104.2
101600             PERFORM PASS                                         IX2104.2
101700             MOVE SPACE TO RE-MARK                                IX2104.2
101800             GO TO START-EXIT-GF-02.                              IX2104.2
101900     MOVE    34  TO RECNO.                                        IX2104.2
102000     PERFORM DISPLAY-RECORD-KEYS.                                 IX2104.2
102100     MOVE     XRECORD-NUMBER (1)  TO COMPUTED-18V0.               IX2104.2
102200 START-FAIL-GF-02.                                                IX2104.2
102300     PERFORM FAIL.                                                IX2104.2
102400     MOVE    34   TO CORRECT-18V0.                                IX2104.2
102500     MOVE "RECORD NUMBER; IX-36 ETC " TO RE-MARK.                 IX2104.2
102600     GO TO   START-EXIT-GF-02.                                    IX2104.2
102700 START-DELETE-GF-02.                                              IX2104.2
102800     PERFORM DE-LETE.                                             IX2104.2
102900 START-EXIT-GF-02.                                                IX2104.2
103000     PERFORM PRINT-DETAIL.                                        IX2104.2
103100 START-INIT-GF-03.                                                IX2104.2
103200     PERFORM START-INITIALIZE-RECORD.                             IX2104.2
103300     MOVE    "START GT RECKEY " TO FEATURE.                       IX2104.2
103400     MOVE    "START-TEST-GF-03" TO PAR-NAME.                      IX2104.2
103500     IF      INIT-FLAG NOT EQUAL TO ZERO                          IX2104.2
103600             MOVE   "**"  TO FILESTATUS (3)                       IX2104.2
103700             MOVE   "TEST IMPROPERLY INITIALIZED" TO RE-MARK      IX2104.2
103800             GO TO START-DELETE-GF-03.                            IX2104.2
103900     MOVE    "BBBBBBBBBC001" TO FS1-RECKEY-1-13.                  IX2104.2
104000     MOVE    "EEEEEEEEEF003ALTKEY1"  TO FS1-ALTKEY1-1-20.         IX2104.2
104100     MOVE    "WWWWWWWWWV399ALTKEY2" TO FS1-ALTKEY2-1-20.          IX2104.2
104200     MOVE    WRK-FS1-RECKEY TO IX-REC-KEY-AREA.                   IX2104.2
104300     MOVE    WRK-FS1-ALTKEY1 TO IX-ALT-KEY1-AREA.                 IX2104.2
104400     MOVE    WRK-FS1-ALTKEY2 TO IX-ALT-KEY2-AREA.                 IX2104.2
104500 START-TEST-GF-03.                                                IX2104.2
104600*                                                                         
104700*                                                                         
104800*                                                                         
104900*                                                                         
105000*                                                                         
105100*                                                                         
105200*                                                                         
105300*                                                                         
105400*                                                                         
105500     START   IX-FS1                                               IX2104.2
105600                    KEY IS GREATER THAN IX-FS1-KEY                IX2104.2
105700          INVALID KEY   MOVE FS1-STATUS TO FILESTATUS (3)         IX2104.2
105800                     MOVE  "INVALID KEY ON START" TO COMPUTED-A   IX2104.2
105900                        GO TO START-FAIL-GF-03                    IX2104.2
106000            END-START.                                            IX2104.2
106100     MOVE    FS1-STATUS TO FILESTATUS (3).                        IX2104.2
106200     READ    IX-FS1  AT END                                       IX2104.2
106300                     MOVE  "AT END ON READ" TO COMPUTED-A         IX2104.2
106400                     GO TO START-FAIL-GF-03.                      IX2104.2
106500     MOVE    IX-FS1R1-F-G-240  TO  FILE-RECORD-INFO (1).          IX2104.2
106600     IF      XRECORD-NUMBER (1) EQUAL TO 61                       IX2104.2
106700             PERFORM PASS                                         IX2104.2
106800             MOVE SPACE TO RE-MARK                                IX2104.2
106900             GO TO START-EXIT-GF-03.                              IX2104.2
107000     MOVE    01  TO RECNO.                                        IX2104.2
107100     PERFORM DISPLAY-RECORD-KEYS.                                 IX2104.2
107200     MOVE     XRECORD-NUMBER (1)  TO COMPUTED-18V0.               IX2104.2
107300 START-FAIL-GF-03.                                                IX2104.2
107400     PERFORM FAIL.                                                IX2104.2
107500     MOVE    61   TO CORRECT-18V0.                                IX2104.2
107600     MOVE "RECORD NUMBER; IX-36 ETC " TO RE-MARK.                 IX2104.2
107700     GO TO   START-EXIT-GF-03.                                    IX2104.2
107800 START-DELETE-GF-03.                                              IX2104.2
107900     PERFORM DE-LETE.                                             IX2104.2
108000 START-EXIT-GF-03.                                                IX2104.2
108100     PERFORM PRINT-DETAIL.                                        IX2104.2
108200 START-INIT-GF-04.                                                IX2104.2
108300     PERFORM START-INITIALIZE-RECORD.                             IX2104.2
108400     MOVE    "START GT RECKEY " TO FEATURE.                       IX2104.2
108500     MOVE    "START-TEST-GF-04" TO PAR-NAME.                      IX2104.2
108600     IF      INIT-FLAG NOT EQUAL TO ZERO                          IX2104.2
108700             MOVE    "TEST IMPROPERLY INITIALIZED"  TO RE-MARK    IX2104.2
108800             MOVE   "**"  TO FILESTATUS (4)                       IX2104.2
108900             GO TO   START-DELETE-GF-04.                          IX2104.2
109000     MOVE    "UUUUUUUUUU401"  TO FS1-RECKEY-1-13.                 IX2104.2
109100     MOVE    "YYYYYYYYYY400ALTKEY1"  TO FS1-ALTKEY1-1-20.         IX2104.2
109200     MOVE    "DDDDDDDDDD000ALTKEY2"  TO FS1-ALTKEY2-1-20.         IX2104.2
109300     MOVE    WRK-FS1-RECKEY   TO IX-REC-KEY-AREA.                 IX2104.2
109400     MOVE    WRK-FS1-ALTKEY1  TO IX-ALT-KEY1-AREA.                IX2104.2
109500     MOVE    WRK-FS1-ALTKEY2  TO IX-ALT-KEY2-AREA.                IX2104.2
109600 START-TEST-GF-04.                                                IX2104.2
109700*                                                                         
109800*                                                                         
109900*                                                                         
110000*                                                                         
110100*                                                                         
110200*                                                                         
110300*                                                                         
110400*                                                                         
110500*                                                                         
110600     START   IX-FS1                                               IX2104.2
110700                    KEY IS GREATER THAN IX-FS1-KEY                IX2104.2
110800          INVALID KEY    MOVE  FS1-STATUS TO FILESTATUS (4)       IX2104.2
110900                         GO TO START-PASS-GF-04.                  IX2104.2
111000     MOVE    FS1-STATUS TO FILESTATUS (4).                        IX2104.2
111100     READ    IX-FS1 AT END                                        IX2104.2
111200                     MOVE  "AT END PATH TAKEN ON READ" TO RE-MARK.IX2104.2
111300     MOVE    IX-FS1R1-F-G-240 TO FILE-RECORD-INFO (1).            IX2104.2
111400     PERFORM FAIL.                                                IX2104.2
111500     MOVE    XRECORD-KEY (1) TO COMPUTED-A.                       IX2104.2
111600     MOVE    "INVALID KEY" TO CORRECT-A.                          IX2104.2
111700     MOVE "RECORD NUMBER; IX-36 ETC " TO RE-MARK.                 IX2104.2
111800     GO TO   START-EXIT-GF-04.                                    IX2104.2
111900 START-PASS-GF-04.                                                IX2104.2
112000     PERFORM  PASS.                                               IX2104.2
112100     MOVE     "INVALID KEY OK."  TO RE-MARK.                      IX2104.2
112200     GO TO   START-EXIT-GF-04.                                    IX2104.2
112300 START-DELETE-GF-04.                                              IX2104.2
112400     PERFORM DE-LETE.                                             IX2104.2
112500 START-EXIT-GF-04.                                                IX2104.2
112600     PERFORM PRINT-DETAIL.                                        IX2104.2
112700 START-INIT-GF-05.                                                IX2104.2
112800     PERFORM START-INITIALIZE-RECORD.                             IX2104.2
112900     MOVE    "START GT RECKEY " TO FEATURE.                       IX2104.2
113000     MOVE    "START-TEST-GF-05" TO PAR-NAME.                      IX2104.2
113100     IF      INIT-FLAG NOT EQUAL TO ZERO                          IX2104.2
113200             MOVE    "TEST IMPROPERLY INITIALIZED"  TO RE-MARK    IX2104.2
113300             MOVE   "**"  TO FILESTATUS (5)                       IX2104.2
113400             GO TO   START-DELETE-GF-05.                          IX2104.2
113500     MOVE    "CDDDDDDDDD039" TO FS1-RECKEY-1-13.                  IX2104.2
113600     MOVE    "IIIIIIIIJJ083ALTKEY1"  TO FS1-ALTKEY1-1-20.         IX2104.2
113700     MOVE    "ABCXXXXXXX400ALTKEY2" TO FS1-ALTKEY2-1-20.          IX2104.2
113800     MOVE    WRK-FS1-RECKEY   TO IX-REC-KEY-AREA.                 IX2104.2
113900     MOVE    WRK-FS1-ALTKEY1  TO IX-ALT-KEY1-AREA.                IX2104.2
114000     MOVE    WRK-FS1-ALTKEY2  TO IX-ALT-KEY2-AREA.                IX2104.2
114100 START-TEST-GF-05.                                                IX2104.2
114200*                                                                         
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
115400     START   IX-FS1                                               IX2104.2
115500                    KEY IS GREATER THAN R-RECKEY-1-7              IX2104.2
115600          INVALID KEY    MOVE  FS1-STATUS TO FILESTATUS (5)       IX2104.2
115700                     MOVE  "INVALID KEY ON START" TO COMPUTED-A   IX2104.2
115800                     GO TO START-FAIL-GF-05.                      IX2104.2
115900     MOVE    FS1-STATUS TO FILESTATUS (5).                        IX2104.2
116000     READ    IX-FS1  AT END                                       IX2104.2
116100                     MOVE  "AT END ON READ" TO COMPUTED-A         IX2104.2
116200                     GO TO  START-FAIL-GF-05.                     IX2104.2
116300     MOVE    IX-FS1R1-F-G-240 TO FILE-RECORD-INFO (1).            IX2104.2
116400     IF      XRECORD-NUMBER (1) EQUAL TO 20                       IX2104.2
116500             PERFORM  PASS                                        IX2104.2
116600             MOVE  "SUBORDINATE DATA ITEM OF KEY" TO RE-MARK      IX2104.2
116700             GO TO START-EXIT-GF-05.                              IX2104.2
116800     MOVE    20  TO RECNO.                                        IX2104.2
116900     PERFORM DISPLAY-RECORD-KEYS.                                 IX2104.2
117000     MOVE    XRECORD-NUMBER (1)  TO COMPUTED-18V0.                IX2104.2
117100 START-FAIL-GF-05.                                                IX2104.2
117200     PERFORM  FAIL.                                               IX2104.2
117300     MOVE    20  TO CORRECT-18V0.                                 IX2104.2
117400     MOVE "RECORD NUMBER; IX-36 ETC " TO RE-MARK.                 IX2104.2
117500     GO TO   START-EXIT-GF-05.                                    IX2104.2
117600 START-DELETE-GF-05.                                              IX2104.2
117700     PERFORM DE-LETE.                                             IX2104.2
117800 START-EXIT-GF-05.                                                IX2104.2
117900     PERFORM PRINT-DETAIL.                                        IX2104.2
118000 START-INIT-GF-06.                                                IX2104.2
118100     PERFORM START-INITIALIZE-RECORD.                             IX2104.2
118200     MOVE "START GT RECKEY " TO FEATURE.                          IX2104.2
118300     MOVE "START-TEST-GF-06" TO PAR-NAME.                         IX2104.2
118400     IF      INIT-FLAG NOT EQUAL TO ZERO                          IX2104.2
118500             MOVE    "TEST IMPROPERLY INITIALIZED"  TO RE-MARK    IX2104.2
118600             MOVE   "**"  TO FILESTATUS (6)                       IX2104.2
118700             GO TO   START-DELETE-GF-06.                          IX2104.2
118800     MOVE    "TTTTTTTTTT380"  TO FS1-RECKEY-1-13.                 IX2104.2
118900     MOVE    "XYYYYYYYYY399ALTKEY1"  TO FS1-ALTKEY1-1-20.         IX2104.2
119000     MOVE    "WWWWWWWWWV399ALTKEY2"  TO FS1-ALTKEY2-1-20.         IX2104.2
119100     MOVE    WRK-FS1-RECKEY   TO IX-REC-KEY-AREA.                 IX2104.2
119200     MOVE    WRK-FS1-ALTKEY1  TO IX-ALT-KEY1-AREA.                IX2104.2
119300     MOVE    WRK-FS1-ALTKEY2  TO IX-ALT-KEY2-AREA.                IX2104.2
119400 START-TEST-GF-06.                                                IX2104.2
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
121200     START   IX-FS1                                               IX2104.2
121300                    KEY IS GREATER THAN IX-FS1-KEY-1-5            IX2104.2
121400          INVALID KEY    MOVE  FS1-STATUS TO FILESTATUS (6)       IX2104.2
121500                     MOVE  "INVALID KEY ON START"  TO COMPUTED-A  IX2104.2
121600                     GO TO START-FAIL-GF-06.                      IX2104.2
121700     MOVE    FS1-STATUS TO FILESTATUS (6).                        IX2104.2
121800     READ    IX-FS1  AT END                                       IX2104.2
121900                     MOVE "AT END ON READ" TO COMPUTED-A          IX2104.2
122000                     GO TO START-FAIL-GF-06.                      IX2104.2
122100     MOVE    IX-FS1R1-F-G-240 TO FILE-RECORD-INFO (1).            IX2104.2
122200     IF      XRECORD-NUMBER (1) EQUAL TO 196                      IX2104.2
122300             PERFORM  PASS                                        IX2104.2
122400             MOVE  "SUBORDINATE DATA ITEM IN KEY"  TO RE-MARK     IX2104.2
122500             GO TO START-EXIT-GF-06.                              IX2104.2
122600     MOVE    71  TO RECNO.                                        IX2104.2
122700     PERFORM DISPLAY-RECORD-KEYS.                                 IX2104.2
122800     MOVE    XRECORD-NUMBER (1)  TO COMPUTED-18V0.                IX2104.2
122900 START-FAIL-GF-06.                                                IX2104.2
123000     PERFORM  FAIL.                                               IX2104.2
123100     MOVE    196  TO CORRECT-18V0.                                IX2104.2
123200     MOVE "RECORD NUMBER; IX-36 ETC " TO RE-MARK.                 IX2104.2
123300     GO TO   START-EXIT-GF-06.                                    IX2104.2
123400 START-DELETE-GF-06.                                              IX2104.2
123500     PERFORM DE-LETE.                                             IX2104.2
123600 START-EXIT-GF-06.                                                IX2104.2
123700     PERFORM PRINT-DETAIL.                                        IX2104.2
123800 START-INIT-GF-07.                                                IX2104.2
123900     PERFORM START-INITIALIZE-RECORD.                             IX2104.2
124000     MOVE "START GT RECKEY " TO FEATURE.                          IX2104.2
124100     MOVE "START-TEST-GF-07" TO PAR-NAME.                         IX2104.2
124200     IF      INIT-FLAG NOT EQUAL TO ZERO                          IX2104.2
124300             MOVE    "TEST IMPROPERLY INITIALIZED"  TO RE-MARK    IX2104.2
124400             MOVE   "**"  TO FILESTATUS (7)                       IX2104.2
124500             GO TO   START-DELETE-GF-07.                          IX2104.2
124600     MOVE    "UUUUUUUUUU400"  TO FS1-RECKEY-1-13.                 IX2104.2
124700     MOVE    "FFFFFFFFFG022ALTKEY1"  TO FS1-ALTKEY1-1-20.         IX2104.2
124800     MOVE    "VVVVVVVVVV380ALTKEY2"  TO FS1-ALTKEY2-1-20.         IX2104.2
124900     MOVE    WRK-FS1-RECKEY   TO IX-REC-KEY-AREA.                 IX2104.2
125000     MOVE    WRK-FS1-ALTKEY1  TO IX-ALT-KEY1-AREA.                IX2104.2
125100     MOVE    WRK-FS1-ALTKEY2  TO IX-ALT-KEY2-AREA.                IX2104.2
125200 START-TEST-GF-07.                                                IX2104.2
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
126400*                                                                         
126500     START  IX-FS1                                                IX2104.2
126600                   KEY IS GREATER THAN R-RECKEY-1-7               IX2104.2
126700          INVALID KEY    MOVE  FS1-STATUS TO FILESTATUS (7)       IX2104.2
126800                     GO TO START-PASS-GF-07.                      IX2104.2
126900     MOVE    FS1-STATUS TO FILESTATUS (7).                        IX2104.2
127000     READ    IX-FS1  AT END                                       IX2104.2
127100                     MOVE  "AT END PATH TAKEN ON READ" TO RE-MARK.IX2104.2
127200     MOVE    IX-FS1R1-F-G-240 TO FILE-RECORD-INFO (1).            IX2104.2
127300     PERFORM FAIL.                                                IX2104.2
127400     MOVE    XRECORD-KEY (1) TO COMPUTED-A.                       IX2104.2
127500     MOVE    "INVALID KEY" TO CORRECT-A.                          IX2104.2
127600     MOVE "AT END PATH TAKEN & IX-36 ETC " TO RE-MARK.            IX2104.2
127700     GO TO   START-EXIT-GF-07.                                    IX2104.2
127800 START-PASS-GF-07.                                                IX2104.2
127900     PERFORM PASS.                                                IX2104.2
128000     MOVE    "INVALID KEY OK."  TO RE-MARK.                       IX2104.2
128100     GO TO   START-EXIT-GF-07.                                    IX2104.2
128200 START-DELETE-GF-07.                                              IX2104.2
128300     PERFORM DE-LETE.                                             IX2104.2
128400 START-EXIT-GF-07.                                                IX2104.2
128500     PERFORM PRINT-DETAIL.                                        IX2104.2
128600 START-INIT-GF-08.                                                IX2104.2
128700     PERFORM START-INITIALIZE-RECORD.                             IX2104.2
128800     MOVE "START GT RECKEY " TO FEATURE.                          IX2104.2
128900     MOVE "START-TEST-GF-08" TO PAR-NAME.                         IX2104.2
129000     IF      INIT-FLAG NOT EQUAL TO ZERO                          IX2104.2
129100             MOVE    "TEST IMPROPERLY INITIALIZED"  TO RE-MARK    IX2104.2
129200             MOVE   "**"  TO FILESTATUS (8)                       IX2104.2
129300             GO TO   START-DELETE-GF-08.                          IX2104.2
129400     MOVE    "ABBBBBBBBC002"  TO FS1-RECKEY-1-13.                 IX2104.2
129500     MOVE    "XYYYYYYYYY399ALTKEY1"  TO FS1-ALTKEY1-1-20.         IX2104.2
129600     MOVE    "WWWWWWWWWV399ALTKEY2"  TO FS1-ALTKEY2-1-20.         IX2104.2
129700     MOVE    WRK-FS1-RECKEY   TO IX-REC-KEY-AREA.                 IX2104.2
129800     MOVE    WRK-FS1-ALTKEY1  TO IX-ALT-KEY1-AREA.                IX2104.2
129900     MOVE    WRK-FS1-ALTKEY2  TO IX-ALT-KEY2-AREA.                IX2104.2
130000 START-TEST-GF-08.                                                IX2104.2
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
131200*                                                                         
131300*                                                                         
131400     START   IX-FS1                                               IX2104.2
131500                    KEY IS GREATER THAN R-RECKEY-1-7              IX2104.2
131600          INVALID KEY    MOVE  FS1-STATUS TO FILESTATUS (8)       IX2104.2
131700                     MOVE  "INVALID KEY ON START"  TO COMPUTED-A  IX2104.2
131800                     GO TO START-FAIL-GF-08.                      IX2104.2
131900     MOVE    FS1-STATUS TO FILESTATUS (8).                        IX2104.2
132000     READ    IX-FS1  AT END                                       IX2104.2
132100                     MOVE "AT END ON READ" TO COMPUTED-A          IX2104.2
132200                     GO TO START-FAIL-GF-08.                      IX2104.2
132300     MOVE    IX-FS1R1-F-G-240 TO FILE-RECORD-INFO (1).            IX2104.2
132400     IF      XRECORD-NUMBER (1) EQUAL TO 001                      IX2104.2
132500             PERFORM  PASS                                        IX2104.2
132600             MOVE  "SUBORDINATE DATA ITEM IN KEY"  TO RE-MARK     IX2104.2
132700             GO TO START-EXIT-GF-08.                              IX2104.2
132800     MOVE    01  TO RECNO.                                        IX2104.2
132900     PERFORM DISPLAY-RECORD-KEYS.                                 IX2104.2
133000     MOVE    XRECORD-NUMBER (1)  TO COMPUTED-18V0.                IX2104.2
133100 START-FAIL-GF-08.                                                IX2104.2
133200     PERFORM  FAIL.                                               IX2104.2
133300     MOVE    001   TO CORRECT-18V0.                               IX2104.2
133400     MOVE "RECORD NUMBER; IX-36 ETC " TO RE-MARK.                 IX2104.2
133500     GO TO   START-EXIT-GF-08.                                    IX2104.2
133600 START-DELETE-GF-08.                                              IX2104.2
133700     PERFORM DE-LETE.                                             IX2104.2
133800 START-EXIT-GF-08.                                                IX2104.2
133900     PERFORM PRINT-DETAIL.                                        IX2104.2
134000 START-INIT-GF-09.                                                IX2104.2
134100     PERFORM START-INITIALIZE-RECORD.                             IX2104.2
134200     MOVE "START GT RECKEY " TO FEATURE.                          IX2104.2
134300     MOVE "START-TEST-GF-09" TO PAR-NAME.                         IX2104.2
134400     IF      INIT-FLAG NOT EQUAL TO ZERO                          IX2104.2
134500             MOVE    "TEST IMPROPERLY INITIALIZED"  TO RE-MARK    IX2104.2
134600             MOVE   "**"  TO FILESTATUS (9)                       IX2104.2
134700             GO TO   START-DELETE-GF-09.                          IX2104.2
134800     MOVE    "UUUUUUVVVV400"  TO FS1-RECKEY-1-13.                 IX2104.2
134900     MOVE    "EEEEEEEEEF002ALTKEY1"  TO FS1-ALTKEY1-1-20.         IX2104.2
135000     MOVE    "WWWWWWWWWV398ALTKEY2"  TO FS1-ALTKEY2-1-20.         IX2104.2
135100     MOVE    WRK-FS1-RECKEY   TO IX-REC-KEY-AREA.                 IX2104.2
135200     MOVE    WRK-FS1-ALTKEY1  TO IX-ALT-KEY1-AREA.                IX2104.2
135300     MOVE    WRK-FS1-ALTKEY2  TO IX-ALT-KEY2-AREA.                IX2104.2
135400 START-TEST-GF-09.                                                IX2104.2
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
136500*                                                                         
136600*                                                                         
136700*                                                                         
136800     START   IX-FS1                                               IX2104.2
136900                    KEY IS GREATER THAN R-RECKEY-1-7              IX2104.2
137000          INVALID KEY    MOVE  FS1-STATUS TO FILESTATUS (9)       IX2104.2
137100                     GO TO START-PASS-GF-09.                      IX2104.2
137200     MOVE    FS1-STATUS TO FILESTATUS (9).                        IX2104.2
137300     READ    IX-FS1  AT END                                       IX2104.2
137400      MOVE "IX-36 ETS &     AT END PATH TAKEN ON READ" TO RE-MARK.IX2104.2
137500     MOVE    IX-FS1R1-F-G-240 TO FILE-RECORD-INFO (1).            IX2104.2
137600     PERFORM FAIL.                                                IX2104.2
137700     MOVE    XRECORD-KEY (1)  TO COMPUTED-A.                      IX2104.2
137800     MOVE     "INVALID KEY" TO CORRECT-A.                         IX2104.2
137900     GO TO   START-EXIT-GF-09.                                    IX2104.2
138000 START-PASS-GF-09.                                                IX2104.2
138100     PERFORM PASS.                                                IX2104.2
138200     MOVE    "INVALID KEY OK."  TO RE-MARK.                       IX2104.2
138300     GO TO   START-EXIT-GF-09.                                    IX2104.2
138400 START-DELETE-GF-09.                                              IX2104.2
138500     PERFORM DE-LETE.                                             IX2104.2
138600 START-EXIT-GF-09.                                                IX2104.2
138700     PERFORM PRINT-DETAIL.                                        IX2104.2
138800 START-TERM-GF.                                                   IX2104.2
138900     CLOSE   IX-FS1.                                              IX2104.2
139000 START-INIT-GF-10.                                                IX2104.2
139100     MOVE "FILE STATUS START:00"  TO FEATURE.                     IX2104.2
139200     MOVE "START-TEST-GF-10" TO PAR-NAME.                         IX2104.2
139300*                                                                         
139400*                                                                         
139500*                                                                         
139600*                                                                         
139700 START-TEST-GF-10.                                                IX2104.2
139800     IF      FILESTATUS (1)  EQUAL TO "**"                        IX2104.2
139900             PERFORM DE-LETE                                      IX2104.2
140000             GO TO  START-WRITE-GF-10.                            IX2104.2
140100*                                                                         
140200*                                                                         
140300*                                                                         
140400*                                                                         
140500*                                                                         
140600     IF      FILESTATUS (1)  EQUAL TO "00"                        IX2104.2
140700             PERFORM PASS                                         IX2104.2
140800     ELSE                                                         IX2104.2
140900         MOVE "FROM START-TEST-GF-01; IX-3 1.3.4 (1) A" TO RE-MARKIX2104.2
141000             PERFORM  FAIL                                        IX2104.2
141100             MOVE  "00"  TO CORRECT-A                             IX2104.2
141200             MOVE   FILESTATUS (1)  TO COMPUTED-A.                IX2104.2
141300 START-WRITE-GF-10.                                               IX2104.2
141400     PERFORM  PRINT-DETAIL.                                       IX2104.2
141500 START-TEST-GF-11.                                                IX2104.2
141600     MOVE "FILE STATUS START:??"  TO FEATURE.                     IX2104.2
141700     MOVE "START-TEST-GF-11" TO PAR-NAME.                         IX2104.2
141800     IF      FILESTATUS (2)  EQUAL TO "**"                        IX2104.2
141900             PERFORM DE-LETE                                      IX2104.2
142000             GO TO  START-WRITE-GF-11.                            IX2104.2
142100*                                                                         
142200*                                                                         
142300*                                                                         
142400*                                                                         
142500*                                                                         
142600     IF      FILESTATUS (2) EQUAL TO "00"                         IX2104.2
142700             PERFORM  PASS                                        IX2104.2
142800             ELSE  PERFORM  FAIL                                  IX2104.2
142900         MOVE "FROM START-TEST-GF-02; IX-3 1.3.4 (1) A" TO RE-MARKIX2104.2
143000             MOVE    "00"  TO CORRECT-A                           IX2104.2
143100             MOVE   FILESTATUS (2)  TO COMPUTED-A.                IX2104.2
143200 START-WRITE-GF-11.                                               IX2104.2
143300     PERFORM  PRINT-DETAIL.                                       IX2104.2
143400 START-TEST-GF-12.                                                IX2104.2
143500     MOVE "FILE STATUS START:??"  TO FEATURE.                     IX2104.2
143600     MOVE "START-TEST-GF-12" TO PAR-NAME.                         IX2104.2
143700     IF      FILESTATUS (3)  EQUAL TO "**"                        IX2104.2
143800             PERFORM DE-LETE                                      IX2104.2
143900             GO TO  START-WRITE-GF-12.                            IX2104.2
144000*                                                                         
144100*                                                                         
144200*                                                                         
144300*                                                                         
144400*                                                                         
144500     IF      FILESTATUS (3) EQUAL TO "00"                         IX2104.2
144600             PERFORM  PASS                                        IX2104.2
144700             ELSE  PERFORM  FAIL                                  IX2104.2
144800         MOVE "FROM START-TEST-GF-03; IX-3 1.3.4 (1) A" TO RE-MARKIX2104.2
144900             MOVE    "00"  TO CORRECT-A                           IX2104.2
145000             MOVE   FILESTATUS (3)  TO COMPUTED-A.                IX2104.2
145100 START-WRITE-GF-12.                                               IX2104.2
145200     PERFORM  PRINT-DETAIL.                                       IX2104.2
145300 START-TEST-GF-13.                                                IX2104.2
145400     MOVE "FILE STATUS START:??"  TO FEATURE.                     IX2104.2
145500     MOVE "START-TEST-GF-13" TO PAR-NAME.                         IX2104.2
145600     IF      FILESTATUS (4)  EQUAL TO "**"                        IX2104.2
145700             PERFORM DE-LETE                                      IX2104.2
145800             GO TO  START-WRITE-GF-13.                            IX2104.2
145900*                                                                         
146000*                                                                         
146100*                                                                         
146200*                                                                         
146300*                                                                         
146400     IF      FILESTATUS (4)  EQUAL TO "28"                        IX2104.2
146500             PERFORM  PASS                                        IX2104.2
146600             ELSE  PERFORM  FAIL                                  IX2104.2
146700         MOVE "FROM START-TEST-GF-04; IX-4 1.3.4 (3) C" TO RE-MARKIX2104.2
146800             MOVE    "28"  TO CORRECT-A                           IX2104.2
146900             MOVE   FILESTATUS (4)  TO COMPUTED-A.                IX2104.2
147000 START-WRITE-GF-13.                                               IX2104.2
147100     PERFORM  PRINT-DETAIL.                                       IX2104.2
147200 START-TEST-GF-14.                                                IX2104.2
147300     MOVE "FILE STATUS START:??"  TO FEATURE.                     IX2104.2
147400     MOVE "START-TEST-GF-14" TO PAR-NAME.                         IX2104.2
147500     IF      FILESTATUS (5)  EQUAL TO "**"                        IX2104.2
147600             PERFORM DE-LETE                                      IX2104.2
147700             GO TO  START-WRITE-GF-14.                            IX2104.2
147800*                                                                         
147900*                                                                         
148000*                                                                         
148100*                                                                         
148200*                                                                         
148300     IF      FILESTATUS (5)  EQUAL TO "00"                        IX2104.2
148400             PERFORM  PASS                                        IX2104.2
148500             ELSE  PERFORM  FAIL                                  IX2104.2
148600         MOVE "FROM START-TEST-GF-05; IX-3 1.3.4 (1) A" TO RE-MARKIX2104.2
148700             MOVE    "00"  TO CORRECT-A                           IX2104.2
148800             MOVE   FILESTATUS (5)  TO COMPUTED-A.                IX2104.2
148900 START-WRITE-GF-14.                                               IX2104.2
149000     PERFORM  PRINT-DETAIL.                                       IX2104.2
149100 START-TEST-GF-15.                                                IX2104.2
149200     MOVE "FILE STATUS START:??"  TO FEATURE.                     IX2104.2
149300     MOVE "START-TEST-GF-15" TO PAR-NAME.                         IX2104.2
149400     IF      FILESTATUS (6)  EQUAL TO "**"                        IX2104.2
149500             PERFORM DE-LETE                                      IX2104.2
149600             GO TO  START-WRITE-GF-15.                            IX2104.2
149700*                                                                         
149800*                                                                         
149900*                                                                         
150000*                                                                         
150100*                                                                         
150200     IF      FILESTATUS (6)  EQUAL TO "00"                        IX2104.2
150300             PERFORM  PASS                                        IX2104.2
150400             ELSE  PERFORM  FAIL                                  IX2104.2
150500         MOVE "FROM START-TEST-GF-01; IX-3 1.3.4 (1) A" TO RE-MARKIX2104.2
150600             MOVE   "00"  TO CORRECT-A                            IX2104.2
150700             MOVE   FILESTATUS (6)  TO COMPUTED-A.                IX2104.2
150800 START-WRITE-GF-15.                                               IX2104.2
150900     PERFORM  PRINT-DETAIL.                                       IX2104.2
151000 START-TEST-GF-16.                                                IX2104.2
151100     MOVE "FILE STATUS START:??"  TO FEATURE.                     IX2104.2
151200     MOVE "START-TEST-GF-16" TO PAR-NAME.                         IX2104.2
151300     IF      FILESTATUS (7)  EQUAL TO "**"                        IX2104.2
151400             PERFORM DE-LETE                                      IX2104.2
151500             GO TO  START-WRITE-GF-16.                            IX2104.2
151600*                                                                         
151700*                                                                         
151800*                                                                         
151900*                                                                         
152000*                                                                         
152100     IF      FILESTATUS (7)  EQUAL TO "23"                        IX2104.2
152200             PERFORM  PASS                                        IX2104.2
152300             ELSE  PERFORM  FAIL                                  IX2104.2
152400         MOVE "FROM START-TEST-GF-07; IX-4 1.3.4 (3) C" TO RE-MARKIX2104.2
152500             MOVE    "23"  TO CORRECT-A                           IX2104.2
152600             MOVE   FILESTATUS (7)  TO COMPUTED-A.                IX2104.2
152700 START-WRITE-GF-16.                                               IX2104.2
152800       PERFORM  PRINT-DETAIL.                                     IX2104.2
152900 START-TEST-GF-17.                                                IX2104.2
153000     MOVE "FILE STATUS START:??"  TO FEATURE.                     IX2104.2
153100     MOVE "START-TEST-GF-17" TO PAR-NAME.                         IX2104.2
153200     IF      FILESTATUS (8)  EQUAL TO "**"                        IX2104.2
153300             PERFORM DE-LETE                                      IX2104.2
153400             GO TO  START-WRITE-GF-17.                            IX2104.2
153500*                                                                         
153600*                                                                         
153700*                                                                         
153800*                                                                         
153900*                                                                         
154000     IF      FILESTATUS (8) EQUAL TO "00"                         IX2104.2
154100             PERFORM  PASS                                        IX2104.2
154200             ELSE  PERFORM  FAIL                                  IX2104.2
154300         MOVE "FROM START-TEST-GF-08; IX-3 1.3.4 (1) A" TO RE-MARKIX2104.2
154400             MOVE    "00"  TO CORRECT-A                           IX2104.2
154500             MOVE   FILESTATUS (8)  TO COMPUTED-A.                IX2104.2
154600 START-WRITE-GF-17.                                               IX2104.2
154700     PERFORM  PRINT-DETAIL.                                       IX2104.2
154800 START-TEST-GF-18.                                                IX2104.2
154900     MOVE "FILE STATUS START:??"  TO FEATURE.                     IX2104.2
155000     MOVE "START-TEST-GF-18" TO PAR-NAME.                         IX2104.2
155100     IF      FILESTATUS (9)  EQUAL TO "**"                        IX2104.2
155200             PERFORM DE-LETE                                      IX2104.2
155300             GO TO  START-WRITE-GF-18.                            IX2104.2
155400*                                                                         
155500*                                                                         
155600*                                                                         
155700*                                                                         
155800*                                                                         
155900     IF      FILESTATUS (9)  EQUAL TO "24"                        IX2104.2
156000             PERFORM PASS                                         IX2104.2
156100     ELSE    PERFORM FAIL                                         IX2104.2
156200         MOVE "FROM START-TEST-GF-09; IX-4 1.3.4 (3) C" TO RE-MARKIX2104.2
156300             MOVE  "24"  TO CORRECT-A                             IX2104.2
156400             MOVE   FILESTATUS (9)  TO COMPUTED-A.                IX2104.2
156500 START-WRITE-GF-18.                                               IX2104.2
156600     PERFORM  PRINT-DETAIL.                                       IX2104.2
156700                                                                  IX2104.2
156800                                                                  IX2104.2
156900 START-INIT-GF-19-0.                                              IX2104.2
157000     OPEN    INPUT  IX-FS1.                                       IX2104.2
157100     MOVE    SPACE TO HOLD-FILESTATUS-RECORD.                     IX2104.2
157200*                                                                         
157300*                                                                         
157400*                                                                         
157500*                                                                         
157600*                                                                         
157700*                                                                         
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
160300 START-INIT-GF-19.                                                IX2104.2
160400     PERFORM START-INITIALIZE-RECORD.                             IX2104.2
160500     MOVE "STR GT ALTKY W/O DUP" TO FEATURE.                      IX2104.2
160600     MOVE "START-TEST-GF-19"  TO PAR-NAME.                        IX2104.2
160700     IF      INIT-FLAG NOT EQUAL TO ZERO                          IX2104.2
160800             MOVE   "**"  TO FILESTATUS (1)                       IX2104.2
160900             MOVE   "TEST IMPROPERLY INITIALIZED" TO RE-MARK      IX2104.2
161000             GO TO START-DELETE-GF-19.                            IX2104.2
161100     MOVE    "CCCCCDDDDD022"  TO FS1-RECKEY-1-13.                 IX2104.2
161200     MOVE    "XXXXXXXXXY382ALTKEY1"  TO FS1-ALTKEY1-1-20.         IX2104.2
161300     MOVE    "EEEEEFFFFF022ALTKEY2" TO FS1-ALTKEY2-1-20.          IX2104.2
161400     MOVE    WRK-FS1-RECKEY TO IX-REC-KEY-AREA.                   IX2104.2
161500     MOVE    WRK-FS1-ALTKEY1 TO IX-ALT-KEY1-AREA.                 IX2104.2
161600     MOVE    WRK-FS1-ALTKEY2 TO IX-ALT-KEY2-AREA.                 IX2104.2
161700 START-TEST-19.                                                   IX2104.2
161800*                                                                         
161900*                                                                         
162000*                                                                         
162100*                                                                         
162200*                                                                         
162300     START   IX-FS1                                               IX2104.2
162400                    KEY IS GREATER THAN IX-FS1-ALTKEY1            IX2104.2
162500          INVALID KEY   MOVE FS1-STATUS TO FILESTATUS (1)         IX2104.2
162600                     MOVE  "INVALID KEY ON START" TO COMPUTED-A   IX2104.2
162700                        GO TO START-FAIL-GF-19.                   IX2104.2
162800     MOVE    FS1-STATUS TO FILESTATUS (1).                        IX2104.2
162900     READ    IX-FS1  AT END                                       IX2104.2
163000                     MOVE  "AT END ON READ" TO COMPUTED-A         IX2104.2
163100                     GO TO START-FAIL-GF-19.                      IX2104.2
163200     MOVE    IX-FS1R1-F-G-240  TO  FILE-RECORD-INFO (1).          IX2104.2
163300     IF      XRECORD-NUMBER (1)  EQUAL TO 192                     IX2104.2
163400             PERFORM PASS                                         IX2104.2
163500             MOVE SPACE TO RE-MARK                                IX2104.2
163600             GO TO START-EXIT-GF-19.                              IX2104.2
163700     MOVE    67  TO RECNO.                                        IX2104.2
163800     PERFORM DISPLAY-ALTERNATE-KEY1.                              IX2104.2
163900     MOVE     XRECORD-NUMBER (1)  TO COMPUTED-18V0.               IX2104.2
164000 START-FAIL-GF-19.                                                IX2104.2
164100     PERFORM FAIL.                                                IX2104.2
164200     MOVE    192  TO CORRECT-18V0.                                IX2104.2
164300     MOVE "RECORD NUMBER; IX-36 ETC " TO RE-MARK.                 IX2104.2
164400     GO TO   START-EXIT-GF-19.                                    IX2104.2
164500 START-DELETE-GF-19.                                              IX2104.2
164600     PERFORM DE-LETE.                                             IX2104.2
164700 START-EXIT-GF-19.                                                IX2104.2
164800     PERFORM PRINT-DETAIL.                                        IX2104.2
164900 START-INIT-GF-20.                                                IX2104.2
165000     PERFORM START-INITIALIZE-RECORD.                             IX2104.2
165100     MOVE "STR GT ALTKY W/O DUP" TO FEATURE.                      IX2104.2
165200     MOVE "START-TEST-GF-20"  TO PAR-NAME.                        IX2104.2
165300     IF      INIT-FLAG NOT EQUAL TO ZERO                          IX2104.2
165400             MOVE   "**"  TO FILESTATUS (2)                       IX2104.2
165500             MOVE   "TEST IMPROPERLY INITIALIZED" TO RE-MARK      IX2104.2
165600             GO TO START-DELETE-GF-20.                            IX2104.2
165700     MOVE    "CCCCCDDDDD022"  TO FS1-RECKEY-1-13.                 IX2104.2
165800     MOVE    "HHHHHHHIII67ALTKEY1"  TO FS1-ALTKEY1-1-20.          IX2104.2
165900     MOVE    "EEEEEFFFFF022ALTKEY2" TO FS1-ALTKEY2-1-20.          IX2104.2
166000     MOVE    WRK-FS1-RECKEY TO IX-REC-KEY-AREA.                   IX2104.2
166100     MOVE    WRK-FS1-ALTKEY1 TO IX-ALT-KEY1-AREA.                 IX2104.2
166200     MOVE    WRK-FS1-ALTKEY2 TO IX-ALT-KEY2-AREA.                 IX2104.2
166300 START-TEST-GF-20.                                                IX2104.2
166400*                                                                         
166500*                                                                         
166600*                                                                         
166700*                                                                         
166800*                                                                         
166900*                                                                         
167000*                                                                         
167100*                                                                         
167200     START   IX-FS1                                               IX2104.2
167300                    KEY IS GREATER THAN IX-FS1-ALTKEY1            IX2104.2
167400          INVALID KEY   MOVE FS1-STATUS TO FILESTATUS (2)         IX2104.2
167500                     MOVE  "INVALID KEY ON START" TO COMPUTED-A   IX2104.2
167600                        GO TO START-FAIL-GF-20.                   IX2104.2
167700     MOVE    FS1-STATUS TO FILESTATUS (2).                        IX2104.2
167800     READ    IX-FS1  AT END                                       IX2104.2
167900                     MOVE  "AT END ON READ" TO COMPUTED-A         IX2104.2
168000                     GO TO START-FAIL-GF-20.                      IX2104.2
168100     MOVE    IX-FS1R1-F-G-240  TO  FILE-RECORD-INFO (1).          IX2104.2
168200     IF      XRECORD-NUMBER (1)  EQUAL TO 034                     IX2104.2
168300             PERFORM PASS                                         IX2104.2
168400             MOVE SPACE TO RE-MARK                                IX2104.2
168500             GO TO START-EXIT-GF-20.                              IX2104.2
168600     MOVE    34  TO RECNO.                                        IX2104.2
168700     PERFORM DISPLAY-ALTERNATE-KEY1.                              IX2104.2
168800     MOVE     XRECORD-NUMBER (1)  TO COMPUTED-18V0.               IX2104.2
168900 START-FAIL-GF-20.                                                IX2104.2
169000     PERFORM FAIL.                                                IX2104.2
169100     MOVE    034  TO CORRECT-18V0.                                IX2104.2
169200     MOVE "RECORD NUMBER; IX-36 ETC " TO RE-MARK.                 IX2104.2
169300     GO TO   START-EXIT-GF-20.                                    IX2104.2
169400 START-DELETE-GF-20.                                              IX2104.2
169500     PERFORM DE-LETE.                                             IX2104.2
169600 START-EXIT-GF-20.                                                IX2104.2
169700     PERFORM PRINT-DETAIL.                                        IX2104.2
169800 START-INIT-GF-21.                                                IX2104.2
169900     PERFORM START-INITIALIZE-RECORD.                             IX2104.2
170000     MOVE "STR GT ALTKY W/O DUP" TO FEATURE.                      IX2104.2
170100     MOVE "START-TEST-GF-21"  TO PAR-NAME.                        IX2104.2
170200     IF      INIT-FLAG NOT EQUAL TO ZERO                          IX2104.2
170300             MOVE   "**"  TO FILESTATUS (3)                       IX2104.2
170400             MOVE   "TEST IMPROPERLY INITIALIZED" TO RE-MARK      IX2104.2
170500             GO TO START-DELETE-GF-21.                            IX2104.2
170600     MOVE    "CCCCCDDDDD022"  TO FS1-RECKEY-1-13.                 IX2104.2
170700     MOVE    "EEEEEEEEEF001ALTKEY1"  TO FS1-ALTKEY1-1-20.         IX2104.2
170800     MOVE    "EEEEEFFFFF022ALTKEY2" TO FS1-ALTKEY2-1-20.          IX2104.2
170900     MOVE    WRK-FS1-RECKEY TO IX-REC-KEY-AREA.                   IX2104.2
171000     MOVE    WRK-FS1-ALTKEY1 TO IX-ALT-KEY1-AREA.                 IX2104.2
171100     MOVE    WRK-FS1-ALTKEY2 TO IX-ALT-KEY2-AREA.                 IX2104.2
171200 START-TEST-GF-21.                                                IX2104.2
171300*                                                                         
171400*                                                                         
171500*                                                                         
171600*                                                                         
171700*                                                                         
171800*                                                                         
171900*                                                                         
172000*                                                                         
172100*                                                                         
172200     START   IX-FS1                                               IX2104.2
172300                    KEY IS GREATER THAN IX-FS1-ALTKEY1            IX2104.2
172400          INVALID KEY   MOVE FS1-STATUS TO FILESTATUS (3)         IX2104.2
172500                     MOVE  "INVALID KEY ON START" TO COMPUTED-A   IX2104.2
172600                        GO TO START-FAIL-GF-21.                   IX2104.2
172700     MOVE    FS1-STATUS TO FILESTATUS (3).                        IX2104.2
172800     READ    IX-FS1  AT END                                       IX2104.2
172900                     MOVE  "AT END ON READ" TO COMPUTED-A         IX2104.2
173000                     GO TO START-FAIL-GF-21.                      IX2104.2
173100     MOVE    IX-FS1R1-F-G-240  TO  FILE-RECORD-INFO (1).          IX2104.2
173200     IF      XRECORD-NUMBER (1)  EQUAL TO 501                     IX2104.2
173300             PERFORM PASS                                         IX2104.2
173400             MOVE SPACE TO RE-MARK                                IX2104.2
173500             GO TO START-EXIT-GF-21.                              IX2104.2
173600     MOVE    01  TO RECNO.                                        IX2104.2
173700     PERFORM DISPLAY-ALTERNATE-KEY1.                              IX2104.2
173800     MOVE     XRECORD-NUMBER (1)  TO COMPUTED-18V0.               IX2104.2
173900 START-FAIL-GF-21.                                                IX2104.2
174000     PERFORM FAIL.                                                IX2104.2
174100     MOVE    501  TO CORRECT-18V0.                                IX2104.2
174200     MOVE "RECORD NUMBER; IX-36 ETC " TO RE-MARK.                 IX2104.2
174300     GO TO   START-EXIT-GF-21.                                    IX2104.2
174400 START-DELETE-GF-21.                                              IX2104.2
174500     PERFORM DE-LETE.                                             IX2104.2
174600 START-EXIT-GF-21.                                                IX2104.2
174700     PERFORM PRINT-DETAIL.                                        IX2104.2
174800 START-INIT-GF-22.                                                IX2104.2
174900     PERFORM START-INITIALIZE-RECORD.                             IX2104.2
175000     MOVE "STR GT ALTKY W/O DUP" TO FEATURE.                      IX2104.2
175100     MOVE "START-TEST-GF-22"  TO PAR-NAME.                        IX2104.2
175200     IF      INIT-FLAG NOT EQUAL TO ZERO                          IX2104.2
175300             MOVE    "TEST IMPROPERLY INITIALIZED"  TO RE-MARK    IX2104.2
175400             MOVE   "**"  TO FILESTATUS (4)                       IX2104.2
175500             GO TO   START-DELETE-GF-22.                          IX2104.2
175600     MOVE    "UUUUUUUUUU400"  TO FS1-RECKEY-1-13.                 IX2104.2
175700     MOVE    "YYYYYYYYYY401ALTKEY1"  TO FS1-ALTKEY1-1-20.         IX2104.2
175800     MOVE    "DDDDDDDDDD000ALTKEY2" TO FS1-ALTKEY2-1-20.          IX2104.2
175900     MOVE    WRK-FS1-RECKEY   TO IX-REC-KEY-AREA.                 IX2104.2
176000     MOVE    WRK-FS1-ALTKEY1  TO IX-ALT-KEY1-AREA.                IX2104.2
176100     MOVE    WRK-FS1-ALTKEY2  TO IX-ALT-KEY2-AREA.                IX2104.2
176200 START-TEST-GF-22.                                                IX2104.2
176300*                                                                         
176400*                                                                         
176500*                                                                         
176600*                                                                         
176700*                                                                         
176800*                                                                         
176900*                                                                         
177000*                                                                         
177100*                                                                         
177200     START   IX-FS1                                               IX2104.2
177300                    KEY IS GREATER THAN IX-FS1-ALTKEY1            IX2104.2
177400          INVALID KEY    MOVE  FS1-STATUS TO FILESTATUS (4)       IX2104.2
177500                         GO TO START-PASS-GF-22.                  IX2104.2
177600     MOVE    FS1-STATUS TO FILESTATUS (4).                        IX2104.2
177700     READ    IX-FS1 AT END                                        IX2104.2
177800                     MOVE  "AT END PATH TAKEN ON READ" TO RE-MARK.IX2104.2
177900     MOVE    IX-FS1R1-F-G-240 TO FILE-RECORD-INFO (1).            IX2104.2
178000     PERFORM FAIL.                                                IX2104.2
178100     MOVE    ALTERNATE-KEY1 (1) TO COMPUTED-A.                    IX2104.2
178200     MOVE    "INVALID KEY" TO CORRECT-A.                          IX2104.2
178300     GO TO   START-EXIT-GF-22.                                    IX2104.2
178400 START-PASS-GF-22.                                                IX2104.2
178500     PERFORM  PASS.                                               IX2104.2
178600     MOVE     "INVALID KEY OK."  TO RE-MARK.                      IX2104.2
178700     GO TO   START-EXIT-GF-22.                                    IX2104.2
178800 START-DELETE-GF-22.                                              IX2104.2
178900     PERFORM DE-LETE.                                             IX2104.2
179000 START-EXIT-GF-22.                                                IX2104.2
179100     PERFORM PRINT-DETAIL.                                        IX2104.2
179200 START-INIT-GF-23.                                                IX2104.2
179300     PERFORM START-INITIALIZE-RECORD.                             IX2104.2
179400     MOVE "STR GT ALTKY W/O DUP" TO FEATURE.                      IX2104.2
179500     MOVE "START-TEST-GF-23"  TO PAR-NAME.                        IX2104.2
179600     IF      INIT-FLAG NOT EQUAL TO ZERO                          IX2104.2
179700             MOVE    "TEST IMPROPERLY INITIALIZED"  TO RE-MARK    IX2104.2
179800             MOVE   "**"  TO FILESTATUS (5)                       IX2104.2
179900             GO TO   START-DELETE-GF-23.                          IX2104.2
180000     MOVE    "CDDDDDDDDD039"  TO FS1-RECKEY-1-13.                 IX2104.2
180100     MOVE    "GGGGHHHHHH100ALTKEY1"  TO FS1-ALTKEY1-1-20.         IX2104.2
180200     MOVE    "ABCXXXXXXX400ALTKEY2"  TO FS1-ALTKEY2-1-20.         IX2104.2
180300     MOVE    WRK-FS1-RECKEY   TO IX-REC-KEY-AREA.                 IX2104.2
180400     MOVE    WRK-FS1-ALTKEY1  TO IX-ALT-KEY1-AREA.                IX2104.2
180500     MOVE    WRK-FS1-ALTKEY2  TO IX-ALT-KEY2-AREA.                IX2104.2
180600 START-TEST-GF-23.                                                IX2104.2
180700*                                                                         
180800*                                                                         
180900*                                                                         
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
182200     START   IX-FS1                                               IX2104.2
182300                    KEY IS GREATER THAN R-ALTKEY1-1-6             IX2104.2
182400          INVALID KEY    MOVE  FS1-STATUS TO FILESTATUS (5)       IX2104.2
182500                     MOVE  "INVALID KEY ON START" TO COMPUTED-A   IX2104.2
182600                     GO TO START-FAIL-GF-23.                      IX2104.2
182700     MOVE    FS1-STATUS TO FILESTATUS (5).                        IX2104.2
182800     READ    IX-FS1  AT END                                       IX2104.2
182900                     MOVE  "AT END ON READ" TO COMPUTED-A         IX2104.2
183000                     GO TO  START-FAIL-GF-23.                     IX2104.2
183100     MOVE    IX-FS1R1-F-G-240 TO FILE-RECORD-INFO (1).            IX2104.2
183200     IF      XRECORD-NUMBER (1)  EQUAL TO 27                      IX2104.2
183300             PERFORM  PASS                                        IX2104.2
183400             MOVE  "SUBORDINATE DATA ITEM OF KEY" TO RE-MARK      IX2104.2
183500             GO TO START-EXIT-GF-23.                              IX2104.2
183600     MOVE    27  TO RECNO.                                        IX2104.2
183700     PERFORM DISPLAY-ALTERNATE-KEY1.                              IX2104.2
183800     MOVE    XRECORD-NUMBER (1)  TO COMPUTED-18V0.                IX2104.2
183900 START-FAIL-GF-23.                                                IX2104.2
184000     PERFORM  FAIL.                                               IX2104.2
184100     MOVE    27  TO CORRECT-18V0.                                 IX2104.2
184200     MOVE "RECORD NUMBER; IX-36 ETC " TO RE-MARK.                 IX2104.2
184300     GO TO   START-EXIT-GF-23.                                    IX2104.2
184400 START-DELETE-GF-23.                                              IX2104.2
184500     PERFORM DE-LETE.                                             IX2104.2
184600 START-EXIT-GF-23.                                                IX2104.2
184700     PERFORM PRINT-DETAIL.                                        IX2104.2
184800 START-INIT-GF-24.                                                IX2104.2
184900     PERFORM START-INITIALIZE-RECORD.                             IX2104.2
185000     MOVE "STR GT ALTKY W/O DUP" TO FEATURE.                      IX2104.2
185100     MOVE "START-TEST-GF-24"  TO PAR-NAME.                        IX2104.2
185200     IF INIT-FLAG NOT EQUAL  TO ZERO                              IX2104.2
185300             MOVE    "TEST IMPROPERLY INITIALIZED"  TO RE-MARK    IX2104.2
185400             MOVE   "**"  TO FILESTATUS (6)                       IX2104.2
185500             GO TO   START-DELETE-GF-24.                          IX2104.2
185600     MOVE    "YYYYYUUUUU390"  TO FS1-RECKEY-1-13.                 IX2104.2
185700     MOVE    "XXXXXXXXXX380ALTKEY1" TO FS1-ALTKEY1-1-20.          IX2104.2
185800     MOVE    "WWWWWWWWWV399ALTKEY2"  TO FS1-ALTKEY2-1-20.         IX2104.2
185900     MOVE    WRK-FS1-RECKEY   TO IX-REC-KEY-AREA.                 IX2104.2
186000     MOVE    WRK-FS1-ALTKEY1  TO IX-ALT-KEY1-AREA.                IX2104.2
186100     MOVE    WRK-FS1-ALTKEY2  TO IX-ALT-KEY2-AREA.                IX2104.2
186200 START-TEST-GF-24.                                                IX2104.2
186300*                                                                         
186400*                                                                         
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
188000     START   IX-FS1                                               IX2104.2
188100                    KEY IS GREATER THAN IX-FS1-ALTKEY1-1-5        IX2104.2
188200                     INVALID KEY                                  IX2104.2
188300                         MOVE  FS1-STATUS TO FILESTATUS (6)       IX2104.2
188400                     MOVE  "INVALID KEY ON START"  TO COMPUTED-A  IX2104.2
188500                     GO TO START-FAIL-GF-24.                      IX2104.2
188600     MOVE    FS1-STATUS TO FILESTATUS (6).                        IX2104.2
188700     READ    IX-FS1  AT END                                       IX2104.2
188800                     MOVE "AT END ON READ" TO COMPUTED-A          IX2104.2
188900                     GO TO START-FAIL-GF-24.                      IX2104.2
189000     MOVE    IX-FS1R1-F-G-240 TO FILE-RECORD-INFO (1).            IX2104.2
189100     IF      XRECORD-NUMBER (1) EQUAL TO 196                      IX2104.2
189200             PERFORM  PASS                                        IX2104.2
189300             MOVE  "SUBORDINATE DATA ITEM IN KEY"  TO RE-MARK     IX2104.2
189400             GO TO START-EXIT-GF-24.                              IX2104.2
189500     MOVE    71  TO RECNO.                                        IX2104.2
189600     PERFORM DISPLAY-ALTERNATE-KEY1.                              IX2104.2
189700     MOVE    XRECORD-NUMBER (1)  TO COMPUTED-18V0.                IX2104.2
189800 START-FAIL-GF-24.                                                IX2104.2
189900     PERFORM  FAIL.                                               IX2104.2
190000     MOVE    196  TO CORRECT-18V0.                                IX2104.2
190100     MOVE "RECORD NUMBER; IX-36 ETC " TO RE-MARK.                 IX2104.2
190200     GO TO   START-EXIT-GF-24.                                    IX2104.2
190300 START-DELETE-GF-24.                                              IX2104.2
190400     PERFORM DE-LETE.                                             IX2104.2
190500 START-EXIT-GF-24.                                                IX2104.2
190600     PERFORM PRINT-DETAIL.                                        IX2104.2
190700 START-INIT-GF-25.                                                IX2104.2
190800     PERFORM START-INITIALIZE-RECORD.                             IX2104.2
190900     MOVE "STR GT ALTKY W/O DUP" TO FEATURE.                      IX2104.2
191000     MOVE "START-TEST-GF-25"  TO PAR-NAME.                        IX2104.2
191100     IF INIT-FLAG NOT EQUAL TO ZERO                               IX2104.2
191200             MOVE    "TEST IMPROPERLY INITIALIZED"  TO RE-MARK    IX2104.2
191300             MOVE   "**"  TO FILESTATUS (7)                       IX2104.2
191400             GO TO   START-DELETE-GF-25.                          IX2104.2
191500     MOVE    "CCCCCCCCCD022"  TO FS1-RECKEY-1-13.                 IX2104.2
191600     MOVE    "YYYYYYYYYY400ALTKEY1"  TO FS1-ALTKEY1-1-20.         IX2104.2
191700     MOVE    "VVVVVVVVVV380ALTKEY2"  TO FS1-ALTKEY2-1-20.         IX2104.2
191800     MOVE    WRK-FS1-RECKEY   TO IX-REC-KEY-AREA.                 IX2104.2
191900     MOVE    WRK-FS1-ALTKEY1  TO IX-ALT-KEY1-AREA.                IX2104.2
192000     MOVE    WRK-FS1-ALTKEY2  TO IX-ALT-KEY2-AREA.                IX2104.2
192100 START-TEST-GF-25.                                                IX2104.2
192200*                                                                         
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
193400     START   IX-FS1                                               IX2104.2
193500                    KEY IS GREATER THAN R-ALTKEY1-1-6             IX2104.2
193600          INVALID KEY    MOVE  FS1-STATUS TO FILESTATUS (7)       IX2104.2
193700                     GO TO START-PASS-GF-25.                      IX2104.2
193800     MOVE    FS1-STATUS TO FILESTATUS (7).                        IX2104.2
193900     READ    IX-FS1  AT END                                       IX2104.2
194000                     MOVE  "AT END PATH TAKEN ON READ" TO RE-MARK.IX2104.2
194100     MOVE    IX-FS1R1-F-G-240 TO FILE-RECORD-INFO (1).            IX2104.2
194200     PERFORM FAIL.                                                IX2104.2
194300     MOVE "AT END PATH AND IX-36 ETC " TO RE-MARK.                IX2104.2
194400     MOVE    XRECORD-KEY (1) TO COMPUTED-A.                       IX2104.2
194500     MOVE    "INVALID KEY" TO CORRECT-A.                          IX2104.2
194600     GO TO   START-EXIT-GF-25.                                    IX2104.2
194700 START-PASS-GF-25.                                                IX2104.2
194800     PERFORM PASS.                                                IX2104.2
194900     MOVE    "INVALID KEY"  TO RE-MARK.                           IX2104.2
195000     GO TO   START-EXIT-GF-25.                                    IX2104.2
195100 START-DELETE-GF-25.                                              IX2104.2
195200     PERFORM DE-LETE.                                             IX2104.2
195300 START-EXIT-GF-25.                                                IX2104.2
195400     PERFORM PRINT-DETAIL.                                        IX2104.2
195500 START-INIT-GF-26.                                                IX2104.2
195600     PERFORM START-INITIALIZE-RECORD.                             IX2104.2
195700     MOVE "STR GT ALTKY W/O DUP" TO FEATURE.                      IX2104.2
195800     MOVE "START-TEST-GF-26"  TO PAR-NAME.                        IX2104.2
195900     IF      INIT-FLAG NOT EQUAL TO ZERO                          IX2104.2
196000             MOVE    "TEST IMPROPERLY INITIALIZED"  TO RE-MARK    IX2104.2
196100             MOVE   "**"  TO FILESTATUS (8)                       IX2104.2
196200             GO TO   START-DELETE-GF-26.                          IX2104.2
196300     MOVE    "YYYYYUUUUU390"  TO FS1-RECKEY-1-13.                 IX2104.2
196400     MOVE    "EEEEDEEEEE002ALTKEY1"  TO FS1-ALTKEY1-1-20.         IX2104.2
196500     MOVE    "WWWWWWWWWV399ALTKEY2"  TO FS1-ALTKEY2-1-20.         IX2104.2
196600     MOVE    WRK-FS1-RECKEY   TO IX-REC-KEY-AREA.                 IX2104.2
196700     MOVE    WRK-FS1-ALTKEY1  TO IX-ALT-KEY1-AREA.                IX2104.2
196800     MOVE    WRK-FS1-ALTKEY2  TO IX-ALT-KEY2-AREA.                IX2104.2
196900 START-TEST-GF-26.                                                IX2104.2
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
198400     START   IX-FS1                                               IX2104.2
198500                    KEY IS GREATER THAN R-ALTKEY1-1-6             IX2104.2
198600          INVALID KEY    MOVE  FS1-STATUS TO FILESTATUS (8)       IX2104.2
198700                     MOVE  "INVALID KEY ON START"  TO COMPUTED-A  IX2104.2
198800                     GO TO START-FAIL-GF-26.                      IX2104.2
198900     MOVE    FS1-STATUS TO FILESTATUS (8).                        IX2104.2
199000     READ    IX-FS1  AT END                                       IX2104.2
199100                     MOVE "AT END ON READ" TO COMPUTED-A          IX2104.2
199200                     GO TO START-FAIL-GF-26.                      IX2104.2
199300     MOVE    IX-FS1R1-F-G-240 TO FILE-RECORD-INFO (1).            IX2104.2
199400     IF      XRECORD-NUMBER (1) EQUAL TO 001                      IX2104.2
199500             PERFORM  PASS                                        IX2104.2
199600             MOVE  "SUBORDINATE DATA ITEM IN KEY"  TO RE-MARK     IX2104.2
199700             GO TO START-EXIT-GF-26.                              IX2104.2
199800     MOVE    01  TO RECNO.                                        IX2104.2
199900     PERFORM DISPLAY-ALTERNATE-KEY1.                              IX2104.2
200000     MOVE    XRECORD-NUMBER (1)  TO COMPUTED-18V0.                IX2104.2
200100 START-FAIL-GF-26.                                                IX2104.2
200200     PERFORM  FAIL.                                               IX2104.2
200300     MOVE    001   TO CORRECT-18V0.                               IX2104.2
200400     MOVE "RECORD NUMBER; IX-36 ETC " TO RE-MARK.                 IX2104.2
200500     GO TO   START-EXIT-GF-26.                                    IX2104.2
200600 START-DELETE-GF-26.                                              IX2104.2
200700     PERFORM DE-LETE.                                             IX2104.2
200800 START-EXIT-GF-26.                                                IX2104.2
200900     PERFORM PRINT-DETAIL.                                        IX2104.2
201000 START-INIT-GF-27.                                                IX2104.2
201100     PERFORM START-INITIALIZE-RECORD.                             IX2104.2
201200     MOVE "STR GT ALTKY W/O DUP" TO FEATURE.                      IX2104.2
201300     MOVE "START-TEST-GF-27"  TO PAR-NAME.                        IX2104.2
201400     IF      INIT-FLAG NOT EQUAL TO ZERO                          IX2104.2
201500             MOVE    "TEST IMPROPERLY INITIALIZED"  TO RE-MARK    IX2104.2
201600             MOVE   "**"  TO FILESTATUS (9)                       IX2104.2
201700             GO TO   START-DELETE-GF-27.                          IX2104.2
201800     MOVE    "UUUUUUUUUU400"  TO FS1-RECKEY-1-13.                 IX2104.2
201900     MOVE    "YYYYYZYYYY400ALTKEY1"  TO FS1-ALTKEY1-1-20.         IX2104.2
202000     MOVE    "WWWWWWWWWV398ALTKEY2"  TO FS1-ALTKEY2-1-20.         IX2104.2
202100     MOVE    WRK-FS1-RECKEY   TO IX-REC-KEY-AREA.                 IX2104.2
202200     MOVE    WRK-FS1-ALTKEY1  TO IX-ALT-KEY1-AREA.                IX2104.2
202300     MOVE    WRK-FS1-ALTKEY2  TO IX-ALT-KEY2-AREA.                IX2104.2
202400 START-TEST-GF-27.                                                IX2104.2
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
203700*                                                                         
203800     START   IX-FS1                                               IX2104.2
203900                    KEY IS GREATER THAN IX-FS1-ALTKEY1-1-10       IX2104.2
204000                                 INVALID KEY                      IX2104.2
204100                         MOVE  FS1-STATUS TO FILESTATUS (9)       IX2104.2
204200                     GO TO START-PASS-GF-27.                      IX2104.2
204300     MOVE    FS1-STATUS TO FILESTATUS (9).                        IX2104.2
204400     READ    IX-FS1  AT END                                       IX2104.2
204500       MOVE "IX-36 ETC.;    AT END PATH TAKEN ON READ" TO RE-MARK.IX2104.2
204600     MOVE    IX-FS1R1-F-G-240 TO FILE-RECORD-INFO (1).            IX2104.2
204700     PERFORM FAIL.                                                IX2104.2
204800     MOVE    XRECORD-KEY (1)  TO COMPUTED-A.                      IX2104.2
204900     MOVE     "INVALID KEY" TO CORRECT-A.                         IX2104.2
205000     GO TO   START-EXIT-GF-27.                                    IX2104.2
205100 START-PASS-GF-27.                                                IX2104.2
205200     PERFORM PASS.                                                IX2104.2
205300     MOVE    "INVALID KEY OK." TO RE-MARK.                        IX2104.2
205400     GO TO   START-EXIT-GF-27.                                    IX2104.2
205500 START-DELETE-GF-27.                                              IX2104.2
205600     PERFORM DE-LETE.                                             IX2104.2
205700 START-EXIT-GF-27.                                                IX2104.2
205800     PERFORM PRINT-DETAIL.                                        IX2104.2
205900                                                                  IX2104.2
206000     CLOSE   IX-FS1.                                              IX2104.2
206100                                                                  IX2104.2
206200*                                                                         
206300*                                                                         
206400*                                                                         
206500*                                                                         
206600 START-TEST-GF-28.                                                IX2104.2
206700     MOVE "FILE STATUS START:??"  TO FEATURE.                     IX2104.2
206800     MOVE "START-TEST-GF-28"  TO PAR-NAME.                        IX2104.2
206900     IF      FILESTATUS (1)  EQUAL TO "**"                        IX2104.2
207000             PERFORM DE-LETE                                      IX2104.2
207100             GO TO  START-WRITE-GF-28.                            IX2104.2
207200*                                                                         
207300*                                                                         
207400*                                                                         
207500*                                                                         
207600*                                                                         
207700     IF      FILESTATUS (1)  EQUAL TO "00"                        IX2104.2
207800             PERFORM PASS                                         IX2104.2
207900     ELSE                                                         IX2104.2
208000         MOVE "FROM START-TEST-GF-19; IX-3 1.3.4 (1) A" TO RE-MARKIX2104.2
208100             PERFORM  FAIL                                        IX2104.2
208200             MOVE  "00"  TO CORRECT-A                             IX2104.2
208300             MOVE   FILESTATUS (1)  TO COMPUTED-A.                IX2104.2
208400 START-WRITE-GF-28.                                               IX2104.2
208500     PERFORM  PRINT-DETAIL.                                       IX2104.2
208600 START-TEST-GF-29.                                                IX2104.2
208700     MOVE "FILE STATUS START:??"  TO FEATURE.                     IX2104.2
208800     MOVE "START-TEST-GF-29"  TO PAR-NAME.                        IX2104.2
208900     IF      FILESTATUS (2)  EQUAL TO "**"                        IX2104.2
209000             PERFORM DE-LETE                                      IX2104.2
209100             GO TO  START-WRITE-GF-29.                            IX2104.2
209200*                                                                         
209300*                                                                         
209400*                                                                         
209500*                                                                         
209600*                                                                         
209700     IF      FILESTATUS (2) EQUAL TO "06"                         IX2104.2
209800             PERFORM  PASS                                        IX2104.2
209900             ELSE  PERFORM  FAIL                                  IX2104.2
210000         MOVE "FROM START-TEST-GF-20; IX-3 1.3.4 (1) A" TO RE-MARKIX2104.2
210100             MOVE    "06"  TO CORRECT-A                           IX2104.2
210200             MOVE   FILESTATUS (2)  TO COMPUTED-A.                IX2104.2
210300 START-WRITE-GF-29.                                               IX2104.2
210400     PERFORM  PRINT-DETAIL.                                       IX2104.2
210500 START-TEST-GF-30.                                                IX2104.2
210600     MOVE "FILE STATUS START:??"  TO FEATURE.                     IX2104.2
210700     MOVE "START-TEST-GF-30"  TO PAR-NAME.                        IX2104.2
210800     IF      FILESTATUS (3)  EQUAL TO "**"                        IX2104.2
210900             PERFORM DE-LETE                                      IX2104.2
211000             GO TO  START-WRITE-GF-30.                            IX2104.2
211100*                                                                         
211200*                                                                         
211300*                                                                         
211400*                                                                         
211500*                                                                         
211600     IF      FILESTATUS (3) EQUAL TO "01"                         IX2104.2
211700             PERFORM  PASS                                        IX2104.2
211800             ELSE  PERFORM  FAIL                                  IX2104.2
211900         MOVE "FROM START-TEST-GF-21; IX-3 1.3.4 (1) A" TO RE-MARKIX2104.2
212000             MOVE    "01"  TO CORRECT-A                           IX2104.2
212100             MOVE   FILESTATUS (3)  TO COMPUTED-A.                IX2104.2
212200 START-WRITE-GF-30.                                               IX2104.2
212300     PERFORM  PRINT-DETAIL.                                       IX2104.2
212400 START-TEST-GF-31.                                                IX2104.2
212500     MOVE "FILE STATUS START:??"  TO FEATURE.                     IX2104.2
212600     MOVE "START-TEST-GF-31"  TO PAR-NAME.                        IX2104.2
212700     IF      FILESTATUS (4)  EQUAL TO "**"                        IX2104.2
212800             PERFORM DE-LETE                                      IX2104.2
212900             GO TO  START-WRITE-GF-31.                            IX2104.2
213000*                                                                         
213100*                                                                         
213200*                                                                         
213300*                                                                         
213400*                                                                         
213500     IF      FILESTATUS (4)  EQUAL TO "23"                        IX2104.2
213600             PERFORM  PASS                                        IX2104.2
213700             ELSE  PERFORM  FAIL                                  IX2104.2
213800         MOVE "FROM START-TEST-GF-22; IX-4 1.3.4 (3) C" TO RE-MARKIX2104.2
213900             MOVE    "23"  TO CORRECT-A                           IX2104.2
214000             MOVE   FILESTATUS (4)  TO COMPUTED-A.                IX2104.2
214100 START-WRITE-GF-31.                                               IX2104.2
214200     PERFORM  PRINT-DETAIL.                                       IX2104.2
214300 START-TEST-GF-32.                                                IX2104.2
214400     MOVE "FILE STATUS START:??"  TO FEATURE.                     IX2104.2
214500     MOVE "START-TEST-GF-32"  TO PAR-NAME.                        IX2104.2
214600     IF      FILESTATUS (5)  EQUAL TO "**"                        IX2104.2
214700             PERFORM DE-LETE                                      IX2104.2
214800             GO TO  START-WRITE-GF-32.                            IX2104.2
214900*                                                                         
215000*                                                                         
215100*                                                                         
215200*                                                                         
215300*                                                                         
215400     IF      FILESTATUS (5)  EQUAL TO "00"                        IX2104.2
215500             PERFORM  PASS                                        IX2104.2
215600             ELSE  PERFORM  FAIL                                  IX2104.2
215700         MOVE "FROM START-TEST-GF-23; IX-3 1.3.4 (1) A" TO RE-MARKIX2104.2
215800             MOVE    "00"  TO CORRECT-A                           IX2104.2
215900             MOVE   FILESTATUS (5)  TO COMPUTED-A.                IX2104.2
216000 START-WRITE-GF-32.                                               IX2104.2
216100     PERFORM  PRINT-DETAIL.                                       IX2104.2
216200 START-TEST-GF-33.                                                IX2104.2
216300     MOVE "FILE STATUS START:??"  TO FEATURE.                     IX2104.2
216400     MOVE "START-TEST-GF-33"  TO PAR-NAME.                        IX2104.2
216500     IF      FILESTATUS (6)  EQUAL TO "**"                        IX2104.2
216600             PERFORM DE-LETE                                      IX2104.2
216700             GO TO  START-WRITE-GF-33.                            IX2104.2
216800*                                                                         
216900*                                                                         
217000*                                                                         
217100*                                                                         
217200*                                                                         
217300     IF      FILESTATUS (6)  EQUAL TO "00"                        IX2104.2
217400             PERFORM  PASS                                        IX2104.2
217500             ELSE  PERFORM  FAIL                                  IX2104.2
217600         MOVE "FROM START-TEST-GF-24; IX-3 1.3.4 (1) A" TO RE-MARKIX2104.2
217700             MOVE   "00"  TO CORRECT-A                            IX2104.2
217800             MOVE   FILESTATUS (6)  TO COMPUTED-A.                IX2104.2
217900 START-WRITE-GF-33.                                               IX2104.2
218000     PERFORM  PRINT-DETAIL.                                       IX2104.2
218100 START-TEST-GF-34.                                                IX2104.2
218200     MOVE "FILE STATUS START:00"  TO FEATURE.                     IX2104.2
218300     MOVE "START-TEST-GF-34"  TO PAR-NAME.                        IX2104.2
218400     IF      FILESTATUS (7)  EQUAL TO "**"                        IX2104.2
218500             PERFORM DE-LETE                                      IX2104.2
218600             GO TO  START-WRITE-GF-34.                            IX2104.2
218700*                                                                         
218800*                                                                         
218900*                                                                         
219000*                                                                         
219100*                                                                         
219200     IF      FILESTATUS (7)  EQUAL TO "26"                        IX2104.2
219300             PERFORM  PASS                                        IX2104.2
219400             ELSE  PERFORM  FAIL                                  IX2104.2
219500         MOVE "FROM START-TEST-GF-25; IX-4 1.3.4 (3) C" TO RE-MARKIX2104.2
219600             MOVE    "26"  TO CORRECT-A                           IX2104.2
219700             MOVE   FILESTATUS (7)  TO COMPUTED-A.                IX2104.2
219800 START-WRITE-GF-34.                                               IX2104.2
219900     PERFORM  PRINT-DETAIL.                                       IX2104.2
220000 START-TEST-GF-35.                                                IX2104.2
220100     MOVE "FILE STATUS START:??"  TO FEATURE.                     IX2104.2
220200     MOVE "START-TEST-GF-35"  TO PAR-NAME.                        IX2104.2
220300     IF      FILESTATUS (8)  EQUAL TO "**"                        IX2104.2
220400             PERFORM DE-LETE                                      IX2104.2
220500             GO TO  START-WRITE-GF-35.                            IX2104.2
220600*                                                                         
220700*                                                                         
220800*                                                                         
220900*                                                                         
221000*                                                                         
221100     IF      FILESTATUS (8) EQUAL TO "20"                         IX2104.2
221200             PERFORM  PASS                                        IX2104.2
221300             ELSE  PERFORM  FAIL                                  IX2104.2
221400         MOVE "FROM START-TEST-GF-26; IX-3 1.3.4 (1) A" TO RE-MARKIX2104.2
221500             MOVE    "20"  TO CORRECT-A                           IX2104.2
221600             MOVE   FILESTATUS (8)  TO COMPUTED-A.                IX2104.2
221700 START-WRITE-GF-35.                                               IX2104.2
221800     PERFORM  PRINT-DETAIL.                                       IX2104.2
221900 START-TEST-GF-36.                                                IX2104.2
222000     MOVE "FILE STATUS START:??"  TO FEATURE.                     IX2104.2
222100     MOVE "START-TEST-GF-36"  TO PAR-NAME.                        IX2104.2
222200     IF      FILESTATUS (9)  EQUAL TO "**"                        IX2104.2
222300             PERFORM DE-LETE                                      IX2104.2
222400             GO TO  START-WRITE-GF-36.                            IX2104.2
222500*                                                                         
222600*                                                                         
222700*                                                                         
222800*                                                                         
222900*                                                                         
223000     IF      FILESTATUS (9)  EQUAL TO "23"                        IX2104.2
223100             PERFORM PASS                                         IX2104.2
223200     ELSE    PERFORM FAIL                                         IX2104.2
223300         MOVE "FROM START-TEST-GF-27; IX-4 1.3.4 (3) C" TO RE-MARKIX2104.2
223400             MOVE  "23"  TO CORRECT-A                             IX2104.2
223500             MOVE   FILESTATUS (9)  TO COMPUTED-A.                IX2104.2
223600 START-WRITE-GF-36.                                               IX2104.2
223700     PERFORM  PRINT-DETAIL.                                       IX2104.2
223800                                                                  IX2104.2
223900                                                                  IX2104.2
224000 START-INIT-GF-SERIES.                                            IX2104.2
224100     OPEN  I-O   IX-FS1.                                          IX2104.2
224200     MOVE     "START SERIES" TO FEATURE.                          IX2104.2
224300     MOVE    "START-TEST-GF-37" TO PAR-NAME.                      IX2104.2
224400     MOVE    ZERO TO INVKEY-COUNTER.                              IX2104.2
224500*                                                                         
224600*                                                                         
224700*                                                                         
224800*                                                                         
224900*                                                                         
225000*                                                                         
225100*                                                                         
225200*                                                                         
225300*                                                                         
225400 START-TEST-GF-37.                                                IX2104.2
225500     MOVE    "FGGGGGGGGG098"  TO FS1-RECKEY-1-13.                 IX2104.2
225600     MOVE    "WWWWWWWXXX366ALTKEY1"  TO FS1-ALTKEY1-1-20.         IX2104.2
225700     MOVE    "RRRRRRRRRR300ALTKEY2"  TO FS1-ALTKEY2-1-20.         IX2104.2
225800     MOVE    WRK-FS1-RECKEY TO IX-REC-KEY-AREA.                   IX2104.2
225900     MOVE    WRK-FS1-ALTKEY1 TO IX-ALT-KEY1-AREA.                 IX2104.2
226000     MOVE    WRK-FS1-ALTKEY2 TO IX-ALT-KEY2-AREA.                 IX2104.2
226100     START   IX-FS1                                               IX2104.2
226200                     KEY IS EQUAL TO IX-FS1-ALTKEY2               IX2104.2
226300                       INVALID KEY ADD 1  TO INVKEY-COUNTER.      IX2104.2
226400     START   IX-FS1                                               IX2104.2
226500                      INVALID KEY  ADD  01  TO INVKEY-COUNTER.    IX2104.2
226600     START   IX-FS1                                               IX2104.2
226700                    KEY IS NOT LESS THAN R-ALTKEY1-1-6            IX2104.2
226800                       INVALID KEY ADD 1  TO INVKEY-COUNTER.      IX2104.2
226900     START   IX-FS1                                               IX2104.2
227000                     KEY IS GREATER THAN IX-FS1-ALTKEY2-1-5       IX2104.2
227100                       INVALID KEY ADD 1  TO INVKEY-COUNTER.      IX2104.2
227200     READ    IX-FS1  AT END                                       IX2104.2
227300                     MOVE  "AT END ON READ"  TO COMPUTED-A        IX2104.2
227400                     GO TO  START-FAIL-GF-37.                     IX2104.2
227500     MOVE    IX-FS1R1-F-G-240 TO FILE-RECORD-INFO (1).            IX2104.2
227600     IF      XRECORD-NUMBER (1) EQUAL TO 49                       IX2104.2
227700             PERFORM  PASS                                        IX2104.2
227800             MOVE    "MULTIPLE STARTS BEFORE READ " TO RE-MARK    IX2104.2
227900             GO TO  START-EXIT-GF-37.                             IX2104.2
228000     MOVE    49   TO RECNO.                                       IX2104.2
228100     PERFORM   DISPLAY-ALTERNATE-KEY2.                            IX2104.2
228200 START-FAIL-GF-37.                                                IX2104.2
228300     PERFORM FAIL.                                                IX2104.2
228400     MOVE    49  TO CORRECT-18V0.                                 IX2104.2
228500     MOVE "AFTER MULTIPLE STARTS; IX-36 ETC " TO RE-MARK.         IX2104.2
228600     GO TO START-EXIT-GF-37.                                      IX2104.2
228700 START-DELETE-GF-37.                                              IX2104.2
228800     PERFORM DE-LETE.                                             IX2104.2
228900 START-EXIT-GF-37.                                                IX2104.2
229000     PERFORM  PRINT-DETAIL.                                       IX2104.2
229100     CLOSE   IX-FS1.                                              IX2104.2
229200 START-CLOSE-FILES.                                               IX2104.2
229300     GO TO   START-TEST-COMPLETE.                                 IX2104.2
229400 START-INITIALIZE-RECORD.                                         IX2104.2
229500     MOVE    "**"  TO FS1-STATUS.                                 IX2104.2
229600     MOVE    "GGGGGGGGGG200" TO  FS1-RECKEY-1-13.                 IX2104.2
229700     MOVE    ZERO  TO INIT-FLAG.                                  IX2104.2
229800     MOVE    9999  TO XRECORD-NUMBER (1).                         IX2104.2
229900     MOVE    SPACE TO IX-FS1R1-F-G-240.                           IX2104.2
230000     MOVE    WRK-FS1-RECKEY TO IX-REC-KEY-AREA.                   IX2104.2
230100     START   IX-FS1                                               IX2104.2
230200                     KEY IS EQUAL TO IX-FS1-KEY                   IX2104.2
230300          INVALID KEY MOVE  1  TO INIT-FLAG.                      IX2104.2
230400     READ    IX-FS1  INTO  FILE-RECORD-INFO (1)                   IX2104.2
230500                     AT END  MOVE  1 TO INIT-FLAG.                IX2104.2
230600     IF      XRECORD-NUMBER (1) NOT EQUAL TO 100                  IX2104.2
230700             MOVE 1 TO INIT-FLAG.                                 IX2104.2
230800 DISPLAY-RECORD-KEYS.                                             IX2104.2
230900     MOVE    XRECORD-KEY (1)  TO WRK-FS1-RECKEY.                  IX2104.2
231000     MOVE    FS1-RECKEY-1-13  TO COMPUTED-A.                      IX2104.2
231100     MOVE    RECKEY-VALUE (RECNO)  TO CORRECT-A.                  IX2104.2
231200     MOVE    SPACE TO P-OR-F.                                     IX2104.2
231300     MOVE    "RECORD KEY VALUES" TO RE-MARK.                      IX2104.2
231400     PERFORM PRINT-DETAIL.                                        IX2104.2
231500 DISPLAY-ALTERNATE-KEY1.                                          IX2104.2
231600     MOVE    ALTERNATE-KEY1 (1)  TO WRK-FS1-ALTKEY1.              IX2104.2
231700     MOVE    FS1-ALTKEY1-1-20  TO COMPUTED-A.                     IX2104.2
231800     MOVE    ALTKEY1-VALUE (RECNO)  TO CORRECT-A.                 IX2104.2
231900     MOVE    SPACE TO P-OR-F.                                     IX2104.2
232000     MOVE    "ALTERNATE RECORD KEY1 VALUES"  TO RE-MARK.          IX2104.2
232100     PERFORM PRINT-DETAIL.                                        IX2104.2
232200 DISPLAY-ALTERNATE-KEY2.                                          IX2104.2
232300     MOVE    ALTERNATE-KEY2 (1) TO WRK-FS1-ALTKEY2.               IX2104.2
232400     MOVE    FS1-ALTKEY2-1-20  TO COMPUTED-A.                     IX2104.2
232500     MOVE    ALTKEY2-VALUE (RECNO)  TO CORRECT-A.                 IX2104.2
232600     MOVE    SPACE TO P-OR-F.                                     IX2104.2
232700     MOVE    "ALTERNATE RECORD KEY2 VALUES"  TO RE-MARK.          IX2104.2
232800     PERFORM PRINT-DETAIL.                                        IX2104.2
232900 START-TEST-COMPLETE.                                             IX2104.2
233000     EXIT.                                                        IX2104.2
233100 CCVS-EXIT SECTION.                                               IX2104.2
233200 CCVS-999999.                                                     IX2104.2
233300     GO TO CLOSE-FILES.                                           IX2104.2
