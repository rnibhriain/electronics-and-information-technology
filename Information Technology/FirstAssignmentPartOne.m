count = 0;
time = -1:0.01:1;

squareFunction = square(2*pi*time);


for range = [1, 3, 5, 10, 50, 500]
    freqSum = 0;
    sinFunction = 0;
    
    for step = 1:2:range
        freqSum = freqSum + ((sin(2*pi*step*time))/step);
        sinFunction = sinFunction + 1;
    end
    figure(1)
    fourierSeries = (4/pi)*freqSum;
    
    count = count + 1;
    
    subplot(3, 2, count);
    
    plot(time, fourierSeries, time, squareFunction);
    
    title(['Approximation with ', num2str(range), ' sine functions ']);
    
    ylim([-2, 2]);
    
    set(gca, 'YTick', [-2, -1, 0, 1, 2]);
    
end

