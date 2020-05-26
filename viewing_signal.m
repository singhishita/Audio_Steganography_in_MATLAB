[y,fs] = audioread('speechwav.wav');   
t = linspace(0,length(y)/fs,length(y));
plot(t,y)
%Nfft=1024;  %length of fft
%f=linspace(0,fs,Nfft);
%G=abs(fft(y,Nfft));  %fft of samles y in 1024 points
%figure;
%plot(f(1:Nfft/2),G(1:Nfft/2))
  

 


