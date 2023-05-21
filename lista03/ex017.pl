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

cadeia_alimentar(X, [X]) :-
    \+ eh_predador(X, _).
    
cadeia_alimentar(X, [X | Cadeia]) :-
    eh_predador(X, Y),
    cadeia_alimentar(Y, Cadeia).
    
cadeia_alimentar_sr(X) :-
    findall(Y, cadeia_alimentar(X, Y), Cadeia),
    append(Cadeia, CadeiaUnica),
    sort(CadeiaUnica, Lista),
    writeln(Lista).

% ?- cadeia_alimentar_sr(urso).
% Output: [alga,coelho,grama,guaxinim,peixe,peixinho,raposa,urso,veado]
