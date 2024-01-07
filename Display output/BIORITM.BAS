'Titlu: BIORITM
'Programul calculeaza cei 3 parametri specifici bioritmului: fizicul, emotionalul si intelectul
'pe baza ciclurilor lor de 23, 28 si 33 de zile.
'Rezultatul este tiparit pe ecran in forma de procent in ziua de referinta pentru fiecare
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
   20 GOSUB 150
   30 X=N
   40 "Z": INPUT "DATA DE REF.: ZI? ";D,"LUNA? ";M,"AN? ";Y
   50 DEGREE
   60 GOSUB 150
   70 P=N-X
   80 A$="FIZIC":B=23
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
  260 PRINT "MAXIMUL PESTE";USING "###";Q;" ZILE"
  270 RETURN 
