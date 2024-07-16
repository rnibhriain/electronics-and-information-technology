[notes,fsampling] = audioread('exercise notes.wav');

x = 0:1:10000;

plot(x, notes);

% plotting the notes seperately

x1 = transpose(0:1:6684);
note1 = notes(1:6685);
x2 = transpose(0:1:3316);
note2 = notes(6685:10001);

subplot(2, 2, 1);
plot(x1, note1);

subplot(2, 2, 3);
plot(x2, note2);

% FFT Section

fftx = transpose(fsampling/-2:1:fsampling/2-1);

note1 = fftshift(abs(fft(note1, fsampling)));

subplot(2, 2, 2);
plot(fftx, note1);

note2 = fftshift(abs(fft(note2, fsampling)));

subplot(2, 2, 4);
plot(fftx, note2);

% Note 1 = F#7  (2928Hz)
% Note 2 = C#5  (560Hz)



% fs = 100;
% frequency = 10;
% time = 1;
% x = [0:1/fs:time-1/fs];
% N = 1024;


% F1 = fftshift(abs(fft(note1, N)));
% newx1 = -fs/2:fs/N:fs/2-fs/N;
%
% subplot(2, 2, 2);
% plot(newx1, F1);
%
% F2 = fftshift(abs(fft(note2, N)));
% newx2 = -fs/2:fs/N:fs/2-fs/N;
%
% subplot(2, 2, 4);
% plot(newx2, F2);
