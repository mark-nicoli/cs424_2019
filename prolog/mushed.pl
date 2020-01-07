mushed([],[],[]).
mushed([X1|X2], Y2, [X1|Z2]) :-
	mushed(X2, Y2, Z2).

mushed(X2, [Y1|Y2], [Y1|Z2]) :-
 	mushed(X2, Y2, Z2).


circular([_|_], []).
circular([H|L1], L2) :-
  	append([H|L1], L3, L2), circular([H|L1], L3).
