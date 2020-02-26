go :- write('Enter a list: '),nl,
      createList(L),
      write('Enter nth pos :- '),
      read(N),
      insert_nth(I, N, L, R), 
      write(R).

insert_nth(I,N,[H|T],[H|R]):-

enterEle(X) :- write('Enter element:- '),
                read(X).

createList(L1) :- enterEle(X),createList(X,L1).

createList(-1,[]) :- !.
createList(X,[X|T]) :- enterEle(X1) , createList(X1,T).

:-initialization(go).