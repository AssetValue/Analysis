function [time,z] = assetValidate(time, z)

%TODO: check that array lengths match and data is valid
time(isnan(time(:,1)),:)=[];
z(isnan(z(:,1)),:)=[];
%TODO: if first time value is negative, add range
for j=3:length(time) %TODO: start this at 2 once you fix below
	if time(j) < time(j-1)
        time(j:end)=time(j:end)+2*time(j-1)-time(j)-time(j-2); %TODO: use range variable here instead!
    end
end
l=min(length(z),length(time));
z=z(1:l);
time=time(1:l);