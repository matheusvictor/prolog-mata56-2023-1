%fatos
animal(urso).
animal(peixe).
animal(peixinho).
animal(lince).
animal(raposa).
animal(coelho).
animal(veado).
animal(guaxinim).

planta(alga).
planta(grama).

come(urso, peixe).
come(lince, veado).
come(urso, raposa).
come(urso, veado).
come(peixe, peixinho).
come(peixinho, alga).
come(guaxinim, peixe).
come(raposa, coelho).
come(coelho, grama).
come(veado, grama).
come(urso, guaxinim).

eh_predador(X, Y) :-
    come(X, Y).

eh_presa(X, Y) :-
    come(Y, X).

cadeia_alimentar(X) :-
    (eh_predador(X, A) -> 
    	write(X), write(' --> ');
    	write(X), write(' --> '), writeln(' não tem presa.'), fail),
    cadeia_alimentar(A).
