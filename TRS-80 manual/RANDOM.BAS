'Title: RANDOM NUMBERS
'Sample program from page 111
'Program generates N random numbers based on the congruence method.
   10 "Z": INPUT "INITIAL VALUE =";Z
   20 INPUT "NUMBER=";N
   30 X=ABS (439147+X+Z)
   40 E=[E]8+1
   50 FOR A=1 TO N
   60 B=23*X
   70 X=B-INT (B/E)*E
   80 BEEP 2: PRINT A,X
   90 NEXT A
  100 END 
