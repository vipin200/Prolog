go :- write('Enter first number: '),
      read(N1),
      write('Enter second number: '),
      read(N2),
      multi(N1,N2,R),
      write('Result is : '),
      write(R),nl.
multi(_,0,0):-!.
multi(N1,1,N1):-!.
multi(N1,N2,R):- N1>0,N2>0,T is N2-1,multi(N1,T,R1),R is N1+R1.

:- initialization(go).