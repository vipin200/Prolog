edge(p, q).
edge(q, r).
edge(q, r).
edge(q, s). 
edge(s, t).

go:-write('Enter node 1: '),
    read(N1),
    write('Enter node 2: '),
    read(N2),
    path(N1, N2),
    write('Path exist between given nodes'),nl;
    write('No Path exist between given nodes').

    path(A, B):- edge(A, B), !.
    path(A, B):- edge(A, C),
                 path(C, B).

:-initialization(go).