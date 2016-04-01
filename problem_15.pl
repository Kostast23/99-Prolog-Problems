% Problem 15
% Duplicate the elements of a list a given number of times.

% duplicate_n(?L1, +N, ?L2).
% The list L2 is obtained by duplicating every element of the list L1 N times.
duplicate_n(L1, T, L2) :-
    duplicate_n(L1, T, T, L2).

% duplicate_n(?L1, +N, +T, ?L2).
% The list L2 is obtained by L1 by duplicating the first element T times and
% all the following elements N times.
duplicate_n([], _, _, []).
duplicate_n([_|Xs], T, 0, Ds) :-
    duplicate_n(Xs, T, T, Ds).
duplicate_n([X|Xs], T, C, [X|Ds]) :-
    C > 0,
    C1 is C - 1,
    duplicate_n([X|Xs], T, C1, Ds).

