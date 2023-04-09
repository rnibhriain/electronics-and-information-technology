load('array.mat');

F = (abs(fft(y, N)));



subplot(1, 2, 2);
plot (newX, F);

subplot(1, 2, 1);
plot(note1, note2);

