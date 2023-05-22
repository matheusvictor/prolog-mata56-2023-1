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


cadeia_alimentar(Predador):-
	(come(Predador, Presa) -> 
    	write(Predador), write(' --> ');
    	write(Predador), write(' --> '), writeln(' não tem presa.'), fail),
    cadeia_alimentar(Presa).
    
cadeia_alimentar_2_param(Predador, Presa):-
	come(Predador, Presa),
    write(Predador), write(' --> '), writeln(Presa).
	
cadeia_alimentar_2_param(Predador, Presa2):-
    come(Predador, Presa),
    cadeia_alimentar(Presa, Presa2).
