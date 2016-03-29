% Problem 07
% Flatten a nested list structure.

% flttn(+L1, -L2).
% Given list L1, list L2 is obtained by flattening L1, meaning that every
% element of L1 that is a list is replaced by its element, recursively.
flttn([], []).
flttn(X, [X]) :-
    \+ is_list(X).
flttn([H|T], FL) :-
    flttn(H, FH),
    flttn(T, FT),
    append(FH, FT, FL).

