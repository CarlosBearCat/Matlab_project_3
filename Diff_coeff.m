function [ D ] = Diff_coeff(Tk, V, R)
% Calculate the diffusion coefficient 
%Input: Tk(Degrees in kelvin)
%V(viscosity) 
%R(Radius in meters)
%Output: calculated diffusion coefficient


%Boltzman's constant
Kb = 1.3806503e-23;


%Diffusion coefficient
D = (Kb * Tk)/ (6*pi * V * R);

end

