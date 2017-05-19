function [ts,gtot,range,start,finish] = assetParams(time, z)
%Use this function to set parameters

%TODO: import from file header
ts = 1/1000000; %time, in seconds, of unit time in the timestamp
gtot = 1; %two-sided g-range of sensor (e.g. 16 for +-8G)
range = 2^ceil(log(max(z)-min(z))/log(2)); %unit range of data (e.g. 65536 for 16-bit data)
start = 1; %start point to take data
finish = length(time); %endpoint to take data