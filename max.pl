go :- write('Input first number: '),
      read(X),
      write('Input second number: '),
      read(Y),
      max(X,Y,R),
      write(R).

max(A,B,A) :- A >= B.
max(A,B,B).

:- initialization(go).
