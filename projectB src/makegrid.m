% This function returns an npts x npts matrix of complex numbers x + iy
% in the square -1.7 <= x,y <= 1.7.

function Z = makegrid(npts)
    s = linspace(-1.7, 1.7, npts); % vector of evenly spaced numbers
    [X, Y] = meshgrid(s,s); % mesh to get a set of coordinates
    Z = X + 1i*Y; % produce the matrix of complex numbers
end