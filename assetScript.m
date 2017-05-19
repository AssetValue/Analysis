%Use this script to convert an entire directory of .csv data files (non-recursive)
clear;
dirname='./'; %!! Include trailing "/"
filenames=dir(strcat(dirname,'*.csv'));
filenames={filenames.name};
for i=1:length(filenames)
    filename = filenames(i);
    filename = strsplit(filename{1},'.');
    filename = filename{1};
    mkdir(strcat(dirname,filename));
    movefile(strcat(dirname,filename,'.csv'),strcat(dirname,filename))
    assetAnalyze(strcat(dirname,filename,'/',filename,'.csv'))
end
clearvars i filename filenames dirname