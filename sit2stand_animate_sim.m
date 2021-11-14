function [ ] = sit2stand_animate_sim( data, t, fignum )
% plot_DPM
% This function takes simulated pendulum angles and animates them with links for a nice visualization.
% INPUTS:
%           data - a struct containing the pendulum angles and lengths
% OUTPUTS:
%           NONE

%% Load data
delta_t = t(2) - t(1);
% Get the two angle trajectories from our data struct.
theta1 = data.theta1;
theta2 = data.theta2;
theta3 = data.theta3;

% Get the link lengths.
l1 = data.L1;
l2 = data.L2;
l3 = data.L3;

%% Get positions
THTHETA1LENGTH = length(theta1) %1000
% Compute x-positions of each link.
x1y1 = link1(theta1, theta2, theta3, l1, l2, l3);
x2y2 = link2(theta1, theta2, theta3, l1, l2, l3);
x3y3 = link3(theta1, theta2, theta3, l1, l2, l3);

DATALENGTH = length(x1y1) %2000


x1 = x1y1(1:1000);
x2 = x2y2(1:1000);
x3 = x3y3(1:1000);
X1LENGTH = length(x1)
y1 = x1y1(1001:end);
y2 = x2y2(1001:end);
y3 = x3y3(1001:end);
%x1 = -L1*sin(theta1);
%x2 = -L1*sin(theta1) - L2*sin(theta2 + theta1);

% Compute y-positions of each link.

%y1 = L1*cos(theta1);
%y2 = L1*cos(theta1) + L2*cos(theta2 + theta1);

%% Draw!

figure(fignum);
clf; hold on; axis equal;

% Will need to change x and y axis limits here if the links are really long
xlim([-1, 1]);
ylim([-1, 2]);

% Draw initial pendulum position
p = plot([0; x1(1); x2(1); x3(1)], [0; y1(1); y2(1); y3(1)], 'k', 'LineWidth', 3, 'MarkerSize', 15);

% Now loop through all remaining theta1 and theta2 values and plot them with a pause so we can see the pendulum trajectory
for i = 1:length(theta1)
   set(p, 'XData', [0; x1(i); x2(i); x3(i)], 'YData', [0; y1(i); y2(i); y3(i)]);
   
   h = text(-0.95, -0.95,num2str(t(i)));
   
   %pause(0.02);
   pause(delta_t);
   
   delete(h)
end
h = text(-0.95, -0.95,num2str(1.00));
end
