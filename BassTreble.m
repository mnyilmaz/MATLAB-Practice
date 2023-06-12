                      %%%%%% Bass-Treble Sound Separation %%%%%%        

%% Bass Sound (D���k frekansl� sinus olu�turulup dinlenebilir)

n=[0:44000-1]; % length
fs=44000; % sampling frequency
f1= 150;
x1=sin(2*pi*f1.*n/fs); % A sine of 150 Hz sampled at 44000 Hz
sound(x1,44000); % Listening to the Bass sounding of the signal

t=linspace(0,1,44000); % linspace function splits 0 to 1 into 44001 parts

figure, plot(t,x1); 
axis([-0.1 1.1 -1.3 1.3 ])

%% Treble Sound (Can create high-frequency sinuses and listen)
f2=15000;
x2=sin(2*pi*f2.*n/fs); % 15000 Hz sine

figure, plot(t,x2); 
axis([-0.1 1.1 -1.3 1.3 ])

sound(x2,44000); % listening for the signal to make Treble

%% Mix Bass and Treble sounds

x3=x1+x2;
figure, plot(t,x3); 
axis([-0.1 1.1 -3 3 ])
sound(x3,44000);
 
%% Frequency responses of signals 

% Bass frequency response (150 Hz)
X1=fft(x1); 
f=linspace(-22000,22000,44000); % (-22000 +22000 -fs/2 ve +fs/2 let's make a difference. Since FT is symmetrical
figure, plot(f,abs(fftshift(X1))); % in here fftshift 0 2*pi shifts the transform between -pi to pi


% Treble frequency response (15000 Hz)
X2=fft(x2); 
figure, plot(f,abs(fftshift(X2))); 


% Bass and Treble mixed audio frequency response
X3=fft(x3); %toplanm�� iki sinyalin fft si
figure, plot(f,abs(fftshift(X3))); %

%% Separate Bass and Treble by creating filters

N   = 15;        % FIR filter order
Fp  = 3000;       % 3 kHz passband-edge frequency
Fs  = 44000;       % 44 kHz sampling frequency
Rp  = 0.00057565; % passpand error
Rst = 1e-2;       % Stopband error -40 dB (stopband attenuation)
wpi=2*Fp/Fs;     % Normalized Frequency (xpi rad/sample) 

h = firceqrip(N,wpi,[Rp Rst],'passedge'); % Low pass filter
% h = firceqrip(N,wpi,[Rp Rst],'high'); % high pass filter

fvtool(h,'Fs',Fs,'Color','White') % Visualize filter

% Using the filter's impulse response coefficients, let's covolute the mixed audio signal 
% and separate the bass treble into the time domain
% y[n]=x[n] * h[n]

y_out_time=conv(x3,h); 

sound(x3,44000); 
sound(y_out_time,44000); 


% performing the filtering of the signal in the Frequency domain
% Y(f) = X(f).*H(f) 

H=fft(h,44001); % impulse response (h[n]) fft'si H(f)(We get fft with the same length as X3) 
% H=fft(h); % where fft is only small in size h and contains few samples
figure;plot(abs(fftshift(H)));


Y=X3.*H; 

figure, subplot(4,1,1); plot(f,abs(fftshift(X1))); 
subplot(4,1,2); plot(f,abs(fftshift(X3)));
subplot(4,1,3); plot(f,abs(fftshift(H)));
subplot(4,1,4); plot(f,abs(fftshift(Y))); 


% So we get the fft of the filtered signal
% Going back to the time domain with ifft:

y_out_freq=ifft(Y); 

sound(x3,44000); % Mixed signal
sound(y_out_freq,44000); % Via the separated signal frequency domain
sound(y_out_time,44000); % By split signal time domain convolution
