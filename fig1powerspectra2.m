close all;
clear all;
clc

algam = fasma_suxnotites;
gam = fasma_suxnotites_gamma;
alfa = fasma_suxnotites_alfa;

prompt = 'Lowest frequency - gamma under alfa?';
f1 = input(prompt);
prompt = 'Highest frequency - gamma under alfa?';
f2 = input(prompt);

indag1 = round(f1*16.384+0.5);
indag2 = round(f2*16.384);

prompt = 'Lowest frequency - gamma?';
fg1 = input(prompt);
prompt = 'Highest frequency - gamma ?';
fg2 = input(prompt);

indg1 = round(fg1*16.384);
indg2 = round(fg2*16.384);

prompt = 'Lowest frequency - alfa?';
fa1 = input(prompt);
prompt = 'Highest frequency - alfa?';
fa2 = input(prompt);

inda1 = round(fa1*16.384);
inda2 = round(fa2*16.384);

algam = algam(:, indag1:indag2);
%Confidence interval - Gamma
cp = 1.116;
m = 2^14;
nug = 538;
ndatg = 15870;
p1g = nug/ndatg;
mmg = 40;
ciupperg = log10(p1g/(2*pi))+1.96*log10(exp(1))*(((m/ndatg)*cp*(1/(2*mmg+1))...
    ^(1/2)));
cmidg = log10(p1g/(2*pi));
cilowerg = log10(p1g/(2*pi))-1.96*log10(exp(1))*(((m/ndatg)*cp*(1/(2*mmg+1))...
    ^(1/2)));
for i = 1:indg2
    uppercig(i) = ciupperg;
    midcig(i) = cmidg;
    lowercig(i) = cilowerg;
end

%Confidence interval - Alfa
cp = 1.116;
m = 2^14;
nua = 356;
ndata = 15870;
p1a = nua/ndata;
mma = 40;
ciuppera = log10(p1a/(2*pi))+1.96*log10(exp(1))*(((m/ndata)*cp*(1/(2*mma+1))...
    ^(1/2)));
cmida = log10(p1a/(2*pi));
cilowera = log10(p1a/(2*pi))-1.96*log10(exp(1))*(((m/ndata)*cp*(1/(2*mma+1))...
    ^(1/2)));
for i = 1:inda2
    uppercia(i) = ciuppera;
    midcia(i) = cmida;
    lowercia(i) = cilowera;
end

%Confidence interval - Gamma under Alfa
cp = 1.116;
m = 2^14;
nuag = 358;
ndatag = 11360;
p1ag = nuag/ndatag;
mmag = 30;
ciupperag = log10(p1ag/(2*pi))+1.96*log10(exp(1))*(((m/ndatag)*cp*(1/(2*mmag+1))...
    ^(1/2)));
cmidag = log10(p1ag/(2*pi));
cilowerag = log10(p1ag/(2*pi))-1.96*log10(exp(1))*(((m/ndatag)*cp*(1/(2*mmag+1))...
    ^(1/2)));
for i = 1:indag2
    upperciag(i) = ciupperag;
    midciag(i) = cmidag;
    lowerciag(i) = cilowerag;
end

gam = gam(:,89:197);
alfa = alfa(:,89:197);
algam = algam(:,17:125);

%Plots
figure;
plot(gam(1,:),log10(gam(2,:)))
title('a')
xlabel ('Frequencies - Hz');
ylabel ('log10 Power Spectrum');

figure;
plot(algam(1,:),log10(algam(2,:)))
title('b')
xlabel ('Frequencies - Hz');
ylabel ('log10 Power Spectrum');


