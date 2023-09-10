% This function takes in a matrix of complex numbers, and adds a yellow 
% pixel in the complex plane for each complex number which has |z| < 2.

function plotW(W)
    % Sets each element of W to 0, 1 
    % depending on if its magnitude is less than 2.
    pixels = double(abs(W)<2);

    % The pixels corresponding to entries of 1 are coloured yellow.
    pcolor(pixels), shading flat
    axis square off

    % Count the number of pixels satisfy |z| < 2 and add a title
    num_pixels = sum(pixels, 'all'); % count the number of 1's
    num_pixels_str = int2str(num_pixels); % convert to string
    title(strcat(num_pixels_str, ' yellow pixels'),'Interpreter','latex')
    set(gca, 'fontsize', 13) 
end