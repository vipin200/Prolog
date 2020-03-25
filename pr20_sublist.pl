go:-write('Enter a List L :'),nl,
	createList(L),
    write(L),nl,
    write('Enter sublist S :'),nl,
	createList(S),
    write(S),nl,nl,       
    subList(S,L),
    write('S is a Sublist of L  '),nl;
    write('S is not a Sublist of L'),nl. 

    
    conc([],L, L).
    conc([H|T],L,[H|L3]) :- conc(T,L,L3) .    


    subList(S, L):- conc(L1, L2, L),
                    conc(S, L3, L2).

    enterEl(X) :-   write('Enter Element :'),
                    read(X).

    createList(L) :-enterEl(X), 
                    createList(X, L).
    
    createList(-1, []) :-!.

    createList(X, [X|T]) :- enterEl(X1),
                            createList(X1, T).


:-initialization(go).