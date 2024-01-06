'Title: BIORHYTHM
'Sample program from page 103
'Shows if the normal state (0%) of each of the three cycles is today
'or after how many days it will be again at 0%
   10 "A": INPUT "BIRTHDAY ?",Y,M,D
   20 GOSUB 500
   30 X=N
   40 "B": INPUT "TARGET ?",Y,M,D
   50 GOSUB 500
   60 P=N-X
   70 A$="P":B=23
   80 GOSUB 540
   90 A$="S":B=28
  100 GOSUB 540
  110 A$="I":B=33
  120 GOSUB 540
  130 END 
  500 IF M-3>=0 LET M=M+1: GOTO 520
  510 Y=Y-1:M=13+M
  520 N=INT (365.25*Y)+INT (30.6*M)+D
  530 RETURN 
  540 C=P-INT (P/B)*B: BEEP 2
  550 IF C>B/2 LET Q=B-C: GOTO 590
  560 IF B/2=C PRINT A$;" TODAY": RETURN 
  570 IF C=0 PRINT A$;" TODAY": RETURN 
  580 Q=B/2-C
  590 PRINT A$;" AFTER";USING "######.#";Q
  600 RETURN 
