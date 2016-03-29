% Problem 06
% Find out whether a list is a palindrome.

% palindrome(?L).
% A list L is a palindrome if its first half of the list reversed, is the same
% with the second half.
palindrome(L) :-
    palindrome(L, L, []).

palindrome([], L, L).
palindrome([_], [_|L], L).
palindrome([_,_|L], [X|L1], L2) :-
    palindrome(L, L1, [X|L2]).

