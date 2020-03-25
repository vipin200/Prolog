go :- write('Enter N: '),
      read(N),
      generate_fib(N,T),
      write('Nth term is: '),
      write(T),nl.
generate_fib(0,0):-!.
generate_fib(1,1):-!.
generate_fib(2,1):-!.
generate_fib(N,T):- N1 is N-1, N2 is N-2,
                    generate_fib(N1,R1),
                    generate_fib(N2,R2),
                    T is R1+R2.
:- initialization(go).
