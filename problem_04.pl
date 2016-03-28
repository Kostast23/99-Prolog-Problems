% Problem 04
% Find the number of elements of a list.

% len(?L, ?N).
% The number of elements in L is N.
% The predicates also works for variable L returning a list of N uninstanciated
% elements.
len(L, N) :-
    var(L),
    integer(N),
    len5(L, N).
len(L, N) :-
    nonvar(L),
    var(N),
    len4(L, N).

% len1(+L, ?N).
len1([], 0).
len1([_|L], N) :-
    len1(L, NN),
    N is NN + 1.

% len2(+L, ?N).
% Using accumulator.
len2(L, N) :-
    len2(L, 0, N).
len2([], N, N).
len2([_|L1], M, N) :-
    MM is M + 1,
    len2(L1, MM, N).

len3([], 0).
len3([_|L], N+1) :-
    len3(L, N).

% len4(+L, ?N).
len4(L, N) :-
    len3(L, NN),
    N is NN.

% len5(?L, +N).
len5([], 0).
len5([_|L], N) :-
    N > 0,
    NN is N - 1,
    len5(L, NN).

