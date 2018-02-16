contains([H|_], H).
contains([H|T], X) :- contains(T, X).

set([], Seen, Seen).
set([H|T], Seen, Ans) :- not(contains(Seen, H)), append(Seen, [H], Appended), set(T, Appended, Ans).
set([H|T], Seen, Ans) :- contains(Seen, H), set(T, Seen, Ans).
set(L, Ans) :- set(L, [], Ans).

main:-
	read(Nums),
	set(Nums, Ans),
	write(Ans).

