% Problem 17
% Split a list into two parts.

% split(?L, +L1Len, ?L1, ?L2).
% L1 has length Len and is the first half of list L, while L2 is the second.
split(L, 0, [], L).
split([H|T], K, [H|L1], L2) :-
    K > 0,
    K1 is K - 1,
    split(T, K1, L1, L2).
    
