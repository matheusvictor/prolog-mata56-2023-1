%base_de_dados
%fatos
progenitor(maria, jose).
progenitor(joao, jose).
progenitor(joao, ana).
progenitor(jose, julia).
progenitor(jose, iris).
progenitor(iris, jorge).

eh_avo_sem_recursao(Avo,Neto) :-
    progenitor(Filho,Neto),
    progenitor(Avo,Filho).

eh_ancestral(Fulano, Cicrano) :-
    progenitor(Fulano, Cicrano).

eh_ancestral(Fulano, Cicrano) :-
    progenitor(Fulano, Beltrano),
    eh_ancestral(Beltrano, Cicrano).

eh_descendente(Fulano, Cicrano) :-
    eh_ancestral(Cicrano, Fulano).

eh_descendente(Fulano, Cicrano) :-
    eh_ancestral(Cicrano, Beltrano),
    eh_ancestral(Beltrano, Fulano).
