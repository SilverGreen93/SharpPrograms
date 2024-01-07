'Titlu: DIFERENTA INTRE DATE
'Programul primete 2 date calendaristice si tipareste pe ecran diferenta
'dintre cele doua date ca numar de zile. Se tine cont de anii bisecti.
'Inspirat din programul DAYS BETWEEN DATES din manualul TRS-80 PC-1.
   10 "D":Y=0
   20 INPUT "ZIUA DE REFERINTA? ";T,"LUNA? ";S,"ANUL? ";R
   30 INPUT "ZIUA FINALA? ";W,"LUNA? ";V,"ANUL? ";U
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
  140 PRINT "DELTA: ";X;" ZILE"
  150 GOTO 30
  160 IF G-3>=0 LET Z=-(G-3)*30.6-0.5: GOSUB 230:I=I-Z: GOTO 190
  170 H=H-1
  180 Z=(-(G-3)-12)*30.6-0.5: GOSUB 230:I=I-Z
  190 Z=H*365.25: GOSUB 230:I=I+Z
  200 Z=H/100: GOSUB 230:I=I-Z
  210 Z=H/400: GOSUB 230:I=I+Z
  220 I=I-307: RETURN 
  230 X=INT ABS Z:Z=SGN Z*X: RETURN 
