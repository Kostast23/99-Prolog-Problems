% Problem 3
% Find the K'th element of a list.

% kth1(?L, +K, ?X).
% X is the element at position K in list L, with K > 0.
kth1([X|_], 1, X).
kth1([_|L], K, X) :-
    K > 1,
    NK is K - 1,
    kth1(L, NK, X).

