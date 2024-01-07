'Titlu: DIFERENTA INTRE DATE
'Programul primete 2 date calendaristice si tipareste pe hirtie diferenta
'dintre cele doua date ca numar de zile. Se tine cont de anii bisecti.
'Inspirat din programul DAYS BETWEEN DATES din manualul TRS-80 PC-1.
   10 "D":Y=0
   20 INPUT "ZIUA DE REFERINTA? ";T,"LUNA? ";S,"ANUL? ";R
   30 PRINT "DE LA:": PRINT USING;"  ";T;S;R
   40 INPUT "ZIUA FINALA? ";W,"LUNA? ";V,"ANUL? ";U
   50 PRINT "PINA LA:": PRINT USING;"  ";W;V;U
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
  160 PRINT USING "########";X;" ZILE"
  170 GOTO 40
  180 IF G-3>=0 LET Z=-(G-3)*30.6-0.5: GOSUB 250:I=I-Z: GOTO 210
  190 H=H-1
  200 Z=(-(G-3)-12)*30.6-0.5: GOSUB 250:I=I-Z
  210 Z=H*365.25: GOSUB 250:I=I+Z
  220 Z=H/100: GOSUB 250:I=I-Z
  230 Z=H/400: GOSUB 250:I=I+Z
  240 I=I-307: RETURN 
  250 X=INT ABS Z:Z=SGN Z*X: RETURN 
