000100 IDENTIFICATION DIVISION.                                         IX2094.2
000200 PROGRAM-ID.                                                      IX2094.2
000300     IX209A.                                                      IX2094.2
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
017800 ENVIRONMENT DIVISION.                                            IX2094.2
017900 CONFIGURATION SECTION.                                           IX2094.2
018000 SOURCE-COMPUTER.                                                 IX2094.2
018100     GNU-Linux.                                                   IX2094.2
018200 OBJECT-COMPUTER.                                                 IX2094.2
018300     GNU-Linux.                                                   IX2094.2
018400 INPUT-OUTPUT SECTION.                                            IX2094.2
018500 FILE-CONTROL.                                                    IX2094.2
019100     SELECT PRINT-FILE ASSIGN TO                                  IX2094.2
019200     "REPORT".                                                    IX2094.2
019300     SELECT  IX-FS1                                               IX2094.2
019400     ASSIGN TO                                                    IX2094.2
019500     "XXXXX024"                                                   IX2094.2
019700        ACCESS MODE IS SEQUENTIAL                                 IX2094.2
019800        ORGANIZATION IS INDEXED                                   IX2094.2
019900        RECORD KEY IS IX-FS1-KEY                                  IX2094.2
020000        ALTERNATE RECORD KEY IS IX-FS1-ALTKEY1                    IX2094.2
020100        ALTERNATE RECORD KEY IS IX-FS1-ALTKEY2 WITH DUPLICATES    IX2094.2
020200        FILE STATUS IS FS1-STATUS.                                IX2094.2
020300 DATA DIVISION.                                                   IX2094.2
020400 FILE SECTION.                                                    IX2094.2
022100 FD  PRINT-FILE.                                                  IX2094.2
022200 01  PRINT-REC PICTURE X(120).                                    IX2094.2
022300 01  DUMMY-RECORD PICTURE X(120).                                 IX2094.2
022400 FD  IX-FS1                                                       IX2094.2
022700     RECORD CONTAINS 240 CHARACTERS.                              IX2094.2
022800 01  IX-FS1R1-F-G-240.                                            IX2094.2
022900     05 IX-FS1-REC-120           PICTURE X(120).                  IX2094.2
023000     05 IX-FS1-REC-121-240.                                       IX2094.2
023100        10 FILLER                PICTURE X(8).                    IX2094.2
023200        10 IX-REC-KEY-AREA.                                       IX2094.2
023300           15 IX-FS1-KEY.                                         IX2094.2
023400              20 IX-FS1-KEY-1-10.                                 IX2094.2
023500                 25 IX-FS1-KEY-1-5      PICTURE X(5).             IX2094.2
023600                 25 IX-FS1-KEY-6-10     PICTURE X(5).             IX2094.2
023700               20 IX-FS1-KEY-11-13      PICTURE X(3).             IX2094.2
023800           15 FILLER             PICTURE X(16).                   IX2094.2
023900        10 FILLER                PICTURE X(9).                    IX2094.2
024000        10 IX-ALT-KEY1-AREA.                                      IX2094.2
024100           15 IX-FS1-ALTKEY1.                                     IX2094.2
024200              20 IX-FS1-ALTKEY1-1-10.                             IX2094.2
024300                 25 IX-FS1-ALTKEY1-1-5  PICTURE X(5).             IX2094.2
024400                 25 IX-FS1-ALTKEY1-6-10 PICTURE X(5).             IX2094.2
024500              20 IX-FS1-ALTKEY1-11-13   PICTURE X(3).             IX2094.2
024600              20 IX-FS1-ALTKEY1-14-20   PICTURE X(7).             IX2094.2
024700           15 FILLER             PICTURE X(9).                    IX2094.2
024800        10 FILLER                PICTURE X(9).                    IX2094.2
024900        10 IX-ALT-KEY2-AREA.                                      IX2094.2
025000           15 IX-FS1-ALTKEY2.                                     IX2094.2
025100              20 IX-FS1-ALTKEY2-1-10.                             IX2094.2
025200                 25 IX-FS1-ALTKEY2-1-5  PICTURE X(5).             IX2094.2
025300                 25 IX-FS1-ALTKEY2-6-10 PICTURE X(5).             IX2094.2
025400              20 IX-FS1-ALTKEY2-11-13   PICTURE X(3).             IX2094.2
025500              20 IX-FS1-ALTKEY2-14-20   PICTURE X(7).             IX2094.2
025600           15 FILLER             PICTURE X(9).                    IX2094.2
025700        10 FILLER                PICTURE X(7).                    IX2094.2
025800 WORKING-STORAGE SECTION.                                         IX2094.2
025900 01  WRK-FS1-RECKEY.                                              IX2094.2
026000     05 FS1-RECKEY-1-13.                                          IX2094.2
026100        10 FS1-RECKEY-1-10       PICTURE X(10).                   IX2094.2
026200        10 FS1-RECKEY-11-13      PICTURE 9(3).                    IX2094.2
026300     05 FILLER                   PICTURE X(16)  VALUE SPACE.      IX2094.2
026400 01  WRK-FS1-ALTKEY1.                                             IX2094.2
026500      05 FS1-ALTKEY1-1-20.                                        IX2094.2
026600       10  FS1-ALTKEY1-1-10.                                      IX2094.2
026700        15 FS1-ALTKEY1-1-5       PICTURE X(5).                    IX2094.2
026800        15 FS1-ALTKEY1-6-10      PICTURE X(5).                    IX2094.2
026900       10 FS1-ALTKEY1-11-13      PICTURE 9(3).                    IX2094.2
027000       10 FS1-ALTKEY1-14-20      PICTURE X(7).                    IX2094.2
027100     05 FILLER                   PICTURE X(9)  VALUE SPACE.       IX2094.2
027200 01  WRK-FS1-ALTKEY2.                                             IX2094.2
027300     05 FS1-ALTKEY2-1-20.                                         IX2094.2
027400        10 FS1-ALTKEY2-1-10.                                      IX2094.2
027500           15 FS1-ALTKEY2-1-5    PICTURE X(5).                    IX2094.2
027600           15 FS1-ALTKEY2-6-10   PICTURE X(5).                    IX2094.2
027700        10 FS1-ALTKEY2-11-13     PICTURE 9(3).                    IX2094.2
027800        10 FS1-ALTKEY2-14-20     PICTURE X(7).                    IX2094.2
027900     05 FILLER                   PICTURE X(9) VALUE SPACE.        IX2094.2
028000 01  RECNO                       PICTURE 9(5)  VALUE ZERO.        IX2094.2
028100 01  FS1-STATUS                  PICTURE XX   VALUE SPACE.        IX2094.2
028200 01  EXCUT-COUNTER-06V00         PICTURE 9(6) VALUE ZERO.         IX2094.2
028300 01  KEYSUB                      PICTURE 9(3) COMPUTATIONAL.      IX2094.2
028400 01  INVKEY-COUNTER              PICTURE 9(3) COMPUTATIONAL.      IX2094.2
028500 01  RECORDS-WRITTEN             PICTURE 9(3).                    IX2094.2
028600 01  RECKEY-NUM                  PICTURE 9(3).                    IX2094.2
028700 01  ALTKEY1-NUM                 PICTURE 9(3).                    IX2094.2
028800 01  ALTKEY2-NUM                 PICTURE 9(3).                    IX2094.2
028900 01  RECORD-KEY-CONTENT.                                          IX2094.2
029000     05 FILLER PIC X(53) VALUE                                    IX2094.2
029100          "BBBBBBBBBC002EEEEEEEEEF002ALTKEY1WWWWWWWWWV398ALTKEY2".IX2094.2
029200     05 FILLER PIC X(53) VALUE                                    IX2094.2
029300          "BBBBBBBBCC004EEEEEEEEFF004ALTKEY1WWWWWWWWVV396ALTKEY2".IX2094.2
029400     05 FILLER PIC X(53) VALUE                                    IX2094.2
029500          "BBBBBBBCCC006EEEEEEEFFF006ALTKEY1WWWWWWWVVV394ALTKEY2".IX2094.2
029600     05 FILLER PIC X(53) VALUE                                    IX2094.2
029700          "BBBBBBCCCC008EEEEEEFFFF008ALTKEY1WWWWWWVVVV392ALTKEY2".IX2094.2
029800     05 FILLER PIC X(53) VALUE                                    IX2094.2
029900          "BBBBBCCCCC010EEEEEFFFFF010ALTKEY1WWWWWVVVVV390ALTKEY2".IX2094.2
030000     05 FILLER PIC X(53) VALUE                                    IX2094.2
030100          "BBBBCCCCCC012EEEEFFFFFF012ALTKEY1WWWWVVVVVV388ALTKEY2".IX2094.2
030200     05 FILLER PIC X(53) VALUE                                    IX2094.2
030300          "BBBCCCCCCC014EEEFFFFFFF014ALTKEY1WWWVVVVVVV386ALTKEY2".IX2094.2
030400     05 FILLER PIC X(53) VALUE                                    IX2094.2
030500          "BBCCCCCCCC016EEFFFFFFFF016ALTKEY1WWVVVVVVVV384ALTKEY2".IX2094.2
030600     05 FILLER PIC X(53) VALUE                                    IX2094.2
030700          "BCCCCCCCCC018EFFFFFFFFF018ALTKEY1WVVVVVVVVV382ALTKEY2".IX2094.2
030800     05 FILLER PIC X(53) VALUE                                    IX2094.2
030900          "CCCCCCCCCC020FFFFFFFFFF020ALTKEY1VVVVVVVVVV380ALTKEY2".IX2094.2
031000     05 FILLER PIC X(53) VALUE                                    IX2094.2
031100          "CCCCCCCCCD022FFFFFFFFFG022ALTKEY1VVVVVVVVVV380ALTKEY2".IX2094.2
031200     05 FILLER PIC X(53) VALUE                                    IX2094.2
031300          "CCCCCCCCDD024FFFFFFFFGG024ALTKEY1VVVVVVVVUU376ALTKEY2".IX2094.2
031400     05 FILLER PIC X(53) VALUE                                    IX2094.2
031500          "CCCCCCCDDD026FFFFFFFGGG026ALTKEY1VVVVVVVUUU374ALTKEY2".IX2094.2
031600     05 FILLER PIC X(53) VALUE                                    IX2094.2
031700          "CCCCCCDDDD028FFFFFFGGGG028ALTKEY1VVVVVVUUUU372ALTKEY2".IX2094.2
031800     05 FILLER PIC X(53) VALUE                                    IX2094.2
031900          "CCCCCDDDDD030FFFFFGGGGG030ALTKEY1VVVVVUUUUU370ALTKEY2".IX2094.2
032000     05 FILLER PIC X(53) VALUE                                    IX2094.2
032100          "CCCCDDDDDD032FFFFGGGGGG032ALTKEY1VVVVUUUUUU368ALTKEY2".IX2094.2
032200     05 FILLER PIC X(53) VALUE                                    IX2094.2
032300          "CCCDDDDDDD034FFFGGGGGGG034ALTKEY1VVVUUUUUUU366ALTKEY2".IX2094.2
032400     05 FILLER PIC X(53) VALUE                                    IX2094.2
032500          "CCDDDDDDDD036FFGGGGGGGG036ALTKEY1VVUUUUUUUU364ALTKEY2".IX2094.2
032600     05 FILLER PIC X(53) VALUE                                    IX2094.2
032700          "CDDDDDDDDD038FGGGGGGGGG038ALTKEY1VUUUUUUUUU362ALTKEY2".IX2094.2
032800     05 FILLER PIC X(53) VALUE                                    IX2094.2
032900          "DDDDDDDDDD040GGGGGGGGGG040ALTKEY1UUUUUUUUUU360ALTKEY2".IX2094.2
033000     05 FILLER PIC X(53) VALUE                                    IX2094.2
033100          "DDDDDDDDDE042GGGGGGGGGH042ALTKEY1UUUUUUUUUU360ALTKEY2".IX2094.2
033200     05 FILLER PIC X(53) VALUE                                    IX2094.2
033300          "DDDDDDDDEE044GGGGGGGGHH044ALTKEY1UUUUUUUUTT356ALTKEY2".IX2094.2
033400     05 FILLER PIC X(53) VALUE                                    IX2094.2
033500          "DDDDDDDEEE046GGGGGGGHHH046ALTKEY1UUUUUUUTTT354ALTKEY2".IX2094.2
033600     05 FILLER PIC X(53) VALUE                                    IX2094.2
033700          "DDDDDDEEEE048GGGGGGHHHH048ALTKEY1UUUUUUTTTT352ALTKEY2".IX2094.2
033800     05 FILLER PIC X(53) VALUE                                    IX2094.2
033900          "DDDDDEEEEE050GGGGGHHHHH050ALTKEY1UUUUUTTTTT350ALTKEY2".IX2094.2
034000     05 FILLER PIC X(53) VALUE                                    IX2094.2
034100          "DDDDEEEEEE052GGGGHHHHHH052ALTKEY1UUUUTTTTTT348ALTKEY2".IX2094.2
034200     05 FILLER PIC X(53) VALUE                                    IX2094.2
034300          "DDDEEEEEEE054GGGHHHHHHH054ALTKEY1UUUTTTTTTT346ALTKEY2".IX2094.2
034400     05 FILLER PIC X(53) VALUE                                    IX2094.2
034500          "DDEEEEEEEE056GGHHHHHHHH056ALTKEY1UUTTTTTTTT344ALTKEY2".IX2094.2
034600     05 FILLER PIC X(53) VALUE                                    IX2094.2
034700          "DEEEEEEEEE058GHHHHHHHHH058ALTKEY1UTTTTTTTTT342ALTKEY2".IX2094.2
034800     05 FILLER PIC X(53) VALUE                                    IX2094.2
034900          "EEEEEEEEEE060HHHHHHHHHH060ALTKEY1TTTTTTTTTT340ALTKEY2".IX2094.2
035000     05 FILLER PIC X(53) VALUE                                    IX2094.2
035100          "EEEEEEEEEF062HHHHHHHHHI062ALTKEY1TTTTTTTTTT340ALTKEY2".IX2094.2
035200     05 FILLER PIC X(53) VALUE                                    IX2094.2
035300          "EEEEEEEEFF064HHHHHHHHII064ALTKEY1TTTTTTTTSS336ALTKEY2".IX2094.2
035400     05 FILLER PIC X(53) VALUE                                    IX2094.2
035500          "EEEEEEEFFF066HHHHHHHIII066ALTKEY1TTTTTTTSSS334ALTKEY2".IX2094.2
035600     05 FILLER PIC X(53) VALUE                                    IX2094.2
035700          "EEEEEEFFFF068HHHHHHIIII068ALTKEY1TTTTTTSSSS332ALTKEY2".IX2094.2
035800     05 FILLER PIC X(53) VALUE                                    IX2094.2
035900          "EEEEEFFFFF070HHHHHIIIII070ALTKEY1TTTTTSSSSS330ALTKEY2".IX2094.2
036000     05 FILLER PIC X(53) VALUE                                    IX2094.2
036100          "EEEEFFFFFF072HHHHIIIIII072ALTKEY1TTTTSSSSSS328ALTKEY2".IX2094.2
036200     05 FILLER PIC X(53) VALUE                                    IX2094.2
036300          "EEEFFFFFFF074HHHIIIIIII074ALTKEY1TTTSSSSSSS326ALTKEY2".IX2094.2
036400     05 FILLER PIC X(53) VALUE                                    IX2094.2
036500          "EEFFFFFFFF076HHIIIIIIII076ALTKEY1TTSSSSSSSS324ALTKEY2".IX2094.2
036600     05 FILLER PIC X(53) VALUE                                    IX2094.2
036700          "EFFFFFFFFF078HIIIIIIIII078ALTKEY1TSSSSSSSSS322ALTKEY2".IX2094.2
036800     05 FILLER PIC X(53) VALUE                                    IX2094.2
036900          "FFFFFFFFFF080IIIIIIIIII080ALTKEY1SSSSSSSSSS320ALTKEY2".IX2094.2
037000     05 FILLER PIC X(53) VALUE                                    IX2094.2
037100          "FFFFFFFFFG082IIIIIIIIIJ082ALTKEY1SSSSSSSSSS320ALTKEY2".IX2094.2
037200     05 FILLER PIC X(53) VALUE                                    IX2094.2
037300          "FFFFFFFFGG084IIIIIIIIJJ084ALTKEY1SSSSSSSSRR316ALTKEY2".IX2094.2
037400     05 FILLER PIC X(53) VALUE                                    IX2094.2
037500          "FFFFFFFGGG086IIIIIIIJJJ086ALTKEY1SSSSSSSRRR314ALTKEY2".IX2094.2
037600     05 FILLER PIC X(53) VALUE                                    IX2094.2
037700          "FFFFFFGGGG088IIIIIIJJJJ088ALTKEY1SSSSSSRRRR312ALTKEY2".IX2094.2
037800     05 FILLER PIC X(53) VALUE                                    IX2094.2
037900          "FFFFFGGGGG090IIIIIJJJJJ090ALTKEY1SSSSSRRRRR310ALTKEY2".IX2094.2
038000     05 FILLER PIC X(53) VALUE                                    IX2094.2
038100          "FFFFGGGGGG092IIIIJJJJJJ092ALTKEY1SSSSRRRRRR308ALTKEY2".IX2094.2
038200     05 FILLER PIC X(53) VALUE                                    IX2094.2
038300          "FFFGGGGGGG094IIIJJJJJJJ094ALTKEY1SSSRRRRRRR306ALTKEY2".IX2094.2
038400     05 FILLER PIC X(53) VALUE                                    IX2094.2
038500          "FFGGGGGGGG096IIJJJJJJJJ096ALTKEY1SSRRRRRRRR304ALTKEY2".IX2094.2
038600     05 FILLER PIC X(53) VALUE                                    IX2094.2
038700          "FGGGGGGGGG098IJJJJJJJJJ098ALTKEY1SRRRRRRRRR302ALTKEY2".IX2094.2
038800     05 FILLER PIC X(53) VALUE                                    IX2094.2
038900          "GGGGGGGGGG100JJJJJJJJJJ100ALTKEY1RRRRRRRRRR300ALTKEY2".IX2094.2
039000     05 FILLER PIC X(53) VALUE                                    IX2094.2
039100          "RRRRSSSSSS352VVVVWWWWWW352ALTKEY1GGGGFFFFFF048ALTKEY2".IX2094.2
039200     05 FILLER PIC X(53) VALUE                                    IX2094.2
039300          "RRRSSSSSSS354VVVWWWWWWW354ALTKEY1GGGFFFFFFF046ALTKEY2".IX2094.2
039400     05 FILLER PIC X(53) VALUE                                    IX2094.2
039500          "RRSSSSSSSS356VVWWWWWWWW356ALTKEY1GGFFFFFFFF044ALTKEY2".IX2094.2
039600     05 FILLER PIC X(53) VALUE                                    IX2094.2
039700          "RSSSSSSSSS358VWWWWWWWWW358ALTKEY1GFFFFFFFFF042ALTKEY2".IX2094.2
039800     05 FILLER PIC X(53) VALUE                                    IX2094.2
039900          "SSSSSSSSSS360WWWWWWWWWW360ALTKEY1FFFFFFFFFF040ALTKEY2".IX2094.2
040000     05 FILLER PIC X(53) VALUE                                    IX2094.2
040100          "SSSSSSSSST362WWWWWWWWWX362ALTKEY1FFFFFFFFFF040ALTKEY2".IX2094.2
040200     05 FILLER PIC X(53) VALUE                                    IX2094.2
040300          "SSSSSSSSTT364WWWWWWWWXX364ALTKEY1FFFFFFFFEE036ALTKEY2".IX2094.2
040400     05 FILLER PIC X(53) VALUE                                    IX2094.2
040500          "SSSSSSSTTT366WWWWWWWXXX366ALTKEY1FFFFFFFEEE034ALTKEY2".IX2094.2
040600     05 FILLER PIC X(53) VALUE                                    IX2094.2
040700          "SSSSSSTTTT368WWWWWWXXXX368ALTKEY1FFFFFFEEEE032ALTKEY2".IX2094.2
040800     05 FILLER PIC X(53) VALUE                                    IX2094.2
040900          "SSSSSTTTTT370WWWWWXXXXX370ALTKEY1FFFFFEEEEE030ALTKEY2".IX2094.2
041000     05 FILLER PIC X(53) VALUE                                    IX2094.2
041100          "SSSSTTTTTT372WWWWXXXXXX372ALTKEY1FFFFEEEEEE028ALTKEY2".IX2094.2
041200     05 FILLER PIC X(53) VALUE                                    IX2094.2
041300          "SSSTTTTTTT374WWWXXXXXXX374ALTKEY1FFFEEEEEEE026ALTKEY2".IX2094.2
041400     05 FILLER PIC X(53) VALUE                                    IX2094.2
041500          "SSTTTTTTTT376WWXXXXXXXX376ALTKEY1FFEEEEEEEE024ALTKEY2".IX2094.2
041600     05 FILLER PIC X(53) VALUE                                    IX2094.2
041700          "STTTTTTTTT378WXXXXXXXXX378ALTKEY1FEEEEEEEEE022ALTKEY2".IX2094.2
041800     05 FILLER PIC X(53) VALUE                                    IX2094.2
041900          "TTTTTTTTTT380XXXXXXXXXX380ALTKEY1EEEEEEEEEE020ALTKEY2".IX2094.2
042000     05 FILLER PIC X(53) VALUE                                    IX2094.2
042100          "TTTTTTTTTU382XXXXXXXXXY382ALTKEY1EEEEEEEEEE020ALTKEY2".IX2094.2
042200     05 FILLER PIC X(53) VALUE                                    IX2094.2
042300          "TTTTTTTTUU384XXXXXXXXYY384ALTKEY1EEEEEEEEDD016ALTKEY2".IX2094.2
042400     05 FILLER PIC X(53) VALUE                                    IX2094.2
042500          "TTTTTTTUUU386XXXXXXXYYY386ALTKEY1EEEEEEEDDD014ALTKEY2".IX2094.2
042600     05 FILLER PIC X(53) VALUE                                    IX2094.2
042700          "TTTTTTUUUU388XXXXXXYYYY388ALTKEY1EEEEEEDDDD012ALTKEY2".IX2094.2
042800     05 FILLER PIC X(53) VALUE                                    IX2094.2
042900          "TTTTTUUUUU390XXXXXYYYYY390ALTKEY1EEEEEDDDDD010ALTKEY2".IX2094.2
043000     05 FILLER PIC X(53) VALUE                                    IX2094.2
043100          "TTTTUUUUUU392XXXXYYYYYY392ALTKEY1EEEEDDDDDD008ALTKEY2".IX2094.2
043200     05 FILLER PIC X(53) VALUE                                    IX2094.2
043300          "TTTUUUUUUU394XXXYYYYYYY394ALTKEY1EEEDDDDDDD006ALTKEY2".IX2094.2
043400     05 FILLER PIC X(53) VALUE                                    IX2094.2
043500          "TTUUUUUUUU396XXYYYYYYYY396ALTKEY1EEDDDDDDDD004ALTKEY2".IX2094.2
043600     05 FILLER PIC X(53) VALUE                                    IX2094.2
043700          "TUUUUUUUUU398XYYYYYYYYY398ALTKEY1EDDDDDDDDD002ALTKEY2".IX2094.2
043800     05 FILLER PIC X(53) VALUE                                    IX2094.2
043900          "UUUUUUUUUU400YYYYYYYYYY400ALTKEY1DDDDDDDDDD000ALTKEY2".IX2094.2
044000 01  RECORD-KEY-DATA   REDEFINES  RECORD-KEY-CONTENT.             IX2094.2
044100     05 KEY-VALUES                  OCCURS 75  TIMES.             IX2094.2
044200       10 RECKEY-VALUE           PICTURE X(13).                   IX2094.2
044300       10 ALTKEY1-VALUE          PICTURE X(20).                   IX2094.2
044400       10 ALTKEY2-VALUE          PICTURE X(20).                   IX2094.2
044500 01  INIT-FLAG                   PICTURE 9.                       IX2094.2
044600 01  HOLD-FILESTATUS-RECORD.                                      IX2094.2
044700     05 FILESTATUS               PICTURE XX  OCCURS 10 TIMES.     IX2094.2
044800 01  FILE-RECORD-INFORMATION-REC.                                 IX2094.2
044900     03 FILE-RECORD-INFO-SKELETON.                                IX2094.2
045000        05 FILLER                 PICTURE X(48)       VALUE       IX2094.2
045100             "FILE=      ,RECORD=      /0,RECNO=000000,UPDT=00".  IX2094.2
045200        05 FILLER                 PICTURE X(46)       VALUE       IX2094.2
045300             ",ODO=0000,PGM=     ,LRECL=000000,BLKSIZ  =0000".    IX2094.2
045400        05 FILLER                 PICTURE X(26)       VALUE       IX2094.2
045500             ",LFIL=000000,ORG=  ,LBLR= ".                        IX2094.2
045600        05 FILLER                 PICTURE X(37)       VALUE       IX2094.2
045700             ",RECKEY=                             ".             IX2094.2
045800        05 FILLER                 PICTURE X(38)       VALUE       IX2094.2
045900             ",ALTKEY1=                             ".            IX2094.2
046000        05 FILLER                 PICTURE X(38)       VALUE       IX2094.2
046100             ",ALTKEY2=                             ".            IX2094.2
046200        05 FILLER                 PICTURE X(7)        VALUE SPACE.IX2094.2
046300     03 FILE-RECORD-INFO          OCCURS  10  TIMES.              IX2094.2
046400        05 FILE-RECORD-INFO-P1-120.                               IX2094.2
046500           07 FILLER              PIC X(5).                       IX2094.2
046600           07 XFILE-NAME           PIC X(6).                      IX2094.2
046700           07 FILLER              PIC X(8).                       IX2094.2
046800           07 XRECORD-NAME         PIC X(6).                      IX2094.2
046900           07 FILLER              PIC X(1).                       IX2094.2
047000           07 REELUNIT-NUMBER     PIC 9(1).                       IX2094.2
047100           07 FILLER              PIC X(7).                       IX2094.2
047200           07 XRECORD-NUMBER       PIC 9(6).                      IX2094.2
047300           07 FILLER              PIC X(6).                       IX2094.2
047400           07 UPDATE-NUMBER       PIC 9(2).                       IX2094.2
047500           07 FILLER              PIC X(5).                       IX2094.2
047600           07 ODO-NUMBER          PIC 9(4).                       IX2094.2
047700           07 FILLER              PIC X(5).                       IX2094.2
047800           07 XPROGRAM-NAME        PIC X(5).                      IX2094.2
047900           07 FILLER              PIC X(7).                       IX2094.2
048000           07 XRECORD-LENGTH       PIC 9(6).                      IX2094.2
048100           07 FILLER              PIC X(7).                       IX2094.2
048200           07 CHARS-OR-RECORDS    PIC X(2).                       IX2094.2
048300           07 FILLER              PIC X(1).                       IX2094.2
048400           07 XBLOCK-SIZE          PIC 9(4).                      IX2094.2
048500           07 FILLER              PIC X(6).                       IX2094.2
048600           07 RECORDS-IN-FILE     PIC 9(6).                       IX2094.2
048700           07 FILLER              PIC X(5).                       IX2094.2
048800           07 XFILE-ORGANIZATION   PIC X(2).                      IX2094.2
048900           07 FILLER              PIC X(6).                       IX2094.2
049000           07 XLABEL-TYPE          PIC X(1).                      IX2094.2
049100        05 FILE-RECORD-INFO-P121-240.                             IX2094.2
049200           07 FILLER              PIC X(8).                       IX2094.2
049300           07 XRECORD-KEY          PIC X(29).                     IX2094.2
049400           07 FILLER              PIC X(9).                       IX2094.2
049500           07 ALTERNATE-KEY1      PIC X(29).                      IX2094.2
049600           07 FILLER              PIC X(9).                       IX2094.2
049700           07 ALTERNATE-KEY2      PIC X(29).                      IX2094.2
049800           07 FILLER              PIC X(7).                       IX2094.2
049900 01  TEST-RESULTS.                                                IX2094.2
050000     02 FILLER                   PIC X      VALUE SPACE.          IX2094.2
050100     02 FEATURE                  PIC X(20)  VALUE SPACE.          IX2094.2
050200     02 FILLER                   PIC X      VALUE SPACE.          IX2094.2
050300     02 P-OR-F                   PIC X(5)   VALUE SPACE.          IX2094.2
050400     02 FILLER                   PIC X      VALUE SPACE.          IX2094.2
050500     02  PAR-NAME.                                                IX2094.2
050600       03 FILLER                 PIC X(19)  VALUE SPACE.          IX2094.2
050700       03  PARDOT-X              PIC X      VALUE SPACE.          IX2094.2
050800       03 DOTVALUE               PIC 99     VALUE ZERO.           IX2094.2
050900     02 FILLER                   PIC X(8)   VALUE SPACE.          IX2094.2
051000     02 RE-MARK                  PIC X(61).                       IX2094.2
051100 01  TEST-COMPUTED.                                               IX2094.2
051200     02 FILLER                   PIC X(30)  VALUE SPACE.          IX2094.2
051300     02 FILLER                   PIC X(17)  VALUE                 IX2094.2
051400            "       COMPUTED=".                                   IX2094.2
051500     02 COMPUTED-X.                                               IX2094.2
051600     03 COMPUTED-A               PIC X(20)  VALUE SPACE.          IX2094.2
051700     03 COMPUTED-N               REDEFINES COMPUTED-A             IX2094.2
051800                                 PIC -9(9).9(9).                  IX2094.2
051900     03 COMPUTED-0V18 REDEFINES COMPUTED-A   PIC -.9(18).         IX2094.2
052000     03 COMPUTED-4V14 REDEFINES COMPUTED-A   PIC -9(4).9(14).     IX2094.2
052100     03 COMPUTED-14V4 REDEFINES COMPUTED-A   PIC -9(14).9(4).     IX2094.2
052200     03       CM-18V0 REDEFINES COMPUTED-A.                       IX2094.2
052300         04 COMPUTED-18V0                    PIC -9(18).          IX2094.2
052400         04 FILLER                           PIC X.               IX2094.2
052500     03 FILLER PIC X(50) VALUE SPACE.                             IX2094.2
052600 01  TEST-CORRECT.                                                IX2094.2
052700     02 FILLER PIC X(30) VALUE SPACE.                             IX2094.2
052800     02 FILLER PIC X(17) VALUE "       CORRECT =".                IX2094.2
052900     02 CORRECT-X.                                                IX2094.2
053000     03 CORRECT-A                  PIC X(20) VALUE SPACE.         IX2094.2
053100     03 CORRECT-N    REDEFINES CORRECT-A     PIC -9(9).9(9).      IX2094.2
053200     03 CORRECT-0V18 REDEFINES CORRECT-A     PIC -.9(18).         IX2094.2
053300     03 CORRECT-4V14 REDEFINES CORRECT-A     PIC -9(4).9(14).     IX2094.2
053400     03 CORRECT-14V4 REDEFINES CORRECT-A     PIC -9(14).9(4).     IX2094.2
053500     03      CR-18V0 REDEFINES CORRECT-A.                         IX2094.2
053600         04 CORRECT-18V0                     PIC -9(18).          IX2094.2
053700         04 FILLER                           PIC X.               IX2094.2
053800     03 FILLER PIC X(2) VALUE SPACE.                              IX2094.2
053900     03 COR-ANSI-REFERENCE             PIC X(48) VALUE SPACE.     IX2094.2
054000 01  CCVS-C-1.                                                    IX2094.2
054100     02 FILLER  PIC IS X(99)    VALUE IS " FEATURE              PAIX2094.2
054200-    "SS  PARAGRAPH-NAME                                          IX2094.2
054300-    "       REMARKS".                                            IX2094.2
054400     02 FILLER                     PIC X(20)    VALUE SPACE.      IX2094.2
054500 01  CCVS-C-2.                                                    IX2094.2
054600     02 FILLER                     PIC X        VALUE SPACE.      IX2094.2
054700     02 FILLER                     PIC X(6)     VALUE "TESTED".   IX2094.2
054800     02 FILLER                     PIC X(15)    VALUE SPACE.      IX2094.2
054900     02 FILLER                     PIC X(4)     VALUE "FAIL".     IX2094.2
055000     02 FILLER                     PIC X(94)    VALUE SPACE.      IX2094.2
055100 01  REC-SKL-SUB                   PIC 9(2)     VALUE ZERO.       IX2094.2
055200 01  REC-CT                        PIC 99       VALUE ZERO.       IX2094.2
055300 01  DELETE-COUNTER                PIC 999      VALUE ZERO.       IX2094.2
055400 01  ERROR-COUNTER                 PIC 999      VALUE ZERO.       IX2094.2
055500 01  INSPECT-COUNTER               PIC 999      VALUE ZERO.       IX2094.2
055600 01  PASS-COUNTER                  PIC 999      VALUE ZERO.       IX2094.2
055700 01  TOTAL-ERROR                   PIC 999      VALUE ZERO.       IX2094.2
055800 01  ERROR-HOLD                    PIC 999      VALUE ZERO.       IX2094.2
055900 01  DUMMY-HOLD                    PIC X(120)   VALUE SPACE.      IX2094.2
056000 01  RECORD-COUNT                  PIC 9(5)     VALUE ZERO.       IX2094.2
056100 01  ANSI-REFERENCE                PIC X(48)    VALUE SPACES.     IX2094.2
056200 01  CCVS-H-1.                                                    IX2094.2
056300     02  FILLER                    PIC X(39)    VALUE SPACES.     IX2094.2
056400     02  FILLER                    PIC X(42)    VALUE             IX2094.2
056500     "OFFICIAL COBOL COMPILER VALIDATION SYSTEM".                 IX2094.2
056600     02  FILLER                    PIC X(39)    VALUE SPACES.     IX2094.2
056700 01  CCVS-H-2A.                                                   IX2094.2
056800   02  FILLER                        PIC X(40)  VALUE SPACE.      IX2094.2
056900   02  FILLER                        PIC X(7)   VALUE "CCVS85 ".  IX2094.2
057000   02  FILLER                        PIC XXXX   VALUE             IX2094.2
057100     "4.2 ".                                                      IX2094.2
057200   02  FILLER                        PIC X(28)  VALUE             IX2094.2
057300            " COPY - NOT FOR DISTRIBUTION".                       IX2094.2
057400   02  FILLER                        PIC X(41)  VALUE SPACE.      IX2094.2
057500                                                                  IX2094.2
057600 01  CCVS-H-2B.                                                   IX2094.2
057700   02  FILLER                        PIC X(15)  VALUE             IX2094.2
057800            "TEST RESULT OF ".                                    IX2094.2
057900   02  TEST-ID                       PIC X(9).                    IX2094.2
058000   02  FILLER                        PIC X(4)   VALUE             IX2094.2
058100            " IN ".                                               IX2094.2
058200   02  FILLER                        PIC X(12)  VALUE             IX2094.2
058300     " HIGH       ".                                              IX2094.2
058400   02  FILLER                        PIC X(22)  VALUE             IX2094.2
058500            " LEVEL VALIDATION FOR ".                             IX2094.2
058600   02  FILLER                        PIC X(58)  VALUE             IX2094.2
058700     "ON-SITE VALIDATION, NATIONAL INSTITUTE OF STD & TECH.     ".IX2094.2
058800 01  CCVS-H-3.                                                    IX2094.2
058900     02  FILLER                      PIC X(34)  VALUE             IX2094.2
059000            " FOR OFFICIAL USE ONLY    ".                         IX2094.2
059100     02  FILLER                      PIC X(58)  VALUE             IX2094.2
059200     "COBOL 85 VERSION 4.2, Apr  1993 SSVG                      ".IX2094.2
059300     02  FILLER                      PIC X(28)  VALUE             IX2094.2
059400            "  COPYRIGHT   1985 ".                                IX2094.2
059500 01  CCVS-E-1.                                                    IX2094.2
059600     02 FILLER                       PIC X(52)  VALUE SPACE.      IX2094.2
059700     02 FILLER  PIC X(14) VALUE IS "END OF TEST-  ".              IX2094.2
059800     02 ID-AGAIN                     PIC X(9).                    IX2094.2
059900     02 FILLER                       PIC X(45)  VALUE SPACES.     IX2094.2
060000 01  CCVS-E-2.                                                    IX2094.2
060100     02  FILLER                      PIC X(31)  VALUE SPACE.      IX2094.2
060200     02  FILLER                      PIC X(21)  VALUE SPACE.      IX2094.2
060300     02 CCVS-E-2-2.                                               IX2094.2
060400         03 ERROR-TOTAL              PIC XXX    VALUE SPACE.      IX2094.2
060500         03 FILLER                   PIC X      VALUE SPACE.      IX2094.2
060600         03 ENDER-DESC               PIC X(44)  VALUE             IX2094.2
060700            "ERRORS ENCOUNTERED".                                 IX2094.2
060800 01  CCVS-E-3.                                                    IX2094.2
060900     02  FILLER                      PIC X(22)  VALUE             IX2094.2
061000            " FOR OFFICIAL USE ONLY".                             IX2094.2
061100     02  FILLER                      PIC X(12)  VALUE SPACE.      IX2094.2
061200     02  FILLER                      PIC X(58)  VALUE             IX2094.2
061300     "ON-SITE VALIDATION, NATIONAL INSTITUTE OF STD & TECH.     ".IX2094.2
061400     02  FILLER                      PIC X(13)  VALUE SPACE.      IX2094.2
061500     02 FILLER                       PIC X(15)  VALUE             IX2094.2
061600             " COPYRIGHT 1985".                                   IX2094.2
061700 01  CCVS-E-4.                                                    IX2094.2
061800     02 CCVS-E-4-1                   PIC XXX    VALUE SPACE.      IX2094.2
061900     02 FILLER                       PIC X(4)   VALUE " OF ".     IX2094.2
062000     02 CCVS-E-4-2                   PIC XXX    VALUE SPACE.      IX2094.2
062100     02 FILLER                       PIC X(40)  VALUE             IX2094.2
062200      "  TESTS WERE EXECUTED SUCCESSFULLY".                       IX2094.2
062300 01  XXINFO.                                                      IX2094.2
062400     02 FILLER                       PIC X(19)  VALUE             IX2094.2
062500            "*** INFORMATION ***".                                IX2094.2
062600     02 INFO-TEXT.                                                IX2094.2
062700       04 FILLER                     PIC X(8)   VALUE SPACE.      IX2094.2
062800       04 XXCOMPUTED                 PIC X(20).                   IX2094.2
062900       04 FILLER                     PIC X(5)   VALUE SPACE.      IX2094.2
063000       04 XXCORRECT                  PIC X(20).                   IX2094.2
063100     02 INF-ANSI-REFERENCE           PIC X(48).                   IX2094.2
063200 01  HYPHEN-LINE.                                                 IX2094.2
063300     02 FILLER  PIC IS X VALUE IS SPACE.                          IX2094.2
063400     02 FILLER  PIC IS X(65)    VALUE IS "************************IX2094.2
063500-    "*****************************************".                 IX2094.2
063600     02 FILLER  PIC IS X(54)    VALUE IS "************************IX2094.2
063700-    "******************************".                            IX2094.2
063800 01  CCVS-PGM-ID                     PIC X(9)   VALUE             IX2094.2
063900     "IX209A".                                                    IX2094.2
064000 PROCEDURE DIVISION.                                              IX2094.2
064100 CCVS1 SECTION.                                                   IX2094.2
064200 OPEN-FILES.                                                      IX2094.2
065300     OPEN    OUTPUT PRINT-FILE.                                   IX2094.2
065400     MOVE  CCVS-PGM-ID TO TEST-ID. MOVE CCVS-PGM-ID TO ID-AGAIN.  IX2094.2
065500     MOVE    SPACE TO TEST-RESULTS.                               IX2094.2
065600     PERFORM HEAD-ROUTINE THRU COLUMN-NAMES-ROUTINE.              IX2094.2
065700     MOVE    ZERO TO REC-SKL-SUB.                                 IX2094.2
065800     PERFORM CCVS-INIT-FILE 9 TIMES.                              IX2094.2
065900 CCVS-INIT-FILE.                                                  IX2094.2
066000     ADD     1 TO REC-SKL-SUB.                                    IX2094.2
066100     MOVE    FILE-RECORD-INFO-SKELETON                            IX2094.2
066200          TO FILE-RECORD-INFO (REC-SKL-SUB).                      IX2094.2
066300 CCVS-INIT-EXIT.                                                  IX2094.2
066400     GO TO CCVS1-EXIT.                                            IX2094.2
066500 CLOSE-FILES.                                                     IX2094.2
067800     PERFORM END-ROUTINE THRU END-ROUTINE-13. CLOSE PRINT-FILE.   IX2094.2
067900 TERMINATE-CCVS.                                                  IX2094.2
068200     STOP     RUN.                                                IX2094.2
068300 INSPT. MOVE "INSPT" TO P-OR-F. ADD 1 TO INSPECT-COUNTER.         IX2094.2
068400 PASS.  MOVE "PASS " TO P-OR-F.  ADD 1 TO PASS-COUNTER.           IX2094.2
068500 FAIL.  MOVE "FAIL*" TO P-OR-F.  ADD 1 TO ERROR-COUNTER.          IX2094.2
068600 DE-LETE.  MOVE "*****" TO P-OR-F.  ADD 1 TO DELETE-COUNTER.      IX2094.2
068700     MOVE "****TEST DELETED****" TO RE-MARK.                      IX2094.2
068800 PRINT-DETAIL.                                                    IX2094.2
068900     IF REC-CT NOT EQUAL TO ZERO                                  IX2094.2
069000             MOVE "." TO PARDOT-X                                 IX2094.2
069100             MOVE REC-CT TO DOTVALUE.                             IX2094.2
069200     MOVE     TEST-RESULTS TO PRINT-REC. PERFORM WRITE-LINE.      IX2094.2
069300     IF P-OR-F EQUAL TO "FAIL*"  PERFORM WRITE-LINE               IX2094.2
069400        PERFORM FAIL-ROUTINE THRU FAIL-ROUTINE-EX                 IX2094.2
069500          ELSE PERFORM BAIL-OUT THRU BAIL-OUT-EX.                 IX2094.2
069600     MOVE SPACE TO P-OR-F. MOVE SPACE TO COMPUTED-X.              IX2094.2
069700     MOVE SPACE TO CORRECT-X.                                     IX2094.2
069800     IF     REC-CT EQUAL TO ZERO  MOVE SPACE TO PAR-NAME.         IX2094.2
069900     MOVE     SPACE TO RE-MARK.                                   IX2094.2
070000 HEAD-ROUTINE.                                                    IX2094.2
070100     MOVE CCVS-H-1  TO DUMMY-RECORD. PERFORM WRITE-LINE 2 TIMES.  IX2094.2
070200     MOVE CCVS-H-2A TO DUMMY-RECORD. PERFORM WRITE-LINE 2 TIMES.  IX2094.2
070300     MOVE CCVS-H-2B TO DUMMY-RECORD. PERFORM WRITE-LINE 3 TIMES.  IX2094.2
070400     MOVE CCVS-H-3  TO DUMMY-RECORD. PERFORM WRITE-LINE 3 TIMES.  IX2094.2
070500 COLUMN-NAMES-ROUTINE.                                            IX2094.2
070600     MOVE CCVS-C-1 TO DUMMY-RECORD. PERFORM WRITE-LINE.           IX2094.2
070700     MOVE CCVS-C-2 TO DUMMY-RECORD. PERFORM WRITE-LINE 2 TIMES.   IX2094.2
070800     MOVE HYPHEN-LINE TO DUMMY-RECORD. PERFORM WRITE-LINE.        IX2094.2
070900 END-ROUTINE.                                                     IX2094.2
071000     MOVE HYPHEN-LINE TO DUMMY-RECORD. PERFORM WRITE-LINE 5 TIMES.IX2094.2
071100 END-RTN-EXIT.                                                    IX2094.2
071200     MOVE CCVS-E-1 TO DUMMY-RECORD. PERFORM WRITE-LINE 2 TIMES.   IX2094.2
071300 END-ROUTINE-1.                                                   IX2094.2
071400      ADD ERROR-COUNTER TO ERROR-HOLD ADD INSPECT-COUNTER TO      IX2094.2
071500      ERROR-HOLD. ADD DELETE-COUNTER TO ERROR-HOLD.               IX2094.2
071600      ADD PASS-COUNTER TO ERROR-HOLD.                             IX2094.2
071700*                                                                         
071800      MOVE PASS-COUNTER TO CCVS-E-4-1.                            IX2094.2
071900      MOVE ERROR-HOLD TO CCVS-E-4-2.                              IX2094.2
072000      MOVE CCVS-E-4 TO CCVS-E-2-2.                                IX2094.2
072100      MOVE CCVS-E-2 TO DUMMY-RECORD PERFORM WRITE-LINE.           IX2094.2
072200  END-ROUTINE-12.                                                 IX2094.2
072300      MOVE "TEST(S) FAILED" TO ENDER-DESC.                        IX2094.2
072400     IF       ERROR-COUNTER IS EQUAL TO ZERO                      IX2094.2
072500         MOVE "NO " TO ERROR-TOTAL                                IX2094.2
072600         ELSE                                                     IX2094.2
072700         MOVE ERROR-COUNTER TO ERROR-TOTAL.                       IX2094.2
072800     MOVE     CCVS-E-2 TO DUMMY-RECORD.                           IX2094.2
072900     PERFORM WRITE-LINE.                                          IX2094.2
073000 END-ROUTINE-13.                                                  IX2094.2
073100     IF DELETE-COUNTER IS EQUAL TO ZERO                           IX2094.2
073200         MOVE "NO " TO ERROR-TOTAL  ELSE                          IX2094.2
073300         MOVE DELETE-COUNTER TO ERROR-TOTAL.                      IX2094.2
073400     MOVE "TEST(S) DELETED     " TO ENDER-DESC.                   IX2094.2
073500     MOVE CCVS-E-2 TO DUMMY-RECORD. PERFORM WRITE-LINE.           IX2094.2
073600      IF   INSPECT-COUNTER EQUAL TO ZERO                          IX2094.2
073700          MOVE "NO " TO ERROR-TOTAL                               IX2094.2
073800      ELSE MOVE INSPECT-COUNTER TO ERROR-TOTAL.                   IX2094.2
073900      MOVE "TEST(S) REQUIRE INSPECTION" TO ENDER-DESC.            IX2094.2
074000      MOVE CCVS-E-2 TO DUMMY-RECORD. PERFORM WRITE-LINE.          IX2094.2
074100     MOVE CCVS-E-3 TO DUMMY-RECORD. PERFORM WRITE-LINE.           IX2094.2
074200 WRITE-LINE.                                                      IX2094.2
074300     ADD 1 TO RECORD-COUNT.                                       IX2094.2
074400     IF RECORD-COUNT GREATER 42                                   IX2094.2
074500         MOVE DUMMY-RECORD TO DUMMY-HOLD                          IX2094.2
074600         MOVE SPACE TO DUMMY-RECORD                               IX2094.2
074700         WRITE DUMMY-RECORD AFTER ADVANCING PAGE                  IX2094.2
074800         MOVE CCVS-H-1  TO DUMMY-RECORD PERFORM WRT-LN 2 TIMES    IX2094.2
074900         MOVE CCVS-H-2A TO DUMMY-RECORD PERFORM WRT-LN 2 TIMES    IX2094.2
075000         MOVE CCVS-H-2B TO DUMMY-RECORD PERFORM WRT-LN 3 TIMES    IX2094.2
075100         MOVE CCVS-H-3  TO DUMMY-RECORD PERFORM WRT-LN 3 TIMES    IX2094.2
075200         MOVE CCVS-C-1  TO DUMMY-RECORD PERFORM WRT-LN            IX2094.2
075300         MOVE CCVS-C-2  TO DUMMY-RECORD PERFORM WRT-LN            IX2094.2
075400         MOVE HYPHEN-LINE TO DUMMY-RECORD PERFORM WRT-LN          IX2094.2
075500         MOVE DUMMY-HOLD TO DUMMY-RECORD                          IX2094.2
075600         MOVE ZERO TO RECORD-COUNT.                               IX2094.2
075700     PERFORM WRT-LN.                                              IX2094.2
075800 WRT-LN.                                                          IX2094.2
075900     WRITE    DUMMY-RECORD AFTER ADVANCING 1 LINES.               IX2094.2
076000     MOVE SPACE TO DUMMY-RECORD.                                  IX2094.2
076100 BLANK-LINE-PRINT.                                                IX2094.2
076200     PERFORM WRT-LN.                                              IX2094.2
076300 FAIL-ROUTINE.                                                    IX2094.2
076400     IF     COMPUTED-X NOT EQUAL TO SPACE                         IX2094.2
076500            GO TO   FAIL-ROUTINE-WRITE.                           IX2094.2
076600     IF     CORRECT-X NOT EQUAL TO SPACE GO TO FAIL-ROUTINE-WRITE.IX2094.2
076700     MOVE   ANSI-REFERENCE TO INF-ANSI-REFERENCE.                 IX2094.2
076800     MOVE  "NO FURTHER INFORMATION, SEE PROGRAM." TO INFO-TEXT.   IX2094.2
076900     MOVE   XXINFO TO DUMMY-RECORD. PERFORM WRITE-LINE 2 TIMES.   IX2094.2
077000     MOVE   SPACES TO INF-ANSI-REFERENCE.                         IX2094.2
077100     GO TO  FAIL-ROUTINE-EX.                                      IX2094.2
077200 FAIL-ROUTINE-WRITE.                                              IX2094.2
077300     MOVE   TEST-COMPUTED TO PRINT-REC PERFORM WRITE-LINE         IX2094.2
077400     MOVE   ANSI-REFERENCE TO COR-ANSI-REFERENCE.                 IX2094.2
077500     MOVE   TEST-CORRECT TO PRINT-REC PERFORM WRITE-LINE 2 TIMES. IX2094.2
077600     MOVE   SPACES TO COR-ANSI-REFERENCE.                         IX2094.2
077700 FAIL-ROUTINE-EX. EXIT.                                           IX2094.2
077800 BAIL-OUT.                                                        IX2094.2
077900     IF     COMPUTED-A NOT EQUAL TO SPACE GO TO BAIL-OUT-WRITE.   IX2094.2
078000     IF     CORRECT-A EQUAL TO SPACE GO TO BAIL-OUT-EX.           IX2094.2
078100 BAIL-OUT-WRITE.                                                  IX2094.2
078200     MOVE CORRECT-A TO XXCORRECT. MOVE COMPUTED-A TO XXCOMPUTED.  IX2094.2
078300     MOVE   ANSI-REFERENCE TO INF-ANSI-REFERENCE.                 IX2094.2
078400     MOVE   XXINFO TO DUMMY-RECORD. PERFORM WRITE-LINE 2 TIMES.   IX2094.2
078500     MOVE   SPACES TO INF-ANSI-REFERENCE.                         IX2094.2
078600 BAIL-OUT-EX. EXIT.                                               IX2094.2
078700 CCVS1-EXIT.                                                      IX2094.2
078800     EXIT.                                                        IX2094.2
078900 SECT-0001-IX209A SECTION.                                        IX2094.2
079000 WRITE-INT-GF-01.                                                 IX2094.2
079100     OPEN    OUTPUT IX-FS1.                                       IX2094.2
079200     MOVE    "IX-FS1" TO XFILE-NAME           (1).                IX2094.2
079300     MOVE    "R1-F-G" TO  XRECORD-NAME        (1).                IX2094.2
079400     MOVE    ZERO     TO  XRECORD-NUMBER      (1).                IX2094.2
079500     MOVE    "RC"     TO  CHARS-OR-RECORDS    (1).                IX2094.2
079600     MOVE    CCVS-PGM-ID  TO  XPROGRAM-NAME       (1).            IX2094.2
079700     MOVE    240      TO  XRECORD-LENGTH      (1).                IX2094.2
079800     MOVE    001      TO  XBLOCK-SIZE         (1).                IX2094.2
079900     MOVE    "IX"     TO  XFILE-ORGANIZATION  (1).                IX2094.2
080000     MOVE    "S"      TO  XLABEL-TYPE         (1).                IX2094.2
080100     MOVE    200      TO  RECORDS-IN-FILE     (1).                IX2094.2
080200     MOVE    "CREATE-FILE-FS1" TO FEATURE.                        IX2094.2
080300     MOVE    "WRITE-TEST-GF-01" TO PAR-NAME.                      IX2094.2
080400     MOVE    ZERO TO KEYSUB.                                      IX2094.2
080500     MOVE    ZERO TO INVKEY-COUNTER.                              IX2094.2
080600 WRITE-INIT-GF-01-01.                                             IX2094.2
080700     PERFORM WRITE-TEST-GF-01-1  50 TIMES.                        IX2094.2
080800     PERFORM WRITE-TEST-GF-01-2  125 TIMES.                       IX2094.2
080900     PERFORM WRITE-TEST-GF-01-1  25 TIMES.                        IX2094.2
081000     GO TO   WRITE-TEST-GF-01.                                    IX2094.2
081100 WRITE-TEST-GF-01-1.                                              IX2094.2
081200     ADD     001  TO XRECORD-NUMBER (1).                          IX2094.2
081300     ADD     001  TO  KEYSUB.                                     IX2094.2
081400     MOVE    RECKEY-VALUE (KEYSUB) TO FS1-RECKEY-1-13.            IX2094.2
081500     MOVE    ALTKEY1-VALUE (KEYSUB) TO FS1-ALTKEY1-1-20.          IX2094.2
081600     MOVE    ALTKEY2-VALUE (KEYSUB) TO FS1-ALTKEY2-1-20.          IX2094.2
081700     MOVE    WRK-FS1-RECKEY   TO    XRECORD-KEY (1).              IX2094.2
081800     MOVE    WRK-FS1-ALTKEY1  TO ALTERNATE-KEY1 (1).              IX2094.2
081900     MOVE    WRK-FS1-ALTKEY2  TO ALTERNATE-KEY2 (1).              IX2094.2
082000     MOVE    FILE-RECORD-INFO (1)  TO IX-FS1R1-F-G-240.           IX2094.2
082100     WRITE   IX-FS1R1-F-G-240                                     IX2094.2
082200                        INVALID KEY ADD 001 TO INVKEY-COUNTER.    IX2094.2
082300     ADD     001 TO  EXCUT-COUNTER-06V00.                         IX2094.2
082400 WRITE-TEST-GF-01-2.                                              IX2094.2
082500     ADD     002  TO FS1-RECKEY-11-13.                            IX2094.2
082600     ADD     002 TO FS1-ALTKEY1-11-13.                            IX2094.2
082700     SUBTRACT  002 FROM FS1-ALTKEY2-11-13.                        IX2094.2
082800     ADD     001  TO XRECORD-NUMBER (1).                          IX2094.2
082900     MOVE    WRK-FS1-RECKEY   TO    XRECORD-KEY (1).              IX2094.2
083000     MOVE    WRK-FS1-ALTKEY1  TO ALTERNATE-KEY1 (1).              IX2094.2
083100     MOVE    WRK-FS1-ALTKEY2  TO ALTERNATE-KEY2 (1).              IX2094.2
083200     MOVE    FILE-RECORD-INFO (1) TO IX-FS1R1-F-G-240.            IX2094.2
083300     WRITE   IX-FS1R1-F-G-240                                     IX2094.2
083400                        INVALID KEY ADD 001 TO INVKEY-COUNTER.    IX2094.2
083500     ADD     001 TO EXCUT-COUNTER-06V00.                          IX2094.2
083600 WRITE-TEST-GF-01.                                                IX2094.2
083700     SUBTRACT INVKEY-COUNTER FROM EXCUT-COUNTER-06V00             IX2094.2
083800             GIVING RECORDS-WRITTEN.                              IX2094.2
083900     MOVE    200  TO CORRECT-18V0.                                IX2094.2
084000     MOVE    RECORDS-WRITTEN TO COMPUTED-18V0.                    IX2094.2
084100     IF      RECORDS-WRITTEN EQUAL TO 200                         IX2094.2
084200             PERFORM  PASS                                        IX2094.2
084300             ELSE                                                 IX2094.2
084400             PERFORM FAIL.                                        IX2094.2
084500     MOVE    "RECORDS IN FILE" TO RE-MARK.                        IX2094.2
084600     PERFORM PRINT-DETAIL.                                        IX2094.2
084700     GO TO   WRITE-TEST-GF-01-END.                                IX2094.2
084800 WRITE-DELETE-GF-01.                                              IX2094.2
084900     MOVE    "WRITE-TEST-GF-01" TO PAR-NAME.                      IX2094.2
085000     PERFORM DE-LETE.                                             IX2094.2
085100     PERFORM  PRINT-DETAIL.                                       IX2094.2
085200 WRITE-TEST-GF-01-END.                                            IX2094.2
085300     CLOSE   IX-FS1.                                              IX2094.2
085400 READ-INIT-F1-01.                                                 IX2094.2
085500     OPEN    INPUT  IX-FS1.                                       IX2094.2
085600     MOVE    "READ-TEST-F1-01" TO PAR-NAME.                       IX2094.2
085700     MOVE    "READ FILE IX-FS1" TO FEATURE.                       IX2094.2
085800     MOVE    ZERO TO EXCUT-COUNTER-06V00.                         IX2094.2
085900     MOVE    02   TO RECKEY-NUM.                                  IX2094.2
086000     MOVE    002 TO ALTKEY1-NUM.                                  IX2094.2
086100 READ-TEST-F1-01-R1.                                              IX2094.2
086200     READ    IX-FS1  AT END  GO TO READ-TEST-F1-01.               IX2094.2
086300     MOVE    IX-REC-KEY-AREA TO WRK-FS1-RECKEY.                   IX2094.2
086400     MOVE    IX-ALT-KEY1-AREA TO WRK-FS1-ALTKEY1.                 IX2094.2
086500     IF      FS1-RECKEY-11-13 EQUAL TO RECKEY-NUM                 IX2094.2
086600             AND FS1-ALTKEY1-11-13 EQUAL TO ALTKEY1-NUM           IX2094.2
086700             NEXT SENTENCE                                        IX2094.2
086800             ELSE                                                 IX2094.2
086900             PERFORM  READ-FAIL-F1-01.                            IX2094.2
087000     ADD     001  TO EXCUT-COUNTER-06V00.                         IX2094.2
087100     ADD     002  TO RECKEY-NUM                                   IX2094.2
087200     ADD     002  TO ALTKEY1-NUM.                                 IX2094.2
087300     GO TO   READ-TEST-F1-01-R1.                                  IX2094.2
087400 READ-TEST-F1-01.                                                 IX2094.2
087500     IF      EXCUT-COUNTER-06V00 EQUAL TO 200                     IX2094.2
087600             PERFORM PASS ELSE                                    IX2094.2
087700     MOVE "IX-28; 4.5.2 OR IX-41; 4.9.2 NOT COORECTLY EXECUTED"   IX2094.2
087800                  TO RE-MARK                                      IX2094.2
087900             PERFORM FAIL.                                        IX2094.2
088000     MOVE    EXCUT-COUNTER-06V00 TO  COMPUTED-18V0.               IX2094.2
088100     MOVE    200  TO  CORRECT-18V0.                               IX2094.2
088200     MOVE    "RECORDS IN FILE" TO RE-MARK.                        IX2094.2
088300     PERFORM PRINT-DETAIL.                                        IX2094.2
088400     GO TO   READ-EXIT-F1-01.                                     IX2094.2
088500 READ-FAIL-F1-01.                                                 IX2094.2
088600     PERFORM FAIL.                                                IX2094.2
088700     MOVE    FS1-RECKEY-11-13  TO COMPUTED-18V0.                  IX2094.2
088800     MOVE    RECKEY-NUM  TO CORRECT-18V0.                         IX2094.2
088900     MOVE    "NUM EMBEDDED IN RECKEY"  TO RE-MARK.                IX2094.2
089000     PERFORM PRINT-DETAIL.                                        IX2094.2
089100 READ-EXIT-F1-01.                                                 IX2094.2
089200     CLOSE   IX-FS1.                                              IX2094.2
089300 START-INIT-GF-01.                                                IX2094.2
089400     OPEN    INPUT  IX-FS1.                                       IX2094.2
089500     MOVE    "START EQ TO RECKEY"  TO FEATURE.                    IX2094.2
089600     MOVE    "START-TEST-GF-01" TO PAR-NAME.                      IX2094.2
089700     MOVE    "********************" TO HOLD-FILESTATUS-RECORD.    IX2094.2
089800*                                                                         
089900*                                                                         
090000*                                                                         
090100*                                                                         
090200*                                                                         
090300*                                                                         
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
092900 START-INIT-GF-01-01.                                             IX2094.2
093000     PERFORM START-INITIALIZE-RECORD.                             IX2094.2
093100     MOVE    "START-TEST-GF-01" TO PAR-NAME.                      IX2094.2
093200     IF      INIT-FLAG NOT EQUAL TO ZERO                          IX2094.2
093300             MOVE   "**"  TO FILESTATUS (1)                       IX2094.2
093400             MOVE   "TEST IMPROPERLY INITIALIZED" TO RE-MARK      IX2094.2
093500             GO TO START-DELETE-GF-01.                            IX2094.2
093600     MOVE    "CCCCCCCCCD022" TO FS1-RECKEY-1-13.                  IX2094.2
093700     MOVE    "EEEEEFFFFF022ALTKEY1"  TO FS1-ALTKEY1-1-20.         IX2094.2
093800     MOVE    "EEEEEFFFFF022ALTKEY2" TO FS1-ALTKEY2-1-20.          IX2094.2
093900     MOVE    WRK-FS1-RECKEY TO IX-REC-KEY-AREA.                   IX2094.2
094000     MOVE    WRK-FS1-ALTKEY1 TO IX-ALT-KEY1-AREA.                 IX2094.2
094100     MOVE    WRK-FS1-ALTKEY2 TO IX-ALT-KEY2-AREA.                 IX2094.2
094200 START-TEST-GF-01.                                                IX2094.2
094300*                                                                         
094400*                                                                         
094500*                                                                         
094600*                                                                         
094700*                                                                         
094800     START   IX-FS1                                               IX2094.2
094900                    KEY IS EQUAL TO IX-FS1-KEY                    IX2094.2
095000          INVALID KEY   MOVE FS1-STATUS TO FILESTATUS (1)         IX2094.2
095100                     MOVE  "INVALID KEY ON START" TO COMPUTED-A   IX2094.2
095200                        GO TO START-FAIL-GF-01.                   IX2094.2
095300     MOVE    FS1-STATUS TO FILESTATUS (1).                        IX2094.2
095400     READ    IX-FS1  AT END                                       IX2094.2
095500                     MOVE  "AT END ON READ" TO COMPUTED-A         IX2094.2
095600                     GO TO START-FAIL-GF-01.                      IX2094.2
095700     MOVE    IX-FS1R1-F-G-240  TO  FILE-RECORD-INFO (1).          IX2094.2
095800     IF      XRECORD-NUMBER (1) EQUAL TO 11                       IX2094.2
095900             PERFORM PASS                                         IX2094.2
096000             MOVE SPACE TO RE-MARK                                IX2094.2
096100             GO TO START-WRITE-GF-01.                             IX2094.2
096200     MOVE    11  TO RECNO.                                        IX2094.2
096300     PERFORM DISPLAY-RECORD-KEYS.                                 IX2094.2
096400     MOVE     XRECORD-NUMBER (1)  TO COMPUTED-18V0.               IX2094.2
096500 START-FAIL-GF-01.                                                IX2094.2
096600     PERFORM FAIL.                                                IX2094.2
096700     MOVE    11   TO CORRECT-18V0.                                IX2094.2
096800     MOVE "IX-36; 4.7.2 ETC." TO RE-MARK.                         IX2094.2
096900     GO TO   START-WRITE-GF-01.                                   IX2094.2
097000 START-DELETE-GF-01.                                              IX2094.2
097100     PERFORM DE-LETE.                                             IX2094.2
097200 START-WRITE-GF-01.                                               IX2094.2
097300     PERFORM PRINT-DETAIL.                                        IX2094.2
097400 START-INIT-GF-02.                                                IX2094.2
097500     MOVE    "START-TEST-GF-02" TO PAR-NAME.                      IX2094.2
097600     PERFORM START-INITIALIZE-RECORD.                             IX2094.2
097700     IF      INIT-FLAG NOT EQUAL TO ZERO                          IX2094.2
097800             MOVE    "TEST IMPROPERLY INITIALIZED"  TO RE-MARK    IX2094.2
097900             MOVE   "**"  TO FILESTATUS (2)                       IX2094.2
098000             GO TO   START-DELETE-GF-02.                          IX2094.2
098100     MOVE    "EEEEEEEFFF067" TO FS1-RECKEY-1-13.                  IX2094.2
098200     MOVE    "HHHHHHHIII066ALTKEY1" TO FS1-ALTKEY1-1-20.          IX2094.2
098300     MOVE    "TTTTTTTSSS334ALTKEY2" TO FS1-ALTKEY2-1-20.          IX2094.2
098400     MOVE    WRK-FS1-RECKEY   TO IX-REC-KEY-AREA.                 IX2094.2
098500     MOVE    WRK-FS1-ALTKEY1  TO IX-ALT-KEY1-AREA.                IX2094.2
098600     MOVE    WRK-FS1-ALTKEY2  TO IX-ALT-KEY2-AREA.                IX2094.2
098700 START-TEST-GF-02.                                                IX2094.2
098800*                                                                         
098900*                                                                         
099000*                                                                         
099100*                                                                         
099200*                                                                         
099300*                                                                         
099400*                                                                         
099500     START   IX-FS1                                               IX2094.2
099600                     KEY IS EQUAL TO IX-FS1-KEY                   IX2094.2
099700          INVALID KEY    MOVE  FS1-STATUS TO FILESTATUS (2)       IX2094.2
099800                         GO TO START-PASS-GF-02.                  IX2094.2
099900     MOVE    FS1-STATUS TO FILESTATUS (2).                        IX2094.2
100000     READ    IX-FS1 AT END                                        IX2094.2
100100                     MOVE  "AT END PATH TAKEN ON READ" TO RE-MARK.IX2094.2
100200     MOVE    IX-FS1R1-F-G-240 TO FILE-RECORD-INFO (1).            IX2094.2
100300     PERFORM FAIL.                                                IX2094.2
100400     MOVE "IX-36; 4.7.2 ETC." TO RE-MARK.                         IX2094.2
100500     MOVE    XRECORD-KEY (1) TO COMPUTED-A.                       IX2094.2
100600     MOVE    "INVALID KEY" TO CORRECT-A.                          IX2094.2
100700     GO TO   START-WRITE-GF-02.                                   IX2094.2
100800 START-PASS-GF-02.                                                IX2094.2
100900     PERFORM  PASS.                                               IX2094.2
101000     GO TO   START-WRITE-GF-02.                                   IX2094.2
101100 START-DELETE-GF-02.                                              IX2094.2
101200     PERFORM DE-LETE.                                             IX2094.2
101300 START-WRITE-GF-02.                                               IX2094.2
101400     PERFORM PRINT-DETAIL.                                        IX2094.2
101500 START-INIT-GF-03.                                                IX2094.2
101600     PERFORM START-INITIALIZE-RECORD.                             IX2094.2
101700     MOVE    "START-TEST-GF-03" TO PAR-NAME.                      IX2094.2
101800     IF      INIT-FLAG NOT EQUAL TO ZERO                          IX2094.2
101900             MOVE    "TEST IMPROPERLY INITIALIZED"  TO RE-MARK    IX2094.2
102000             MOVE   "**"  TO FILESTATUS (3)                       IX2094.2
102100             GO TO   START-DELETE-GF-03.                          IX2094.2
102200     MOVE    "BBBBBBBBBC001"  TO FS1-RECKEY-1-13.                 IX2094.2
102300     MOVE    "EEEEEEEEEF002ALTKEY1"  TO FS1-ALTKEY1-1-20.         IX2094.2
102400     MOVE    "WWWWWWWWWV398ALTKEY2"  TO FS1-ALTKEY2-1-20.         IX2094.2
102500     MOVE    WRK-FS1-RECKEY   TO IX-REC-KEY-AREA.                 IX2094.2
102600     MOVE    WRK-FS1-ALTKEY1  TO IX-ALT-KEY1-AREA.                IX2094.2
102700     MOVE    WRK-FS1-ALTKEY2  TO IX-ALT-KEY2-AREA.                IX2094.2
102800 START-TEST-GF-03.                                                IX2094.2
102900*                                                                         
103000*                                                                         
103100*                                                                         
103200*                                                                         
103300*                                                                         
103400*                                                                         
103500*                                                                         
103600     START   IX-FS1                                               IX2094.2
103700                     KEY IS EQUAL TO IX-FS1-KEY                   IX2094.2
103800          INVALID KEY    MOVE FS1-STATUS TO FILESTATUS (3)        IX2094.2
103900                     GO TO START-PASS-GF-03.                      IX2094.2
104000     MOVE    FS1-STATUS TO FILESTATUS (3).                        IX2094.2
104100     READ    IX-FS1  AT END                                       IX2094.2
104200                     MOVE  "AT END PATH TAKEN ON READ" TO RE-MARK.IX2094.2
104300     MOVE    IX-FS1R1-F-G-240 TO FILE-RECORD-INFO (1).            IX2094.2
104400     MOVE "IX-36; 4.7.2 ETC." TO RE-MARK.                         IX2094.2
104500     PERFORM FAIL.                                                IX2094.2
104600     MOVE    XRECORD-KEY (1)  TO COMPUTED-A.                      IX2094.2
104700     MOVE    "INVALID KEY"  TO CORRECT-A.                         IX2094.2
104800     GO TO START-WRITE-GF-03.                                     IX2094.2
104900 START-PASS-GF-03.                                                IX2094.2
105000     PERFORM PASS.                                                IX2094.2
105100     GO TO   START-WRITE-GF-03.                                   IX2094.2
105200 START-DELETE-GF-03.                                              IX2094.2
105300     PERFORM DE-LETE.                                             IX2094.2
105400 START-WRITE-GF-03.                                               IX2094.2
105500     PERFORM PRINT-DETAIL.                                        IX2094.2
105600 START-INIT-GF-04.                                                IX2094.2
105700     MOVE "START-TEST-GF-04" TO PAR-NAME.                         IX2094.2
105800     PERFORM START-INITIALIZE-RECORD.                             IX2094.2
105900     IF      INIT-FLAG NOT EQUAL TO ZERO                          IX2094.2
106000             MOVE    "TEST IMPROPERLY INITIALIZED"  TO RE-MARK    IX2094.2
106100             MOVE   "**"  TO FILESTATUS (4)                       IX2094.2
106200             GO TO   START-DELETE-GF-04.                          IX2094.2
106300     MOVE    "UUUUUUUUUU401"  TO FS1-RECKEY-1-13.                 IX2094.2
106400     MOVE    "YYYYYYYYYY400ALTKEY1"  TO FS1-ALTKEY1-1-20.         IX2094.2
106500     MOVE    "DDDDDDDDDD000ALTKEY2"  TO FS1-ALTKEY2-1-20.         IX2094.2
106600     MOVE    WRK-FS1-RECKEY   TO IX-REC-KEY-AREA.                 IX2094.2
106700     MOVE    WRK-FS1-ALTKEY1  TO IX-ALT-KEY1-AREA.                IX2094.2
106800     MOVE    WRK-FS1-ALTKEY2  TO IX-ALT-KEY2-AREA.                IX2094.2
106900 START-TEST-GF-04.                                                IX2094.2
107000*                                                                         
107100*                                                                         
107200*                                                                         
107300*                                                                         
107400*                                                                         
107500*                                                                         
107600*                                                                         
107700*                                                                         
107800*                                                                         
107900     START   IX-FS1                                               IX2094.2
108000                     KEY IS EQUAL TO IX-FS1-KEY                   IX2094.2
108100          INVALID KEY    MOVE  FS1-STATUS TO FILESTATUS (4)       IX2094.2
108200                         GO TO START-PASS-GF-04.                  IX2094.2
108300     MOVE    FS1-STATUS TO FILESTATUS (4).                        IX2094.2
108400     READ    IX-FS1 AT END                                        IX2094.2
108500                     MOVE  "AT END PATH TAKEN ON READ" TO RE-MARK.IX2094.2
108600     MOVE    IX-FS1R1-F-G-240 TO FILE-RECORD-INFO (1).            IX2094.2
108700     MOVE "IX-36; 4.7.2 ETC." TO RE-MARK.                         IX2094.2
108800     PERFORM FAIL.                                                IX2094.2
108900     MOVE    XRECORD-KEY (1) TO COMPUTED-A.                       IX2094.2
109000     MOVE    "INVALID KEY" TO CORRECT-A.                          IX2094.2
109100     GO TO   START-WRITE-GF-04.                                   IX2094.2
109200 START-PASS-GF-04.                                                IX2094.2
109300     PERFORM  PASS.                                               IX2094.2
109400     GO TO   START-WRITE-GF-04.                                   IX2094.2
109500 START-DELETE-GF-04.                                              IX2094.2
109600     PERFORM DE-LETE.                                             IX2094.2
109700 START-WRITE-GF-04.                                               IX2094.2
109800     PERFORM PRINT-DETAIL.                                        IX2094.2
109900 START-INIT-GF-05.                                                IX2094.2
110000     MOVE "START-TEST-GF-05" TO PAR-NAME.                         IX2094.2
110100     PERFORM START-INITIALIZE-RECORD.                             IX2094.2
110200     IF      INIT-FLAG NOT EQUAL TO ZERO                          IX2094.2
110300             MOVE    "TEST IMPROPERLY INITIALIZED"  TO RE-MARK    IX2094.2
110400             MOVE   "**"  TO FILESTATUS (5)                       IX2094.2
110500             GO TO   START-DELETE-GF-05.                          IX2094.2
110600     MOVE    "CDDDDDDDDD039" TO FS1-RECKEY-1-13.                  IX2094.2
110700     MOVE    "IIIIIIIIJJ083ALTKEY1"  TO FS1-ALTKEY1-1-20.         IX2094.2
110800     MOVE    "ABCXXXXXXX400ALTKEY2" TO FS1-ALTKEY2-1-20.          IX2094.2
110900     MOVE    WRK-FS1-RECKEY   TO IX-REC-KEY-AREA.                 IX2094.2
111000     MOVE    WRK-FS1-ALTKEY1  TO IX-ALT-KEY1-AREA.                IX2094.2
111100     MOVE    WRK-FS1-ALTKEY2  TO IX-ALT-KEY2-AREA.                IX2094.2
111200 START-TEST-GF-05.                                                IX2094.2
111300*                                                                         
111400*                                                                         
111500*                                                                         
111600*                                                                         
111700*                                                                         
111800*                                                                         
111900*                                                                         
112000*                                                                         
112100*                                                                         
112200*                                                                         
112300*                                                                         
112400*                                                                         
112500     START   IX-FS1                                               IX2094.2
112600                    KEY IS EQUAL TO IX-FS1-KEY-1-5                IX2094.2
112700          INVALID KEY    MOVE  FS1-STATUS TO FILESTATUS (5)       IX2094.2
112800                     MOVE  "INVALID KEY ON START" TO COMPUTED-A   IX2094.2
112900                     GO TO START-FAIL-GF-05.                      IX2094.2
113000     MOVE    FS1-STATUS TO FILESTATUS (5).                        IX2094.2
113100     READ    IX-FS1  AT END                                       IX2094.2
113200                     MOVE  "AT END ON READ" TO COMPUTED-A         IX2094.2
113300                     GO TO  START-FAIL-GF-05.                     IX2094.2
113400     MOVE    IX-FS1R1-F-G-240 TO FILE-RECORD-INFO (1).            IX2094.2
113500     IF      XRECORD-NUMBER (1) EQUAL TO 19                       IX2094.2
113600             PERFORM  PASS                                        IX2094.2
113700             GO TO START-WRITE-GF-05.                             IX2094.2
113800     MOVE    19  TO RECNO.                                        IX2094.2
113900     PERFORM DISPLAY-RECORD-KEYS.                                 IX2094.2
114000     MOVE    XRECORD-NUMBER (1)  TO COMPUTED-18V0.                IX2094.2
114100 START-FAIL-GF-05.                                                IX2094.2
114200     PERFORM  FAIL.                                               IX2094.2
114300     MOVE    19  TO CORRECT-18V0.                                 IX2094.2
114400     MOVE "IX-36; 4.7.2 ETC.; SUBORDINATE D-I OF KEY" TO RE-MARK. IX2094.2
114500     GO TO   START-WRITE-GF-05.                                   IX2094.2
114600 START-DELETE-GF-05.                                              IX2094.2
114700     PERFORM DE-LETE.                                             IX2094.2
114800 START-WRITE-GF-05.                                               IX2094.2
114900     PERFORM PRINT-DETAIL.                                        IX2094.2
115000 START-INIT-GF-06.                                                IX2094.2
115100     MOVE "START-TEST-GF-06" TO PAR-NAME.                         IX2094.2
115200     PERFORM START-INITIALIZE-RECORD.                             IX2094.2
115300     IF      INIT-FLAG NOT EQUAL TO ZERO                          IX2094.2
115400             MOVE    "TEST IMPROPERLY INITIALIZED"  TO RE-MARK    IX2094.2
115500             MOVE   "**"  TO FILESTATUS (6)                       IX2094.2
115600             GO TO   START-DELETE-GF-06.                          IX2094.2
115700     MOVE    "TTTTTUUUUU390"  TO FS1-RECKEY-1-13.                 IX2094.2
115800     MOVE    "XYYYYYYYYY399ALTKEY1"  TO FS1-ALTKEY1-1-20.         IX2094.2
115900     MOVE    "WWWWWWWWWV399ALTKEY2"  TO FS1-ALTKEY2-1-20.         IX2094.2
116000     MOVE    WRK-FS1-RECKEY   TO IX-REC-KEY-AREA.                 IX2094.2
116100     MOVE    WRK-FS1-ALTKEY1  TO IX-ALT-KEY1-AREA.                IX2094.2
116200     MOVE    WRK-FS1-ALTKEY2  TO IX-ALT-KEY2-AREA.                IX2094.2
116300 START-TEST-GF-06.                                                IX2094.2
116400*                                                                         
116500*                                                                         
116600*                                                                         
116700*                                                                         
116800*                                                                         
116900*                                                                         
117000*                                                                         
117100*                                                                         
117200*                                                                         
117300*                                                                         
117400*                                                                         
117500*                                                                         
117600*                                                                         
117700*                                                                         
117800*                                                                         
117900*                                                                         
118000*                                                                         
118100     START   IX-FS1                                               IX2094.2
118200                    KEY IS EQUAL TO IX-FS1-KEY-1-5                IX2094.2
118300          INVALID KEY    MOVE  FS1-STATUS TO FILESTATUS (6)       IX2094.2
118400                     MOVE  "INVALID KEY ON START"  TO COMPUTED-A  IX2094.2
118500                     GO TO START-FAIL-GF-06.                      IX2094.2
118600     MOVE    FS1-STATUS TO FILESTATUS (6).                        IX2094.2
118700     READ    IX-FS1  AT END                                       IX2094.2
118800                     MOVE "AT END ON READ" TO COMPUTED-A          IX2094.2
118900                     GO TO START-FAIL-GF-06.                      IX2094.2
119000     MOVE    IX-FS1R1-F-G-240 TO FILE-RECORD-INFO (1).            IX2094.2
119100     IF      XRECORD-NUMBER (1) EQUAL TO 190                      IX2094.2
119200             PERFORM  PASS                                        IX2094.2
119300             GO TO START-WRITE-GF-06.                             IX2094.2
119400     MOVE    65  TO RECNO.                                        IX2094.2
119500     PERFORM DISPLAY-RECORD-KEYS.                                 IX2094.2
119600     MOVE    XRECORD-NUMBER (1)  TO COMPUTED-18V0.                IX2094.2
119700 START-FAIL-GF-06.                                                IX2094.2
119800     MOVE "IX-36; 4.7.2 ETC.; SUBORDINATE D-I OF KEY" TO RE-MARK. IX2094.2
119900     PERFORM  FAIL.                                               IX2094.2
120000     MOVE    190   TO CORRECT-18V0.                               IX2094.2
120100     GO TO   START-WRITE-GF-06.                                   IX2094.2
120200 START-DELETE-GF-06.                                              IX2094.2
120300     PERFORM DE-LETE.                                             IX2094.2
120400 START-WRITE-GF-06.                                               IX2094.2
120500     PERFORM PRINT-DETAIL.                                        IX2094.2
120600 START-INIT-GF-07.                                                IX2094.2
120700     MOVE "START-TEST-GF-07" TO PAR-NAME.                         IX2094.2
120800     PERFORM START-INITIALIZE-RECORD.                             IX2094.2
120900     IF      INIT-FLAG NOT EQUAL TO ZERO                          IX2094.2
121000             MOVE    "TEST IMPROPERLY INITIALIZED"  TO RE-MARK    IX2094.2
121100             MOVE   "**"  TO FILESTATUS (7)                       IX2094.2
121200             GO TO   START-DELETE-GF-07.                          IX2094.2
121300     MOVE    "CCCCCCD022   " TO FS1-RECKEY-1-13.                  IX2094.2
121400     MOVE    "FFFFFFFFFG022ALTKEY1"  TO FS1-ALTKEY1-1-20.         IX2094.2
121500     MOVE    "VVVVVVVVVV380ALTKEY2"  TO FS1-ALTKEY2-1-20.         IX2094.2
121600     MOVE    WRK-FS1-RECKEY   TO IX-REC-KEY-AREA.                 IX2094.2
121700     MOVE    WRK-FS1-ALTKEY1  TO IX-ALT-KEY1-AREA.                IX2094.2
121800     MOVE    WRK-FS1-ALTKEY2  TO IX-ALT-KEY2-AREA.                IX2094.2
121900 START-TEST-GF-07.                                                IX2094.2
122000*                                                                         
122100*                                                                         
122200*                                                                         
122300*                                                                         
122400*                                                                         
122500*                                                                         
122600*                                                                         
122700*                                                                         
122800*                                                                         
122900*                                                                         
123000*                                                                         
123100*                                                                         
123200*                                                                         
123300*                                                                         
123400*                                                                         
123500*                                                                         
123600     START   IX-FS1                                               IX2094.2
123700                    KEY IS EQUAL TO IX-FS1-KEY-1-10               IX2094.2
123800          INVALID KEY    MOVE  FS1-STATUS TO FILESTATUS (7)       IX2094.2
123900                     GO TO START-PASS-GF-07.                      IX2094.2
124000     MOVE    FS1-STATUS TO FILESTATUS (7).                        IX2094.2
124100     READ    IX-FS1  AT END                                       IX2094.2
124200                     MOVE  "AT END PATH TAKEN ON READ" TO RE-MARK.IX2094.2
124300     MOVE    IX-FS1R1-F-G-240 TO FILE-RECORD-INFO (1).            IX2094.2
124400     MOVE "IX-36; 4.7.2 ETC." TO RE-MARK.                         IX2094.2
124500     PERFORM FAIL.                                                IX2094.2
124600     MOVE    XRECORD-KEY (1) TO COMPUTED-A.                       IX2094.2
124700     MOVE    "INVALID KEY" TO CORRECT-A.                          IX2094.2
124800     GO TO   START-WRITE-GF-07.                                   IX2094.2
124900 START-PASS-GF-07.                                                IX2094.2
125000     PERFORM PASS.                                                IX2094.2
125100     GO TO   START-WRITE-GF-07.                                   IX2094.2
125200 START-DELETE-GF-07.                                              IX2094.2
125300     PERFORM DE-LETE.                                             IX2094.2
125400 START-WRITE-GF-07.                                               IX2094.2
125500     PERFORM PRINT-DETAIL.                                        IX2094.2
125600 START-INIT-GF-08.                                                IX2094.2
125700     MOVE "START-TEST-GF-08" TO PAR-NAME.                         IX2094.2
125800     PERFORM START-INITIALIZE-RECORD.                             IX2094.2
125900     IF      INIT-FLAG NOT EQUAL TO ZERO                          IX2094.2
126000             MOVE    "TEST IMPROPERLY INITIALIZED"  TO RE-MARK    IX2094.2
126100             MOVE   "**"  TO FILESTATUS (8)                       IX2094.2
126200             GO TO   START-DELETE-GF-08.                          IX2094.2
126300     MOVE    "ABBBBBBBBC002"  TO FS1-RECKEY-1-13.                 IX2094.2
126400     MOVE    "EEEEEEEEEF002ALTKEY1"  TO FS1-ALTKEY1-1-20.         IX2094.2
126500     MOVE    "WWWWWWWWWW400ALTKEY2"  TO FS1-ALTKEY2-1-20.         IX2094.2
126600     MOVE    WRK-FS1-RECKEY   TO IX-REC-KEY-AREA.                 IX2094.2
126700     MOVE    WRK-FS1-ALTKEY1  TO IX-ALT-KEY1-AREA.                IX2094.2
126800     MOVE    WRK-FS1-ALTKEY2  TO IX-ALT-KEY2-AREA.                IX2094.2
126900 START-TEST-GF-08.                                                IX2094.2
127000*                                                                         
127100*                                                                         
127200*                                                                         
127300*                                                                         
127400*                                                                         
127500*                                                                         
127600*                                                                         
127700*                                                                         
127800*                                                                         
127900*                                                                         
128000*                                                                         
128100*                                                                         
128200*                                                                         
128300     START   IX-FS1                                               IX2094.2
128400                    KEY IS EQUAL TO IX-FS1-KEY-1-10               IX2094.2
128500          INVALID KEY    MOVE  FS1-STATUS TO FILESTATUS (8)       IX2094.2
128600                     GO TO START-PASS-GF-08.                      IX2094.2
128700     MOVE    FS1-STATUS TO FILESTATUS (8).                        IX2094.2
128800     READ    IX-FS1  AT END                                       IX2094.2
128900                     MOVE  "AT END PATH TAKEN ON READ" TO RE-MARK.IX2094.2
129000     MOVE    IX-FS1R1-F-G-240 TO FILE-RECORD-INFO (1).            IX2094.2
129100     MOVE "IX-36; 4.7.2 ETC." TO RE-MARK.                         IX2094.2
129200     PERFORM FAIL.                                                IX2094.2
129300     MOVE    XRECORD-KEY (1)  TO COMPUTED-A.                      IX2094.2
129400     MOVE     "INVALID KEY" TO CORRECT-A.                         IX2094.2
129500     GO TO   START-WRITE-GF-08.                                   IX2094.2
129600 START-PASS-GF-08.                                                IX2094.2
129700     PERFORM PASS.                                                IX2094.2
129800     GO TO   START-WRITE-GF-08.                                   IX2094.2
129900 START-DELETE-GF-08.                                              IX2094.2
130000     PERFORM DE-LETE.                                             IX2094.2
130100 START-WRITE-GF-08.                                               IX2094.2
130200     PERFORM PRINT-DETAIL.                                        IX2094.2
130300 START-INIT-GF-09.                                                IX2094.2
130400     MOVE "START-TEST-GF-09" TO PAR-NAME.                         IX2094.2
130500     PERFORM START-INITIALIZE-RECORD.                             IX2094.2
130600     IF      INIT-FLAG NOT EQUAL TO ZERO                          IX2094.2
130700             MOVE    "TEST IMPROPERLY INITIALIZED"  TO RE-MARK    IX2094.2
130800             MOVE   "**"  TO FILESTATUS (9)                       IX2094.2
130900             GO TO   START-DELETE-GF-09.                          IX2094.2
131000     MOVE    "UUUUUUUUUV400"  TO FS1-RECKEY-1-13.                 IX2094.2
131100     MOVE    "EEEEEEEEEF002ALTKEY1"  TO FS1-ALTKEY1-1-20.         IX2094.2
131200     MOVE    "WWWWWWWWWV398ALTKEY2"  TO FS1-ALTKEY2-1-20.         IX2094.2
131300     MOVE    WRK-FS1-RECKEY   TO IX-REC-KEY-AREA.                 IX2094.2
131400     MOVE    WRK-FS1-ALTKEY1  TO IX-ALT-KEY1-AREA.                IX2094.2
131500     MOVE    WRK-FS1-ALTKEY2  TO IX-ALT-KEY2-AREA.                IX2094.2
131600 START-TEST-GF-09.                                                IX2094.2
131700*                                                                         
131800*                                                                         
131900*                                                                         
132000*                                                                         
132100*                                                                         
132200*                                                                         
132300*                                                                         
132400*                                                                         
132500*                                                                         
132600*                                                                         
132700*                                                                         
132800*                                                                         
132900*                                                                         
133000     START   IX-FS1                                               IX2094.2
133100                    KEY IS EQUAL TO IX-FS1-KEY-1-10               IX2094.2
133200          INVALID KEY    MOVE  FS1-STATUS TO FILESTATUS (9)       IX2094.2
133300                     GO TO START-PASS-GF-09.                      IX2094.2
133400     MOVE    FS1-STATUS TO FILESTATUS (9).                        IX2094.2
133500     READ    IX-FS1  AT END                                       IX2094.2
133600                     MOVE  "AT END PATH TAKEN ON READ" TO RE-MARK.IX2094.2
133700     MOVE    IX-FS1R1-F-G-240 TO FILE-RECORD-INFO (1).            IX2094.2
133800     MOVE "IX-36; 4.7.2 ETC." TO RE-MARK.                         IX2094.2
133900     PERFORM FAIL.                                                IX2094.2
134000     MOVE    XRECORD-KEY (1)  TO COMPUTED-A.                      IX2094.2
134100     MOVE     "INVALID KEY" TO CORRECT-A.                         IX2094.2
134200     GO TO   START-WRITE-GF-09.                                   IX2094.2
134300 START-PASS-GF-09.                                                IX2094.2
134400     PERFORM PASS.                                                IX2094.2
134500     GO TO   START-WRITE-GF-09.                                   IX2094.2
134600 START-DELETE-GF-09.                                              IX2094.2
134700     PERFORM DE-LETE.                                             IX2094.2
134800 START-WRITE-GF-09.                                               IX2094.2
134900     PERFORM PRINT-DETAIL.                                        IX2094.2
135000     CLOSE   IX-FS1.                                              IX2094.2
135100 START-INIT-GF-FILE-STATUS.                                       IX2094.2
135200     MOVE "FILE STATUS START:00"   TO FEATURE.                    IX2094.2
135300     MOVE   "START-TEST-GF-10" TO PAR-NAME.                       IX2094.2
135400*                                                                         
135500*                                                                         
135600*                                                                         
135700 START-TEST-GF-10.                                                IX2094.2
135800     IF      FILESTATUS (1)  EQUAL TO "**"                        IX2094.2
135900             PERFORM DE-LETE                                      IX2094.2
136000             GO TO  START-WRITE-GF-10.                            IX2094.2
136100*                                                                         
136200*                                                                         
136300*                                                                         
136400*                                                                         
136500*                                                                         
136600     IF      FILESTATUS (1)  EQUAL TO "00"                        IX2094.2
136700             PERFORM PASS                                         IX2094.2
136800     ELSE                                                         IX2094.2
136900     MOVE "IX-3; 1.3.4 (1) A; FROM START-TEST-GF-01  " TO RE-MARK IX2094.2
137000             PERFORM  FAIL                                        IX2094.2
137100             MOVE  "00"  TO CORRECT-A                             IX2094.2
137200             MOVE   FILESTATUS (1)  TO COMPUTED-A.                IX2094.2
137300 START-WRITE-GF-10.                                               IX2094.2
137400     PERFORM  PRINT-DETAIL.                                       IX2094.2
137500 START-TEST-GF-11.                                                IX2094.2
137600     MOVE "FILE STATUS START:??"   TO FEATURE.                    IX2094.2
137700     MOVE "START-TEST-GF-11" TO PAR-NAME.                         IX2094.2
137800     IF      FILESTATUS (2)  EQUAL TO "**"                        IX2094.2
137900             PERFORM DE-LETE                                      IX2094.2
138000             GO TO  START-WRITE-GF-11.                            IX2094.2
138100*                                                                         
138200*                                                                         
138300*                                                                         
138400*                                                                         
138500*                                                                         
138600     IF      FILESTATUS (2)  EQUAL TO "23"                        IX2094.2
138700             PERFORM  PASS                                        IX2094.2
138800             ELSE  PERFORM  FAIL                                  IX2094.2
138900     MOVE "IX-3; 1.3.4 (1) A; FROM START-TEST-GF-02  " TO RE-MARK IX2094.2
139000             MOVE    "23"  TO CORRECT-A                           IX2094.2
139100             MOVE   FILESTATUS (2)  TO COMPUTED-A.                IX2094.2
139200 START-WRITE-GF-11.                                               IX2094.2
139300     PERFORM  PRINT-DETAIL.                                       IX2094.2
139400 START-TEST-GF-12.                                                IX2094.2
139500     MOVE "FILE STATUS START:??"   TO FEATURE.                    IX2094.2
139600     MOVE "START-TEST-GF-12" TO PAR-NAME.                         IX2094.2
139700     IF      FILESTATUS (3)  EQUAL TO "**"                        IX2094.2
139800             PERFORM DE-LETE                                      IX2094.2
139900             GO TO  START-WRITE-GF-12.                            IX2094.2
140000*                                                                         
140100*                                                                         
140200*                                                                         
140300*                                                                         
140400*                                                                         
140500     IF      FILESTATUS (3)  EQUAL TO "23"                        IX2094.2
140600             PERFORM  PASS                                        IX2094.2
140700             ELSE  PERFORM  FAIL                                  IX2094.2
140800     MOVE "IX-3; 1.3.4 (1) A; FROM START-TEST-GF-03  " TO RE-MARK IX2094.2
140900             MOVE    "23"  TO CORRECT-A                           IX2094.2
141000             MOVE   FILESTATUS (3)  TO COMPUTED-A.                IX2094.2
141100 START-WRITE-GF-12.                                               IX2094.2
141200     PERFORM  PRINT-DETAIL.                                       IX2094.2
141300 START-TEST-GF-13.                                                IX2094.2
141400     MOVE "START-TEST-GF-13" TO PAR-NAME.                         IX2094.2
141500     MOVE "FILE STATUS START:??"   TO FEATURE.                    IX2094.2
141600     IF      FILESTATUS (4)  EQUAL TO "**"                        IX2094.2
141700             PERFORM DE-LETE                                      IX2094.2
141800             GO TO  START-WRITE-GF-13.                            IX2094.2
141900*                                                                         
142000*                                                                         
142100*                                                                         
142200*                                                                         
142300*                                                                         
142400     IF      FILESTATUS (4)  EQUAL TO "23"                        IX2094.2
142500             PERFORM  PASS                                        IX2094.2
142600             ELSE  PERFORM  FAIL                                  IX2094.2
142700     MOVE "IX-3; 1.3.4 (1) A; FROM START-TEST-GF-04  " TO RE-MARK IX2094.2
142800             MOVE    "23"  TO CORRECT-A                           IX2094.2
142900             MOVE   FILESTATUS (4)  TO COMPUTED-A.                IX2094.2
143000 START-WRITE-GF-13.                                               IX2094.2
143100     PERFORM  PRINT-DETAIL.                                       IX2094.2
143200 START-TEST-GF-14.                                                IX2094.2
143300     MOVE "START-TEST-GF-14" TO PAR-NAME.                         IX2094.2
143400     MOVE "FILE STATUS START:??"   TO FEATURE.                    IX2094.2
143500     IF      FILESTATUS (5)  EQUAL TO "**"                        IX2094.2
143600             PERFORM DE-LETE                                      IX2094.2
143700             GO TO  START-WRITE-GF-14.                            IX2094.2
143800*                                                                         
143900*                                                                         
144000*                                                                         
144100*                                                                         
144200*                                                                         
144300     IF      FILESTATUS (5)  EQUAL TO "00"                        IX2094.2
144400             PERFORM  PASS                                        IX2094.2
144500             ELSE  PERFORM  FAIL                                  IX2094.2
144600     MOVE "IX-3; 1.3.4 (1) A; FROM START-TEST-GF-05   " TO RE-MARKIX2094.2
144700             MOVE    "00"  TO CORRECT-A                           IX2094.2
144800             MOVE   FILESTATUS (5)  TO COMPUTED-A.                IX2094.2
144900 START-WRITE-GF-14.                                               IX2094.2
145000     PERFORM  PRINT-DETAIL.                                       IX2094.2
145100 START-TEST-GF-15.                                                IX2094.2
145200     MOVE "START-TEST-GF-15" TO PAR-NAME.                         IX2094.2
145300     MOVE "FILE STATUS START:??"   TO FEATURE.                    IX2094.2
145400     IF      FILESTATUS (6)  EQUAL TO "**"                        IX2094.2
145500             PERFORM DE-LETE                                      IX2094.2
145600             GO TO  START-WRITE-GF-15.                            IX2094.2
145700*                                                                         
145800*                                                                         
145900*                                                                         
146000*                                                                         
146100*                                                                         
146200     IF      FILESTATUS (6)  EQUAL TO "00"                        IX2094.2
146300             PERFORM  PASS                                        IX2094.2
146400             ELSE  PERFORM  FAIL                                  IX2094.2
146500     MOVE "IX-3; 1.3.4 (1) A; FROM START-TEST-GF-06   " TO RE-MARKIX2094.2
146600             MOVE   "00"  TO CORRECT-A                            IX2094.2
146700             MOVE   FILESTATUS (6)  TO COMPUTED-A.                IX2094.2
146800 START-WRITE-GF-15.                                               IX2094.2
146900     PERFORM  PRINT-DETAIL.                                       IX2094.2
147000 START-TEST-GGF-16.                                               IX2094.2
147100     MOVE "START-TEST-GF-16" TO PAR-NAME.                         IX2094.2
147200     MOVE "FILE STATUS START:??"   TO FEATURE.                    IX2094.2
147300     IF      FILESTATUS (7)  EQUAL TO "**"                        IX2094.2
147400             PERFORM DE-LETE                                      IX2094.2
147500             GO TO  START-WRITE-GF-16.                            IX2094.2
147600*                                                                         
147700*                                                                         
147800*                                                                         
147900*                                                                         
148000*                                                                         
148100     IF      FILESTATUS (7)  EQUAL TO "23"                        IX2094.2
148200             PERFORM  PASS                                        IX2094.2
148300             ELSE  PERFORM  FAIL                                  IX2094.2
148400     MOVE "IX-3; 1.3.4 (1) A; FROM START-TEST-GF-07   " TO RE-MARKIX2094.2
148500             MOVE    "23"  TO CORRECT-A                           IX2094.2
148600             MOVE   FILESTATUS (7)  TO COMPUTED-A.                IX2094.2
148700 START-WRITE-GF-16.                                               IX2094.2
148800     PERFORM  PRINT-DETAIL.                                       IX2094.2
148900 START-TEST-GF-17.                                                IX2094.2
149000     MOVE "START-TEST-GF-17" TO PAR-NAME.                         IX2094.2
149100     MOVE "FILE STATUS START:??"   TO FEATURE.                    IX2094.2
149200     IF      FILESTATUS (8)  EQUAL TO "**"                        IX2094.2
149300             PERFORM DE-LETE                                      IX2094.2
149400             GO TO  START-WRITE-GF-17.                            IX2094.2
149500*                                                                         
149600*                                                                         
149700*                                                                         
149800*                                                                         
149900*                                                                         
150000     IF      FILESTATUS (8)  EQUAL TO "23"                        IX2094.2
150100             PERFORM  PASS                                        IX2094.2
150200             ELSE  PERFORM  FAIL                                  IX2094.2
150300     MOVE "IX-3; 1.3.4 (1) A; FROM START-TEST-GF-08   " TO RE-MARKIX2094.2
150400             MOVE    "23"  TO CORRECT-A                           IX2094.2
150500             MOVE   FILESTATUS (8)  TO COMPUTED-A.                IX2094.2
150600 START-WRITE-GF-17.                                               IX2094.2
150700     PERFORM  PRINT-DETAIL.                                       IX2094.2
150800 START-TEST-GF-18.                                                IX2094.2
150900     MOVE "START-TEST-GF-18" TO PAR-NAME.                         IX2094.2
151000     MOVE "FILE STATUS START:??"   TO FEATURE.                    IX2094.2
151100     IF      FILESTATUS (9)  EQUAL TO "**"                        IX2094.2
151200             PERFORM DE-LETE                                      IX2094.2
151300             GO TO  START-WRITE-GF-18.                            IX2094.2
151400*                                                                         
151500*                                                                         
151600*                                                                         
151700*                                                                         
151800*                                                                         
151900     IF      FILESTATUS (9)  EQUAL TO "23"                        IX2094.2
152000             PERFORM PASS                                         IX2094.2
152100     ELSE    PERFORM FAIL                                         IX2094.2
152200     MOVE "IX-3; 1.3.4 (1) A; FROM START-TEST-GF-09   " TO RE-MARKIX2094.2
152300             MOVE  "23"  TO CORRECT-A                             IX2094.2
152400             MOVE   FILESTATUS (9)  TO COMPUTED-A.                IX2094.2
152500 START-WRITE-GF-18.                                               IX2094.2
152600     PERFORM  PRINT-DETAIL.                                       IX2094.2
152700*                                                                         
152800                                                                  IX2094.2
152900 START-INIT-005.                                                  IX2094.2
153000     OPEN    INPUT  IX-FS1.                                       IX2094.2
153100     MOVE    "STR EQ ALTKY W/O DUP" TO FEATURE.                   IX2094.2
153200     MOVE    "START-TEST-GF-19" TO PAR-NAME.                      IX2094.2
153300     MOVE    "********************" TO HOLD-FILESTATUS-RECORD.    IX2094.2
153400*                                                                         
153500*                                                                         
153600*                                                                         
153700*                                                                         
153800*                                                                         
153900*                                                                         
154000*                                                                         
154100*                                                                         
154200*                                                                         
154300*                                                                         
154400*                                                                         
154500*                                                                         
154600*                                                                         
154700*                                                                         
154800*                                                                         
154900*                                                                         
155000*                                                                         
155100*                                                                         
155200*                                                                         
155300*                                                                         
155400*                                                                         
155500*                                                                         
155600*                                                                         
155700*                                                                         
155800*                                                                         
155900*                                                                         
156000*                                                                         
156100*                                                                         
156200*                                                                         
156300*                                                                         
156400*                                                                         
156500 START-INIT-GF-19.                                                IX2094.2
156600     PERFORM START-INITIALIZE-RECORD.                             IX2094.2
156700     IF      INIT-FLAG NOT EQUAL TO ZERO                          IX2094.2
156800             MOVE   "**"  TO FILESTATUS (1)                       IX2094.2
156900             MOVE   "TEST IMPROPERLY INITIALIZED" TO RE-MARK      IX2094.2
157000             GO TO START-DELETE-GF-19.                            IX2094.2
157100     MOVE    "CCCCCDDDDD022"  TO FS1-RECKEY-1-13.                 IX2094.2
157200     MOVE    "XXXXXXXXXY382ALTKEY1"  TO FS1-ALTKEY1-1-20.         IX2094.2
157300     MOVE    "EEEEEFFFFF022ALTKEY2" TO FS1-ALTKEY2-1-20.          IX2094.2
157400     MOVE    WRK-FS1-RECKEY TO IX-REC-KEY-AREA.                   IX2094.2
157500     MOVE    WRK-FS1-ALTKEY1 TO IX-ALT-KEY1-AREA.                 IX2094.2
157600     MOVE    WRK-FS1-ALTKEY2 TO IX-ALT-KEY2-AREA.                 IX2094.2
157700 START-TEST-GF-19.                                                IX2094.2
157800*                                                                         
157900*                                                                         
158000*                                                                         
158100*                                                                         
158200*                                                                         
158300     START   IX-FS1                                               IX2094.2
158400                    KEY IS EQUAL TO IX-FS1-ALTKEY1                IX2094.2
158500        INVALID KEY     MOVE FS1-STATUS TO FILESTATUS (1)         IX2094.2
158600                     MOVE  "INVALID KEY ON START" TO COMPUTED-A   IX2094.2
158700                        GO TO START-FAIL-GF-19.                   IX2094.2
158800     MOVE    FS1-STATUS TO FILESTATUS (1).                        IX2094.2
158900     READ    IX-FS1  AT END                                       IX2094.2
159000                     MOVE  "AT END ON READ" TO COMPUTED-A         IX2094.2
159100                     GO TO START-FAIL-GF-19.                      IX2094.2
159200     MOVE    IX-FS1R1-F-G-240  TO  FILE-RECORD-INFO (1).          IX2094.2
159300     IF      XRECORD-NUMBER (1)  EQUAL TO 191                     IX2094.2
159400             PERFORM PASS                                         IX2094.2
159500             MOVE SPACE TO RE-MARK                                IX2094.2
159600             GO TO START-WRITE-GF-19.                             IX2094.2
159700     MOVE    66  TO RECNO.                                        IX2094.2
159800     PERFORM DISPLAY-ALTERNATE-KEY1.                              IX2094.2
159900     MOVE     XRECORD-NUMBER (1)  TO COMPUTED-18V0.               IX2094.2
160000 START-FAIL-GF-19.                                                IX2094.2
160100     MOVE "IX-36; 4.7.2 ETC.                          " TO RE-MARKIX2094.2
160200     PERFORM FAIL.                                                IX2094.2
160300     MOVE    191  TO CORRECT-18V0.                                IX2094.2
160400     GO TO   START-WRITE-GF-19.                                   IX2094.2
160500 START-DELETE-GF-19.                                              IX2094.2
160600     PERFORM DE-LETE.                                             IX2094.2
160700 START-WRITE-GF-19.                                               IX2094.2
160800     PERFORM PRINT-DETAIL.                                        IX2094.2
160900 START-INIT-GF-20.                                                IX2094.2
161000     MOVE "START-TEST-GF-20" TO PAR-NAME.                         IX2094.2
161100     PERFORM START-INITIALIZE-RECORD.                             IX2094.2
161200     IF      INIT-FLAG NOT EQUAL TO ZERO                          IX2094.2
161300             MOVE    "TEST IMPROPERLY INITIALIZED"  TO RE-MARK    IX2094.2
161400             MOVE   "**"  TO FILESTATUS (2)                       IX2094.2
161500             GO TO   START-DELETE-GF-20.                          IX2094.2
161600     MOVE    "EEEEEEEFFF066"  TO FS1-RECKEY-1-13.                 IX2094.2
161700     MOVE    "HHHHHHHIII067ALTKEY1"  TO FS1-ALTKEY1-1-20.         IX2094.2
161800     MOVE    "TTTTTTTSSS334ALTKEY2" TO FS1-ALTKEY2-1-20.          IX2094.2
161900     MOVE    WRK-FS1-RECKEY   TO IX-REC-KEY-AREA.                 IX2094.2
162000     MOVE    WRK-FS1-ALTKEY1  TO IX-ALT-KEY1-AREA.                IX2094.2
162100     MOVE    WRK-FS1-ALTKEY2  TO IX-ALT-KEY2-AREA.                IX2094.2
162200 START-TEST-GF-20.                                                IX2094.2
162300*                                                                         
162400*                                                                         
162500*                                                                         
162600*                                                                         
162700*                                                                         
162800*                                                                         
162900*                                                                         
163000     START   IX-FS1                                               IX2094.2
163100                    KEY IS EQUAL TO IX-FS1-ALTKEY1                IX2094.2
163200          INVALID KEY    MOVE  FS1-STATUS TO FILESTATUS (2)       IX2094.2
163300                         GO TO START-PASS-GF-20.                  IX2094.2
163400     MOVE    FS1-STATUS TO FILESTATUS (2).                        IX2094.2
163500     READ    IX-FS1 AT END                                        IX2094.2
163600                     MOVE  "AT END PATH TAKEN ON READ" TO RE-MARK.IX2094.2
163700     MOVE    IX-FS1R1-F-G-240 TO FILE-RECORD-INFO (1).            IX2094.2
163800     MOVE "IX-36; 4.7.2 ETC.                          " TO RE-MARKIX2094.2
163900     PERFORM FAIL.                                                IX2094.2
164000     MOVE    ALTERNATE-KEY1 (1) TO COMPUTED-A.                    IX2094.2
164100     MOVE    "INVALID KEY" TO CORRECT-A.                          IX2094.2
164200     GO TO   START-WRITE-GF-20.                                   IX2094.2
164300 START-PASS-GF-20.                                                IX2094.2
164400     PERFORM  PASS.                                               IX2094.2
164500     MOVE     "INVALID KEY"  TO RE-MARK.                          IX2094.2
164600     GO TO   START-WRITE-GF-20.                                   IX2094.2
164700 START-DELETE-GF-20.                                              IX2094.2
164800     PERFORM DE-LETE.                                             IX2094.2
164900 START-WRITE-GF-20.                                               IX2094.2
165000     PERFORM PRINT-DETAIL.                                        IX2094.2
165100 START-INIT-GF-21.                                                IX2094.2
165200     MOVE "START-TEST-GF-21" TO PAR-NAME.                         IX2094.2
165300     PERFORM START-INITIALIZE-RECORD.                             IX2094.2
165400     IF      INIT-FLAG NOT EQUAL TO ZERO                          IX2094.2
165500             MOVE    "TEST IMPROPERLY INITIALIZED"  TO RE-MARK    IX2094.2
165600             MOVE   "**"  TO FILESTATUS (3)                       IX2094.2
165700             GO TO   START-DELETE-GF-21.                          IX2094.2
165800     MOVE    "BBBBBBBBBC002"  TO FS1-RECKEY-1-13.                 IX2094.2
165900     MOVE   "EEEEEEEEEF001ALTKEY1"  TO FS1-ALTKEY1-1-20.          IX2094.2
166000     MOVE    "WWWWWWWWWV398ALTKEY2"  TO FS1-ALTKEY2-1-20.         IX2094.2
166100     MOVE    WRK-FS1-RECKEY   TO IX-REC-KEY-AREA.                 IX2094.2
166200     MOVE    WRK-FS1-ALTKEY1  TO IX-ALT-KEY1-AREA.                IX2094.2
166300     MOVE    WRK-FS1-ALTKEY2  TO IX-ALT-KEY2-AREA.                IX2094.2
166400 START-TEST-GF-21.                                                IX2094.2
166500*                                                                         
166600*                                                                         
166700*                                                                         
166800*                                                                         
166900*                                                                         
167000*                                                                         
167100*                                                                         
167200     START   IX-FS1                                               IX2094.2
167300                    KEY IS EQUAL TO IX-FS1-ALTKEY1                IX2094.2
167400          INVALID KEY    MOVE FS1-STATUS TO FILESTATUS (3)        IX2094.2
167500                     GO TO START-PASS-GF-21.                      IX2094.2
167600     MOVE    FS1-STATUS TO FILESTATUS (3).                        IX2094.2
167700     READ    IX-FS1  AT END                                       IX2094.2
167800                     MOVE  "AT END PATH TAKEN ON READ" TO RE-MARK.IX2094.2
167900     MOVE    IX-FS1R1-F-G-240 TO FILE-RECORD-INFO (1).            IX2094.2
168000     MOVE "IX-36; 4.7.2 ETC.                          " TO RE-MARKIX2094.2
168100     PERFORM FAIL.                                                IX2094.2
168200     MOVE    ALTERNATE-KEY1 (1) TO COMPUTED-A.                    IX2094.2
168300     MOVE    "INVALID KEY"  TO CORRECT-A.                         IX2094.2
168400     GO TO START-WRITE-GF-21.                                     IX2094.2
168500 START-PASS-GF-21.                                                IX2094.2
168600     PERFORM PASS.                                                IX2094.2
168700     MOVE    "INVALID KEY"  TO RE-MARK.                           IX2094.2
168800     GO TO   START-WRITE-GF-21.                                   IX2094.2
168900 START-DELETE-GF-21.                                              IX2094.2
169000     PERFORM DE-LETE.                                             IX2094.2
169100 START-WRITE-GF-21.                                               IX2094.2
169200     PERFORM PRINT-DETAIL.                                        IX2094.2
169300 START-INIT-GF-22.                                                IX2094.2
169400     MOVE "START-TEST-GF-22" TO PAR-NAME.                         IX2094.2
169500     PERFORM START-INITIALIZE-RECORD.                             IX2094.2
169600     IF      INIT-FLAG NOT EQUAL TO ZERO                          IX2094.2
169700             MOVE    "TEST IMPROPERLY INITIALIZED"  TO RE-MARK    IX2094.2
169800             MOVE   "**"  TO FILESTATUS (4)                       IX2094.2
169900             GO TO   START-DELETE-GF-22.                          IX2094.2
170000     MOVE    "UUUUUUUUUU400"  TO FS1-RECKEY-1-13.                 IX2094.2
170100     MOVE    "YYYYYYYYYY401ALTKEY1"  TO FS1-ALTKEY1-1-20.         IX2094.2
170200     MOVE    "DDDDDDDDDD000ALTKEY2" TO FS1-ALTKEY2-1-20.          IX2094.2
170300     MOVE    WRK-FS1-RECKEY   TO IX-REC-KEY-AREA.                 IX2094.2
170400     MOVE    WRK-FS1-ALTKEY1  TO IX-ALT-KEY1-AREA.                IX2094.2
170500     MOVE    WRK-FS1-ALTKEY2  TO IX-ALT-KEY2-AREA.                IX2094.2
170600 START-TEST-GF-22.                                                IX2094.2
170700*                                                                         
170800*                                                                         
170900*                                                                         
171000*                                                                         
171100*                                                                         
171200*                                                                         
171300*                                                                         
171400*                                                                         
171500*                                                                         
171600     START   IX-FS1                                               IX2094.2
171700                    KEY IS EQUAL TO IX-FS1-ALTKEY1                IX2094.2
171800          INVALID KEY    MOVE  FS1-STATUS TO FILESTATUS (4)       IX2094.2
171900                         GO TO START-PASS-GF-22.                  IX2094.2
172000     MOVE    FS1-STATUS TO FILESTATUS (4).                        IX2094.2
172100     READ    IX-FS1 AT END                                        IX2094.2
172200                     MOVE  "AT END PATH TAKEN ON READ" TO RE-MARK.IX2094.2
172300     MOVE    IX-FS1R1-F-G-240 TO FILE-RECORD-INFO (1).            IX2094.2
172400     MOVE "IX-36; 4.7.2 ETC.                          " TO RE-MARKIX2094.2
172500     PERFORM FAIL.                                                IX2094.2
172600     MOVE    ALTERNATE-KEY1 (1) TO COMPUTED-A.                    IX2094.2
172700     MOVE    "INVALID KEY" TO CORRECT-A.                          IX2094.2
172800     GO TO   START-WRITE-GF-22.                                   IX2094.2
172900 START-PASS-GF-22.                                                IX2094.2
173000     PERFORM  PASS.                                               IX2094.2
173100     GO TO   START-WRITE-GF-22.                                   IX2094.2
173200 START-DELETE-GF-22.                                              IX2094.2
173300     PERFORM DE-LETE.                                             IX2094.2
173400 START-WRITE-GF-22.                                               IX2094.2
173500     PERFORM PRINT-DETAIL.                                        IX2094.2
173600 START-INIT-GF-23.                                                IX2094.2
173700     MOVE "START-TEST-GF-23" TO PAR-NAME.                         IX2094.2
173800     PERFORM START-INITIALIZE-RECORD.                             IX2094.2
173900     IF      INIT-FLAG NOT EQUAL TO ZERO                          IX2094.2
174000             MOVE    "TEST IMPROPERLY INITIALIZED"  TO RE-MARK    IX2094.2
174100             MOVE   "**"  TO FILESTATUS (5)                       IX2094.2
174200             GO TO   START-DELETE-GF-23.                          IX2094.2
174300     MOVE    "CDDDDDDDDD039"  TO FS1-RECKEY-1-13.                 IX2094.2
174400     MOVE    "GGGGHXXXXX052ALTKEY1" TO FS1-ALTKEY1-1-20.          IX2094.2
174500     MOVE    "ABCXXXXXXX400ALTKEY2"  TO FS1-ALTKEY2-1-20.         IX2094.2
174600     MOVE    WRK-FS1-RECKEY   TO IX-REC-KEY-AREA.                 IX2094.2
174700     MOVE    WRK-FS1-ALTKEY1  TO IX-ALT-KEY1-AREA.                IX2094.2
174800     MOVE    WRK-FS1-ALTKEY2  TO IX-ALT-KEY2-AREA.                IX2094.2
174900 START-TEST-GF-23.                                                IX2094.2
175000*                                                                         
175100*                                                                         
175200*                                                                         
175300*                                                                         
175400*                                                                         
175500*                                                                         
175600*                                                                         
175700*                                                                         
175800*                                                                         
175900*                                                                         
176000*                                                                         
176100*                                                                         
176200*                                                                         
176300*                                                                         
176400     START   IX-FS1                                               IX2094.2
176500                    KEY IS EQUAL TO IX-FS1-ALTKEY1-1-5            IX2094.2
176600          INVALID KEY    MOVE  FS1-STATUS TO FILESTATUS (5)       IX2094.2
176700                     MOVE  "INVALID KEY ON START" TO COMPUTED-A   IX2094.2
176800                     GO TO START-FAIL-GF-23.                      IX2094.2
176900     MOVE    FS1-STATUS TO FILESTATUS (5).                        IX2094.2
177000     READ    IX-FS1  AT END                                       IX2094.2
177100                     MOVE  "AT END ON READ" TO COMPUTED-A         IX2094.2
177200                     GO TO  START-FAIL-GF-23.                     IX2094.2
177300     MOVE    IX-FS1R1-F-G-240 TO FILE-RECORD-INFO (1).            IX2094.2
177400     IF      XRECORD-NUMBER (1)  EQUAL TO 26                      IX2094.2
177500             PERFORM  PASS                                        IX2094.2
177600             GO TO START-WRITE-GF-23.                             IX2094.2
177700     MOVE    26  TO RECNO.                                        IX2094.2
177800     PERFORM DISPLAY-ALTERNATE-KEY1.                              IX2094.2
177900     MOVE    XRECORD-NUMBER (1)  TO COMPUTED-18V0.                IX2094.2
178000 START-FAIL-GF-23.                                                IX2094.2
178100     MOVE "IX-36; 4.7.2 ETC.                          " TO RE-MARKIX2094.2
178200     PERFORM  FAIL.                                               IX2094.2
178300     MOVE    26  TO CORRECT-18V0.                                 IX2094.2
178400     GO TO   START-WRITE-GF-23.                                   IX2094.2
178500 START-DELETE-GF-23.                                              IX2094.2
178600     PERFORM DE-LETE.                                             IX2094.2
178700 START-WRITE-GF-23.                                               IX2094.2
178800     PERFORM PRINT-DETAIL.                                        IX2094.2
178900 START-INIT-GF-24.                                                IX2094.2
179000     MOVE "START-TEST-GF-24" TO PAR-NAME.                         IX2094.2
179100     PERFORM START-INITIALIZE-RECORD.                             IX2094.2
179200     IF      INIT-FLAG NOT EQUAL TO ZERO                          IX2094.2
179300             MOVE    "TEST IMPROPERLY INITIALIZED"  TO RE-MARK    IX2094.2
179400             MOVE   "**"  TO FILESTATUS (6)                       IX2094.2
179500             GO TO   START-DELETE-GF-24.                          IX2094.2
179600     MOVE    "YYYYYUUUUU390"  TO FS1-RECKEY-1-13.                 IX2094.2
179700     MOVE    "XXXXXYYYYY390ALTKEY1"  TO FS1-ALTKEY1-1-20.         IX2094.2
179800     MOVE    "WWWWWWWWWV399ALTKEY2"  TO FS1-ALTKEY2-1-20.         IX2094.2
179900     MOVE    WRK-FS1-RECKEY   TO IX-REC-KEY-AREA.                 IX2094.2
180000     MOVE    WRK-FS1-ALTKEY1  TO IX-ALT-KEY1-AREA.                IX2094.2
180100     MOVE    WRK-FS1-ALTKEY2  TO IX-ALT-KEY2-AREA.                IX2094.2
180200 START-TEST-GF-24.                                                IX2094.2
180300*                                                                         
180400*                                                                         
180500*                                                                         
180600*                                                                         
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
182000     START   IX-FS1                                               IX2094.2
182100                    KEY IS EQUAL TO IX-FS1-ALTKEY1-1-5            IX2094.2
182200          INVALID KEY    MOVE  FS1-STATUS TO FILESTATUS (6)       IX2094.2
182300                     MOVE  "INVALID KEY ON START"  TO COMPUTED-A  IX2094.2
182400                     GO TO START-FAIL-GF-24.                      IX2094.2
182500     MOVE    FS1-STATUS TO FILESTATUS (6).                        IX2094.2
182600     READ    IX-FS1  AT END                                       IX2094.2
182700                     MOVE "AT END ON READ" TO COMPUTED-A          IX2094.2
182800                     GO TO START-FAIL-GF-24.                      IX2094.2
182900     MOVE    IX-FS1R1-F-G-240 TO FILE-RECORD-INFO (1).            IX2094.2
183000     IF      XRECORD-NUMBER (1) EQUAL TO 190                      IX2094.2
183100             PERFORM  PASS                                        IX2094.2
183200             GO TO START-WRITE-GF-24.                             IX2094.2
183300     MOVE    65  TO RECNO.                                        IX2094.2
183400     PERFORM DISPLAY-ALTERNATE-KEY1.                              IX2094.2
183500     MOVE    XRECORD-NUMBER (1)  TO COMPUTED-18V0.                IX2094.2
183600 START-FAIL-GF-24.                                                IX2094.2
183700     MOVE "IX-36; 4.7.2 ETC.                          " TO RE-MARKIX2094.2
183800     PERFORM  FAIL.                                               IX2094.2
183900     MOVE    190   TO CORRECT-18V0.                               IX2094.2
184000     GO TO   START-WRITE-GF-24.                                   IX2094.2
184100 START-DELETE-GF-24.                                              IX2094.2
184200     PERFORM DE-LETE.                                             IX2094.2
184300 START-WRITE-GF-24.                                               IX2094.2
184400     PERFORM PRINT-DETAIL.                                        IX2094.2
184500 START-INIT-GF-25.                                                IX2094.2
184600     MOVE "START-TEST-GF-25" TO PAR-NAME.                         IX2094.2
184700     PERFORM START-INITIALIZE-RECORD.                             IX2094.2
184800     IF      INIT-FLAG NOT EQUAL TO ZERO                          IX2094.2
184900             MOVE    "TEST IMPROPERLY INITIALIZED"  TO RE-MARK    IX2094.2
185000             MOVE   "**"  TO FILESTATUS (7)                       IX2094.2
185100             GO TO   START-DELETE-GF-25.                          IX2094.2
185200     MOVE    "CCCCCCCCCD022"  TO FS1-RECKEY-1-13.                 IX2094.2
185300     MOVE    "022ALTKEY1          "  TO FS1-ALTKEY1-1-20.         IX2094.2
185400     MOVE    "VVVVVVVVVV380ALTKEY2"  TO FS1-ALTKEY2-1-20.         IX2094.2
185500     MOVE    WRK-FS1-RECKEY   TO IX-REC-KEY-AREA.                 IX2094.2
185600     MOVE    WRK-FS1-ALTKEY1  TO IX-ALT-KEY1-AREA.                IX2094.2
185700     MOVE    WRK-FS1-ALTKEY2  TO IX-ALT-KEY2-AREA.                IX2094.2
185800 START-TEST-GF-25.                                                IX2094.2
185900*                                                                         
186000*                                                                         
186100*                                                                         
186200*                                                                         
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
187500     START  IX-FS1                                                IX2094.2
187600                   KEY IS EQUAL TO IX-FS1-ALTKEY1-1-10            IX2094.2
187700          INVALID KEY    MOVE  FS1-STATUS TO FILESTATUS (7)       IX2094.2
187800                     GO TO START-PASS-GF-25.                      IX2094.2
187900     MOVE    FS1-STATUS TO FILESTATUS (7).                        IX2094.2
188000     READ    IX-FS1  AT END                                       IX2094.2
188100                     MOVE  "AT END PATH TAKEN ON READ" TO RE-MARK.IX2094.2
188200     MOVE    IX-FS1R1-F-G-240 TO FILE-RECORD-INFO (1).            IX2094.2
188300     MOVE "IX-36; 4.7.2 ETC.                          " TO RE-MARKIX2094.2
188400     PERFORM FAIL.                                                IX2094.2
188500     MOVE    XRECORD-KEY (1) TO COMPUTED-A.                       IX2094.2
188600     MOVE    "INVALID KEY" TO CORRECT-A.                          IX2094.2
188700     GO TO   START-WRITE-GF-25.                                   IX2094.2
188800 START-PASS-GF-25.                                                IX2094.2
188900     PERFORM PASS.                                                IX2094.2
189000     GO TO   START-WRITE-GF-25.                                   IX2094.2
189100 START-DELETE-GF-25.                                              IX2094.2
189200     PERFORM DE-LETE.                                             IX2094.2
189300 START-WRITE-GF-25.                                               IX2094.2
189400     PERFORM PRINT-DETAIL.                                        IX2094.2
189500 START-INIT-GF-26.                                                IX2094.2
189600     MOVE "START-TEST-GF-26" TO PAR-NAME.                         IX2094.2
189700     PERFORM START-INITIALIZE-RECORD.                             IX2094.2
189800     IF      INIT-FLAG NOT EQUAL TO ZERO                          IX2094.2
189900             MOVE    "TEST IMPROPERLY INITIALIZED"  TO RE-MARK    IX2094.2
190000             MOVE   "**"  TO FILESTATUS (8)                       IX2094.2
190100             GO TO   START-DELETE-GF-26.                          IX2094.2
190200     MOVE    "BBBBBBBBBC002"  TO FS1-RECKEY-1-13.                 IX2094.2
190300     MOVE    "EEEEEEEEEE002ALTKEY1"  TO FS1-ALTKEY1-1-20.         IX2094.2
190400     MOVE    "WWWWWWWWWV398ALTKEY2"  TO FS1-ALTKEY2-1-20.         IX2094.2
190500     MOVE    WRK-FS1-RECKEY   TO IX-REC-KEY-AREA.                 IX2094.2
190600     MOVE    WRK-FS1-ALTKEY1  TO IX-ALT-KEY1-AREA.                IX2094.2
190700     MOVE    WRK-FS1-ALTKEY2  TO IX-ALT-KEY2-AREA.                IX2094.2
190800 START-TEST-GF-26.                                                IX2094.2
190900*                                                                         
191000*                                                                         
191100*                                                                         
191200*                                                                         
191300*                                                                         
191400*                                                                         
191500*                                                                         
191600*                                                                         
191700*                                                                         
191800*                                                                         
191900*                                                                         
192000*                                                                         
192100*                                                                         
192200     START  IX-FS1                                                IX2094.2
192300                   KEY IS EQUAL TO IX-FS1-ALTKEY1-1-10            IX2094.2
192400          INVALID KEY    MOVE  FS1-STATUS TO FILESTATUS (8)       IX2094.2
192500                     GO TO START-PASS-GF-26.                      IX2094.2
192600     MOVE    FS1-STATUS TO FILESTATUS (8).                        IX2094.2
192700     READ    IX-FS1  AT END                                       IX2094.2
192800                     MOVE  "AT END PATH TAKEN ON READ" TO RE-MARK.IX2094.2
192900     MOVE    IX-FS1R1-F-G-240 TO FILE-RECORD-INFO (1).            IX2094.2
193000     MOVE "IX-36; 4.7.2 ETC.                          " TO RE-MARKIX2094.2
193100     PERFORM FAIL.                                                IX2094.2
193200     MOVE    XRECORD-KEY (1)  TO COMPUTED-A.                      IX2094.2
193300     MOVE     "INVALID KEY" TO CORRECT-A.                         IX2094.2
193400     GO TO   START-WRITE-GF-26.                                   IX2094.2
193500 START-PASS-GF-26.                                                IX2094.2
193600     PERFORM PASS.                                                IX2094.2
193700     GO TO   START-WRITE-GF-26.                                   IX2094.2
193800 START-DELETE-GF-26.                                              IX2094.2
193900     PERFORM DE-LETE.                                             IX2094.2
194000 START-WRITE-GF-26.                                               IX2094.2
194100     PERFORM PRINT-DETAIL.                                        IX2094.2
194200 START-INIT-GF-27.                                                IX2094.2
194300     MOVE "START-TEST-GF-27" TO PAR-NAME.                         IX2094.2
194400     PERFORM START-INITIALIZE-RECORD.                             IX2094.2
194500     IF      INIT-FLAG NOT EQUAL TO ZERO                          IX2094.2
194600             MOVE    "TEST IMPROPERLY INITIALIZED"  TO RE-MARK    IX2094.2
194700             MOVE   "**"  TO FILESTATUS (9)                       IX2094.2
194800             GO TO   START-DELETE-GF-27.                          IX2094.2
194900     MOVE    "UUUUUUUUUU400"  TO FS1-RECKEY-1-13.                 IX2094.2
195000     MOVE    "YYYYYZYYYY400ALTKEY1"  TO FS1-ALTKEY1-1-20.         IX2094.2
195100     MOVE    "WWWWWWWWWV398ALTKEY2"  TO FS1-ALTKEY2-1-20.         IX2094.2
195200     MOVE    WRK-FS1-RECKEY   TO IX-REC-KEY-AREA.                 IX2094.2
195300     MOVE    WRK-FS1-ALTKEY1  TO IX-ALT-KEY1-AREA.                IX2094.2
195400     MOVE    WRK-FS1-ALTKEY2  TO IX-ALT-KEY2-AREA.                IX2094.2
195500 START-TEST-GF-27.                                                IX2094.2
195600*                                                                         
195700*                                                                         
195800*                                                                         
195900*                                                                         
196000*                                                                         
196100*                                                                         
196200*                                                                         
196300*                                                                         
196400*                                                                         
196500*                                                                         
196600*                                                                         
196700*                                                                         
196800*                                                                         
196900     START  IX-FS1                                                IX2094.2
197000                   KEY IS EQUAL TO IX-FS1-ALTKEY1-1-10            IX2094.2
197100          INVALID KEY    MOVE  FS1-STATUS TO FILESTATUS (9)       IX2094.2
197200                     GO TO START-PASS-GF-27.                      IX2094.2
197300     MOVE    FS1-STATUS TO FILESTATUS (9).                        IX2094.2
197400     READ    IX-FS1  AT END                                       IX2094.2
197500                     MOVE  "AT END PATH TAKEN ON READ" TO RE-MARK.IX2094.2
197600     MOVE    IX-FS1R1-F-G-240 TO FILE-RECORD-INFO (1).            IX2094.2
197700     MOVE "IX-36; 4.7.2 ETC.                          " TO RE-MARKIX2094.2
197800     PERFORM FAIL.                                                IX2094.2
197900     MOVE    XRECORD-KEY (1)  TO COMPUTED-A.                      IX2094.2
198000     MOVE     "INVALID KEY" TO CORRECT-A.                         IX2094.2
198100     GO TO   START-WRITE-GF-27.                                   IX2094.2
198200 START-PASS-GF-27.                                                IX2094.2
198300     PERFORM PASS.                                                IX2094.2
198400     GO TO   START-WRITE-GF-27.                                   IX2094.2
198500 START-DELETE-GF-27.                                              IX2094.2
198600     PERFORM DE-LETE.                                             IX2094.2
198700 START-WRITE-GF-27.                                               IX2094.2
198800     PERFORM PRINT-DETAIL.                                        IX2094.2
198900                                                                  IX2094.2
199000     CLOSE   IX-FS1.                                              IX2094.2
199100                                                                  IX2094.2
199200 START-INIT-FILE-STATUS-2.                                        IX2094.2
199300     MOVE             "FILE STATUS START:00"   TO FEATURE.        IX2094.2
199400     MOVE "START-TEST-GF-28" TO PAR-NAME.                         IX2094.2
199500*                                                                         
199600*                                                                         
199700*                                                                         
199800*                                                                         
199900 START-TEST-GF-28.                                                IX2094.2
200000     IF      FILESTATUS (1)  EQUAL TO "**"                        IX2094.2
200100             PERFORM DE-LETE                                      IX2094.2
200200             GO TO  START-WRITE-GF-28.                            IX2094.2
200300*                                                                         
200400*                                                                         
200500*                                                                         
200600*                                                                         
200700*                                                                         
200800     IF      FILESTATUS (1)  EQUAL TO "00"                        IX2094.2
200900             PERFORM PASS                                         IX2094.2
201000     ELSE                                                         IX2094.2
201100     MOVE "IX-3; 1.3.4 (1) A FROM START-TEST-GF-19    " TO RE-MARKIX2094.2
201200             PERFORM  FAIL                                        IX2094.2
201300             MOVE  "00"  TO CORRECT-A                             IX2094.2
201400             MOVE   FILESTATUS (1)  TO COMPUTED-A.                IX2094.2
201500 START-WRITE-GF-28.                                               IX2094.2
201600     PERFORM  PRINT-DETAIL.                                       IX2094.2
201700 START-TEST-GF-29.                                                IX2094.2
201800     MOVE             "FILE STATUS START:??"   TO FEATURE.        IX2094.2
201900     MOVE "START-TEST-GF-29" TO PAR-NAME.                         IX2094.2
202000     IF      FILESTATUS (2)  EQUAL TO "**"                        IX2094.2
202100             PERFORM DE-LETE                                      IX2094.2
202200             GO TO  START-WRITE-GF-29.                            IX2094.2
202300*                                                                         
202400*                                                                         
202500*                                                                         
202600*                                                                         
202700*                                                                         
202800     IF      FILESTATUS (2)  EQUAL TO "23"                        IX2094.2
202900             PERFORM  PASS                                        IX2094.2
203000             ELSE  PERFORM  FAIL                                  IX2094.2
203100     MOVE "IX-4; 1.3.4 (3) C ; SEE START-TEST-GF-20   " TO RE-MARKIX2094.2
203200             MOVE    "23"  TO CORRECT-A                           IX2094.2
203300             MOVE   FILESTATUS (2)  TO COMPUTED-A.                IX2094.2
203400 START-WRITE-GF-29.                                               IX2094.2
203500     PERFORM  PRINT-DETAIL.                                       IX2094.2
203600 START-TEST-GF-30.                                                IX2094.2
203700     MOVE             "FILE STATUS START:??"   TO FEATURE.        IX2094.2
203800     MOVE "START-TEST-GF-30" TO PAR-NAME.                         IX2094.2
203900     IF      FILESTATUS (3)  EQUAL TO "**"                        IX2094.2
204000             PERFORM DE-LETE                                      IX2094.2
204100             GO TO  START-WRITE-GF-30.                            IX2094.2
204200*                                                                         
204300*                                                                         
204400*                                                                         
204500*                                                                         
204600*                                                                         
204700     IF      FILESTATUS (3)  EQUAL TO "23"                        IX2094.2
204800             PERFORM  PASS                                        IX2094.2
204900             ELSE  PERFORM  FAIL                                  IX2094.2
205000     MOVE "IX-4; 1.3.4 (3) C; SEE START-TEST-GF-21    " TO RE-MARKIX2094.2
205100             MOVE    "23"  TO CORRECT-A                           IX2094.2
205200             MOVE   FILESTATUS (3)  TO COMPUTED-A.                IX2094.2
205300 START-WRITE-GF-30.                                               IX2094.2
205400     PERFORM  PRINT-DETAIL.                                       IX2094.2
205500 START-TEST-GF-31.                                                IX2094.2
205600     MOVE             "FILE STATUS START:??"   TO FEATURE.        IX2094.2
205700     MOVE "START-TEST-GF-31" TO PAR-NAME.                         IX2094.2
205800     IF      FILESTATUS (4)  EQUAL TO "**"                        IX2094.2
205900             PERFORM DE-LETE                                      IX2094.2
206000             GO TO  START-WRITE-GF-31.                            IX2094.2
206100*                                                                         
206200*                                                                         
206300*                                                                         
206400*                                                                         
206500*                                                                         
206600     IF      FILESTATUS (4)  EQUAL TO "23"                        IX2094.2
206700             PERFORM  PASS                                        IX2094.2
206800             ELSE  PERFORM  FAIL                                  IX2094.2
206900     MOVE "IX-4; 1.3.4 (3) C; SEE START-TEST-GF-22    " TO RE-MARKIX2094.2
207000             MOVE    "23"  TO CORRECT-A                           IX2094.2
207100             MOVE   FILESTATUS (4)  TO COMPUTED-A.                IX2094.2
207200 START-WRITE-GF-31.                                               IX2094.2
207300     PERFORM  PRINT-DETAIL.                                       IX2094.2
207400 START-TEST-GF-32.                                                IX2094.2
207500     MOVE             "FILE STATUS START:??"   TO FEATURE.        IX2094.2
207600     MOVE "START-TEST-GF-32" TO PAR-NAME.                         IX2094.2
207700     IF      FILESTATUS (5)  EQUAL TO "**"                        IX2094.2
207800             PERFORM DE-LETE                                      IX2094.2
207900             GO TO  START-WRITE-GF-32.                            IX2094.2
208000*                                                                         
208100*                                                                         
208200*                                                                         
208300*                                                                         
208400*                                                                         
208500     IF      FILESTATUS (5)  EQUAL TO "00"                        IX2094.2
208600             PERFORM  PASS                                        IX2094.2
208700             ELSE  PERFORM  FAIL                                  IX2094.2
208800     MOVE "IX-3; 1.3.4 (1) A; SEE START-TEST-GF-23    " TO RE-MARKIX2094.2
208900             MOVE    "00"  TO CORRECT-A                           IX2094.2
209000             MOVE   FILESTATUS (5)  TO COMPUTED-A.                IX2094.2
209100 START-WRITE-GF-32.                                               IX2094.2
209200     PERFORM  PRINT-DETAIL.                                       IX2094.2
209300 START-TEST-GF-33.                                                IX2094.2
209400     MOVE             "FILE STATUS START:??"   TO FEATURE.        IX2094.2
209500     MOVE "START-TEST-GF-33" TO PAR-NAME.                         IX2094.2
209600     IF      FILESTATUS (6)  EQUAL TO "**"                        IX2094.2
209700             PERFORM DE-LETE                                      IX2094.2
209800             GO TO  START-WRITE-GF-33.                            IX2094.2
209900*                                                                         
210000*                                                                         
210100*                                                                         
210200*                                                                         
210300*                                                                         
210400     IF      FILESTATUS (6)  EQUAL TO "00"                        IX2094.2
210500             PERFORM  PASS                                        IX2094.2
210600             ELSE  PERFORM  FAIL                                  IX2094.2
210700     MOVE "IX-3; 1.3.4 (1) A; SEE START-TEST-GF-24    " TO RE-MARKIX2094.2
210800             MOVE   "00"  TO CORRECT-A                            IX2094.2
210900             MOVE   FILESTATUS (6)  TO COMPUTED-A.                IX2094.2
211000 START-WRITE-GF-33.                                               IX2094.2
211100     PERFORM  PRINT-DETAIL.                                       IX2094.2
211200 START-TEST-GF-34.                                                IX2094.2
211300     MOVE             "FILE STATUS START:??"   TO FEATURE.        IX2094.2
211400     MOVE "START-TEST-GF-34" TO PAR-NAME.                         IX2094.2
211500     IF      FILESTATUS (7)  EQUAL TO "**"                        IX2094.2
211600             PERFORM DE-LETE                                      IX2094.2
211700             GO TO  START-WRITE-GF-34.                            IX2094.2
211800*                                                                         
211900*                                                                         
212000*                                                                         
212100*                                                                         
212200*                                                                         
212300     IF      FILESTATUS (7)  EQUAL TO "23"                        IX2094.2
212400             PERFORM  PASS                                        IX2094.2
212500             ELSE  PERFORM  FAIL                                  IX2094.2
212600     MOVE "IX-4; 1.3.4 (3) C; SEE START-TEST-GF-25    " TO RE-MARKIX2094.2
212700             MOVE    "23"  TO CORRECT-A                           IX2094.2
212800             MOVE   FILESTATUS (7)  TO COMPUTED-A.                IX2094.2
212900 START-WRITE-GF-34.                                               IX2094.2
213000     PERFORM  PRINT-DETAIL.                                       IX2094.2
213100 START-TEST-GF-35.                                                IX2094.2
213200     MOVE             "FILE STATUS START:??"   TO FEATURE.        IX2094.2
213300     MOVE "START-TEST-GF-35" TO PAR-NAME.                         IX2094.2
213400     IF      FILESTATUS (8)  EQUAL TO "**"                        IX2094.2
213500             PERFORM DE-LETE                                      IX2094.2
213600             GO TO  START-WRITE-GF-35.                            IX2094.2
213700*                                                                         
213800*                                                                         
213900*                                                                         
214000*                                                                         
214100*                                                                         
214200     IF      FILESTATUS (8)  EQUAL TO "23"                        IX2094.2
214300             PERFORM  PASS                                        IX2094.2
214400             ELSE  PERFORM  FAIL                                  IX2094.2
214500     MOVE "IX-4; 1.3.4 (3) C; SEE START-TEST-GF-26    " TO RE-MARKIX2094.2
214600             MOVE    "23"  TO CORRECT-A                           IX2094.2
214700             MOVE   FILESTATUS (8)  TO COMPUTED-A.                IX2094.2
214800 START-WRITE-GF-35.                                               IX2094.2
214900     PERFORM  PRINT-DETAIL.                                       IX2094.2
215000 START-TEST-GF-36.                                                IX2094.2
215100     MOVE             "FILE STATUS START:??"   TO FEATURE.        IX2094.2
215200     MOVE "START-TEST-GF-36" TO PAR-NAME.                         IX2094.2
215300     IF      FILESTATUS (9)  EQUAL TO "**"                        IX2094.2
215400             PERFORM DE-LETE                                      IX2094.2
215500             GO TO  START-WRITE-GF-36.                            IX2094.2
215600*                                                                         
215700*                                                                         
215800*                                                                         
215900*                                                                         
216000*                                                                         
216100     IF      FILESTATUS (9)  EQUAL TO "23"                        IX2094.2
216200             PERFORM PASS                                         IX2094.2
216300     ELSE    PERFORM FAIL                                         IX2094.2
216400     MOVE "IX-4; 1.3.4 (3) C; SEE START-TEST-GF-27    " TO RE-MARKIX2094.2
216500             MOVE  "23"  TO CORRECT-A                             IX2094.2
216600             MOVE   FILESTATUS (9)  TO COMPUTED-A.                IX2094.2
216700 START-WRITE-GF-36.                                               IX2094.2
216800     PERFORM  PRINT-DETAIL.                                       IX2094.2
216900                                                                  IX2094.2
217000                                                                  IX2094.2
217100 START-INIT-GF-37-ETC.                                            IX2094.2
217200     OPEN    INPUT  IX-FS1.                                       IX2094.2
217300     MOVE    "STRT EQ ALTKY W/DUP"  TO FEATURE.                   IX2094.2
217400     MOVE    "START-TEST-GF-37" TO PAR-NAME.                      IX2094.2
217500     MOVE    "********************" TO HOLD-FILESTATUS-RECORD.    IX2094.2
217600*                                                                         
217700*                                                                         
217800*                                                                         
217900*                                                                         
218000*                                                                         
218100*                                                                         
218200*                                                                         
218300*                                                                         
218400*                                                                         
218500*                                                                         
218600*                                                                         
218700*                                                                         
218800*                                                                         
218900*                                                                         
219000*                                                                         
219100*                                                                         
219200*                                                                         
219300*                                                                         
219400*                                                                         
219500*                                                                         
219600*                                                                         
219700*                                                                         
219800*                                                                         
219900*                                                                         
220000*                                                                         
220100*                                                                         
220200*                                                                         
220300*                                                                         
220400*                                                                         
220500*                                                                         
220600*                                                                         
220700*                                                                         
220800 START-INIT-GF-37.                                                IX2094.2
220900     MOVE "START-TEST-GF-37" TO PAR-NAME.                         IX2094.2
221000     PERFORM START-INITIALIZE-RECORD.                             IX2094.2
221100     IF      INIT-FLAG NOT EQUAL TO ZERO                          IX2094.2
221200             MOVE   "**"  TO FILESTATUS (1)                       IX2094.2
221300             MOVE    "TEST IMPROPERLY INITIALIZED"  TO RE-MARK    IX2094.2
221400             GO TO START-DELETE-GF-37.                            IX2094.2
221500     MOVE    "CCCCCDDDDD022" TO FS1-RECKEY-1-13.                  IX2094.2
221600     MOVE    "EEEEEFFFFF022ALTKEY1"  TO FS1-ALTKEY1-1-20.         IX2094.2
221700     MOVE    "VVVVVVVVUU376ALTKEY2"  TO FS1-ALTKEY2-1-20.         IX2094.2
221800     MOVE    WRK-FS1-RECKEY TO IX-REC-KEY-AREA.                   IX2094.2
221900     MOVE    WRK-FS1-ALTKEY1 TO IX-ALT-KEY1-AREA.                 IX2094.2
222000     MOVE    WRK-FS1-ALTKEY2 TO IX-ALT-KEY2-AREA.                 IX2094.2
222100 START-TEST-GF-37.                                                IX2094.2
222200*                                                                         
222300*                                                                         
222400*                                                                         
222500*                                                                         
222600*                                                                         
222700     START  IX-FS1                                                IX2094.2
222800                   KEY IS EQUAL TO IX-FS1-ALTKEY2                 IX2094.2
222900          INVALID KEY   MOVE FS1-STATUS TO FILESTATUS (1)         IX2094.2
223000                     MOVE  "INVALID KEY ON START" TO COMPUTED-A   IX2094.2
223100                        GO TO START-FAIL-GF-37.                   IX2094.2
223200     MOVE    FS1-STATUS TO FILESTATUS (1).                        IX2094.2
223300     READ    IX-FS1  AT END                                       IX2094.2
223400                     MOVE  "AT END ON READ" TO COMPUTED-A         IX2094.2
223500                     GO TO START-FAIL-GF-37.                      IX2094.2
223600     MOVE    IX-FS1R1-F-G-240  TO  FILE-RECORD-INFO (1).          IX2094.2
223700     IF      XRECORD-NUMBER (1) EQUAL TO 12                       IX2094.2
223800             PERFORM PASS                                         IX2094.2
223900             MOVE SPACE TO RE-MARK                                IX2094.2
224000             GO TO START-WRITE-GF-37.                             IX2094.2
224100     MOVE    12 TO RECNO.                                         IX2094.2
224200     PERFORM DISPLAY-ALTERNATE-KEY2.                              IX2094.2
224300     MOVE     XRECORD-NUMBER (1)  TO COMPUTED-18V0.               IX2094.2
224400 START-FAIL-GF-37.                                                IX2094.2
224500     PERFORM FAIL.                                                IX2094.2
224600     MOVE    12   TO CORRECT-18V0.                                IX2094.2
224700     MOVE "IX-36; 4.7.2 ETC.                          " TO RE-MARKIX2094.2
224800     GO TO   START-WRITE-GF-37.                                   IX2094.2
224900 START-DELETE-GF-37.                                              IX2094.2
225000     PERFORM DE-LETE.                                             IX2094.2
225100 START-WRITE-GF-37.                                               IX2094.2
225200     PERFORM PRINT-DETAIL.                                        IX2094.2
225300 START-INIT-GF-38.                                                IX2094.2
225400     MOVE "START-TEST-GF-38" TO PAR-NAME.                         IX2094.2
225500     PERFORM START-INITIALIZE-RECORD.                             IX2094.2
225600     IF      INIT-FLAG NOT EQUAL TO ZERO                          IX2094.2
225700             MOVE    "TEST IMPROPERLY INITIALIZED"  TO RE-MARK    IX2094.2
225800             MOVE   "**"  TO FILESTATUS (2)                       IX2094.2
225900             GO TO   START-DELETE-GF-38.                          IX2094.2
226000     MOVE    "EEEEEEEEFF064" TO FS1-RECKEY-1-13.                  IX2094.2
226100     MOVE    "HHHHHHHIII066ALTKEY1" TO FS1-ALTKEY1-1-20.          IX2094.2
226200     MOVE    "TTTTTTTSSS335ALTKEY2" TO FS1-ALTKEY2-1-20.          IX2094.2
226300     MOVE    WRK-FS1-RECKEY   TO IX-REC-KEY-AREA.                 IX2094.2
226400     MOVE    WRK-FS1-ALTKEY1  TO IX-ALT-KEY1-AREA.                IX2094.2
226500     MOVE    WRK-FS1-ALTKEY2  TO IX-ALT-KEY2-AREA.                IX2094.2
226600 START-TEST-GF-38.                                                IX2094.2
226700*                                                                         
226800*                                                                         
226900*                                                                         
227000*                                                                         
227100*                                                                         
227200*                                                                         
227300*                                                                         
227400     START  IX-FS1                                                IX2094.2
227500                   KEY IS EQUAL TO IX-FS1-ALTKEY2                 IX2094.2
227600          INVALID KEY    MOVE  FS1-STATUS TO FILESTATUS (2)       IX2094.2
227700                         GO TO START-PASS-GF-38.                  IX2094.2
227800     MOVE    FS1-STATUS TO FILESTATUS (2).                        IX2094.2
227900     READ    IX-FS1 AT END                                        IX2094.2
228000                     MOVE  "AT END PATH TAKEN ON READ" TO RE-MARK.IX2094.2
228100     MOVE    IX-FS1R1-F-G-240 TO FILE-RECORD-INFO (1).            IX2094.2
228200     MOVE "IX-36; 4.7.2 ETC.                          " TO RE-MARKIX2094.2
228300     PERFORM FAIL.                                                IX2094.2
228400     MOVE    ALTERNATE-KEY2 (1) TO COMPUTED-A.                    IX2094.2
228500     MOVE    "INVALID KEY" TO CORRECT-A.                          IX2094.2
228600     GO TO   START-WRITE-GF-38.                                   IX2094.2
228700 START-PASS-GF-38.                                                IX2094.2
228800     PERFORM  PASS.                                               IX2094.2
228900     GO TO   START-WRITE-GF-38.                                   IX2094.2
229000 START-DELETE-GF-38.                                              IX2094.2
229100     PERFORM DE-LETE.                                             IX2094.2
229200 START-WRITE-GF-38.                                               IX2094.2
229300     PERFORM PRINT-DETAIL.                                        IX2094.2
229400 START-INIT-GF-39.                                                IX2094.2
229500     MOVE "START-TEST-GF-39" TO PAR-NAME.                         IX2094.2
229600     PERFORM START-INITIALIZE-RECORD.                             IX2094.2
229700     IF      INIT-FLAG NOT EQUAL TO ZERO                          IX2094.2
229800             MOVE    "TEST IMPROPERLY INITIALIZED"  TO RE-MARK    IX2094.2
229900             MOVE   "**"  TO FILESTATUS (3)                       IX2094.2
230000             GO TO   START-DELETE-GF-39.                          IX2094.2
230100     MOVE    "UUUUUUUUUU400" TO FS1-RECKEY-1-13.                  IX2094.2
230200     MOVE    "YYYYYYYYYY400ALTKEY1" TO FS1-ALTKEY1-1-20.          IX2094.2
230300     MOVE    "DDDDDDDDDC000ALTKEY2" TO FS1-ALTKEY2-1-20.          IX2094.2
230400     MOVE    WRK-FS1-RECKEY   TO IX-REC-KEY-AREA.                 IX2094.2
230500     MOVE    WRK-FS1-ALTKEY1  TO IX-ALT-KEY1-AREA.                IX2094.2
230600     MOVE    WRK-FS1-ALTKEY2  TO IX-ALT-KEY2-AREA.                IX2094.2
230700 START-TEST-GF-39.                                                IX2094.2
230800*                                                                         
230900*                                                                         
231000*                                                                         
231100*                                                                         
231200*                                                                         
231300*                                                                         
231400*                                                                         
231500     START  IX-FS1                                                IX2094.2
231600                   KEY IS EQUAL TO IX-FS1-ALTKEY2                 IX2094.2
231700          INVALID KEY    MOVE FS1-STATUS TO FILESTATUS (3)        IX2094.2
231800                     GO TO START-PASS-GF-39.                      IX2094.2
231900     MOVE    FS1-STATUS TO FILESTATUS (3).                        IX2094.2
232000     READ    IX-FS1  AT END                                       IX2094.2
232100                     MOVE  "AT END PATH TAKEN ON READ" TO RE-MARK.IX2094.2
232200     MOVE    IX-FS1R1-F-G-240 TO FILE-RECORD-INFO (1).            IX2094.2
232300     MOVE "IX-36; 4.7.2 ETC.                          " TO RE-MARKIX2094.2
232400     PERFORM FAIL.                                                IX2094.2
232500     MOVE    ALTERNATE-KEY2 (1) TO COMPUTED-A.                    IX2094.2
232600     MOVE    "INVALID KEY"  TO CORRECT-A.                         IX2094.2
232700     GO TO START-WRITE-GF-39.                                     IX2094.2
232800 START-PASS-GF-39.                                                IX2094.2
232900     PERFORM PASS.                                                IX2094.2
233000     GO TO   START-WRITE-GF-39.                                   IX2094.2
233100 START-DELETE-GF-39.                                              IX2094.2
233200     PERFORM DE-LETE.                                             IX2094.2
233300 START-WRITE-GF-39.                                               IX2094.2
233400     PERFORM PRINT-DETAIL.                                        IX2094.2
233500 START-INIT-GF-40.                                                IX2094.2
233600     MOVE "START-TEST-GF-40" TO PAR-NAME.                         IX2094.2
233700     PERFORM START-INITIALIZE-RECORD.                             IX2094.2
233800     IF      INIT-FLAG NOT EQUAL TO ZERO                          IX2094.2
233900             MOVE    "TEST IMPROPERLY INITIALIZED"  TO RE-MARK    IX2094.2
234000             MOVE   "**"  TO FILESTATUS (4)                       IX2094.2
234100             GO TO   START-DELETE-GF-40.                          IX2094.2
234200     MOVE    "BBBBBBBBBC002"  TO FS1-RECKEY-1-13.                 IX2094.2
234300     MOVE    "YYYYYYYYYY400ALTKEY1"  TO FS1-ALTKEY1-1-20.         IX2094.2
234400     MOVE    "WWWWWWWWWV399ALTKEY2"  TO FS1-ALTKEY2-1-20.         IX2094.2
234500     MOVE    WRK-FS1-RECKEY   TO IX-REC-KEY-AREA.                 IX2094.2
234600     MOVE    WRK-FS1-ALTKEY1  TO IX-ALT-KEY1-AREA.                IX2094.2
234700     MOVE    WRK-FS1-ALTKEY2  TO IX-ALT-KEY2-AREA.                IX2094.2
234800 START-TEST-GF-40.                                                IX2094.2
234900*                                                                         
235000*                                                                         
235100*                                                                         
235200*                                                                         
235300*                                                                         
235400*                                                                         
235500*                                                                         
235600*                                                                         
235700*                                                                         
235800     START  IX-FS1                                                IX2094.2
235900                   KEY IS EQUAL TO IX-FS1-ALTKEY2                 IX2094.2
236000          INVALID KEY    MOVE  FS1-STATUS TO FILESTATUS (4)       IX2094.2
236100                         GO TO START-PASS-GF-40.                  IX2094.2
236200     MOVE    FS1-STATUS TO FILESTATUS (4).                        IX2094.2
236300     READ    IX-FS1 AT END                                        IX2094.2
236400                     MOVE  "AT END PATH TAKEN ON READ" TO RE-MARK.IX2094.2
236500     MOVE    IX-FS1R1-F-G-240 TO FILE-RECORD-INFO (1).            IX2094.2
236600     MOVE "IX-36; 4.7.2 ETC.                          " TO RE-MARKIX2094.2
236700     PERFORM FAIL.                                                IX2094.2
236800     MOVE    ALTERNATE-KEY2 (1) TO COMPUTED-A.                    IX2094.2
236900     MOVE    "INVALID KEY" TO CORRECT-A.                          IX2094.2
237000     GO TO   START-WRITE-GF-40.                                   IX2094.2
237100 START-PASS-GF-40.                                                IX2094.2
237200     PERFORM  PASS.                                               IX2094.2
237300     GO TO   START-WRITE-GF-40.                                   IX2094.2
237400 START-DELETE-GF-40.                                              IX2094.2
237500     PERFORM DE-LETE.                                             IX2094.2
237600 START-WRITE-GF-40.                                               IX2094.2
237700     PERFORM PRINT-DETAIL.                                        IX2094.2
237800 START-INIT-GF-41.                                                IX2094.2
237900     MOVE "START-TEST-GF-41" TO PAR-NAME.                         IX2094.2
238000     PERFORM START-INITIALIZE-RECORD.                             IX2094.2
238100     IF      INIT-FLAG NOT EQUAL TO ZERO                          IX2094.2
238200             MOVE    "TEST IMPROPERLY INITIALIZED"  TO RE-MARK    IX2094.2
238300             MOVE   "**"  TO FILESTATUS (5)                       IX2094.2
238400             GO TO   START-DELETE-GF-41.                          IX2094.2
238500     MOVE    "CCCCCCCCCC038"  TO FS1-RECKEY-1-13.                 IX2094.2
238600     MOVE    "IIIIIIIIJJ083ALTKEY1" TO FS1-ALTKEY1-1-20.          IX2094.2
238700     MOVE    "VUUUUVVVVV362ALTKEY2"  TO FS1-ALTKEY2-1-20.         IX2094.2
238800     MOVE    WRK-FS1-RECKEY   TO IX-REC-KEY-AREA.                 IX2094.2
238900     MOVE    WRK-FS1-ALTKEY1  TO IX-ALT-KEY1-AREA.                IX2094.2
239000     MOVE    WRK-FS1-ALTKEY2  TO IX-ALT-KEY2-AREA.                IX2094.2
239100 START-TEST-GF-41.                                                IX2094.2
239200*                                                                         
239300*                                                                         
239400*                                                                         
239500*                                                                         
239600*                                                                         
239700*                                                                         
239800*                                                                         
239900*                                                                         
240000*                                                                         
240100*                                                                         
240200*                                                                         
240300*                                                                         
240400*                                                                         
240500*                                                                         
240600*                                                                         
240700     START  IX-FS1                                                IX2094.2
240800                   KEY IS EQUAL TO IX-FS1-ALTKEY2-1-5             IX2094.2
240900          INVALID KEY    MOVE  FS1-STATUS TO FILESTATUS (5)       IX2094.2
241000                     MOVE  "INVALID KEY ON START" TO COMPUTED-A   IX2094.2
241100                     GO TO START-FAIL-GF-41.                      IX2094.2
241200     MOVE    FS1-STATUS TO FILESTATUS (5).                        IX2094.2
241300     READ    IX-FS1  AT END                                       IX2094.2
241400                     MOVE  "AT END ON READ" TO COMPUTED-A         IX2094.2
241500                     GO TO  START-FAIL-GF-41.                     IX2094.2
241600     MOVE    IX-FS1R1-F-G-240 TO FILE-RECORD-INFO (1).            IX2094.2
241700     IF      XRECORD-NUMBER (1) EQUAL TO 19                       IX2094.2
241800             PERFORM  PASS                                        IX2094.2
241900             GO TO START-WRITE-GF-41.                             IX2094.2
242000     MOVE    19  TO RECNO.                                        IX2094.2
242100     PERFORM DISPLAY-ALTERNATE-KEY2.                              IX2094.2
242200     MOVE    XRECORD-NUMBER (1)  TO COMPUTED-18V0.                IX2094.2
242300 START-FAIL-GF-41.                                                IX2094.2
242400     MOVE "IX-36; 4.7.2 ETC.                          " TO RE-MARKIX2094.2
242500     PERFORM  FAIL.                                               IX2094.2
242600     MOVE    19  TO CORRECT-18V0.                                 IX2094.2
242700     GO TO   START-WRITE-GF-41.                                   IX2094.2
242800 START-DELETE-GF-41.                                              IX2094.2
242900     PERFORM DE-LETE.                                             IX2094.2
243000 START-WRITE-GF-41.                                               IX2094.2
243100     PERFORM PRINT-DETAIL.                                        IX2094.2
243200 START-INIT-GF-42.                                                IX2094.2
243300     MOVE "START-TEST-GF-42" TO PAR-NAME.                         IX2094.2
243400     PERFORM START-INITIALIZE-RECORD.                             IX2094.2
243500     IF      INIT-FLAG NOT EQUAL TO ZERO                          IX2094.2
243600             MOVE    "TEST IMPROPERLY INITIALIZED"  TO RE-MARK    IX2094.2
243700             MOVE   "**"  TO FILESTATUS (6)                       IX2094.2
243800             GO TO   START-DELETE-GF-42.                          IX2094.2
243900     MOVE    "TTTTTTTTTT390" TO FS1-RECKEY-1-13.                  IX2094.2
244000     MOVE    "XYYYYYYYYY399ALTKEY1"  TO FS1-ALTKEY1-1-20.         IX2094.2
244100     MOVE    "EEEEEDDDDD010ALTKEY2" TO FS1-ALTKEY2-1-20.          IX2094.2
244200     MOVE    WRK-FS1-RECKEY   TO IX-REC-KEY-AREA.                 IX2094.2
244300     MOVE    WRK-FS1-ALTKEY1  TO IX-ALT-KEY1-AREA.                IX2094.2
244400     MOVE    WRK-FS1-ALTKEY2  TO IX-ALT-KEY2-AREA.                IX2094.2
244500 START-TEST-GF-42.                                                IX2094.2
244600*                                                                         
244700*                                                                         
244800*                                                                         
244900*                                                                         
245000*                                                                         
245100*                                                                         
245200*                                                                         
245300*                                                                         
245400*                                                                         
245500*                                                                         
245600*                                                                         
245700*                                                                         
245800*                                                                         
245900*                                                                         
246000*                                                                         
246100*                                                                         
246200*                                                                         
246300*                                                                         
246400*                                                                         
246500*                                                                         
246600*                                                                         
246700     START  IX-FS1                                                IX2094.2
246800                   KEY IS EQUAL TO IX-FS1-ALTKEY2-1-5             IX2094.2
246900          INVALID KEY    MOVE  FS1-STATUS TO FILESTATUS (6)       IX2094.2
247000                     MOVE  "INVALID KEY ON START"  TO COMPUTED-A  IX2094.2
247100                     GO TO START-FAIL-GF-42.                      IX2094.2
247200     MOVE    FS1-STATUS TO FILESTATUS (6).                        IX2094.2
247300     READ    IX-FS1  AT END                                       IX2094.2
247400                     MOVE "AT END ON READ" TO COMPUTED-A          IX2094.2
247500                     GO TO START-FAIL-GF-42.                      IX2094.2
247600     MOVE    IX-FS1R1-F-G-240 TO FILE-RECORD-INFO (1).            IX2094.2
247700     IF      XRECORD-NUMBER (1) EQUAL TO 195                      IX2094.2
247800             PERFORM  PASS                                        IX2094.2
247900             GO TO START-WRITE-GF-42.                             IX2094.2
248000     MOVE    65  TO RECNO.                                        IX2094.2
248100     PERFORM DISPLAY-ALTERNATE-KEY2.                              IX2094.2
248200     MOVE    XRECORD-NUMBER (1)  TO COMPUTED-18V0.                IX2094.2
248300 START-FAIL-GF-42.                                                IX2094.2
248400     MOVE "IX-36; 4.7.2 ETC.                          " TO RE-MARKIX2094.2
248500     PERFORM  FAIL.                                               IX2094.2
248600     MOVE    195   TO CORRECT-18V0.                               IX2094.2
248700     GO TO   START-WRITE-GF-42.                                   IX2094.2
248800 START-DELETE-GF-42.                                              IX2094.2
248900     PERFORM DE-LETE.                                             IX2094.2
249000 START-WRITE-GF-42.                                               IX2094.2
249100     PERFORM PRINT-DETAIL.                                        IX2094.2
249200 START-INIT-GF-43.                                                IX2094.2
249300     MOVE "START-TEST-GF-43" TO PAR-NAME.                         IX2094.2
249400     PERFORM START-INITIALIZE-RECORD.                             IX2094.2
249500     IF      INIT-FLAG NOT EQUAL TO ZERO                          IX2094.2
249600             MOVE    "TEST IMPROPERLY INITIALIZED"  TO RE-MARK    IX2094.2
249700             MOVE   "**"  TO FILESTATUS (7)                       IX2094.2
249800             GO TO   START-DELETE-GF-43.                          IX2094.2
249900     MOVE    "CCCCCCCCCD022"  TO FS1-RECKEY-1-13.                 IX2094.2
250000     MOVE    "FFFFFFFFFG022ALTKEY1"  TO FS1-ALTKEY1-1-20.         IX2094.2
250100     MOVE    "380ALTKEY2          "  TO FS1-ALTKEY2-1-20.         IX2094.2
250200     MOVE    WRK-FS1-RECKEY   TO IX-REC-KEY-AREA.                 IX2094.2
250300     MOVE    WRK-FS1-ALTKEY1  TO IX-ALT-KEY1-AREA.                IX2094.2
250400     MOVE    WRK-FS1-ALTKEY2  TO IX-ALT-KEY2-AREA.                IX2094.2
250500 START-TEST-GF-43.                                                IX2094.2
250600*                                                                         
250700*                                                                         
250800*                                                                         
250900*                                                                         
251000*                                                                         
251100*                                                                         
251200*                                                                         
251300*                                                                         
251400*                                                                         
251500*                                                                         
251600*                                                                         
251700*                                                                         
251800*                                                                         
251900*                                                                         
252000*                                                                         
252100*                                                                         
252200     START  IX-FS1                                                IX2094.2
252300                   KEY IS EQUAL TO IX-FS1-ALTKEY2-1-10            IX2094.2
252400          INVALID KEY    MOVE  FS1-STATUS TO FILESTATUS (7)       IX2094.2
252500                     GO TO START-PASS-GF-43.                      IX2094.2
252600     MOVE    FS1-STATUS TO FILESTATUS (7).                        IX2094.2
252700     READ    IX-FS1  AT END                                       IX2094.2
252800                     MOVE  "AT END PATH TAKEN ON READ" TO RE-MARK.IX2094.2
252900     MOVE    IX-FS1R1-F-G-240 TO FILE-RECORD-INFO (1).            IX2094.2
253000     MOVE "IX-36; 4.7.2 ETC.                          " TO RE-MARKIX2094.2
253100     PERFORM FAIL.                                                IX2094.2
253200     MOVE    ALTERNATE-KEY2 (1) TO COMPUTED-A.                    IX2094.2
253300     MOVE    "INVALID KEY" TO CORRECT-A.                          IX2094.2
253400     GO TO   START-WRITE-GF-43.                                   IX2094.2
253500 START-PASS-GF-43.                                                IX2094.2
253600     PERFORM PASS.                                                IX2094.2
253700     GO TO   START-WRITE-GF-43.                                   IX2094.2
253800 START-DELETE-GF-43.                                              IX2094.2
253900     PERFORM DE-LETE.                                             IX2094.2
254000 START-WRITE-GF-43.                                               IX2094.2
254100     PERFORM PRINT-DETAIL.                                        IX2094.2
254200 START-INIT-GF-44.                                                IX2094.2
254300     MOVE "START-TEST-GF-44" TO PAR-NAME.                         IX2094.2
254400     PERFORM START-INITIALIZE-RECORD.                             IX2094.2
254500     IF      INIT-FLAG NOT EQUAL TO ZERO                          IX2094.2
254600             MOVE    "TEST IMPROPERLY INITIALIZED"  TO RE-MARK    IX2094.2
254700             MOVE   "**"  TO FILESTATUS (8)                       IX2094.2
254800             GO TO   START-DELETE-GF-44.                          IX2094.2
254900     MOVE    "UUUUUUUUUU400"  TO FS1-RECKEY-1-13.                 IX2094.2
255000     MOVE    "YYYYYYYYYY400ALTKEY1"  TO FS1-ALTKEY1-1-20.         IX2094.2
255100     MOVE    "DDDDDDDDDC000ALTKEY2"  TO FS1-ALTKEY2-1-20.         IX2094.2
255200     MOVE    WRK-FS1-RECKEY   TO IX-REC-KEY-AREA.                 IX2094.2
255300     MOVE    WRK-FS1-ALTKEY1  TO IX-ALT-KEY1-AREA.                IX2094.2
255400     MOVE    WRK-FS1-ALTKEY2  TO IX-ALT-KEY2-AREA.                IX2094.2
255500 START-TEST-GF-44.                                                IX2094.2
255600*                                                                         
255700*                                                                         
255800*                                                                         
255900*                                                                         
256000*                                                                         
256100*                                                                         
256200*                                                                         
256300*                                                                         
256400*                                                                         
256500*                                                                         
256600*                                                                         
256700*                                                                         
256800*                                                                         
256900     START  IX-FS1                                                IX2094.2
257000                   KEY IS EQUAL TO IX-FS1-ALTKEY2-1-10            IX2094.2
257100          INVALID KEY    MOVE  FS1-STATUS TO FILESTATUS (8)       IX2094.2
257200                     GO TO START-PASS-GF-44.                      IX2094.2
257300     MOVE    FS1-STATUS TO FILESTATUS (8).                        IX2094.2
257400     READ    IX-FS1  AT END                                       IX2094.2
257500                     MOVE  "AT END PATH TAKEN ON READ" TO RE-MARK.IX2094.2
257600     MOVE    IX-FS1R1-F-G-240 TO FILE-RECORD-INFO (1).            IX2094.2
257700     MOVE "IX-36; 4.7.2 ETC.                          " TO RE-MARKIX2094.2
257800     PERFORM FAIL.                                                IX2094.2
257900     MOVE    ALTERNATE-KEY2 (1) TO COMPUTED-A.                    IX2094.2
258000     MOVE     "INVALID KEY" TO CORRECT-A.                         IX2094.2
258100     GO TO   START-WRITE-GF-44.                                   IX2094.2
258200 START-PASS-GF-44.                                                IX2094.2
258300     PERFORM PASS.                                                IX2094.2
258400     GO TO   START-WRITE-GF-44.                                   IX2094.2
258500 START-DELETE-GF-44.                                              IX2094.2
258600     PERFORM DE-LETE.                                             IX2094.2
258700 START-WRITE-GF-44.                                               IX2094.2
258800     PERFORM PRINT-DETAIL.                                        IX2094.2
258900 START-INIT-GF-45.                                                IX2094.2
259000     MOVE "START-TEST-GF-45" TO PAR-NAME.                         IX2094.2
259100     PERFORM START-INITIALIZE-RECORD.                             IX2094.2
259200     IF      INIT-FLAG NOT EQUAL TO ZERO                          IX2094.2
259300             MOVE    "TEST IMPROPERLY INITIALIZED"  TO RE-MARK    IX2094.2
259400             MOVE   "**"  TO FILESTATUS (9)                       IX2094.2
259500             GO TO   START-DELETE-GF-45.                          IX2094.2
259600     MOVE    "UUUUUUUUUU400"  TO FS1-RECKEY-1-13.                 IX2094.2
259700     MOVE    "YYYYYYYYYY400ALTKEY1"  TO FS1-ALTKEY1-1-20.         IX2094.2
259800     MOVE    "WWWWWWWWWW400ALTKEY2"  TO FS1-ALTKEY2-1-20.         IX2094.2
259900     MOVE    WRK-FS1-ALTKEY1  TO IX-ALT-KEY1-AREA.                IX2094.2
260000     MOVE    WRK-FS1-ALTKEY1  TO IX-ALT-KEY1-AREA.                IX2094.2
260100     MOVE    WRK-FS1-ALTKEY2  TO IX-ALT-KEY2-AREA.                IX2094.2
260200 START-TEST-GF-45.                                                IX2094.2
260300*                                                                         
260400*                                                                         
260500*                                                                         
260600*                                                                         
260700*                                                                         
260800*                                                                         
260900*                                                                         
261000*                                                                         
261100*                                                                         
261200*                                                                         
261300*                                                                         
261400*                                                                         
261500*                                                                         
261600     START  IX-FS1                                                IX2094.2
261700                   KEY IS EQUAL TO IX-FS1-ALTKEY2-1-10            IX2094.2
261800          INVALID KEY    MOVE  FS1-STATUS TO FILESTATUS (9)       IX2094.2
261900                     GO TO START-PASS-GF-45.                      IX2094.2
262000     MOVE    FS1-STATUS TO FILESTATUS (9).                        IX2094.2
262100     READ    IX-FS1  AT END                                       IX2094.2
262200                     MOVE  "AT END PATH TAKEN ON READ" TO RE-MARK.IX2094.2
262300     MOVE    IX-FS1R1-F-G-240 TO FILE-RECORD-INFO (1).            IX2094.2
262400     MOVE "IX-36; 4.7.2 ETC.                          " TO RE-MARKIX2094.2
262500     PERFORM FAIL.                                                IX2094.2
262600     MOVE    XRECORD-KEY (1)  TO COMPUTED-A.                      IX2094.2
262700     MOVE     "INVALID KEY" TO CORRECT-A.                         IX2094.2
262800     GO TO   START-WRITE-GF-45.                                   IX2094.2
262900 START-PASS-GF-45.                                                IX2094.2
263000     PERFORM PASS.                                                IX2094.2
263100     GO TO   START-WRITE-GF-45.                                   IX2094.2
263200 START-DELETE-GF-45.                                              IX2094.2
263300     PERFORM DE-LETE.                                             IX2094.2
263400 START-WRITE-GF-45.                                               IX2094.2
263500     PERFORM PRINT-DETAIL.                                        IX2094.2
263600                                                                  IX2094.2
263700     CLOSE   IX-FS1.                                              IX2094.2
263800                                                                  IX2094.2
263900 START-INIT-FILE-STATUS-03.                                       IX2094.2
264000     MOVE             "FILE STATUS START:00"   TO FEATURE.        IX2094.2
264100     MOVE "START-TEST-GF-46" TO PAR-NAME.                         IX2094.2
264200*                                                                         
264300*                                                                         
264400*                                                                         
264500*                                                                         
264600 START-TEST-GF-46.                                                IX2094.2
264700     IF      FILESTATUS (1)  EQUAL TO "**"                        IX2094.2
264800             PERFORM DE-LETE                                      IX2094.2
264900             GO TO  START-WRITE-GF-46.                            IX2094.2
265000*                                                                         
265100*                                                                         
265200*                                                                         
265300*                                                                         
265400*                                                                         
265500     IF      FILESTATUS (1)  EQUAL TO "00"                        IX2094.2
265600             PERFORM PASS                                         IX2094.2
265700     ELSE                                                         IX2094.2
265800     MOVE "IX-3; 1.3.4 (1) A; SEE START-TEST-GF-37    " TO RE-MARKIX2094.2
265900             PERFORM  FAIL                                        IX2094.2
266000             MOVE  "00"  TO CORRECT-A                             IX2094.2
266100             MOVE   FILESTATUS (1)  TO COMPUTED-A.                IX2094.2
266200 START-WRITE-GF-46.                                               IX2094.2
266300     PERFORM  PRINT-DETAIL.                                       IX2094.2
266400 START-TEST-GF-47.                                                IX2094.2
266500     MOVE             "FILE STATUS START:??"   TO FEATURE.        IX2094.2
266600     MOVE "START-TEST-GF-47" TO PAR-NAME.                         IX2094.2
266700     IF      FILESTATUS (2)  EQUAL TO "**"                        IX2094.2
266800             PERFORM DE-LETE                                      IX2094.2
266900             GO TO  START-WRITE-GF-47.                            IX2094.2
267000*                                                                         
267100*                                                                         
267200*                                                                         
267300*                                                                         
267400*                                                                         
267500     IF      FILESTATUS (2)  EQUAL TO "23"                        IX2094.2
267600             PERFORM  PASS                                        IX2094.2
267700             ELSE  PERFORM  FAIL                                  IX2094.2
267800     MOVE "IX-4; 1.3.4 (3) C; SEE START-TEST-GF-38    " TO RE-MARKIX2094.2
267900             MOVE    "23"  TO CORRECT-A                           IX2094.2
268000             MOVE   FILESTATUS (2)  TO COMPUTED-A.                IX2094.2
268100 START-WRITE-GF-47.                                               IX2094.2
268200     PERFORM  PRINT-DETAIL.                                       IX2094.2
268300 START-TEST-GF-48.                                                IX2094.2
268400     MOVE             "FILE STATUS START:??"   TO FEATURE.        IX2094.2
268500     MOVE "START-TEST-GF-48" TO PAR-NAME.                         IX2094.2
268600     IF      FILESTATUS (3)  EQUAL TO "**"                        IX2094.2
268700             PERFORM DE-LETE                                      IX2094.2
268800             GO TO  START-WRITE-GF-48.                            IX2094.2
268900*                                                                         
269000*                                                                         
269100*                                                                         
269200*                                                                         
269300*                                                                         
269400     IF      FILESTATUS (3)  EQUAL TO "23"                        IX2094.2
269500             PERFORM  PASS                                        IX2094.2
269600     ELSE PERFORM FAIL                                            IX2094.2
269700     MOVE "IX-4; 1.3.4 (3) C; SEE START-TEST-GF-39    " TO RE-MARKIX2094.2
269800             MOVE    "23"  TO CORRECT-A                           IX2094.2
269900             MOVE  FILESTATUS (3) TO COMPUTED-A.                  IX2094.2
270000 START-WRITE-GF-48.                                               IX2094.2
270100     PERFORM  PRINT-DETAIL.                                       IX2094.2
270200 START-TEST-GF-49.                                                IX2094.2
270300     MOVE             "FILE STATUS START:??"   TO FEATURE.        IX2094.2
270400     MOVE "START-TEST-GF-49" TO PAR-NAME.                         IX2094.2
270500     IF      FILESTATUS (4)  EQUAL TO "**"                        IX2094.2
270600             PERFORM DE-LETE                                      IX2094.2
270700             GO TO  START-WRITE-GF-49.                            IX2094.2
270800*                                                                         
270900*                                                                         
271000*                                                                         
271100*                                                                         
271200*                                                                         
271300     IF      FILESTATUS (4)  EQUAL TO "23"                        IX2094.2
271400             PERFORM  PASS                                        IX2094.2
271500             ELSE  PERFORM  FAIL                                  IX2094.2
271600     MOVE "IX-4; 1.3.4 (3) C; SEE START-TEST-GF-40    " TO RE-MARKIX2094.2
271700             MOVE    "23"  TO CORRECT-A                           IX2094.2
271800             MOVE   FILESTATUS (4)  TO COMPUTED-A.                IX2094.2
271900 START-WRITE-GF-49.                                               IX2094.2
272000     PERFORM  PRINT-DETAIL.                                       IX2094.2
272100 START-TEST-GF-50.                                                IX2094.2
272200     MOVE             "FILE STATUS START:??"   TO FEATURE.        IX2094.2
272300     MOVE "START-TEST-GF-50" TO PAR-NAME.                         IX2094.2
272400     IF      FILESTATUS (5)  EQUAL TO "**"                        IX2094.2
272500             PERFORM DE-LETE                                      IX2094.2
272600             GO TO  START-WRITE-GF-50.                            IX2094.2
272700*                                                                         
272800*                                                                         
272900*                                                                         
273000*                                                                         
273100*                                                                         
273200     IF      FILESTATUS (5)  EQUAL TO "00"                        IX2094.2
273300             PERFORM  PASS                                        IX2094.2
273400     MOVE "IX-3; 1.3.4 (1) A; SEE START-TEST-GF-41    " TO RE-MARKIX2094.2
273500             ELSE  PERFORM  FAIL                                  IX2094.2
273600             MOVE    "00"  TO CORRECT-A                           IX2094.2
273700             MOVE   FILESTATUS (5)  TO COMPUTED-A.                IX2094.2
273800 START-WRITE-GF-50.                                               IX2094.2
273900     MOVE    "FROM START-TEST-??7.05" TO RE-MARK.                 IX2094.2
274000     PERFORM  PRINT-DETAIL.                                       IX2094.2
274100 START-TEST-GF-51.                                                IX2094.2
274200     MOVE             "FILE STATUS START:??"   TO FEATURE.        IX2094.2
274300     MOVE "START-TEST-GF-51" TO PAR-NAME.                         IX2094.2
274400     IF      FILESTATUS (6)  EQUAL TO "**"                        IX2094.2
274500             PERFORM DE-LETE                                      IX2094.2
274600             GO TO  START-WRITE-GF-51.                            IX2094.2
274700*                                                                         
274800*                                                                         
274900*                                                                         
275000*                                                                         
275100*                                                                         
275200     IF      FILESTATUS (6)  EQUAL TO "00"                        IX2094.2
275300             PERFORM  PASS                                        IX2094.2
275400             ELSE  PERFORM  FAIL                                  IX2094.2
275500     MOVE "IX-3; 1.3.4 (1) A; SEE START-TEST-GF-42    " TO RE-MARKIX2094.2
275600             MOVE   "00"  TO CORRECT-A                            IX2094.2
275700             MOVE   FILESTATUS (6)  TO COMPUTED-A.                IX2094.2
275800 START-WRITE-GF-51.                                               IX2094.2
275900     PERFORM  PRINT-DETAIL.                                       IX2094.2
276000 START-TEST-GF-52.                                                IX2094.2
276100     MOVE             "FILE STATUS START:??"   TO FEATURE.        IX2094.2
276200     MOVE "START-TEST-GF-52" TO PAR-NAME.                         IX2094.2
276300     IF      FILESTATUS (7)  EQUAL TO "**"                        IX2094.2
276400             PERFORM DE-LETE                                      IX2094.2
276500             GO TO  START-WRITE-GF-52.                            IX2094.2
276600*                                                                         
276700*                                                                         
276800*                                                                         
276900*                                                                         
277000*                                                                         
277100     IF      FILESTATUS (7)  EQUAL TO "23"                        IX2094.2
277200             PERFORM  PASS                                        IX2094.2
277300             ELSE  PERFORM  FAIL                                  IX2094.2
277400     MOVE "IX-4; 1.3.4 (3) C; SEE START-TEST-GF-43    " TO RE-MARKIX2094.2
277500             MOVE    "23"  TO CORRECT-A                           IX2094.2
277600             MOVE   FILESTATUS (7)  TO COMPUTED-A.                IX2094.2
277700 START-WRITE-GF-52.                                               IX2094.2
277800     PERFORM  PRINT-DETAIL.                                       IX2094.2
277900 START-TEST-GF-53.                                                IX2094.2
278000     MOVE             "FILE STATUS START:??"   TO FEATURE.        IX2094.2
278100     MOVE "START-TEST-GF-53" TO PAR-NAME.                         IX2094.2
278200     IF      FILESTATUS (8)  EQUAL TO "**"                        IX2094.2
278300             PERFORM DE-LETE                                      IX2094.2
278400             GO TO  START-WRITE-GF-53.                            IX2094.2
278500*                                                                         
278600*                                                                         
278700*                                                                         
278800*                                                                         
278900*                                                                         
279000     IF      FILESTATUS (8)  EQUAL TO "23"                        IX2094.2
279100             PERFORM  PASS                                        IX2094.2
279200             ELSE  PERFORM  FAIL                                  IX2094.2
279300     MOVE "IX-4; 1.3.4 (3) C; SEE START-TEST-GF-44    " TO RE-MARKIX2094.2
279400             MOVE    "23"  TO CORRECT-A                           IX2094.2
279500             MOVE   FILESTATUS (8)  TO COMPUTED-A.                IX2094.2
279600 START-WRITE-GF-53.                                               IX2094.2
279700     PERFORM  PRINT-DETAIL.                                       IX2094.2
279800 START-TEST-GF-54.                                                IX2094.2
279900     MOVE             "FILE STATUS START:??"   TO FEATURE.        IX2094.2
280000     MOVE "START-TEST-GF-54" TO PAR-NAME.                         IX2094.2
280100     IF      FILESTATUS (9)  EQUAL TO "**"                        IX2094.2
280200             PERFORM DE-LETE                                      IX2094.2
280300             GO TO  START-WRITE-GF-54.                            IX2094.2
280400*                                                                         
280500*                                                                         
280600*                                                                         
280700*                                                                         
280800*                                                                         
280900     IF      FILESTATUS (9)  EQUAL TO "23"                        IX2094.2
281000             PERFORM  PASS                                        IX2094.2
281100     ELSE    PERFORM FAIL                                         IX2094.2
281200     MOVE "IX-4; 1.3.4 (3) C; SEE START-TEST-GF-45    " TO RE-MARKIX2094.2
281300             MOVE  "23"  TO CORRECT-A                             IX2094.2
281400             MOVE   FILESTATUS (9)  TO COMPUTED-A.                IX2094.2
281500 START-WRITE-GF-54.                                               IX2094.2
281600     PERFORM  PRINT-DETAIL.                                       IX2094.2
281700*                                                                         
281800     GO TO   START-TEST-COMPLETE.                                 IX2094.2
281900*                                                                         
282000*                                                                         
282100 START-INITIALIZE-RECORD.                                         IX2094.2
282200     MOVE    "GGGGGGGGGG200" TO  FS1-RECKEY-1-13.                 IX2094.2
282300     MOVE    ZERO  TO INIT-FLAG.                                  IX2094.2
282400     MOVE    9999  TO XRECORD-NUMBER (1).                         IX2094.2
282500     MOVE    SPACE TO IX-FS1R1-F-G-240.                           IX2094.2
282600     MOVE    WRK-FS1-RECKEY TO IX-REC-KEY-AREA.                   IX2094.2
282700     START   IX-FS1  KEY IS EQUAL TO IX-FS1-KEY INVALID KEY       IX2094.2
282800                     MOVE   1  TO INIT-FLAG.                      IX2094.2
282900     READ    IX-FS1  INTO  FILE-RECORD-INFO (1)                   IX2094.2
283000                     AT END  MOVE  1 TO INIT-FLAG.                IX2094.2
283100     IF      XRECORD-NUMBER (1) NOT EQUAL TO 100                  IX2094.2
283200             MOVE 1 TO INIT-FLAG.                                 IX2094.2
283300     MOVE        "**"  TO FS1-STATUS.                             IX2094.2
283400 DISPLAY-RECORD-KEYS.                                             IX2094.2
283500     MOVE    XRECORD-KEY (1)  TO WRK-FS1-RECKEY.                  IX2094.2
283600     MOVE    FS1-RECKEY-1-13  TO COMPUTED-A.                      IX2094.2
283700     MOVE    RECKEY-VALUE (RECNO)  TO CORRECT-A.                  IX2094.2
283800     MOVE    SPACE TO P-OR-F.                                     IX2094.2
283900     MOVE    "RECORD KEY VALUES" TO RE-MARK.                      IX2094.2
284000     PERFORM PRINT-DETAIL.                                        IX2094.2
284100 DISPLAY-ALTERNATE-KEY1.                                          IX2094.2
284200     MOVE    ALTERNATE-KEY1 (1)  TO WRK-FS1-ALTKEY1.              IX2094.2
284300     MOVE    FS1-ALTKEY1-1-20  TO COMPUTED-A.                     IX2094.2
284400     MOVE    ALTKEY1-VALUE (RECNO)  TO CORRECT-A.                 IX2094.2
284500     MOVE    SPACE TO P-OR-F.                                     IX2094.2
284600     MOVE    "ALTERNATE RECORD KEY1 VALUES"  TO RE-MARK.          IX2094.2
284700     PERFORM PRINT-DETAIL.                                        IX2094.2
284800 DISPLAY-ALTERNATE-KEY2.                                          IX2094.2
284900     MOVE    ALTERNATE-KEY2 (1) TO WRK-FS1-ALTKEY2.               IX2094.2
285000     MOVE    FS1-ALTKEY2-1-20  TO COMPUTED-A.                     IX2094.2
285100     MOVE    ALTKEY2-VALUE (RECNO)  TO CORRECT-A.                 IX2094.2
285200     MOVE    SPACE TO P-OR-F.                                     IX2094.2
285300     MOVE    "ALTERNATE RECORD KEY2 VALUES"  TO RE-MARK.          IX2094.2
285400     PERFORM PRINT-DETAIL.                                        IX2094.2
285500 START-TEST-COMPLETE.                                             IX2094.2
285600     EXIT.                                                        IX2094.2
285700 CCVS-EXIT SECTION.                                               IX2094.2
285800 CCVS-999999.                                                     IX2094.2
285900     GO TO CLOSE-FILES.                                           IX2094.2
