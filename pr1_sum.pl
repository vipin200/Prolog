go :- write('Input first number: '),
      read(X),
      write('Input second number: '),
      read(Y),
      sum(X,Y,R),
      write(R).

sum(A,B,R) :- R is A+B.

:- initialization(go).
