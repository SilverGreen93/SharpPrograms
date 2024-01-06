'Title: NORMAL DISTRIBUTION AND PERCENTILE
'Sample program from page 113
'Determines the normal distribution function and its inverse function (percentile)
'according to Basting's best approximate equation.
   10 "N": AREAD Z
   20 Y=1/(1+0.2316419*Z)
   30 A=0.31938153:B=-0.356563782
   40 C=1.78147937:D=1.330274429
   50 E=-1.821255978
   60 F=C+Y*(D*Y+E):P=1-EXP (-0.5*Z*Z)/[SQR](2*[PI])*Y*(A+Y*(B+Y*F))
   70 BEEP 2: PRINT "P",P
   80 END 
   90 "M": AREAD Z
  100 Y=[SQR]LN (1/Z/Z)
  110 A=2.515517:B=0.802853:C=0.010328
  120 D=1.432788:E=0.189269:F=0.00138
  130 Q=Y-(A+Y*(B+C*Y))/(1+Y*(D+Y*(E+F*Y)))
  140 BEEP 2: PRINT "TQ",Q
  150 END 
