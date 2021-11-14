function [] = sit2stand_plot_trajectories(t,x,fignum)
    figure(fignum);
    subplot(2, 1, 1);
    plot( t, x(:, 1), t, x(:, 3), t, x(:,5), 'LineWidth', 2 );
    xlabel( 't (s)' );
    ylabel( 'Angles (rad)');
    legend( 'Theta_1', 'Theta_2', 'Theta_3' );
    subplot(2, 1, 2);
    plot( t, x(:, 2), t, x(:, 4), t, x(:,6), 'LineWidth', 2 );
    xlabel( 't (s)' );
    ylabel( 'Angular Velocity (rad/s)');
    legend( 'dTheta_1', 'dTheta_2', 'dTheta_3' );
end

