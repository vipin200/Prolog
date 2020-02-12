go :- write('Enter list: '),nl,
      createList(L1),
      palindrome(L1,C)
      write('List is palindrome: '),
      write(C).

ch_equal([],[],'true').
ch_equal([H|_],[H1|_],C):- H \== H1 , C='false' ,!.
ch_equal([_|T1],[_|T2],C):- ch_equal(T1,T2,C).

m_reverse([],[]).
m_reverse([H|T],[L|H]) :- reverse(T,L).

enterEle(X) :- write('Enter element:- '),
                read(X).

createList(L1) :- enterEle(X),createList(X,L1).

createList(-1,[]) :- !.
createList(X,[X|T]) :- enterEle(X1) , createList(X1,T).

printList([]).
printList([H|T]) :- write(' '), write(H) , printList(T).

:-initialization(go).