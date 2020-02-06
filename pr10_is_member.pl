go :- write('Enter a list: '),nl,
      createList(L1),
      write('Enter X: '),nl,
      read(X),
      is_member(X,L1,C),
      print(C).

is_member(_,[],C) :- C = 'false',!.
is_member(X,[X|_],C) :- C = 'true',!.
is_member(X,[_|T],C) :- is_member(X,T,C).

enterEle(X) :- write('Enter element:- '),
                read(X).

createList(L1) :- enterEle(X),createList(X,L1).

createList(-1,[]) :- !.
createList(X,[X|T]) :- enterEle(X1) , createList(X1,T).

:-initialization(go).