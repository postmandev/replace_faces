%% Processes all reference images listed in data/reference, builting
% a .mat file with the image data as well as data generated by
% detect_faces()

%% 
addpath('fitw_detect');
data  = load('fitw_detect/face_p146_small.mat');
model = data.model;
threshold = 0.3;

% -90
fprintf(1, '-90\n');
im_minus_90 = im2double(imread('data/reference/minus-90.jpg'));
[X,Y,bbox,~] = detect_faces(im_minus_90, model, threshold);
minus_90 = struct('image', im_minus_90, 'x', X, 'y', Y, 'bbox', bbox, 'orientation', -90);
clear im_minus_90; clear X; clear Y; clear bbox;

% -75
fprintf(1, '-75\n');
im_minus_75 = im2double(imread('data/reference/minus-75.jpg'));
[X,Y,bbox,~] = detect_faces(im_minus_75, model, threshold);
minus_75 = struct('image', im_minus_75, 'x', X, 'y', Y, 'bbox', bbox, 'orientation', -75);
clear im_minus_75; clear X; clear Y; clear bbox;

% -60
fprintf(1, '-60\n');
im_minus_60 = im2double(imread('data/reference/minus-60.jpg'));
[X,Y,bbox,~] = detect_faces(im_minus_60, model, threshold);
minus_60 = struct('image', im_minus_60, 'x', X, 'y', Y, 'bbox', bbox, 'orientation', -60);
clear im_minus_60; clear X; clear Y; clear bbox;

% -45
fprintf(1, '-45\n');
im_minus_45 = im2double(imread('data/reference/minus-45.jpg'));
[X,Y,bbox,~] = detect_faces(im_minus_45, model, threshold);
minus_45 = struct('image', im_minus_45, 'x', X, 'y', Y, 'bbox', bbox, 'orientation', -45);
clear im_minus_45; clear X; clear Y; clear bbox;

% -30
fprintf(1, '-30\n');
im_minus_30 = im2double(imread('data/reference/minus-30.jpg'));
[X,Y,bbox,~] = detect_faces(im_minus_30, model, threshold);
minus_30 = struct('image', im_minus_30, 'x', X, 'y', Y, 'bbox', bbox, 'orientation', -30);
clear im_minus_30; clear X; clear Y; clear bbox;

% -15
fprintf(1, '-15\n');
im_minus_15 = im2double(imread('data/reference/minus-15.jpg'));
[X,Y,bbox,~] = detect_faces(im_minus_15, model, threshold);
minus_15 = struct('image', im_minus_15, 'x', X, 'y', Y, 'bbox', bbox, 'orientation', -15);
clear im_minus_15; clear X; clear Y; clear bbox;

% 0
fprintf(1, '0\n');
im_zero = im2double(imread('data/reference/zero-degrees.jpg'));
[X,Y,bbox,~] = detect_faces(im_zero, model, threshold);
zero = struct('image', im_zero, 'x', X, 'y', Y, 'bbox', bbox, 'orientation', 0);
clear im_zero; clear X; clear Y; clear bbox;

% +15
fprintf(1, '+15\n');
im_plus_15 = im2double(imread('data/reference/plus-15.jpg'));
[X,Y,bbox,~] = detect_faces(im_plus_15, model, threshold);
plus_15 = struct('image', im_plus_15, 'x', X, 'y', Y, 'bbox', bbox, 'orientation', 15);
clear im_plus_15, clear X; clear Y; clear bbox;

% +30
fprintf(1, '+30\n');
im_plus_30 = im2double(imread('data/reference/plus-30.jpg'));
[X,Y,bbox,~] = detect_faces(im_plus_30, model, threshold);
plus_30 = struct('image', im_plus_30, 'x', X, 'y', Y, 'bbox', bbox, 'orientation', 30);
clear im_plus_30, clear X; clear Y; clear bbox;

% +45
fprintf(1, '+45\n');
im_plus_45 = im2double(imread('data/reference/plus-45.jpg'));
[X,Y,bbox,~] = detect_faces(im_plus_45, model, threshold);
plus_45 = struct('image', im_plus_45, 'x', X, 'y', Y, 'bbox', bbox, 'orientation', 45);
clear im_plus_30, clear X; clear Y; clear bbox;

% +60
fprintf(1, '+60\n');
im_plus_60 = im2double(imread('data/reference/plus-60.jpg'));
[X,Y,bbox,~] = detect_faces(im_plus_60, model, threshold);
plus_60 = struct('image', im_plus_60, 'x', X, 'y', Y, 'bbox', bbox, 'orientation', 60);
clear im_plus_60, clear X; clear Y; clear bbox;

% +75
fprintf(1, '+75\n');
im_plus_75 = im2double(imread('data/reference/plus-75.jpg'));
[X,Y,bbox,~] = detect_faces(im_plus_75, model, threshold);
plus_75 = struct('image', im_plus_75, 'x', X, 'y', Y, 'bbox', bbox, 'orientation', 75);
clear im_plus_75, clear X; clear Y; clear bbox;

% +90
fprintf(1, '+90\n');
im_plus_90 = im2double(imread('data/reference/plus-90.jpg'));
[X,Y,bbox,~] = detect_faces(im_plus_90, model, threshold);
plus_90 = struct('image', im_plus_90, 'x', X, 'y', Y, 'bbox', bbox, 'orientation', 90);
clear im_plus_90, clear X; clear Y; clear bbox;

save('data/reference_face.mat' ...
    ,'minus_90' ...
    ,'minus_75' ...
    ,'minus_60' ...
    ,'minus_45' ...
    ,'minus_30' ...
    ,'minus_15' ...
    ,'zero' ...
    ,'plus_15' ...
    ,'plus_30' ...
    ,'plus_45' ...
    ,'plus_60' ...
    ,'plus_75' ...
    ,'plus_90'); 

