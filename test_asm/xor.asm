.ORIG x3000
LEA     R0, data0           ;3000
LDW     R0, R0, #0          ;3002
LEA     R1, data1           ;3004
LDW     R1, R1, #0          ;3006


XOR R2, R0, r1              ;3008
XOR R3, R0, x-10              ;300a
XOR R2, R0, r1              ;3008
HALT                        ;300c
data0 .FILL xFFFF           ;300e 
data1 .FILL xFFFE                 
.END