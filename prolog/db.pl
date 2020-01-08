
male(albert).
male(bob).
male(bill).
male(carl).
male(charlie).
male(dan).
male(edward).

female(alice).
female(betsy).
female(diana).

dances(alice).

parent(albert, bob).
parent(albert, betsy).
parent(albert, bill).

parent(alice, bob).
parent(alice, betsy).
parent(alice, bill).

parent(bob, carl).
parent(bob, charlie).

get_grandparent :-
	parent(X, carl),
	parent(X, charlie),
	format('~w ~s grandparent~n', [X,"is the"]).

grand_parent(X, Y) :-
	parent(Z, X),
	parent(Y, Z).

stabs(tybalt, mercutio, sword).
hates(romeo, X) :- stabs(X, mercutio, sword).


what_grade(5) :-
	write('go to playschool').

what_grade(6) :-
	write('go to school').

what_grade(Other) :-
	Grade is Other -5,
	format('go to grade ~w', [Grade]).


has(albert, olive).
female(alice).

owns(albert, pet(cat, olive)).

customer(sally, smith, 202.55).

get_cust_bal(FName, LName) :-
	customer(Fname, LName, Bal),
	format('~w ~w owes us $~2f ~n', [FName, LName, Bal]).

related(X, Y) :-
	parent(X, Y).

related2(X, Y) :-
	parent(X, Z),
	related(Z,Y).

count_to_10(10) :- write(10), nl.

count_to_10(X) :-
	write(X), nl,
	Y is X + 1,
	count_to_10(Y).

count_down(Low, High) :-
	between(Low, High, Y),
	Z is High-Y,
	write(Z), nl.

count_up(Low, High) :-
	between(Low, High, Y),
	Z is Y+Low,
	write(Z), nl.

 write_list([]).
 write_list([Head|Tail]) :-
 	write(Head), nl,
 	write_list(Tail).

%2019 exam paper question 4

runs([]).
runs(_|[]).
runs([X|Tail]) :-
	checkNext(X, Tail),
	runs(Tail).

checkNext(X, [Y|Ys]) :-
	X == Y.

checkNext1(Y, [H|T]) :-
	Y == H.

%2018 exam paper question 4
%January
mul(List1,List2,List3) :-
	length(List1,X),
	length(List2,Y),
	length(List3,Z),
	X*Y =:= Z.

%autumn
scissor([X|Tlist], X, [], Tlist).
scissor([Hlist1|Tlist1], X, [Hlist1|U], List2) :-
	scissor(Tlist1, X, U, List2).

scissors(List1, C, List2, List3) :-
	append(List2, [C|List3], List),
	List=List1.
