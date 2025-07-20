% MATLAB Program for solving Distillation Train

A=[0.07 0.18 0.15 0.24
   0.04 0.25 0.10 0.65
   0.54 0.42 0.54 0.10 
   0.35 0.16 0.21 0.01]
 
f= [0.15*70 0.25*70 0.40*70 0.2*70]

disp('Solution for D1 B1 D2 B2 is:')
X = A\f'

D1 = X(1)
B1 = X(2)
D2 = X(3)
B2 = X(4)

disp('Solve for Column 2')

D=D1+B1
X_Dx= (0.07*D1+0.18*B1)/D
X_Ds= (0.04*D1+0.24*B1)/D
X_Dt= (0.54*D1+0.42*B1)/D
X_Db= (0.35*D1+0.16*B1)/D

%The mole fractions for column 3 are solved for directly by evaluating Eq.

D2 = X(3)
B2 = X(4)
disp('Solve for Column 3')
B=D2+B2
X_Bx= (0.15*D2+0.24*B2)/B
X_Bs= (0.10*D2+0.65*B2)/B
X_Bt= (0.54*D2+0.10*B2)/B
X_Bb= (0.21*D2+0.01*B2)/B