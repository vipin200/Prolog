go :- write('Input first number: '),
      read(X),
      write('Input second number: '),
      read(Y),
      max(X,Y,R),
      write('Maximum is: '),
      write(R),nl.

max(A,B,X) :- A >= B,!,X = A.
max(A,B,B).

:- initialization(go).
