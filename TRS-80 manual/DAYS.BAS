'Title: DAYS BETWEEN DATES
'Sample program from page 109
'This program calculates the number of days between two dates.
   10 "D":Y=0
   20 INPUT "START YEAR=";R,"MONTH=";S,"DAY=";T
   30 INPUT "END YEAR=";U,"MONTH=";V,"DAY=";W
   40 IF Y=1 LET H=R+1925: GOTO 60
   50 H=R
   60 G=S:I=T
   70 GOSUB 500
   80 J=I
   90 IF Y=1 LET H=U+1925: GOTO 110
  100 H=U
  110 G=V:I=W
  120 GOSUB 500
  130 X=I-J
  140 PRINT "DAYS",X
  150 GOTO 30
  500 IF G-3>=0 LET Z=-(G-3)*30.6-0.5: GOSUB 600:I=I-Z: GOTO 530
  510 H=H-1
  520 Z=(-(G-3)-12)*30.6-0.5: GOSUB 600:I=I-Z
  530 Z=H*365.25: GOSUB 600:I=I+Z
  540 Z=H/100: GOSUB 600:I=I-Z
  550 Z=H/400: GOSUB 600:I=I+Z
  560 I=I-307: RETURN 
  600 X=INT ABS Z:Z=SGN Z*X: RETURN 
