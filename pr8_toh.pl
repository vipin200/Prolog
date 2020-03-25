go:-
    write('Enter number of Disks : '),
    read(N),
    toh(N, 'A', 'B', 'C').

inform(D, F, T):-   write('Move Disk '),
                    write(D),
                    write(' From '),
                    write(F),
                    write(' To '),
                    write(T), nl.

toh(1, From, To, Aux):- inform(1, From, To), !.

toh(N, From, To, Aux):- N1 is N - 1,
                        toh(N1, From, Aux, To),
                        inform(N, From, To),
                        toh(N1, Aux, To, From).
                        
:- initialization(go).
