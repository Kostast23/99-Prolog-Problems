% Problem 19
% Rotate a list N places to the left.

% rotate(?L, +P, ?R).
% List R is obtained by rotating list L P positions to the left. However, P can
% also be negative.
rotate(L, 0, L).
rotate(L, P, RL) :-
    P > 0,
    rotate_positive(L, P, RL).
rotate(L, P, RL) :-
    P < 0,
    length(L, Len),
    PP is Len + P,
    rotate(L, PP, RL).

% rotate_positive(?L, +P, ?R).
% List R is obtained by rotating list L P positions to the left (P > 0).
rotate_positive(L, P, RL) :-
    length(Moved, P),
    append(Moved, Other, L),
    append(Other, Moved, RL).

