% Problem 16
% Drop every N'th element from a list

% drop_nth(+L1, +N, -L2).
% The list L2 is obtained from the list L1 by removing every N'th element.
drop_nth(L1, N, L2) :-
    NN is N - 1,
    drop_next_of_nth(L1, NN, L2).

% drop_next_of_nth(+L1, +N, -L2).
% The list L2 is obtained from the list L1, by removing the elements at the next
% position of the N-th position.
drop_next_of_nth(L1, N, L1) :-
    length(L1, Len),
    Len =< N,
    !.
drop_next_of_nth(L1, N, L2) :-
    length(ListOfLengthN, N),
    append(ListOfLengthN, [_|T], L1),
    drop_next_of_nth(T, N, TT),
    append(ListOfLengthN, TT, L2).

