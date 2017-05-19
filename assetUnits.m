function [t,a] = assetUnits(time, z, ts, gtot, range, start, finish)

t = time(start:finish)*ts;
a = z(start:finish)*(gtot/range); %TODO: fix this