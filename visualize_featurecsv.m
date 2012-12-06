function ret = visualize_featurecsv(inputfilename)
% visualize csvfile of feature-temporal 2D
% USAGE
%   vonormalize( filename.csv )
% OUTPUT
%   filename.png

[pathstr,name,ext] = fileparts(inputfilename);
A = load(inputfilename);
img = image_rowsc(A');
caxis([0 1.0]);
saveas(img, [pathstr, name, '.png']);
waitfor(img);
