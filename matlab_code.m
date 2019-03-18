N=-37:37;
M=window(@hamming,75);
wp=2*pi*5335;
ts=1/16000;
hD=sin(wp*ts*N)./(N.*pi);
hD(38)=wp*ts/pi;
M=M';
W=M.*hD;
wp1=2*pi*2665;
hD1=sin(wp1*ts*N)./(N.*pi);
hD1(38)=wp1*ts/pi;
W1=M.*hD1;
filename='music16k.wav';
Fs=16000;
[y,Fs]=wavread('music16k.wav');
y1=y(:,1);
y2=y(:,2);
s1=conv(y1,W);
s2=conv(y2,W);
s3=[s1;s2];
sound(s3);
y3=y(:,1);
y4=y(:,2);
s4=conv(y3,W);
s5=conv(y4,W);
s6=[s4;s5];
sound(s6);