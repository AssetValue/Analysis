# Analysis
Collection of Code used to Analyze Motor Acceleration Data
 
Run assetScript.m to convert an entire directory of data files.
Specify the directory in the 'dirname' variable.
This will create a folder of time plots, FFT plots and an audio file.
 
Use assetAnalyze.m to convert a single data file.
Optionally, include a start and end index (useful for analyzing different stages of operation).
Generally, this is used after a time plot has been created using assetScript.m.
This will create an identical folder, named according to indices.

Tested on MATLAB_R2016a on Windows 7 SP1

Good Luck!
Dimitar