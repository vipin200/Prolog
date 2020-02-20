go :- write('Enter a list: '),nl,
      createList(L),
      remove_dup(L,X),
      write(X).

remove_dup([],[]).
remove_dup([H|T],X) :- is_member(H,T,C),(C=='true',remove_dup(T,X);remove_dup(T,X1),X1 is [H|X]).

is_member(_,[],C) :- C = 'false',!.
is_member(X,[X|_],C) :- C = 'true',!.
is_member(X,[_|T],C) :- is_member(X,T,C).
enterEle(X) :- write('Enter element:- '),
                read(X).

createList(L1) :- enterEle(X),createList(X,L1).

createList(-1,[]) :- !.
createList(X,[X|T]) :- enterEle(X1) , createList(X1,T).

:-initialization(go).