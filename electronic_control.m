R1=input('R1 = ');
C1=input('C1 = ');
R2=input('R2 = ');
C2=input('C2 = ');
R3=input('R3 = ');
C3=input('C3 = ');
R4=input('R4 = ');
C4=input('C4 = ');
num1=R2*[C1*R1 1];
den1=-R1*[C2*R2 1];
sys1=tf(num1,den1);
num2=R4*[C3*R3 1];
den2=-R3*[C4*R4 1];
sys2=tf(num2,den2);
sys=sys1*sys2;
rlocus(sys);
[Gm,Pm,Wcg,Wcp]=margin(sys);
bode(sys);
disp('Gm = ');
disp(Gm);
disp('Pm = ');
disp(Pm);



