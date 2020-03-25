go :- write('Enter number: '),
      read(Num),
      write('Enter power: '),
      read(Pow),
      power(Num,Pow,Ans),
      write('Ans is : '),
      write(Ans).

power(Num,0,1):-!.
power(Num,1,Num):-!.
power(Num,Pow,Ans):-P2 is Pow-1,power(Num,P2,A2),Ans is A2*Num. 
:- initialization(go).