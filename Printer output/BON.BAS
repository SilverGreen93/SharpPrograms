'Titlu: BON COMANDA
'Programul tipareste pe hirtie produsele si preturile
'cerute de la tastatura. La apasarea combinatiei SHIFT G
'programul va incheia bonul si va tipari totalul.
   10 "B": PRINT "  BON COMANDA"
   20 PRINT "================"
   30 PRINT ""
   40 CLEAR 
   50 INPUT "PRODUS? ";P$
   60 INPUT "PRET? ";S
   70 PRINT P$,S
   80 T=T+S
   90 GOTO 50
  100 "G": PRINT "----------------"
  110 PRINT "TOTAL",T
  120 END
