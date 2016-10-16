function [] = specfft(x,window,overlap)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

N=numel(x); 
n=1:N;

L=window;
ovlp=overlap;
h=1;

for n=1:L-ovlp:N-L-ovlp
   X=fft(x(n:n+L-1));
   G(:,h)=log(log(log(abs(X(1:L/2))+14)));
   h=h+1;
end

figure
image(flip(G),'CDataMapping','scaled')
colormap jet
colorbar
title('Spectrum vs Time graph')
xlabel('Time')
ylabel('Inverted Frequency Bins')

end

