% Sudoku Solver
% Jackson Martin
% Hints:
% For subgrid of size n, subgrids can be identified by labels 1..n*n
% A cell (x,y) can be mapped to the subgrid labeled 1+(((x-1)/n)*n+(y-1)/n)

% Your implementation please...

range(1..4).
subgridsize(2).
sudoku(X,Y,N) :- initial(X,Y,N).
subgrid(X,Y,G) :- range(X), range(Y), subgridsize(M), G = 1+(((X-1)/M)*M+(Y-1)/M).
{sudoku(X,Y,N) : range(N)} = 1 :- range(X), range(Y).
:- sudoku(X1,Y,N), sudoku(X2,Y,N), X1 != X2.
:- sudoku(X,Y1,N), sudoku(X,Y2,N), Y1 != Y2.
:- sudoku(X1,Y1,N), sudoku(X2,Y2,N), subgrid(X1,Y1,G), subgrid(X2,Y2,G), X1 != X2, Y1 != Y2.

#show sudoku/3.