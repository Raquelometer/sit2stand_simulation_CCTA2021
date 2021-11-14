function [ ] = sit2stand_draw_x0( x, l1, l2, l3, fignum)
% plot_DPM
% This function takes simulated pendulum angles and animates them with links for a nice visualization.
% INPUTS:
%           data - a struct containing the pendulum angles and lengths
% OUTPUTS:
%           NONE


% Compute x-positions of each link.
p1 = link1(x(1), x(3), x(5), l1, l2, l3);
p2 = link2(x(1), x(3), x(5), l1, l2, l3);
p3 = link3(x(1), x(3), x(5), l1, l2, l3);

%% Draw!

figure(fignum);
clf; hold on; axis equal;

% Will need to change x and y axis limits here if the links are really long
xlim([-1, 1]);
ylim([-1, 2]);

% Draw initial pendulum position
p = plot([0; p1(1); p2(1); p3(1)], [0; p1(2); p2(2); p3(2)], 'k', 'LineWidth', 3, 'MarkerSize', 15);


end
