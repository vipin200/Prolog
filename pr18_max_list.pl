go :- write('Enter a list: '),nl,
      createList(L),
      max_List(L,M)
      write(M).

max_List([H|T],M):- 

enterEle(X) :- write('Enter element:- '),
                read(X).

createList(L1) :- enterEle(X),createList(X,L1).

createList(-1,[]) :- !.
createList(X,[X|T]) :- enterEle(X1) , createList(X1,T).

:-initialization(go).