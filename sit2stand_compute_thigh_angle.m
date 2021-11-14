function [thigh_angle] = sit2stand_compute_thigh_angle(th1, th2, th3, l1, l2, l3)
%SIT2STAND_COMPUTE_THIGH_ANGLE 
%   Computes the current thigh angle, aka the phase variable
L1_pos = link1(th1, th2, th3, l1, l2, l3);
L2_pos = link2(th1, th2, th3, l1, l2, l3);

o = L2_pos(1) - L1_pos(1);
a = L2_pos(2) - L1_pos(2);

thigh_angle = atan2(o,a);

%% other version
%thigh_angle = (pi/2) - th1 + th2;
% if a == 0
%     thigh_angle = pi/2;
% end
% if a < 0
%     thigh_angle = 2*pi - thigh_angle + pi/2;
% end
%thigh_angle = atan(o/a);
% if thigh_angle < 0
%     thigh_angle = -thigh_angle;
% end

end

