function [x]=sideconv(y, h)


Lx=length(y)-length(h)+1;  % 
Lx2=pow2(nextpow2(Lx));    % Find smallest power of 2 that is > Lx
Y=fft(y, Lx2);		   % Fast Fourier transform
H=fft(h, Lx2);		   % Fast Fourier transform
X=Y./H;        		   % 
x=real(ifft(X, Lx2));      % Inverse fast Fourier transform
x=x(1:1:Lx);               % Take just the first N elements
%x=x/max(abs(x));           % Normalize the output


 