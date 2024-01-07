'Titlu: GHICESTE CODUL
'Programul permite ghicirea unei combinarii de 4 cifre (0-9) generate de calculator.
'Daca ai ghicit numarul corect, calculatorul va face 5 beep-uri is va tipari mesajul "FELICITARI!"
'Daca nu ai ghicit corect, acesta va oferi indicii cu privire la incercare:
' *: daca si numarul si pozitia sint corecte
' +: daca numarul este corect, dar pozitia nu este corecta
' -: daca nici numarul, nici pozitia nu sint corecte
'Se poate porni programul cu un numar F dat pentru a se genera
'numere aleatoare la fiecare pornire.
'Inspirat din programul GUESS-NUMBER GAME din manualul TRS-80 PC-1.
   10 C=INT (A/10)
   20 A(B)=A-C*10
   30 A=C
   40 RETURN 
   50 "C": AREAD F:U=0
   60 E=F: PRINT "GHICESTE CODUL"
   70 L=0:A=E+1234:A=A*[SQR]A
   80 E=INT A-INT (A/[E]4)*[E]4:A=E
   90 FOR B=16 TO 13 STEP -1
  100 GOSUB 10
  110 NEXT B
  120 INPUT "CODUL? ";F
  130 IF F>[E]4 BEEP 2: PAUSE "PREA MULTE CIFRE": GOTO 120
  140 BEEP 1
  150 U=F+U:L=L+1
  160 IF E=F GOTO 330
  170 A=F:H=0:I=0
  180 FOR B=20 TO 17 STEP -1
  190 GOSUB 10
  200 NEXT B
  210 FOR B=17 TO 20
  220 FOR C=13 TO 16
  230 A=B-9: IF A(C)=A(B) LET H=H+1:C=16
  240 NEXT C
  250 NEXT B
  260 FOR B=17 TO 20
  270 C=B-4:A=B-9
  280 IF A(C)=A(B) LET I=I+1:H=H-1
  290 NEXT B
  300 V=I*10+H+500: GOSUB V
  310 PRINT USING "###";L;USING "######";F;"  ";W$
  320 GOTO 120
  330 BEEP 5: PRINT "FELICITARI!"
  340 PRINT USING "#####";E;" E CORECT"
  350 PRINT USING "###";L;" INCERCARI"
  360 E=U+E: GOTO 70
  370 END 
  500 W$="----": RETURN 
  501 W$="+---": RETURN 
  502 W$="++--": RETURN 
  503 W$="+++-": RETURN 
  504 W$="++++": RETURN 
  510 W$="*---": RETURN 
  511 W$="*+--": RETURN 
  512 W$="*++-": RETURN 
  513 W$="*+++": RETURN 
  520 W$="**--": RETURN 
  521 W$="**+-": RETURN 
  522 W$="**++": RETURN 
  530 W$="***-": RETURN 
  531 W$="***+": RETURN 
