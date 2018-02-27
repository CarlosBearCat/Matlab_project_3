%%Carlos Luevanos 
%% 10 - 10 - 16
%% Project 3: Physics(Brownian Motion) 
%% Lab project

%%3.1 - 2D Brownian motion hitting a circular barrier
clear all; 
close all;
clc;

%%initialize parameters
T = 64; %Temperature in farenheit
V = 1.32e-3; %viscosity
R = 2.8e-10; %molecule radius

%Define stepsize
h = 0.001;
total_time = 3;

%Generate time sequence
time =  0: h : total_time;

%%Generate random displacement at each time
[x1, x2] = BM_2D(total_time, h, T, V, R); %brownian motion

num_particles = 10; %particles for plot
num_particles2= 10000; %particles for larger simulation
cmap = hsv(num_particles); %colormap for particles

%%plot circle with given code
hold on;
r = 1e-4; %radius of the circular barrier
t = linspace(0, 2* pi, 1000);
x = r * cos(t);
y = r * sin(t);
plot(x,y,'k','LineWidth', 2);
axis equal;

title(' 2D - Brownian Motion', 'FontSize',20,'FontWeight','bold');
xlabel('B1', 'FontSize',20,'FontWeight','bold');
ylabel('B2');
set(gca, 'FontSize',16,'FontWeight','bold');
grid on;

counter = 0; % counter for particles
for i = 1: num_particles
    [xc1, xc2] = BM_2D(total_time, h, T, V, R);
    plot(xc1, xc2, 'Color', cmap(i,:)); %plot color trace
    hold on;
    plot(xc1(end), xc2(end), 'k.','MarkerSize',30);%plot black dots
    hold on;
    
    d = sqrt((xc1(end).^2) + xc2(end).^2); %distance equation
    
    if d > r %if the distance of the dot is greater than the radius of the circle, it's out of the circle 
        counter = counter + 1; %increment loop(dot is out of circle)
    end 
end

counter2 = 0; % counter for particles
for i = 1: num_particles2
    [xc1, xc2] = BM_2D(total_time, h, T, V, R);
    d = sqrt((xc1(end).^2) + xc2(end).^2); %distance equation
    if d > r
        counter2 = counter2 + 1;
    end 
end

fprintf('%d out of 10 particles are outside the circle. \n', counter);
fprintf('%%%.2f out of 10000 particles are outside the circle. \n', counter2/100 );%for percentage


