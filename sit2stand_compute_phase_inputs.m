function [u] = sit2stand_compute_phase_inputs(s,c,th,thd,Kp, Kd)

% compute desired knee angle based on linear fit
k_des = c(1)*s + c(2);

% compute desired ankle angle as function of thigh, knee
ank_des = (5*pi/2) - s - k_des;

qd_des = [ank_des; k_des];

% compute derivative of error, dk_des/ds*ds/dt
dsdt =  -thd(1) - thd(2);
k_dot_des = c(1) * dsdt;
ank_dot_des = (-1 - c(1)) * dsdt;

vd = [ank_dot_des; k_dot_des;];

u =  Kp*(qd_des-th) + Kd*(vd-thd);
            
            
end

