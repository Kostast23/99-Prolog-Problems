% Problem 06
% Find out whether a list is a palindrome.

% palindrome(?L).
% If L is a var, recursively find all the lists of different lengths that are
% palindromes. If L is a list return true if it is a palindrome.
palindrome(L) :-
    palindrome(L, L, []).

% palindrome(+L, +L, []).
% Iteratively remove two elements from the first list and one from the second
% list and that from the second list add it as the head of the third list.
% When the first list has one or no elements the second and third list should
% match if the original list is a palindrome, as its first half reversed is the
% third list and its second half is the second list.
palindrome([], L, L).
palindrome([_], [_|L], L).
palindrome([_,_|L], [X|L1], L2) :-
    palindrome(L, L1, [X|L2]).

