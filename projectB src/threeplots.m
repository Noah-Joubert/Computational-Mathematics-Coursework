% This function creates three sub-plots on the same
% figure, of the complex numbers which remain bounded,
% after 10, 20, 30 iterations of w := w^2 + c, for a given c

function threeplots(c)
    W = makegrid(1000); % make the grid
    
    for j = 1:3
        subplot(1,3,j) % switch sub-plot
           
        W = tensteps(W, c); % apply the iteration formula
        plotW(W) % plot the bounded points
    end
end