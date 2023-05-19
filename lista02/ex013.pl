progenitor(maria, jose).
progenitor(maria, jose2).
progenitor(joao, jose).
progenitor(joao, ana).
progenitor(jose, julia).
progenitor(jose, iris).
progenitor(iris, jorge).

listar_filhos :-
    write('Digite o nome da pessoa:'),
    read(Pessoa),
    listar_filhos_de(Pessoa).

listar_filhos_de(Pessoa) :-
    progenitor(Pessoa, Filhos),
    write(Filhos), nl,
    fail.

listar_pais :-
    write('Digite o nome da pessoa:'),
    read(Pessoa),
    listar_pais_de(Pessoa).

listar_pais_de(Pessoa) :-
    progenitor(Pais, Pessoa),
    write(Pais), nl,
    fail.