function download_stl10_patches()
% Downloads STL10 data set subset. Checks if data is in
% '/data' folder and downloads from remote repository if necessary.
% Original URL:
% - http://ufldl.stanford.edu/wiki/resources/stlSubset.zip

url_data = 'http://ufldl.stanford.edu/wiki/resources/stlSubset.zip';
fname_data1 = 'stlTrainSubset.mat';
fname_data2 = 'stlTestSubset.mat';

data_dir = '../data/';

%% load data

if (exist([data_dir fname_data1],'file') ~= 2 || ...
        exist([data_dir fname_data2],'file') ~= 2)
    t1 = tic;
    fprintf('Downloading data... ');
    unzip(url_data,data_dir);
    fprintf('%.2fs.\n',toc(t1));
end
