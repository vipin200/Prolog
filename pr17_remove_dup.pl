go :- write('Enter a list: '),nl,
      createList(L),
      remove_dup(L,X),
      write(X).

remove_dup([],[]).
remove_dup([H|T],X) :- is_member(H,T),!,remove_dup(T,X).
remove_dup([H|T],[H|X]) :- remove_dup(T,X).

is_member(X,[X|_]) :-!.
is_member(X,[_|T]) :- is_member(X,T).
enterEle(X) :- write('Enter element:- '),
                read(X).

createList(L1) :- enterEle(X),createList(X,L1).

createList(-1,[]) :- !.
createList(X,[X|T]) :- enterEle(X1) , createList(X1,T).

# :-initialization(go).