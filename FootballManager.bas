  10 LET RAMTOP=65535
  20 LET MONEY =500000
  30 LET SEASON=1
  40 LET WEEK =1: LET X=0: LET AP=0: LET BP=0: LET CP=0: LET DP=0: LET EP=0: LET FP=0: LET Y=4
  50 LET A$="DUNDEE UTD": LET B$="CELTIC": LET C$="AC MILAN": LET D$="LIVERPOOL": LET E$="FC PORTO": LET F$="JUVENTUS"
  60 CLS : PAPER 2: INK 7: BORDER 2: CLS 
  70 CLS 
  80 PRINT AT 13,0;"YOU HAVE £ ";MONEY
  90 PRINT AT 8,0;"YOUR TEAM IS ";A$
 100 PRINT AT 17,1;"SEASON ";SEASON
 110 PAUSE 200: CLS 
 120 LET FS=0: LET AS=0: LET BS=0: LET CS=0: LET DS=0: LET ES=0
 130 CLS 
 140 PLOT 0,0: DRAW 255,0: DRAW 0,175: DRAW -255,0: DRAW 0,-175
 150 PLOT 0,150: DRAW 255,0
 160 PRINT AT 1,1;"MENU   WEEK ";WEEK;" SEASON ";SEASON
 170 PRINT AT 16,1;"MONEY £ ";MONEY
 180 LET CHANCE=INT (RND*6)
 190 IF CHANCE=2 THEN GO SUB 1940
 200 IF WEEK=11 THEN PRINT AT 19,1;"GO TO LEAGUE TABLE";AT 20,1;"END OF SEASON"
 210 PRINT AT 6,5;"F FOR FIXTURES": IF INKEY$="F" THEN GO SUB 420
 220 IF INKEY$="f" THEN GO SUB 420
 230 PRINT AT 8,5;"P  FOR GAMES"
 240 IF INKEY$="P" AND WEEK =1+X THEN GO SUB 530
 250 IF INKEY$="p" AND WEEK =1+X THEN GO SUB 530
 260 IF INKEY$="P" AND WEEK =2+X THEN GO SUB 780
 270 IF INKEY$="p" AND WEEK =2+X THEN GO SUB 780
 280 IF INKEY$="P" AND WEEK =3+X THEN GO SUB 1000
 290 IF INKEY$="p" AND WEEK =3+X THEN GO SUB 530
 300 IF INKEY$="P" AND WEEK =4+X THEN GO SUB 1210
 310 IF INKEY$="p" AND WEEK =4+X THEN GO SUB 1210
 320 IF INKEY$="P" AND WEEK =5+X THEN GO SUB 1360
 330 IF INKEY$="p" AND WEEK =5+X THEN GO SUB 1360
 340 IF INKEY$="P" AND WEEK=6+X THEN GO TO 1810
 350 IF INKEY$="p" AND WEEK=6+X THEN GO TO 1810
 360 IF INKEY$="p" AND WEEK=11 THEN GO TO 1510
 370 IF INKEY$="P" AND WEEK=11 THEN GO TO 1510
 380 PRINT AT 10,5;"L FOR LEAGUE TABLE": IF INKEY$="L" THEN GO SUB 1510
 390 LET ATT=(5000+INT (RND*20000))
 400 IF INKEY$="l" THEN GO SUB 1510
 410 GO TO 210
 420 CLS 
 430 FOR F=1 TO 2
 440 PLOT 0,0: DRAW 255,0: DRAW 0,175: DRAW -255,0: DRAW 0,-175
 450 PRINT AT 1,10;"FIXTURES"
 460 PRINT AT 2,2;A$;" v ";B$;AT 3,2;E$;" v ";D$;AT 4,2;C$;" v ";F$
 470 PRINT AT 6,2;A$;" v ";C$;AT 7,2;D$;" v ";B$;AT 8,2;F$;" v ";E$
 480 PRINT AT 10,2;A$;" v ";D$;AT 11,2;E$;" v ";C$;AT 12,2;F$;" v ";B$
 490 PRINT AT 14,2;A$;" v ";E$;AT 15,2;C$;" v ";B$;AT 16,2;F$;" v ";D$
 500 PRINT AT 18,2;A$;" v ";F$;AT 19,2;C$;" v ";D$;AT 20,2;B$;" v ";E$
 510 PAUSE 1000: CLS : NEXT F: GO TO 80
 520 REM 
 530 REM 
 540 CLS : PRINT AT 0,5;"RESULTS"
 550  : PRINT AT 2,5;"WEEK  ";WEEK
 560 LET AS =INT (RND*Y)
 570 LET BS =INT (RND*5)
 580 LET CS =INT (RND*5)
 590 LET DS =INT (RND*5)
 600 LET ES =INT (RND*5)
 610 LET FS =INT (RND*5)
 620 REM WEEK 1
 630 LET WEEK=2+X
 640 PRINT AT 4,0;A$;" ";AS;" v ";BS;" ";b$;AT 6,0;E$;" ";ES;" v ";DS;" ";d$;AT 8,0;C$;" ";CS;" v ";FS;" ";f$
 650 PRINT AT 18,1;"ATTENDANCE ";ATT: LET MONEY=MONEY+ATT
 660 IF AS>BS THEN LET AP=AP+3
 670 IF BS>AS THEN LET BP=BP+3
 680 IF BS=AS THEN LET BP=BP+1: LET AP=AP+1
 690 IF ES>DS THEN LET EP=EP+3
 700 IF ES=DS THEN LET EP=EP+1
 710 IF ES=DS THEN LET DP=DP+1
 720 IF ES<DS THEN LET DP=DP+3
 730 IF FS<CS THEN LET CP=CP+3
 740 IF CS<FS THEN LET FP=FP+3
 750 IF CS=FS THEN LET FP=FP+1: LET CP=CP+1
 760 PAUSE 1000
 770 GO TO 130
 780 CLS 
 790 REM WEEK 2
 800 CLS 
 810 PRINT "RESULTS WEEK ";WEEK
 820 LET WEEK =3+X
 830 LET AS=INT (RND*Y): LET BS=INT (RND*5): LET CS=INT (RND*5): LET DS=INT (RND*5): LET ES=INT (RND*5): LET FS=INT (RND*5)
 840 PRINT AT 6,0;A$;" ";AS;" v ";CS;" ";C$;AT 8,0;D$;" ";DS;" v ";BS;" ";B$;AT 10,0;F$;" ";FS;" v ";ES;" ";E$
 850 PRINT AT 18,0;"ATTENDANCE ";ATT: LET MONEY=MONEY+ATT
 860 IF AS>CS THEN LET AP=AP+3
 870 IF AS=CS THEN LET AP=AP+1:
 880 IF CS=AS THEN LET CP=CP+1
 890 IF AS<CS THEN LET CP=CP+3:
 900 IF DS>BS THEN LET DP=DP+3
 910 IF BS>DS THEN LET BP=BP+3
 920 IF BS=DS THEN LET BP=BP+1:
 930 IF DS=BS THEN LET DP=DP+1
 940 IF ES>FS THEN LET EP=EP+3
 950 IF ES=FS THEN LET EP=EP+1:
 960 IF FS=ES THEN LET FP=FP+1
 970 IF FS>ES THEN LET FP=FP+3
 980 PAUSE 1000
 990 GO TO 130
1000 REM 
1010 REM WEEK 3
1020 CLS 
1030 PRINT AT 0,10;"RESULTS WEEK ";WEEK
1040 LET AS=INT (RND*Y): LET BS=INT (RND*5): LET CS=INT (RND*5): LET DS=INT (RND*5): LET ES=INT (RND*5): LET FS=INT (RND*5)
1050 LET WEEK=4+X
1060 PRINT AT 6,0;A$;" ";AS;" v ";DS;" ";D$;AT 8,0;E$;" ";ES;" v ";CS;" ";C$;AT 10,0;F$;" ";FS;" v ";BS;" ";B$
1070 PRINT AT 18,1;"ATTENDANCE ";ATT: LET MONEY=MONEY+ATT
1080 IF AS>DS THEN LET AP=AP+3
1090 IF DS>AS THEN LET DP=DP+3
1100 IF DS=AS THEN LET DP=DP+1: LET AP=AP+1
1110 IF ES>CS THEN LET EP=EP+3
1120 IF ES<CS THEN LET CP=CP+3
1130 IF ES=CS THEN LET CP=CP+1: LET EP=EP+1
1140 IF FS>BS THEN LET FP=FP+3
1150 IF BS>FS THEN LET BP=BP+3
1160 IF BS=FS THEN LET BP=BP+1: LET FP=FP+1
1170 PAUSE 1000: CLS : GO TO 130
1180 REM 
1190 REM WEEK 4
1200 REM 
1210 CLS : PRINT AT 0,10;"RESULTS WEEK ";WEEK
1220 LET WEEK= 5+X
1230 LET AS=INT (RND*Y): LET BS=INT (RND*5): LET CS=INT (RND*5): LET DS=INT (RND*5): LET ES=INT (RND*5): LET FS=INT (RND*5)
1240 PRINT AT 6,0;A$;" ";AS;" v ";ES;" ";E$;AT 8,0;C$;" ";CS;" v ";BS;" ";B$;AT 10,0;F$;" ";FS;" v ";DS;" ";D$
1250 PRINT AT 18,1;"ATTENDANCE ";ATT: LET MONEY=MONEY+ATT
1260 IF AS>ES THEN LET AP=AP+3
1270 IF ES>AS THEN LET EP=EP+3
1280 IF ES=AS THEN LET EP=EP+1: LET AP=AP+1
1290 IF BS>CS THEN LET BP=BP+3
1300 IF CS>BS THEN LET CP=CP+3
1310 IF CS=BS THEN LET BP=BP+1: LET CP=CP+1
1320 IF FS>DS THEN LET FP=FP+3
1330 IF DS>FS THEN LET DP=DP+3
1340 IF DS=FS THEN LET DP=DP+1: LET FP=FP+1
1350 PAUSE 1000: CLS : GO TO 130
1360 CLS : PRINT AT 0,10;"RESULTS WEEK ";WEEK
1370 LET WEEK=6+X
1380 LET AS=INT (RND*Y): LET BS=INT (RND*5): LET CS=INT (RND*5): LET DS=INT (RND*5): LET ES=INT (RND*5): LET FS=INT (RND*5)
1390 PRINT AT 8,0;A$;" ";AS;" v ";FS;" ";F$;AT 10,0;C$;" ";CS;" v ";DS;" ";D$;AT 12,0;B$;" ";BS;" v ";ES;" ";E$
1400 PRINT AT 18,1;"ATTENDANCE ";ATT: LET MONEY =MONEY+ATT
1410 IF AS>FS THEN LET AP=AP+3
1420 IF AS<FS THEN LET FP=FP+3
1430 IF AS=FS THEN LET FP=FP+1: LET AP=AP+1
1440 IF CS>DS THEN LET CP=CP+3
1450 IF CS<DS THEN LET DP=DP+3
1460 IF CS=DS THEN LET DP=DP+1: LET CP=CP+1
1470 IF BS>ES THEN LET BP=BP+3
1480 IF ES>BS THEN LET EP=EP+3
1490 IF BS=ES THEN LET EP=EP+1: LET BP=BP+1
1500 PAUSE 1500: CLS : GO TO 130
1510 REM LEAGUE TABLE
1520 REM 
1530 LET ALP=6: LET BLP=8: LET CLP=10: LET DLP =12: LET ELP=14: LET FLP=16
1540 CLS 
1550 PRINT AT 1,9;"LEAGUE TABLE"
1560 PRINT AT 2,11;"WEEK ";WEEK
1570 PRINT AT 4,21;"POINTS"
1580 IF AP>BP AND AP>CP AND AP>DP AND AP>EP AND AP>FP THEN LET ALP=6: PRINT AT 20,1;A$;" -TOP OF THE LEAGUE": LET W$=A$
1590 IF BP>AP AND BP>CP AND BP>DP AND BP>EP AND BP>FP THEN LET BLP=6: LET ALP =8: PRINT AT 20,1;B$;" -TOP OF THE LEAGUE": LET W$=B$
1600 IF CP>AP AND CP>BP AND CP>DP AND CP>EP AND CP>FP THEN LET CLP=6: LET ALP=10: PRINT AT 20,1;C$;" -TOP OF THE LEAGUE": LET W$=D$
1610 IF DP>BP AND DP>CP AND DP>AP AND DP>EP AND DP>FP THEN LET DLP=6: LET ALP =12: PRINT AT 20,1;D$;" -TOP OF THE LEAGUE": LET W$=D$
1620 IF EP>BP AND EP>CP AND EP>DP AND EP>AP AND EP>FP THEN LET ELP=6: LET ALP =14: PRINT AT 20,1;E$;" -TOP OF THE LEAGUE": LET W$=E$
1630 IF FP>BP AND FP>CP AND FP>DP AND FP>AP AND FP>AP THEN LET FLP=6: LET ALP=16: PRINT AT 20,1;F$;" -TOP OF THE LEAGUE": LET W$=F$
1640 IF FP>EP AND CP>EP AND AP>EP AND DP>EP AND BP>EP THEN LET ELP=16: LET FLP=14
1650 IF FP>AP AND CP>AP AND EP>AP AND DP>AP AND BP>AP THEN LET ALP=16: LET FLP=15
1660 IF FP>BP AND CP>BP AND EP>BP AND DP>BP AND AP>BP THEN LET BLP=17
1670 IF BP>FP AND CP>FP AND AP>FP AND DP>FP AND EP>FP THEN LET FLP=16
1680 IF BP>DP AND CP>DP AND AP>DP AND FP>DP AND EP>DP THEN LET DLP=16: LET FLP=12
1690 IF BP>CP AND DP>CP AND AP>CP AND FP>CP AND EP>CP THEN LET CLP=16: LET FLP=10
1700 PLOT 0,0: DRAW 255,0: DRAW 0,175: DRAW -255,0: DRAW 0,-175
1710 PRINT AT ALP,1;A$;AT ALP,21;AP
1720 PRINT AT BLP,1;B$;AT BLP,21;BP
1730 PRINT AT CLP,1;C$;AT CLP,21;CP
1740 PRINT AT DLP,1;D$;AT DLP,21;DP
1750 PRINT AT ELP,1;E$;AT ELP,21;EP
1760 PRINT AT FLP,1;F$;AT FLP,21;FP
1770 PAUSE 3000
1780 IF WEEK=11 THEN GO TO 1830
1790 GO TO 130
1800 PLOT 0,0: DRAW 255,0: DRAW 0,175: DRAW -255,0: DRAW 0,-175
1810 LET X=5
1820 GO TO 210
1830 CLS : PRINT AT 1,5;"END OF SEASON"
1840 PLOT 0,0: DRAW 255,0: DRAW 0,175: DRAW -255,0: DRAW 0,-175
1850 PRINT AT 4,5;"THE WINNERS ARE -"
1860 PRINT AT 13,5;"SEASON ";SEASON
1870 PRINT AT 6,5;W$
1880 PAUSE 300
1890 LET LBMONEY =100000
1900 IF W$=A$ THEN CLS : PRINT AT 1,1;"YOU ARE THE CHAMPIONS";AT 3,1;"LEAGUE BONUS MONEY OF";AT 5,8;LBMONEY;AT 8,1;"YOU ARE MANAGER OF THE YEAR";AT 15,1;"GOOD LUCK NEXT SEASON": LET MONEY=MONEY+LBMONEY: PRINT AT 20,1;"YOU HAVE £ ";MONEY: PRINT AT 18,1;"SEASON ";SEASON
1910 PAUSE 1000: LET WEEK=1: LET AP=0: LET BP=0: LET CP=0: LET DP=0: LET EP=0: LET FP= 0
1920 LET SEASON=SEASON+1: LET X=0
1930 GO TO 70
1940 CLS : PRINT "THIS IS THE CHANCE BIT OF THE GAME"
1950 PRINT AT 2,0;"DO YOU WANT TO "
1960 PRINT AT 4,0;"1 - GAMBLE"
1970 PRINT AT 6,0;"2 - BUY A PLAYER"
1980 PRINT AT 8,0;"3 - HOLIDAY"
1990 IF INKEY$="1" THEN GO TO 2030
2000 IF INKEY$="2" THEN GO TO 2120
2010 IF INKEY$="3" THEN GO TO 2290
2020 GO TO 1990
2030 CLS : PRINT "GAMBLE AT RISK OF BEING THE MAN"
2040 PRINT AT 3,0;"PICK RED (1) OR BLACK (2)" : INPUT CHOICE
2050 PRINT AT 5,0;"HOW MUCH DO YOU BET"
2060 PRINT AT 7,0;"NO MORE THAN £50,000": INPUT BET
2070 LET SPIN=1+INT (RND*2)
2080 PAUSE 100: IF SPIN=2 THEN PRINT AT 20,4;"BLACK 2"
2090 PAUSE 100: IF SPIN=1 THEN PRINT AT 20,4;"RED 1"
2100 PAUSE 200: IF SPIN =CHOICE THEN LET MONEY =MONEY + (2*BET): GO TO 70
2110 IF NOT SPIN =CHOICE THEN LET MONEY =MONEY-BET: GO TO 70
2120 CLS : PRINT AT 0,6;"TRANSFERS"
2130 LET K$="SHEARER": LET L$="ROMARIO": LET M$="LAUDRAUP": LET N$="BAGGIO": LET O$="BREWSTER"
2140 LET KPRICE=2000000: LET LPRICE =1900000: LET MPRICE=750000: LET NPRICE=3500000: LET OPRICE=(60000+INT (RND*100000))
2150 PRINT AT 2,0;"1 ";K$;AT 2,14;"£ ";KPRICE
2160 PRINT AT 4,0;"2 ";L$;AT 4,14;"£ ";LPRICE
2170 PRINT AT 6,0;"3 ";M$;AT 6,14;"£ ";MPRICE
2180 PRINT AT 8,0;"4 ";N$;AT 8,14;"£ ";NPRICE
2190 PRINT AT 10,0;"5 ";O$;AT 10,14;"£ ";OPRICE
2200 PRINT AT 14,0;"ENTER NUMBER THEN BID"
2210 INPUT NUM: INPUT BID
2220 IF BID>MONEY THEN PRINT AT 18,0;"YOU DONT HAVE THIS MUCH MONEY": GO TO 70
2230 IF NUM=1 AND BID>KPRICE THEN CLS : PRINT "YOU HAVE BOUGHT ";K$: PAUSE 100: LET MONEY=MONEY-BID: LET Y=Y+0.19: GO TO 70
2240 IF NUM=2 AND BID>LPRICE THEN CLS : PRINT "YOU HAVE BOUGHT ";L$: PAUSE 80: LET MONEY=MONEY-BID: LET Y=Y+0.25: GO TO 70
2250 IF NUM=3 AND BID>MPRICE THEN CLS : PRINT "YOU HAVE BOUGHT ";M$: PAUSE 90: LET MONEY=MONEY-BID: LET Y=Y+0.15: GO TO 70
2260 IF NUM=4 AND BID>NPRICE THEN CLS : PRINT "YOU HAVE BOUGHT ";N$: PAUSE 90: LET MONEY=MONEY-BID: LET Y=Y+0.35: GO TO 70
2270 IF NUM=5 AND BID>OPRICE THEN CLS : PRINT "YOU HAVE BOUGHT ";O$: PAUSE 90: LET MONEY=MONEY-BID: LET Y=Y+0.1: GO TO 70
2280 CLS : PRINT "NO TRANSFER": PAUSE 100: GO TO 70
2290 REM HOLIDAY
2300 CLS : PRINT AT 0,5;"HOLIDAY"
2310 PRINT AT 2,0;"PICK HOLIDAY"
2320 PRINT AT 4,0;"1 BRAZIL £ 800,000"
2330 PRINT AT 6,0;"2 HOLLAND £ 100,000"
2340 PRINT AT 10,0;"THINGS CAN GO WRONG"
2350 PRINT AT 18,0;"ENTER NUMBER OF HOLIDAY"
2360 INPUT HOLIDAY
2370 IF HOLIDAY=1 THEN LET MONEY=MONEY-800000: GO TO 2390
2380 IF HOLIDAY=2 THEN LET MONEY=MONEY-100000: GO TO 2450
2390 LET RANDIM=(1+INT (RND*4))
2400 IF RANDIM=1 THEN CLS : PRINT AT 0,0;"YOU SIGN A BRAZILLIAN STAR FOR";AT 2,0;"A BARGAIN PRICE OF £";(2000+INT (RND*100000));AT 4,0;"ALSO THE HOLIDAY WAS GOOD FOR";AT 6,0;"TEAM MORALE": LET Y=Y+0.35
2410 IF RANDIM=2 THEN CLS : PRINT "HOLIDAY WAS GOOD. MORALE";AT 2,0;"ON THE UP NO INJURIES": LET Y=Y+0.1
2420 IF RANDIM=3 THEN CLS : PRINT "DISASTER - STAR FORWARD";AT 2,0;"BREAKS BOTH LEGS IN SPEED BOAT";AT 4,0;"ACCIDENT,WEATHER TERRIBLE";AT 6,0;"TEAM MORALE DOWN": LET Y=Y-0.2
2430 IF RANDIM=4 THEN CLS : PRINT "ONE OF YOUR PLAYERS WAS SOLD";AT 2,0;"WHILST ON HOLIDAY";AT 4,0;"FOR £ ";(2000+INT (RND*100000));" TO A BRAZILIAN SIDE": LET Y=Y+0.2
2440 PAUSE 1000: GO TO 70
2450 CLS 
2460 LET RANDIM=(1+INT (RND*2))
2470 IF RANDIM=1 THEN PRINT AT 0,0;"GOALKEEPER FALLS OVERBOARD ON";AT 2,0;"SHIP TO HOLLAND,WHEN THERE TWO";AT 4,0;"FORWARDS CAUGHT SMOKING HASH";AT 6,0;"BY U.E.F.A OFFICIALS THEY ARE";AT 8,0;"BANNED FOR FIVE GAMES AND THE";AT 10,0;"CLUB IS FINED £ ";(3000+INT (RND*13000));AT 12,0;" MORALE IS LOW": PAUSE 900: GO TO 70
2480 LET RAFFLE=(1+INT (RND*20)): LET WRAFFLE=(1+INT (RND*20))
2490 IF RANDIM=2 THEN PRINT AT 0,0;"TEAM ENJOYS TRIP WITH FIVE WINS";AT 2,0;"OUT OF FIVE IN FRIENDLY GAMES";AT 4,0;"YOU BUY A RAFFLE TICKET WITH THE";AT 6,0;"NUMBER ";RAFFLE;" THE WINNING NUMBER";AT 8,0;"WAS ";WRAFFLE;AT 10,0;"THE TICKET IS WORTH £100,000": IF WRAFFLE=RAFFLE THEN LET MONEY=MONEY+100000: LET Y=Y+0.2: PRINT AT 12,0;"WELL DONE"
2500 IF NOT WRAFFLE  =RAFFLE THEN PRINT AT 12,0;"UNLUCKY": LET Y=Y+0.15
2510 PAUSE  900: GO TO 70
