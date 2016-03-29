% Problem 08
% Eliminate consecutive duplicates of list elements.


% compress(+L1, -L2).
% Given list L1, list L2 is obtained by keeping only the last occurence of an
% element from a sublist of consecutive occurences of that element.
compress([], []).
compress([X], [X]).
compress([X, X|L], L1) :-
    compress([X|L], L1).
compress([X, Y|L], [X|L1]) :-
    X \= Y,
    compress([Y|L], L1).

