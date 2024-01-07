'Title: DAYS BETWEEN DATES
'The program asks for 2 dates and prints on the screen the difference between the
'two as number of days. Leap years are taken into account.
'Inspired by the DAYS BETWEEN DATES program in the TRS-80 PC-1 manual.
   10 "D":Y=0
   20 INPUT "REFERENCE DAY? ";T,"MONTH? ";S,"YEAR? ";R
   30 INPUT "FINAL DAY? ";W,"MONTH? ";V,"YEAR? ";U
   40 IF Y=1 LET H=R+1925: GOTO 60
   50 H=R
   60 G=S:I=T
   70 GOSUB 160
   80 J=I
   90 IF Y=1 LET H=U+1925: GOTO 110
  100 H=U
  110 G=V:I=W
  120 GOSUB 160
  130 X=I-J
  140 PRINT "DELTA: ";X;" DAYS"
  150 GOTO 30
  160 IF G-3>=0 LET Z=-(G-3)*30.6-0.5: GOSUB 230:I=I-Z: GOTO 190
  170 H=H-1
  180 Z=(-(G-3)-12)*30.6-0.5: GOSUB 230:I=I-Z
  190 Z=H*365.25: GOSUB 230:I=I+Z
  200 Z=H/100: GOSUB 230:I=I-Z
  210 Z=H/400: GOSUB 230:I=I+Z
  220 I=I-307: RETURN 
  230 X=INT ABS Z:Z=SGN Z*X: RETURN 
