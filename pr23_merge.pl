go:- write('Enter List 1: '),nl,
     createList(L1),
     write('Enter List 2 :- '),nl,
     createList(L2),
     merge(L1,L2,R),
     write(R).

merge([],[],[]).
merge([],L,L).
merge(L,[],L).
merge([H|T],[H1|T1],[H|R]):- H < H1,!,merge(T,[H1|T1],R).
merge([H|T],[H1|T1],[H1|R]):- H1 =< H,!,merge([H|T],T1,R).

enterEle(X) :- write('Enter element:- '),
                read(X).

createList(L1) :- enterEle(X),createList(X,L1).

createList(-1,[]) :- !.
createList(X,[X|T]) :- enterEle(X1) , createList(X1,T).
:- initialization(go).
    