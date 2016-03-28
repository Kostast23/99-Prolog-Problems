% Problem 01
% Find the last element of a list.

% last(?L, ?X).
% Element X is the last element of list L.
last([X], X).
last([_|T], X) :-
    last(T, X).

