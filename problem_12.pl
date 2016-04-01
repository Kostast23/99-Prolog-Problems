% Problem 12
% Decode a run-length encoded list.

% run_length_decoding(+Enc, -Dec).
% Given a run-length encoded list, produces the decoded list.
run_length_decoding([], []).
run_length_decoding([X|Enc], [X|Dec]) :-
    \+ is_list(X),
    run_length_decoding(Enc, Dec).
run_length_decoding([[C, E]|T], L) :-
    generate_list(C, E, L1),
    run_length_decoding(T, L2),
    append(L1, L2, L).

% generate_list(+C, +E, -L).
% Given natural number C and element E, L is a list of C count Es.
generate_list(0, _, []).
generate_list(C, E, [E|L]) :-
    C > 0,
    C1 is C - 1,
    generate_list(C1, E, L).

