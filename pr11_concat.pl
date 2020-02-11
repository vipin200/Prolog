go :- write('Enter list 1: '),nl,
      createList(L1),
      write('Enter  list 2: '),nl,
      createList(L2),
      conc(L1,L2,L3),
      write('Concatenation of lists:- '),
      printList(L3).

conc([],L, L).
conc([H|T],L,[H|L3]) :- conc(T,L,L3) .


enterEle(X) :- write('Enter element:- '),
                read(X).

createList(L1) :- enterEle(X),createList(X,L1).

createList(-1,[]) :- !.
createList(X,[X|T]) :- enterEle(X1) , createList(X1,T).

printList([]).
printList([H|T]) :- write(' '), write(H) , printList(T).

:-initialization(go).