clearvars;
pkg load symbolic;
sympref display unicode;


VectorMatrix = [1 0 2;
     1 2 0;
    -1 1 -2;
     1 3 0];
VectorMatrix = sym(VectorMatrix);

[rows, cols] = size(VectorMatrix);
ResultMatrix = sym(zeros(rows, cols));


for k = 1:cols
    Vector = VectorMatrix(:, k);


    for j = 1:k-1
        CurrentSubtraction = dot(VectorMatrix(:, k), ResultMatrix(:, j)) * ResultMatrix(:, j);
        Vector = Vector - CurrentSubtraction;
    end


    ResultMatrix(:, k) = Vector / norm(Vector);
end


pretty(ResultMatrix);
