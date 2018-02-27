function [x1,x2,x3] = BM_3D(total_time, step_size, Temp_F, V, R)
%Generates 1D Brownian motion
x1 = BM_1D(total_time, step_size, Temp_F, V, R);
x2 = BM_1D(total_time, step_size, Temp_F, V, R);
x3 = BM_1D(total_time, step_size, Temp_F, V, R);
end
