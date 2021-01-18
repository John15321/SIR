% Twoja uwaga jest wymagana przy komentarzach zaczynaj�cych si� na "USER"

T1 = 1.3;           %USER   Sta�a czasowa wyznaczona z wykres�w - ta mniejsza
T2 = 7;             %USER   Sta�a czasowa wyznaczona z wykres�w - ta wi�ksza
skokQ = 3000;       %USER   r�nica amplitudy skoku na wyj�ciu AQ0002
skokI = 5000;       %USER   r�nica amplitudy skoku na wej�ciu AI0003
k = skokI/skokQ    % warto�� skoku

n = 3;              % USER n obliczamy dziel�c T1/T2 i szukamy tej warto�ci 
                    % w tabelce zaaokr�glaj�c w g�r� je�li trzeba.
wartoscT1T = 1.425; % USER warto�� z tabelki T1/T dla danego n
wartoscT2T = 4.463; % USER warto�� z tabelki T2/T dla danego n

T_1 = T1/wartoscT1T;
T_2 = T2/wartoscT2T;
T = (T_1+T_2)/2;


%% STREJC
disp("STREJC")
kp = (7*n+16)/((16*k)*(n-2))         % to po prostu wpisujesz do cz�onu P w Tuningu

Tn = 1/((T/15)*(7*n+16))             % to po prostu wpisujesz do cz�onu I w Tuningu

Tv = T*((n^2 + 4*n + 3)/(7*n+16))    % to po prostu wpisujesz do cz�onu D w Tuningu


%% QDR - Kupfmuller
disp("Kupfmuller")
QDRkp = 1.2*T2/(k*T1)   % to po prostu wpisujesz do cz�onu P w Tuningu

QDRTi = 1/(2*T1*QDRkp)  % to po prostu wpisujesz do cz�onu I w Tuningu

QDRTd = 0.5*T1/QDRkp    % to po prostu wpisujesz do cz�onu D w Tuningu














































