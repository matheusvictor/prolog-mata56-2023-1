%regras
fatorial(0, 1).

fatorial(N, F) :-
    N > 0, N1 is N - 1,
    fatorial(N1, F1),
    F is N * F1.

calcular_fatorial :-
    write('digite um número'),
    read(N),
    fatorial(N, F),
    write('O fatorial de '),
    write(N),
    write(' é: '), write(F).

/*
Nesse caso, não é necessário verificar se o N é um número positivo na regra calcular_fatorial,
pois as regras fatorial já se encarrega de fazer invalidar casos onde N < 0.
*/
