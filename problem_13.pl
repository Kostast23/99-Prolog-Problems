% Problem 13
% Run-length encoding of a list (direct)

% run_length_encoding(+L1, -L2).
% The list L2 is obtained by run-length encoding the list L1.
run_length_encoding([], []).
run_length_encoding(L, Enc) :-
    run_length_encoding(L, 1, Enc).

% run_length_encoding(+L1, +Count, -L2).
% Given that the list L1 has at least one element, Count is the numeric expr
% of adding all the consecutive occurences of the current first element of L1.
% When there is no second element or the second element is different from the
% currently first X, the Count expression is evaluated and the run-length
% encoding for X is added to L2.
run_length_encoding([X], Count, [Encoded]) :-
    Count1 is Count,
    encode(Count1, X, Encoded).
run_length_encoding([X, X|T], Count, Enc) :-
    run_length_encoding([X|T], Count+1, Enc).
run_length_encoding([X, Y|T], Count, [Encoded|Enc]) :-
    X \= Y,
    Count1 is Count,
    encode(Count1, X, Encoded),
    run_length_encoding([Y|T], 1, Enc).

% encode(+Count, +X, -Enc).
% Given a natural number Count >= 1 and a value X, Enc is X if Count is 1 or
% [Count, X] if Count > 1.
encode(Count, X, X) :-
    Count =:= 1.
encode(Count, X, [Count, X]) :-
    Count > 1.

