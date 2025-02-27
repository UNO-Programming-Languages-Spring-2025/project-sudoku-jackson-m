% Sudoku Solver
% Jackson Martin
% Hints:
% For subgrid of size n, subgrids can be identified by labels 1..n*n
% A cell (x,y) can be mapped to the subgrid labeled 1+(((x-1)/n)*n+(y-1)/n)

% Your implementation please...

range(1..4).
sudoku(X,Y,N) :- initial(X,Y,N).
{sudoku(X,Y,N) : range(N)} = 1 :- range(X), range(Y).
:- sudoku(X1,Y,N), sudoku(X2,Y,N), X1 != X2.
:- sudoku(X,Y1,N), sudoku(X,Y2,N), Y1 != Y2.

#show sudoku/3.
