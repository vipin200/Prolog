go:- write('Enter List'),nl,
     createList(L),
     write('Element to be deleted:- '),
     read(X),
     delete_all(X,L,R),
     write(X).

delete_all(X,[],[]).  
delete_all(X,[H|T],R):- X == H,delete_all(X,T,R).
delete_all(X,[H|T],R):- X \== H,R = [H|R1],
                        delete_all(X,T,R1).

enterEle(X) :- write('Enter element:- '),
                read(X).

createList(L1) :- enterEle(X),createList(X,L1).

createList(-1,[]) :- !.
createList(X,[X|T]) :- enterEle(X1) , createList(X1,T).
:- initialization(go).
    