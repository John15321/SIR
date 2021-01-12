%%%%%%%%%%%%%%%%%%%%
%%%oziebianie/ujemny
T0=20;
T1=260;
k=5.14; %0.19

%PID QDR kopfmuller
Kp=(1.2*T1)/(k*T0)
%Ti=2T0;
Tii=1/(2*T0*Kp)
%Td=0.5T0;
Tdi=0.5*T0/Kp

%SIPART
n=2; %T0/T1 przyblizam w gore
wartoscT0T = 0.282; % USER wartość z tabelki T1/T dla danego n
wartoscT1T = 2.718; % USER wartość z tabelki T2/T dla danego n

T_0 = T0/wartoscT0T;
T_1 = T1/wartoscT1T;
%strejc
T = (T_0+T_1)/2;
Kps=(1/(4*k))*((n+2)/(n-1))
Tn=1/((T/3)*(n+2))
Tv=0