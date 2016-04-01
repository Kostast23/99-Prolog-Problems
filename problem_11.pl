% Problem 11
% Run-length encoding of a list (modified).

% pack(+L1, ?L2).
% Given the list L1, L2 is obtained by packing repeated occurences of elements
% of L1 into seperate sublists.
pack([], []).
pack([X|T], [Xs|Ps]) :-
    consume(X, T, NoLeadingXs),
    append(Xs, NoLeadingXs, [X|T]),
    pack(NoLeadingXs, Ps).

% consume(+X, +L1, ?L2).
% L2 is the list tha remains after removing every leading copy of X from L1.
consume(_, [], []).
consume(X, [X|L1], L2) :-
    consume(X, L1, L2).
consume(X, [Y|L1], [Y|L1]) :-
    X \= Y.

% run_length_encoding(+L, -E).
% Given list L, E is the run length encoding of L.
run_length_encoding(L, E) :-
    pack(L, P),
    run_length_modified(P, E).

% run_length_modified(+Ls, -Ps).
% Given a list of lists of multiple occurences of the same element, encode the
% elements with duplicates in pairs of [Occurences, Element].
% If an element has no duplicates it is simply copied into the result list.
run_length_modified([], []).
run_length_modified([[X|L]|Ls], [X|Ps]) :-
    length([X|L], N),
    N =:= 1,
    run_length_modified(Ls, Ps).
run_length_modified([[X|L]|Ls], [[N, X]|Ps]) :-
    length([X|L], N),
    N > 1,
    run_length_modified(Ls, Ps).

