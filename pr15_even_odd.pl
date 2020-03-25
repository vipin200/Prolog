go :-write('Enter List: '),nl,
    createList(L),
    even_length(L),
    write('List is of even length');
    odd_length(L),
    write('List is of odd length').

odd_length([_|T]) :- even_length(T).
even_length([]).
even_length([_|T]) :- odd_length(T).
enterEle(X) :- write('Enter element:- '),
                read(X).

createList(L1) :- enterEle(X),createList(X,L1).

createList(-1,[]) :- !.
createList(X,[X|T]) :- enterEle(X1) , createList(X1,T).

:-initialization(go).