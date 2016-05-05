% Problem 22
% Create a list containing all integers within a given range.

% range(+Low, +High, ?L).
% List contains all integers from Low up to High included.
range(Low, High, []) :-
    Low > High.
range(Low, High, [Low|L]) :-
    Low =< High,
    Low1 is Low + 1,
    range(Low1, High, L).

