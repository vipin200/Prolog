go :- write('Enter a list: '),nl,
      createList(L),
      write('Enter nth pos :- '),
      read(N),
      write('Enter element to be inserted:- '),
      read(I),
      insert_nth(I, N, L, R), 
      write(R).

insert_nth(I,1,L,[I|L]):-!.
insert_nth(I,N,[H|T],[H|R]):- N1 is N-1 , insert_nth(I,N1,T,R).

enterEle(X) :- write('Enter element:- '),
                read(X).

createList(L1) :- enterEle(X),createList(X,L1).

createList(-1,[]) :- !.
createList(X,[X|T]) :- enterEle(X1) , createList(X1,T).

:-initialization(go).