function createFiles(filename,gtot,a,t,Fs,f,P1)

mkdir(filename);

%Plot Time Domain
figure;
clf;
plot(t,a);
grid on;
title('Engine Acceleration');
ylabel('Acceleration (g)');
xlabel('Time (s)');
savefig(strcat(filename,'/TimePlot.fig'))
print(strcat(filename,'/TimePlot.png'),'-dpng');
close;

%Plot Frequency Domain
figure;
clf;
plot(f,P1,'-o')
grid on;
title('Engine Acceleration');
ylabel('Acceleration (g)');
xlabel('Frequency (Hz)');
savefig('PeaksFile.fig')
savefig(strcat(filename,'/FreqPlot.fig'))
print(strcat(filename,'/FreqPlot.png'),'-dpng');
close;

%Plot Frequency Log Domain
figure;
loglog(f,P1,'-o');
grid on;
title('Engine Acceleration');
ylabel('Acceleration (g)');
xlabel('Frequency (Hz)');
savefig('PeaksFile.fig')
savefig(strcat(filename,'/FreqLogPlot.fig'))
print(strcat(filename,'/FreqLogPlot.png'),'-dpng');
close;

%Convert to Audio
audiowrite(strcat(filename,'/Audio.wav'),2*a/gtot,round(Fs));
