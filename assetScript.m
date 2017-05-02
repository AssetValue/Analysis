%TODO: import data (generate time, z and filename)
filename = 'assetData1489443021';
%TODO: check that array lengths match and data is valid

%Set Parameters
%TODO: import from file header
ts = 1/1000000 %time, in seconds, of unit time in the timestamp
gtot = 16 %two-sided g-range of sensor (e.g. 16 for +-8G)
range = 2^ceil(log(max(z)-min(z))/log(2)) %unit range of data (e.g. 65536 for 16-bit data)
start = 1 %start point to take data
finish = length(time) %endpoint to take data

filename = strcat(filename,'_',num2str(start),'_',num2str(finish))

[t,a]=convertUnits(time,z,ts,gtot,range,start,finish);
disp('Converting to Frequency');
[Fs,f,P1]=assetFFT(a,t);
disp(strcat('Creating Files in',pwd,'/',filename,'/'));
createFiles(filename,gtot,a,t,Fs,f,P1);

clearvars a f finish Fs gtot P1 range start t ts;