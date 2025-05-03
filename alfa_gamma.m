function [algam, upperciag, midciag, lowerciag]  = alfa_gamma
%length of the record
ndat = 11360;
%Power of 2 used in the FFT
m = 2^14;
%Percentage of tapering
ptap = 0.2;
cont = 0.5;

%Data loading
load('alfagamma.txt');
ko = alfagamma;
ki = load('alfagamma.txt');

%Number of weights
prompt = 'What is the number of weights for the Gamma under Alfa signal?';
mm = input(prompt);

yp = 2*pi;
nz = m/2;
nh = nz/2;
den = yp*ndat;
nu = 358;

%Spikes allocation
k = zeros(1,m);
for j = 1:nu
    k(ko(j)) = 1;
end

p1 = nu/ndat;
for i = 1:ndat
    k(i) = k(i) - p1;
end
mtap = round((ptap*ndat+cont)/2);
for i = 1:mtap
    weight = cont - cont*cos(pi*(i-cont)/mtap);
    k(i) = k(i)*weight;
    k(ndat+1-i) = k(ndat+1-i)*weight;
end


%Raw periodogram
kdft = fft(k,m);
kdft2 = kdft(1:2^14);
akdft = real(kdft2);
bkdft = imag(kdft2);

for i = 2:nh
    ww(i-1) = (akdft(i)*akdft(i)+bkdft(i)*bkdft(i))/den;
    aw(i-1) = 8*ww(i-1)/7;  
end

nh = nh-1;

%Zero frequencies
for i = 1:mm
    aw2(i) = 0;
    for j=i-mm:i+mm
        if i+j > 0 
            if j>0
            aw2(i) = aw2(i)+aw(j);
            elseif j<0
               aw2(i) = aw2(i)+aw(abs(j)); 
            end
        else 
            aw2(i) = aw2(i)+aw(abs(j-i)); 
        end
    end
    aw2(i) = aw2(i)/(2*mm);
end
%------------------------------------------


for i = (mm+1):nh-mm
    aw2(i) = 0;
    for j=i-mm:i+mm
    aw2(i) = aw2(i)+aw(j);
    end
    aw2(i) = aw2(i)/(2*mm+1);
end


ps_alfgam = aw2;

algam=zeros(2,i);
for j = 1:i
    freq(j)=j/16.384;
end
algam(1,:)=freq;
algam(2,:)=ps_alfgam;
