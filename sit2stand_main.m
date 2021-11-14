%% Set system parameters and initial conditions

% Parameters and initial condition taken from dataset
masses = [4 10.3793 18.325];
links = [0.6025 0.4430 0.7265];
x0 = [1.9287 0 4.6557 0 7.9354 0];

fignum = 1;
sit2stand_draw_x0( x0, links(1), links(2), links(3), fignum);

% Select controller. 0 = no controller,  1  = phase variable, 2 =  PD
controller  = 1;

%% Define global variables needed for simulation 

global params;


g = 9.81; %m/s^2
t0 = 0;
T = 0.5; % seconds

params = [g links(1) links(2) links(3) masses(1) masses(2) masses(3)];
M = masses(1) + masses(2) +  masses(3);

[t, x, x_dot, c ] = sit2stand_dynamics(x0, t0, T, params, controller);


%% Animate the pendulum

% note: this does not plot in real time unless you go into function
%code and change the duration of the pause() call to 'delta_t'

data.theta1 = x(:, 1);
data.theta2 = x(:, 3);
data.theta3 = x(:,5);
data.L1 = links(1);
data.L2 = links(2);
data.L3 = links(3);
fignum = fignum + 1;
sit2stand_animate_sim(data,t, fignum);

%% Plot trajectories
fignum = fignum + 1;
sit2stand_plot_trajectories(t,x,fignum);
