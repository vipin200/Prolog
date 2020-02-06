go :- write('Enter list 1: '),nl,
      createList(L1),
      write('Enter  list 2: '),nl,
      createList(L2),
      conc(L1,L2,L3),
      print("Concatenation of lists:- "),
      print_list(L3).

conc([],[],L3) :- !.
conc([],[H|T],L3) :- conc([],T,[L3|H]),!.
conc([H|T],L2,L3) :- conc(T,L2,[L3|H]). 


enterEle(X) :- write('Enter element:- '),
                read(X).

createList(L1) :- enterEle(X),createList(X,L1).

createList(-1,[]) :- !.
createList(X,[X|T]) :- enterEle(X1) , createList(X1,T).

printList([]).
printList([H|T]) :- write(' '), write(H) , printList(T).

:-initialization(go).