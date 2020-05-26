# Audio_Steganography_in_MATLAB
Audio Steganography Using Signal Processing in MATLAB

Information hiding is a part of information security. Steganography is a technique of information hiding that focuses on hiding the existence of secret messages. The aim of steganographic methods is to hide the existence of the communication and therefore to keep any third-party unaware of the presence of the Steganographic exchange.

Audio steganography requires modification of audio carrier signal in an imperceptible manner. Implementation of Fast Fourier Transform in audio steganography demonstrates that the frequency domain of the audio signal can effectively be used to hide the secret message.

Steganography can be of many types depending upon the type of data encryption being done. Here, I am using using audio signal processing using MATLAB as the stego application for audio steganography. Audio signal processing is a subfield of signal processing that is concerned with the electronic manipulation of audio signals. As audio signals may be represented in either digital or analog format, processing may occur in either domain. Using fast fourier transform technology it is possible to capture the waveform and analyze it for future requirement.

![Block Diagram](https://github.com/singhishita/Audio_Steganography_in_MATLAB/blob/master/image.png)

# Methodology

1. In this project we input a message from the user, say x(t).
2. We take an audio signal (x(t)) on the input end and convolute it with another audio signal (y(t)). y(t) is the key audio signal. We convolve the two signals using a MATLAB code.
3. After convolution, the original signal won’t be clear. This convoluted signal is f(t).
4. Now, we have f(t) = x(t)*y(t) (convolution)
5. We take a fourier transform of f(t). F(ω) = X(ω) x Y(ω) (Convolution in time domain is multiplication in frequency domain).
      X(ω) = F(ω)/Y(ω)
6. Taking inverse fourier transform of X(ω), we get our original audio message x(t).

Hence steganography is complete.
Here, convolution is used to combine input (speech) with carrier audio (claps). FFT is the method to calculate the discrete Fourier Transform and its information. It actually breaks down the signal into sinusoids of different frequency domains. FFT converts the continuous time domain into continuous frequency domain, including both magnitude and phase information.

# Audio Signal

I have implemented this algorithm to hide audio files in key audio signal which can be used for message communication and have decoded at other user end with the decoder software designed with inverse of algorithm to decode messages from audio file send. Although the convolution and fast fourier transform technique does not give a clean noise-free output. This noise can be removed using high pas filter in MATLAB. Audio Steganography methods can embed messages in WAV, AU, and even MP3 sound files.

Here, I have used two audio files as .wav format. One is a speech file and the other has claps. When convoluted together, it gives a noisy output. To view this, the viewingsignal.m file can be run and the signal graph can be observed. It clearly shows the convolved output. Upon deconvolution the same signal shows original message in the signal  graph.
