go :- write('Enter first number: '),
      read(N1),
      write('Enter second number: '),
      read(N2),
      gcd(N1,N2,R),
      write('GCD is : '),
      write(R).

gcd(A,0,A):-!.
gcd(A,B,R):-T is A mod B,gcd(B,T,R).

:- initialization(go).