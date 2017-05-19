function [Fs,f,P1] = assetFFT(a, t)

%TODO: check that their lengths match

%Set up Frequency
N = length(t);
T = (t(end)-t(1))/(N-1); %assumes evenly spaced time! TODO: deal with jitter
Fs = 1/T;
f = Fs*(0:(N/2))/N;

%Convert to Frequency Domain
A = fft(a);
P2 = abs(A/N);
P1 = P2(1:N/2+1); %TODO: fix this to work with odds
P1(2:end-1) = 2*P1(2:end-1);