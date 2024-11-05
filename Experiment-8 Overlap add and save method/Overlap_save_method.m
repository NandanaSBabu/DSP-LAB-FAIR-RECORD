clc;
clear all;
close all;
% Input the sequences and block size
x = input("Enter 1st sequence: ");
h = input("Enter 2nd sequence: ");
N = input("Fragmented block size: ");
% Call the overlap-save function
y = ovrlsav(x, h, N);
disp("Using Overlap and Save method");
disp(y);
disp("Verification");
disp(cconv(x,h,length(x)+length(h)-1));
% Define the overlap-save method function
function y = ovrlsav(x, h, N)
    if (N < length(h))
        error("N must be greater than the length of h");
    end
    Nx = length(x);  % Length of input sequence x
    M = length(h);   % Length of filter sequence h
    M1 = M - 1;      % Length of overlap
    L = N - M1;      % Length of non-overlapping part
    % Zero-padding for input and filter sequences
    x = [zeros(1, M1), x, zeros(1, N-1)];
    h = [h, zeros(1, N - M)];
    % Number of blocks
    K = floor((Nx + M1 - 1) / L);
    % Initialize the output matrix Y
    Y = zeros(K + 1, N);

    % Perform block convolution using circular convolution
    for k = 0:K
        xk = x(k*L + 1 : k*L + N);  % Extract block of input sequence
        Y(k+1, :) = cconv(xk, h, N);  % Circular convolution
    end
    % Extract valid part from the result and concatenate
    Y = Y(:, M:N)';
    y = (Y(:))';
end
