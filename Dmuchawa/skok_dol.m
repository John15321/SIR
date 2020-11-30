% Twoja uwaga jest wymagana przy komentarzach zaczynaj¹cych siê na "USER"

T1 = 1.66;          %USER   Sta³a czasowa wyznaczona z wykresów - ta mniejsza
T2 = 6.33;          %USER   Sta³a czasowa wyznaczona z wykresów - ta wiêksza
skokQ = 3000;       %USER   ró¿nica amplitudy skoku na wyjœciu AQ0002
skokI = 4500;       %USER   ró¿nica amplitudy skoku na wejœciu AI0003
k = skokI/skokQ;    % wartoœæ skoku

n = 4;              % USER n obliczamy dziel¹c T1/T2 i szukamy tej wartoœci 
                    % w tabelce zaaokr¹glaj¹c w górê jeœli trzeba.
wartoscT1T = 1.425; % USER wartoœæ z tabelki T1/T dla danego n
wartoscT2T = 4.463; % USER wartoœæ z tabelki T2/T dla danego n

T_1 = T1/wartoscT1T;
T_2 = T2/wartoscT2T;
T = (T_1+T_2)/2;


%% STREJC
kp = (7*n+16)/((16*k)*(n-2))         % to po prostu wpisujesz do cz³onu P w Tuningu

Tn = 1/((T/15)*(7*n+16))             % to po prostu wpisujesz do cz³onu I w Tuningu

Tv = T*((n^2 + 4*n + 3)/(7*n+16))    % to po prostu wpisujesz do cz³onu D w Tuningu


%% QDR - Kupfmuller

QDRkp = 1.2*T2/(k*T1)   % to po prostu wpisujesz do cz³onu P w Tuningu

QDRTi = 1/(2*T1*QDRkp)  % to po prostu wpisujesz do cz³onu I w Tuningu

QDRTd = 0.5*T1/QDRkp    % to po prostu wpisujesz do cz³onu D w Tuningu
