'Title: RANDOM NUMBER DRAWS
'The program prints on the screen N numbers between 0 and M-1.
'The numbers are generated using the congruence algorithm.
'You can start the program with a given number Z to generate
'different random numbers at each start.
'Inspired by the RANDOM program in the TRS-80 PC-1 manual.
   10 "X": AREAD Z
   20 INPUT "HOW MANY DRAWS? ";N
   30 INPUT "MAXIMUM VALUE? ";M
   40 X=ABS (439147+X+Z)
   50 E=[E]8+1
   60 FOR A=1 TO N
   70 B=23*X
   80 X=B-INT (B/E)*E
   90 Y=X-INT (X/M)*M
  100 PRINT A,Y
  110 NEXT A
  120 END 
