even_length([]).
even_length([_|T]):- odd_length(T).
odd_length([_|T]):-even_length(T).