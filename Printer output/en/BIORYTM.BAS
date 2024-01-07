'Title: BIORHYTHM
'The program calculates the 3 parameters specific to biorhythm: physical, emotional and intellectual
'based on their cycles of 23, 28 and 33 days.
'The result is printed on paper as a percentage in the reference day for each one of the
'3 parameters. The number of days until the next maximum peak value is also printed.
'You can calculate the biorhythm for other dates as well by pressing SHIFT Z.
'The percentage is stored in variable F, being the percentage value of the SIN function between -100% and 100%.
'Variable B holds the duration of the period. Variable C holds the modulo result of the reference day
'so it can take values between 0 and B-1 and it indicates where in the cycle the current day is.
'Variable Q holds the day difference between C and the next maximum peak. The peak is only at B/4.
'The value is rounded at the next integer if the fraction part is greater than 0.5.
'The values were tested against the results from https://www.biorhythmonline.com.
'Inspired by the BIORHYTHM program in the TRS-80 PC-1 manual.
   10 "A": INPUT "BIRTH DATE: DAY? ";D,"MONTH? ";M,"YEAR? ";Y
   20 PRINT "BIORHYTHM FOR": PRINT "BIRTH DATE:"
   30 PRINT USING;"  ";D;M;Y
   40 GOSUB 190
   50 X=N
   60 "Z": INPUT "REFERENCE DATE: DAY? ";D,"MONTH? ";M,"YEAR? ";Y
   70 PRINT "REFERENCE DATE:"
   80 PRINT USING;"  ";D;M;Y: PRINT " "
   90 DEGREE
  100 GOSUB 190
  110 P=N-X
  120 A$="PHYSI.":B=23
  130 GOSUB 230
  140 A$="EMOT. ":B=28
  150 GOSUB 230
  160 A$="INTEL.":B=33
  170 GOSUB 230
  180 END 
  190 IF M-3>=0 LET M=M+1: GOTO 210
  200 Y=Y-1:M=13+M
  210 N=INT (365.25*Y)+INT (30.6*M)+D
  220 RETURN 
  230 C=P-INT (P/B)*B
  240 F=100*SIN(360*C/B)
  250 PRINT A$;USING "####.#";F;"%"
  260 IF C>B/2 LET Q=B-C+B/4: GOTO 290
  270 IF C>B/4 LET Q=B/2-C+3*B/4: GOTO 290
  280 Q=B/4-C
  290 IF Q-INT (Q)>=0.5 LET Q=Q+1
  300 PRINT "  MAX IN";USING "###";Q;" DAYS"
  310 RETURN 
