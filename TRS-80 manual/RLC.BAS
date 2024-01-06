'Title: IMPEDANCE IN A SERIES CIRCUIT
'Sample program from page 107
'Program calculates the total impedance of a RLC series circuit
   10 "C": DEGREE : INPUT "L=";L
   20 INPUT "C=";C
   30 INPUT "R=";R
   40 INPUT "F(HZ)=";F
   50 F=2*[PI]*F
   60 L=L*F
   70 C=C*F
   80 I=L-1/C
   90 Z=[SQR](R*R+I*I)
  100 X=ACS (R/Z)
  110 IF 0>I LET X=-X
  120 USING 
  130 PRINT "X",R
  140 PRINT "Y",I
  150 PRINT "Z",Z
  160 PRINT "PHASE",X
  170 END 
