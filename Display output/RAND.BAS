'Titlu: EXTRAGERI NUMERE ALEATOARE
'Programul va tipri pe ecran N numere cuprinse intre 0 si M-1.
'Numerele sint generate conform algoritmului congruentei.
'Se poate porni programul cu un numar Z dat pentru a se genera
'numere aleatoare la fiecare pornire.
'Inspirat din programul RANDOM din manualul TRS-80 PC-1.
   10 "X": AREAD Z
   20 INPUT "CITE NUMERE? ";N
   30 INPUT "NUMAR MAXIM? ";M
   40 X=ABS (439147+X+Z)
   50 E=[E]8+1
   60 FOR A=1 TO N
   70 B=23*X
   80 X=B-INT (B/E)*E
   90 Y=X-INT (X/M)*M
  100 PRINT A,Y
  110 NEXT A
  120 END 
