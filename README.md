# Gram-Schmidt
This Octave Script will calculate a matrix representing column vectors spanning a normalized, orthonormal basis from an original matrix containing non-orthonormal basis vectors.

Instead of using basis vectors separately, the vectors need to be combined as column vectors in a matrix (VectorMatrix) in order to compute the Gram-Schmidt formula.  The code will then draw the columns out as individual vectors (Vector) and compute the formula accordingly, adding the result to the analogous matrix (ResultMatrix) at the end.

## Usage
As with every code in this account, I don't know if the code will work with Matlab.  Also, this package uses the symbolic package, so symbolic will need to be installed before use (i.e. by running the line "pkg install -forge symbolic").

Before running, the user just needs to build a matrix to replace the currently existing matrix for "VectorMatrix" adjusting the matrix size as needed (it should work up to very high-level $\mathbb{R}$ spaces). "ResultMatrix" will contain the solution and will be displayed at the end expressing square roots in an easily readable form. 