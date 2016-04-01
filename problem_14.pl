% Problem 14
% Duplicate the elements of a list.

% duplicate(?L1, ?L2).
% L1 is obtained by duplicating every element of L1.
duplicate([], []).
duplicate([X|Xs], [X, X|Ys]) :-
    duplicate(Xs, Ys).

