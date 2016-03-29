% Problem 10
% Run-length encoding of a list.

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
    run_length(P, E).

% run_length(+Ls, -Ps).
% Given a list of lists of multiple occurences of the same element, encode them
% in pairs of [Occurences, Element].
run_length([], []).
run_length([L|Ls], [P|Ps]) :-
    length(L, N),
    L = [X|_],
    R = [N, X],
    run_length(Ls, Ps).

% run_length can be abbreviated to
% run_length([], []).
% run_length([[X|L]|Ls], [[N, X]|Ps]) :-
%     length([X|L], N),
%     run_length(Ls, Ps).

