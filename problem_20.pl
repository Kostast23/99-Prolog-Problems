% Problem 20
% Remove the K'th element from a list.

% remove_at(?L, +K, ?X, ?R).
% List R is obtained by removing element X at index K of list L.
remove_at([H|T], 1, H, T).
remove_at([H|T], K, X, [H|R]) :-
    K > 1,
    KK is K - 1,
    remove_at(T, KK, X, R).

