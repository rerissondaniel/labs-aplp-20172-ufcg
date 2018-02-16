divisor(X, Y) :- 0 =:= (X mod Y).

magic(X, 0, Sum, true) :- Sum =:= X.
magic(X, 0, Sum, false) :- not(Sum =:= X).

magic(X, Curr, Sum, Ans) :-
	divisor(X, Curr),
	Ncurr is Curr - 1,
	Nsum is Sum + Curr,
	magic(X, Ncurr, Nsum, Ans).

magic(X, Curr, Sum, Ans) :- 
	Ncurr is Curr - 1,
	magic(X, Ncurr, Sum, Ans).

:-initialization(main).

main :- read(X), nl,
	magic(X, X - 1, 0, Ans),
	write(Ans), nl,
	halt(0).
