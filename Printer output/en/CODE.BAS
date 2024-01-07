'Title: CODE BREAKER
'This program lets you crack a 4 digit code (0-9) which the computer generates.
'When you guess correctly, the computer beeps 5 times and prints "CONGRATULATIONS!"
'When you guess incorrectly, the display shows a clue code as follows:
' *: number and position both are right
' +: number is right but position is not right
' -: neither number nor position is right
'You can start the program with a given number F to generate
'different random numbers at each start.
'Inspired by the GUESS-NUMBER GAME program in the TRS-80 PC-1 manual.
   10 C=INT (A/10)
   20 A(B)=A-C*10
   30 A=C
   40 RETURN 
   50 "C": AREAD F:U=0
   60 E=F: PRINT "CRACK THE CODE"
   70 L=0:A=E+1234:A=A*[SQR]A
   80 E=INT A-INT (A/[E]4)*[E]4:A=E
   90 FOR B=16 TO 13 STEP -1
  100 GOSUB 10
  110 NEXT B
  120 INPUT "CODE? ";F
  130 IF F>[E]4 BEEP 2: PAUSE "TOO MANY DIGITS": GOTO 120
  140 BEEP 1
  150 U=F+U:L=L+1
  160 IF E=F GOTO 330
  170 A=F:H=0:I=0
  180 FOR B=20 TO 17 STEP -1
  190 GOSUB 10
  200 NEXT B
  210 FOR B=17 TO 20
  220 FOR C=13 TO 16
  230 A=B-9: IF A(C)=A(B) LET H=H+1:C=16
  240 NEXT C
  250 NEXT B
  260 FOR B=17 TO 20
  270 C=B-4:A=B-9
  280 IF A(C)=A(B) LET I=I+1:H=H-1
  290 NEXT B
  300 V=I*10+H+500: GOSUB V
  310 PRINT USING "###";L;USING "######";F;"  ";W$
  320 GOTO 120
  330 BEEP 5: PRINT "CONGRATULATIONS!"
  340 PRINT USING "#####";E;" IS RIGHT"
  350 PRINT USING "###";L;" TRIES"
  360 E=U+E: GOTO 70
  370 END 
  500 W$="----": RETURN 
  501 W$="+---": RETURN 
  502 W$="++--": RETURN 
  503 W$="+++-": RETURN 
  504 W$="++++": RETURN 
  510 W$="*---": RETURN 
  511 W$="*+--": RETURN 
  512 W$="*++-": RETURN 
  513 W$="*+++": RETURN 
  520 W$="**--": RETURN 
  521 W$="**+-": RETURN 
  522 W$="**++": RETURN 
  530 W$="***-": RETURN 
  531 W$="***+": RETURN 
