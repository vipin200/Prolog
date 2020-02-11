go :- write('Enter list 1: '),nl,
      createList(L1),
      m_reverse(L1,L2),
      write('Reverse of list:- '),
      printList(L2).

m_reverse([],X,X).
m_reverse([H|T],Z,Acc) :- m_reverse(T,Z,[H|Acc]).
enterEle(X) :- write('Enter element:- '),
                read(X).

createList(L1) :- enterEle(X),createList(X,L1).

createList(-1,[]) :- !.
createList(X,[X|T]) :- enterEle(X1) , createList(X1,T).

printList([]).
printList([H|T]) :- write(' '), write(H) , printList(T).

:-initialization(go).