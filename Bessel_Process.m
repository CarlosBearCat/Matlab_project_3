%%Carlos Luevanos 
%%10 - 11 - 16
%%Project 3: Physics
%%Lab: 3.3 - simulate and plot distance from origin

clear all;
close all; 
clc;

%%Parameters
T = 64;
V = 13.2e-3;
R = 2.8e-10;

%%define step size
h = 0.0001;
total_time = 1000;
time = 0: h : total_time; %time sequence

%%Generate Brownian motions in 1d, 2d, 3d 
[BM] = BM_1D(total_time, h , T, V, R);%1d motion
[BM_1, BM_2] = BM_2D(total_time, h, T, V, R); %2d motion
[BM_3_1, BM_3_2, BM_3_3] = BM_3D(total_time, h, T, V, R); %3d motion


d_1D = abs(BM);
d_2D = sqrt(((BM_1).^2) + ((BM_2).^2));
d_3D = sqrt(((BM_3_1).^2) + ((BM_3_2).^2) + ((BM_3_3).^2));


plot(time, d_1D,'r'); hold on;
plot(time, d_2D,'b');hold on;
plot(time, d_3D, 'g');

title('Bessel Process: Red = 1D, Blue = 2D, Green = 3D'); 
xlabel('Time(In seconds)');
ylabel('Displacement from origin');
set(gca);

%%Running the program quite a few times, I observed that 3d brownian motion
%%had the greatest displacement from the origin usually after 700 seconds.
%%From time to time, 1d and 2d usually had a greater displacement in the
%%first 100 to 400 seconds, but displacement soon fell down afterwards.
%%What can be observed is that there is some trend which after some quick
%%research on google, can be applied to finance, in terms of modeling the
%%stock market.