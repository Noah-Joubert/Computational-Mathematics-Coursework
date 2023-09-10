% This function applies the iteration w := w^2 + c to each complex number
% of the matrix W, 10 times.

function W = tensteps(W, c)
    for i = 1:10
        W = W.^2 + c;
    end
end