'Title: DAYS BETWEEN DATES
'The program asks for 2 dates and prints on paper the difference between the
'two as number of days. Leap years are taken into account.
'Inspired by the DAYS BETWEEN DATES program in the TRS-80 PC-1 manual.
   10 "D":Y=0
   20 INPUT "REFERENCE DAY? ";T,"MONTH? ";S,"YEAR? ";R
   30 PRINT "FROM:": PRINT USING;"  ";T;S;R
   40 INPUT "FINAL DAY? ";W,"MONTH? ";V,"YEAR? ";U
   50 PRINT "TO:": PRINT USING;"  ";W;V;U
   60 IF Y=1 LET H=R+1925: GOTO 80
   70 H=R
   80 G=S:I=T
   90 GOSUB 180
  100 J=I
  110 IF Y=1 LET H=U+1925: GOTO 130
  120 H=U
  130 G=V:I=W
  140 GOSUB 180
  150 X=I-J
  160 PRINT USING "########";X;" DAYS"
  170 GOTO 40
  180 IF G-3>=0 LET Z=-(G-3)*30.6-0.5: GOSUB 250:I=I-Z: GOTO 210
  190 H=H-1
  200 Z=(-(G-3)-12)*30.6-0.5: GOSUB 250:I=I-Z
  210 Z=H*365.25: GOSUB 250:I=I+Z
  220 Z=H/100: GOSUB 250:I=I-Z
  230 Z=H/400: GOSUB 250:I=I+Z
  240 I=I-307: RETURN 
  250 X=INT ABS Z:Z=SGN Z*X: RETURN 
