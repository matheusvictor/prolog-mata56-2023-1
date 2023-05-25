%base_de_dados
%fatos
progenitor(maria, jose).
progenitor(joao, jose).
progenitor(joao, ana).
progenitor(jose, julia).
progenitor(jose, iris).
progenitor(iris, jorge).

%ex.10
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

%ex.15
listar_ancestrais(Pessoa) :-
    findall(Ancestral, eh_ancestral(Ancestral,Pessoa), ListaAncestrais),
    write(ListaAncestrais).

listar_descendentes(Pessoa) :-
    findall(Descendente, eh_ancestral(Pessoa,Descendente), ListaDescendente),
    write(ListaDescendente).
