go :- write('Enter list : '),nl,
      createList(L),
      m_reverse(L,L1),
      write('Reverse of list:- '),
      printList(L1).

conc([],L,L).
conc([H|T],L2,[H|L3]):- conc(T,L2,L3).


m_reverse(L1,L2) :- rev(L1,[],L2).
rev([],L,L).
rev([H|T],L2,L3) :- conc([H],L2,R),
                    rev(T,R,L3).

enterEle(X) :- write('Enter element:- '),
                read(X).

createList(L1) :- enterEle(X),createList(X,L1).

createList(-1,[]) :- !.
createList(X,[X|T]) :- enterEle(X1) , createList(X1,T).

printList([]).
printList([H|T]) :- write(' '), write(H) , printList(T).

:-initialization(go).