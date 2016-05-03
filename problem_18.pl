% Problem 18
% Extract a slice from a list.

% slice(?L, +From, +To, ?Slice).
% Slice is the list of elements of L between index From and To, both included.
slice([H|_], 1, 1, [H]).
slice([H|T], 1, To, [H|Slice]) :-
    To > 1,
    ToMinus1 is To - 1,
    slice(T, 1, ToMinus1, Slice).
slice([_|T], From, To, Slice) :-
    From > 1,
    FromMinus1 is From - 1,
    ToMinus1 is To - 1,
    slice(T, FromMinus1, ToMinus1, Slice).

% alt_slice(+L, +From, +To, ?Slice).
% Slice is the list of elements of L between index From and To, both included.
% L can be seperated to a first half of length To. This half can be seperated
% to a first half of length From-1 and a second half which is the Slice.
alt_slice(L, From, To, Slice) :-
    length(L1, To),
    append(L1, _, L),
    FromMinusOne is From - 1,
    length(L2, FromMinus1),
    append(L2, Slice, L1).

