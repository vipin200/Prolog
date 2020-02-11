go :- write('Enter list: '),nl,
      createList(L),
      even_size(L).

odd_size([_|T]) :-even_size(T).

even_size([]).
even_size([_ |T]) :-odd_size(T).


enterEle(X) :- write('Enter element:- '),
                read(X).
createList(L1) :- enterEle(X),createList(X,L1).
createList(-1,[]) :- !.
createList(X,[X|T]) :- enterEle(X1) , createList(X1,T).

:-initialization(go).