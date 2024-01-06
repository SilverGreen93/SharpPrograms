'Title: GUESS-NUMBER GAME
'Sample program from page 105
'This program lets you guess a 4 digit number which the Computer generates.
'When you guess correctly, the Computer beeps 5 times and the display shows "CONGRATULATION"
'When you guess incorrectly, the display shows a clue code which can contain letters A, B or C:
' A: number and position both are right
' B: number is right but position is not right
' C: neither number nor position is right
   10 C=INT (A/10)
   20 A(B)=A-C*10
   30 A=C
   40 RETURN 
   50 "G": AREAD F:U=0
   60 E=F: PAUSE "GUESS NUMBER GAME"
   70 L=0:A=E+1234:A=A*[SQR]A
   80 E=INT A-INT (A/[E]4)*[E]4:A=E
   90 FOR B=16 TO 13 STEP -1
  100 GOSUB 10
  110 NEXT B
  120 INPUT "GUESS NUMBER =";F
  130 IF F>[E]4 BEEP 2: PAUSE "EXCESSIVE INPUT": GOTO 120
  140 U=F+U:L=L+1
  150 A=F:H=0:I=0
  160 FOR B=20 TO 17 STEP -1
  170 GOSUB 10
  180 NEXT B
  190 FOR B=17 TO 20
  200 FOR C=13 TO 16
  210 A=B-9: IF A(C)=A(B) LET H=H+1:C=16
  220 NEXT C
  230 NEXT B
  240 FOR B=17 TO 20
  250 C=B-4:A=B-9
  260 IF A(C)=A(B) LET I=I+1:H=H-1
  270 NEXT B
  280 IF E=F GOTO 320
  290 V=I*10+H+500: GOSUB V
  300 PRINT USING "###";L;USING "######";F;"  ";W$
  310 GOTO 120
  320 BEEP 5: PRINT "CONGRATULATION TRIAL=";USING "###";L
  330 E=U+E: GOTO 70
  340 END 
  500 W$="CCCC": RETURN 
  501 W$="BCCC": RETURN 
  502 W$="BBCC": RETURN 
  503 W$="BBBC": RETURN 
  504 W$="BBBB": RETURN 
  510 W$="ACCC": RETURN 
  511 W$="ABCC": RETURN 
  512 W$="ABBC": RETURN 
  513 W$="ABBB": RETURN 
  520 W$="AACC": RETURN 
  521 W$="AABC": RETURN 
  522 W$="AABB": RETURN 
  530 W$="AAAC": RETURN 
  531 W$="AAAB": RETURN 
