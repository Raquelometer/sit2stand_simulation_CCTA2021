function [t_out, x_out, x_dot_out, c ] = sit2stand_dynamics(x0, t0, T, params, controller)

n = 1000;

%Create a time vector.
time = linspace( t0, T, n );
params_ = params;

%turn the params array into a list that I can input to the Mass Martix and
%Fcg functions
params = num2cell(params);

%% Parameters for Phase Variable Controller
% Gains
Kp = diag([500;1000]);
Kd = diag([250;400]);

% Initial and final thigh/knee angle
s0 = 0;
sf = 0;
k0 = x0(3);
kf = 2*pi;

c = zeros(2,1);

% compute linear fit if phase variable controller is on
if controller == 1
    % compute inital thigh angle 
    s0 = sit2stand_compute_thigh_angle(x0(1), x0(3), x0(5), params_(2), params_(3), params_(4));
    
    % Compute linear fit
    
    A = [s0 1; sf 1;];
    b = [k0; kf;];
    
    c = A\b;
end

%% Parameters for PID controller
Kp_pd = diag([75,150,0]);
Kd_pd = diag([30;60;0]);

%% Call ode15s.
[ t_out, x_out ] = ode15s( @dyn, time, x0 );
x_dot_out = zeros(length(t_out),length(x0));

% Recompute x_dot
for j = 1:length(t_out)
    x_dot_out(j,:) = dyn(t_out(j), x_out(j,:));
end
    function x_dot = dyn( t, x )
        
        M_inv = mass_matrix_inv( x(1), x(3), x(5), params{:} );
        C = coriolis_matrix(x(1), x(2), x(3), x(4),x(5),x(6), params{:});
        N = gravity_vector(x(1), x(3), x(5), params{:});
        th = [x(1); x(3); x(5)];
        thd = [x(2); x(4); x(6)];
        dyn_term = M_inv*(-C*thd - N);
        
        % No controller
        if controller == 0

            fx = 0;
            % TODO tune/explain this better
            fy = (params_(5) + params_(6) + params_(7))*10;
            u = sit2stand_compute_linear_force_torques(fx,fy,x(1), x(3), x(5), params_(2), params_(3), params_(4));
            u = u-0.01*thd;
            
        % Phase Variable Controller
        elseif controller == 1
            % compute current thigh angle
            s = sit2stand_compute_thigh_angle(x(1), x(3), x(5), params_(2), params_(3), params_(4));
            
            % compute inputs from phase based controller
            u_phase = sit2stand_compute_phase_inputs(s,c,th(1:2),thd(1:2),Kp, Kd);
            u_phase = [u_phase; 0;];
            fx = 0;
            fy = (params_(5) + params_(6) + params_(7))*9.8;
            u_f = sit2stand_compute_linear_force_torques(fx,fy,x(1), x(3), x(5), params_(2), params_(3), params_(4));
            u = u_f + u_phase - 0.01*thd;
            
        % PD controller
        else
            
          % PD CONTROLLER HERE
            qd = [pi/2; 2*pi; 0;];
            q = [x(1); x(3); x(5)];
            q_dot = [x(2); x(4); x(6);];
            u_pd = Kp_pd*(qd-q) - Kd_pd*q_dot;
            fx = 0;
            fy = (params_(5) + params_(6) + params_(7))*9.8;
            u_f = sit2stand_compute_linear_force_torques(fx,fy,x(1), x(3), x(5), params_(2), params_(3), params_(4));
            u = u_f + u_pd - 0.01*thd;
            
        end
        
     
        
        dyn_term = dyn_term + M_inv*u;
        
        %write out the full dynamics for our system
        x_dot = [ x(2);
                  dyn_term(1);
                  x(4);
                  dyn_term(2);
                  x(6);
                  dyn_term(3)];
    end

end

