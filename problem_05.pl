% Problem 05
% Reverse a list.

% rvrs(+L, -R).
% Given list L, R is the its reverse.
rvrs(L, R) :-
    rvrs(L, [], R).
rvrs([], R, R).
rvrs([X|L1], L2, R) :-
    rvrs(L1, [X|L2], R).
