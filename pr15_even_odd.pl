odd_length([H|T]) :- even_length(T).
even_length([]).
even_length([H|T]) :- odd_length(T).