stemcount = 0;


for range = [1, 3, 5, 10, 50, 500]
    amplitude = [];
    time = -1:0.01:1;
    
    for step = 1:2:range*2
        
        freqSum = (4/pi) * ((sin(2 * pi * step * time))/step);
        
        amplitude = [amplitude (max(freqSum))];
        
    end
    step = (1:2:step);
    figure(1);
    
    stemcount = stemcount + 1;
    
    subplot(3, 2, stemcount);
    
    stem(step, amplitude);
    
    ti= ['Approximation with ', num2str(range), ' sine functions '];
    
    xlabel ('frequency');
    ylabel ('amplitude');
    
   title(ti);
    
end

