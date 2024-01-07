'Title: RECEIPT PRINTER
'The program prints on paper the products and prices
'that are introduced on the keyboard. If you press SHIFT G
'the program will end the receipt and print the total.
   10 "B": PRINT "    RECEIPT    "
   20 PRINT "================"
   30 PRINT ""
   40 CLEAR 
   50 INPUT "PRODUCT? ";P$
   60 INPUT "PRICE? ";S
   70 PRINT P$,S
   80 T=T+S
   90 GOTO 50
  100 "G": PRINT "----------------"
  110 PRINT "TOTAL",T
  120 END
