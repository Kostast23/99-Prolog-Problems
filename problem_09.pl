% Problem 09
% Pack consecutive duplicates of list elements into sublists.

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

