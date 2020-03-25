go :- write('Enter a list: '),nl,
      createList(L),
      max_List(L,M),
      write('Maximum in List: '),
      write(M),nl.

max_List([H],H):-!.
max_List([H1,H2|T],M):- H1 >= H2 ,!, X is H1 , max_List([X|T],M).
max_List([H1,H2|T],M):- H1 < H2 , X is H2 , max_List([X|T],M).
enterEle(X) :- write('Enter element:- '),
                read(X).

createList(L1) :- enterEle(X),createList(X,L1).

createList(-1,[]) :- !.
createList(X,[X|T]) :- enterEle(X1) , createList(X1,T).

:-initialization(go).