function assetFiles(dirname, gtot, a, t, Fs, f, P1)
%This function generates graphs and figures

if exist(dirname,'dir')~=7
    mkdir(dirname);
end

%Plot Time Domain
figure;
clf;
plot(t,a);
grid on;
title('Engine Acceleration');
ylabel('Acceleration (g)');
xlabel('Time (s)');
savefig(strcat(dirname,'TimePlot.fig'))
print(strcat(dirname,'TimePlot.png'),'-dpng');
close;

%Plot Frequency Domain
figure;
clf;
plot(f,P1,'-o')
grid on;
title('Engine Acceleration');
ylabel('Acceleration (g)');
xlabel('Frequency (Hz)');
savefig(strcat(dirname,'FreqPlot.fig'))
print(strcat(dirname,'FreqPlot.png'),'-dpng');
close;

%Plot Frequency Log Domain
figure;
loglog(f,P1,'-o');
grid on;
title('Engine Acceleration');
ylabel('Acceleration (g)');
xlabel('Frequency (Hz)');
savefig(strcat(dirname,'FreqLogPlot.fig'))
print(strcat(dirname,'FreqLogPlot.png'),'-dpng');
close;

%Convert to Audio
audiowrite(strcat(dirname,'Audio.wav'),2*(a-mean(a))/gtot,round(Fs));
