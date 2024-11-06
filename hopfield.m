function W =hopfield(patterns)
[rows, cols, num_patterns] = size(patterns);
W = zeros(rows * cols);

for p = 1:num_patterns
x = patterns(:,:,p);
x = x(:);
W = W + x * x'; % Reguła Hebb'a
end
W = W - diag(diag(W)); % Ustawienie przekątnej macierzy na zero
end

