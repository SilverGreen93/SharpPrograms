'Titlu: BIORITM
'Programul calculeaza cei 3 parametri specifici bioritmului: fizicul, emotionalul si intelectul
'pe baza ciclurilor lor de 23, 28 si 33 de zile.
'Rezultatul este tiparit pe hirtie in forma de procent in ziua de referinta pentru fiecare
'din cele 3 si totodata se tipareste si peste cite zile va fi urmatorul maxim.
'Se poate calcula bioritmul pentru mai multe date apasind SHIFT Z consecutiv.
'Procentul este stocat in variabila F, fiind valoarea procentuala a functiei SIN intre -100% si 100%.
'Variabila B tine durata perioadei. Variabila C este rezultatul modulo al datei de referinta,
'deci poate fi intre 0 si B-1 si indica in ce zi a ciclului pica data curenta.
'Variabila Q calculeaza diferenta de zile intre C si urmatorul maxim. Maximul este doar la B/4.
'Valoarea se rotunjeste la urmatorul intreg daca partea fractionara depaseste 0.5.
'Verificarea s-a realizat cu graficul de la https://www.biorhythmonline.com.
'Inspirat din programul BIORHYTHM din manualul TRS-80 PC-1.
   10 "A": INPUT "DATA NASTERE: ZI? ";D,"LUNA? ";M,"AN? ";Y
   20 PRINT "BIORITM PENTRU": PRINT "DATA NASTERE:"
   30 PRINT USING;"  ";D;M;Y
   40 GOSUB 200
   50 X=N
   60 "Z": INPUT "DATA DE REF.: ZI? ";D,"LUNA? ";M,"AN? ";Y
   70 PRINT "DATA REFERINTA:"
   80 PRINT USING;"  ";D;M;Y: PRINT " "
   90 DEGREE
  100 GOSUB 200
  110 P=N-X
  120 A$="FIZIC ":B=23
  130 GOSUB 240
  140 A$="EMOT. ":B=28
  150 GOSUB 240
  160 A$="INTEL.":B=33
  170 GOSUB 240
  180 PRINT " "
  190 END 
  200 IF M-3>=0 LET M=M+1: GOTO 220
  210 Y=Y-1:M=13+M
  220 N=INT (365.25*Y)+INT (30.6*M)+D
  230 RETURN 
  240 C=P-INT (P/B)*B
  250 F=100*SIN(360*C/B)
  260 PRINT A$;USING "####.#";F;"%"
  270 IF C>B/2 LET Q=B-C+B/4: GOTO 300
  280 IF C>B/4 LET Q=B/2-C+3*B/4: GOTO 300
  290 Q=B/4-C
  300 IF Q-INT (Q)>=0.5 LET Q=Q+1
  310 PRINT "  MAX IN";USING "###";Q;" ZILE"
  320 RETURN 
