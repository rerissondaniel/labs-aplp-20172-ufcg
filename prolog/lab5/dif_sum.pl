max([], Max, Max).
max([H|T], ActMax, Max) :- H > ActMax, max(T, H, Max).
max([H|T], ActMax, Max) :- H < ActMax, max(T, ActMax, Max).
max([H|T], ActMax, Max) :- H =:= ActMax, max(T, ActMax, Max).
max([H|T], Ans) :- max(T, H, Ans).

min([], Min, Min).
min([H|T], ActMin, Min) :- H < ActMin, min(T, H, Min).
min([H|T], ActMin, Min) :- H > ActMin, min(T, ActMin, Min).
min([H|T], ActMin, Min) :- H =:= ActMin, min(T, ActMin, Min).
min([H|T], Ans) :- min(T, H, Ans).

sum([H], H).
sum([H, S|T], Ans) :- sum([H + S|T], Ans).

main:-
	read(Nums),
	max(Nums, Max),
	min(Nums, Min),
	sum(Nums, Sum),
	Ans is Max - Min + Sum,
	write(Ans).

