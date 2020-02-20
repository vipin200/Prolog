go :- write('Enter a list: '),nl,
      createList(L),
      sumList(L,S),
      write(S).

sumList([],0).
sumList([H|T], S) :-   sumList(T,Z),S is H + Z .


enterEle(X) :- write('Enter element:- '),
                read(X).

createList(L1) :- enterEle(X),createList(X,L1).

createList(-1,[]) :- !.
createList(X,[X|T]) :- enterEle(X1) , createList(X1,T).

:-initialization(go).