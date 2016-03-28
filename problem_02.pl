% Problem 02
% Find the last but one element of a list.

% last_but_one(?L, ?X).
% Element X is the last but one element of list L.
last_but_one([X, _], X).
last_but_one([_|L], X) :-
    last_but_one(L, X).

