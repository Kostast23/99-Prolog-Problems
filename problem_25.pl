% Problem 25
% Generate a random permutation of the elements of a list.

% random_perm(+L, ?P).
% List P is a random permutation of list L.
random_perm(L, P) :-
    length(L, N),
    random_select(L, N, P).

% random_select(+L, +N, ?R).
% List R is obtained by randomly selecting N elements from list L.
% N has to be less or equal to the length of L.
random_select(L, N, R) :-
    length(L, Len),
    N =< Len,
    random_select(L, Len, N, R).

random_select(_, _, 0, []).
random_select(L, Len, N, [X|R]) :-
    N > 0,
    random(RandomNum),
    Index is RandomNum mod Len + 1,
    N1 is N - 1,
    Len1 is Len - 1,
    remove_at(L, Index, X, L1),
    random_select(L1, Len1, N1, R).

% remove_at(?L, +K, ?X, ?R).
% List R is obtained by removing element X at index K of list L.
remove_at([H|T], 1, H, T).
remove_at([H|T], K, X, [H|R]) :-
    K > 1,
    KK is K - 1,
    remove_at(T, KK, X, R).

