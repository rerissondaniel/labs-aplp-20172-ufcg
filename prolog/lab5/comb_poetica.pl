same_head([C1|_], [C1|_]).

reverse([], X, X).
reverse([H|T], X, Ans) :- reverse(T, X, [H|Ans]).

poetica(P1, P2, 'poetica') :- 
	same_head(P1, P2), 
	reverse(P1, RP1, []),
	reverse(P2, RP2, []),
	same_head(RP1, RP2).
poetica(P1, P2, 'naopoetica').

main:-
	read(P1),
	read(P2),
	poetica(P1, P2, Ans),
	write(Ans),
	halt(0).

