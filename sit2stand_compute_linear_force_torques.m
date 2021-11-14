function [u_f] = sit2stand_compute_linear_force_torques(fx, fy,th1,th2,th3,l1,l2,l3)
% COMPUTE_LINEAR_FORCE_TORQUES
% INPUTS: This function takes in a parameter, b, current joint angles (th1 th2 th3) 
% and link lengths (l1 l2 l3)
% The parameter b is the desired value of a constant linear force
% pulling on the CoM of the third link.
f = [fx; fy; 0;];
% Compute orientation of third link
alpha = th1 + th2 + th3;
R = [cos(alpha) -sin(alpha) 0;...
                 sin(alpha) cos(alpha) 0;...
                 0 0 1;];
% Get force components wrt orientation of third link and pad wrench
% vector
f = R'*f;
f = [f; 0;0;0;];

% Use body jacobian to compute effective torques at each joint.
u_f = body_jacobian3_T(th1,th2,th3,l1,l2,l3)*f;
end

