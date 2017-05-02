function [t,a]=convertUnits(time,z,ts,gtot,range,start,finish)
t = time(start:finish)*ts; %TODO: deal with timestamps going negative when the get big!!
a = z(start:finish)*(gtot/range); %TODO: fix this