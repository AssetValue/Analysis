function assetAnalyze(filename, startData, endData)
%Run Asset Value Analysis on a file located at filename. Optionally,
%specify a start and stop index.

[pathstr,name,ext] = fileparts(filename);
if(isempty(pathstr))
    pathstr='.';
end

disp(strcat('Importing Data from :',name,ext));
if nargin<=2
    [time,z] = assetData(filename);
    startData=1;
else
    [time,z] = assetData(filename,startData,endData);
end

disp('Validating Data');
[time,z] = assetValidate(time, z);

disp('Setting Parameters');
[ts,gtot,range,start,finish] = assetParams(time, z);

disp('Converting Units');
[t,a] = assetUnits(time,z,ts,gtot,range,start,finish);

disp('Converting to Frequency');
[Fs,f,P1] = assetFFT(a,t);

subdir=strcat(num2str(startData+start-1),'_',num2str(startData+finish-1),'/');
disp(strcat('Creating Files in :',subdir));
assetFiles(strcat(pathstr,'/',subdir),gtot,a,t,Fs,f,P1);