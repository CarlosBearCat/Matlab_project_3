%%Carlos Luevanos 
%%10 - 11 - 16
%%Project 3: Physics
%%Lab: 3.2 - Matlab animation 

clear all;
close all; 
clc; 

 v = VideoWriter('particles.avi'); %make videowriter object
open(v); 


time = 1: 200; % time size

%%create displacements in time 
x1 = randCum(length(time))*0.1;
y1 = randCum(length(time))*0.1;
z1 = randCum(length(time))*0.1;
disp(x1)
x2 = randCum(length(time))*0.5;
y2 = randCum(length(time))*0.5;
z2 = randCum(length(time))*0.5;

x3 = randCum(length(time))*0.9;
y3 = randCum(length(time))*0.9;
z3 = randCum(length(time))*0.9;

x4 = randCum(length(time))*2;
y4 = randCum(length(time))*2;
z4 = randCum(length(time))*2;


figure(1);
for i = time
%%Make spheres
[x,y,z] = sphere(); 
surf(x + x1(i), y + y1(i), z + z1(i),'EdgeColor','r');hold on;

[x,y,z] = sphere(); 
surf(x + x2(i), y + y2(i), z + z2(i),'EdgeColor','b');hold on;

[x,y,z] = sphere(); 
surf(x + x3(i), y + y3(i), z + z3(i),'EdgeColor','g');hold on;

[x,y,z] = sphere(); 
surf(x + x4(i), y + y4(i), z + z4(i), 'EdgeColor','k');

axis([-35 35 -35 35 -35 35]);
M(i) = getframe();%get the current frame
writeVideo(v, M(i)); %write video 
hold off;
end

close(v); %close video



