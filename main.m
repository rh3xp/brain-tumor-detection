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



