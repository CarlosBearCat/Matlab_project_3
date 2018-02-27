function [x1,x2] = BM_2D(total_time, step_size, Temp_F, V, R)
%Generates 2D Brownian motion
x1 = BM_1D(total_time, step_size, Temp_F, V, R);
x2 = BM_1D(total_time, step_size, Temp_F, V, R);
end

