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

