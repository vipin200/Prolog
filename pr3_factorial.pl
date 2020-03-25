go :- write('Input number: '),
      read(X),
      factorial(X,F),
      write('Factorial is: '),
      write(F).

factorial(0,1).
factorial(X,F):- X1 is X-1,factorial(X1,F1),F is F1*X. 

:- initialization(go).
