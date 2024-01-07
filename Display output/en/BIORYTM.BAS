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
   20 GOSUB 150
   30 X=N
   40 "Z": INPUT "REFERENCE DATE: DAY? ";D,"MONTH? ";M,"YEAR? ";Y
   50 DEGREE
   60 GOSUB 150
   70 P=N-X
   80 A$="PHYSIC":B=23
   90 GOSUB 190
  100 A$="EMOTION":B=28
  110 GOSUB 190
  120 A$="INTELEC":B=33
  130 GOSUB 190
  140 END 
  150 IF M-3>=0 LET M=M+1: GOTO 170
  160 Y=Y-1:M=13+M
  170 N=INT (365.25*Y)+INT (30.6*M)+D
  180 RETURN 
  190 C=P-INT (P/B)*B
  200 F=100*SIN(360*C/B)
  210 PRINT A$;USING "#####.#";F;"%"
  220 IF C>B/2 LET Q=B-C+B/4: GOTO 250
  230 IF C>B/4 LET Q=B/2-C+3*B/4: GOTO 250
  240 Q=B/4-C
  250 IF Q-INT (Q)>=0.5 LET Q=Q+1
  260 PRINT "NEXT PEAK IN";USING "###";Q;" DAYS"
  270 RETURN 
