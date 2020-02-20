go :- write('Enter a list: '),nl,
      createList(L),
      write('Enter nth pos :- '),
      read(N),
      nth_element(N, L, X),
      write(X).

nth_element(1,[H|T],H):-!.
nth_element(N,[H|T],X):- N1 is N-1 , nth_element(N1,T,X).

enterEle(X) :- write('Enter element:- '),
                read(X).

createList(L1) :- enterEle(X),createList(X,L1).

createList(-1,[]) :- !.
createList(X,[X|T]) :- enterEle(X1) , createList(X1,T).

:-initialization(go).