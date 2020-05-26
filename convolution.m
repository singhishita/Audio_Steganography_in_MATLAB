filename ='clapred.wav';
filename1 ='speechwav.wav';


%[y,Fs] = audioread(filename)
[y1,Fs] = audioread(filename);%plays speech
%y1 = resample(y1a,1,10);
sound(y1,Fs);
pause(10)

[y,Fs] = audioread(filename1);         %plays speech
%y = resample(ya,1,10);
sound(y,Fs);
pause(10)



y3 = conv(y,y1);
sound(y3,Fs);
pause(25);

%y1(1)=1e-6;
%z = deconv(y3,y1);
%sound(z,Fs);

disp("done")

%{
z=fft(y3)./fft(y1);
result = real(ifft(z)); 
sound(z,Fs);
disp("done2")
%}


yx = sideconv(y3,y1);
%yx1= highpass(yx,500,44100)
sound(2.*yx,Fs);


disp("done2")

