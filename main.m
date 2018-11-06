clc;                % clear console
close all;          % closes all dialog boxes
clear all;          % clears memory

%% Input
[I,path]=uigetfile('*.jpg','select a input image');         % input image
str=strcat(path,I);                                         % concats the filename and the path
s=imread(str);                                              % reads the image

figure;                                                     % dialog box
imshow(s);                                                  % show the image
title('Input image','FontSize',20);                         % prints image


%% Filter

num_iter = 10;
delta_t = 1/7;
kappa = 15;
option = 2;

disp('Preprocessing image please wait . . .');
inp = anisodiff(s,num_iter,delta_t,kappa,option);           % pass to the function
inp = uint8(inp);                                           % converting input to unsigned 8 bit int
    
inp=imresize(inp,[256,256]);                                % resizes the image to 256 rows and cols, and returns the image
if size(inp,3)>1            
    inp=rgb2gray(inp);                                      % converts rgb image to grayscale, and stores it as integers(unsigned)
end
figure;
imshow(inp);
title('Filtered image','FontSize',20);                      % shows filtered image

