'Title: RANDOM NUMBER DRAWS
'The program prints on paper N numbers between 0 and M-1.
'The numbers are generated using the congruence algorithm.
'You can start the program with a given number Z to generate
'different random numbers at each start.
'Inspired by the RANDOM program in the TRS-80 PC-1 manual.
   10 "X": AREAD Z
   20 INPUT "HOW MANY DRAWS? ";N
   30 INPUT "MAXIMUM VALUE? ";M
   40 PRINT USING "####";N;" DRAWS"
   50 X=ABS (439147+X+Z)
   60 E=[E]8+1
   70 FOR A=1 TO N
   80 B=23*X
   90 X=B-INT (B/E)*E
  100 Y=X-INT (X/M)*M
  110 PRINT USING "###.";A;USING "#######";Y
  120 NEXT A
  130 END 
