% Problem 21
% Insert an element at a given position into a list.

% insert_at(?L, +K, ?X, ?R).
% List R is obtained by inserting element X at index K of list L.
insert_at(L, 1, H, [H|L]).
insert_at([H|T], K, X, [H|R]) :-
    K > 1,
    KK is K - 1,
    insert_at(T, KK, X, R).


% alt_insert_at(?L, +K, ?X, ?R).
% List R is the list from which if we remove element X at index K the result
% is list L.
alt_insert_at(L, K, X, R) :-
    remove_at(R, K, X, L).


% remove_at(?L, +K, ?X, ?R).
% List R is obtained by removing element X at index K of list L.
remove_at([H|T], 1, H, T).
remove_at([H|T], K, X, [H|R]) :-
    K > 1,
    KK is K - 1,
    remove_at(T, KK, X, R).

