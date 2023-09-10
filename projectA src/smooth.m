% This function takes m >= 1 as an input,and returns an anonymous function,
% which is a finite random Fourier series.
function fm = smooth(m)
        
    % First generate the random constants a_i, b_j in the order 
    % a_0, a_1, b_1, ..., a_m, b_m. 
    % These are drawn from the standard normal distribution.
    ao = randn;
    a_b = randn([2 m]); % generate a 2xm matrix of random numbers
    
    a = a_b(1,:); % take the first row for the a_is
    b = a_b(2,:); % second row for the b_js

   
    % Create the anonymous function for the fourier series, fm
    fm = @(x)ao;
    
    % We generate the fourier series iteratively by adding on each
    % sin(jx), cos(jx) term, one at a time.
    for j = 1:m
        fm = @(x)(fm(x) + sqrt(2) * (a(j)*cos(j*x) + b(j)*sin(j*x)));
    end
end