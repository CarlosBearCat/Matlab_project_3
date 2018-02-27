function [x] = BM_1D(total_time, step_size, Temp_F, V, R)
%Generates 1D Brownian motion

Temp_K = F2K(Temp_F);%Convert F to K

D = Diff_coeff(Temp_K, V, R); %Compute diffusion coefficient 

time = 0: step_size: total_time;
sigma = sqrt(2 * D);

n = length(time);

rnd1 = 0 + sqrt(step_size) * randn(1,n);
rnd1_scaled = rnd1 *sigma; %apply sigma scaling factor
rnd1_scaled(1) = 0; %change the first element to origin
x = cumsum(rnd1_scaled);%compute displacement from origin 


end

