'Titlu: EXTRAGERI NUMERE ALEATOARE
'Programul va tipri pe hirtie N numere cuprinse intre 0 si M-1.
'Numerele sint generate conform algoritmului congruentei.
'Se poate porni programul cu un numar Z dat pentru a se genera
'numere aleatoare la fiecare pornire.
'Inspirat din programul RANDOM din manualul TRS-80 PC-1.
   10 "X": AREAD Z
   20 INPUT "CITE NUMERE? ";N
   30 INPUT "NUMAR MAXIM? ";M
   40 PRINT USING "####";N;" EXTRAGERI"
   50 X=ABS (439147+X+Z)
   60 E=[E]8+1
   70 FOR A=1 TO N
   80 B=23*X
   90 X=B-INT (B/E)*E
  100 Y=X-INT (X/M)*M
  110 PRINT USING "###.";A;USING "#######";Y
  120 NEXT A
  130 END 
