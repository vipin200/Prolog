go :- write('Enter a list: '),nl,
      createList(L),
      write('Enter nth pos :- '),
      read(N),
      delete_nth(N, L, R), 
      write(R).

delete_nth(1,[_|T],T):-!.
delete_nth(N,[H|T],[H|R]):- N1 is N-1 , delete_nth(N1,T,R).

enterEle(X) :- write('Enter element:- '),
                read(X).

createList(L1) :- enterEle(X),createList(X,L1).

createList(-1,[]) :- !.
createList(X,[X|T]) :- enterEle(X1) , createList(X1,T).

:-initialization(go).